-- App locals
local appName, app = ...;

-- Global locals
local ipairs, pairs, strsplit, time, tinsert =
	  ipairs, pairs, strsplit, time, tinsert;
local BNGetInfo, BNSendGameData, C_BattleNet, C_ChatInfo = 
	  BNGetInfo, BNSendGameData, C_BattleNet, C_ChatInfo;
-- NOTES: BNGetFriendInfo and BNGetNumFriends are useless

-- Temporary cache variables (these get replaced in OnLoad!)
local AccountWideData, CharacterData, CurrentCharacter, LinkedCharacters, OnlineAccounts, SilentlyLinkedCharacters = {}, {}, {}, {}, {}, {}

-- Module locals
local AddonMessagePrefix, MESSAGE_HANDLERS = "ATTSYNC", {};
local function SendAddonMessage(target, msg)
	print("SendAddonMessage", target, msg);
	C_ChatInfo.SendAddonMessage(AddonMessagePrefix, msg, "WHISPER", target);
end
local function SendBattleNetMessage(target, msg)
	print("SendBattleNetMessage", target, msg);
	BNSendGameData(target, AddonMessagePrefix, msg);
end
local function UpdateBattleTags()
	-- Attempt to cache each character's battleTag if it is missing.
	if C_BattleNet then
		for guid,character in pairs(CharacterData) do
			if not character.battleTag then
				-- We haven't updated this character since the patch, look it up!
				local accountInfo = C_BattleNet.GetAccountInfoByGUID(guid);
				if accountInfo then character.battleTag = accountInfo.battleTag; end
			end
		end
	end
end
local function UpdateOnlineAccounts()
	wipe(OnlineAccounts);
	if C_BattleNet then
		for guid,character in pairs(CharacterData) do
			local gameAccountInfo = C_BattleNet.GetGameAccountInfoByGUID(guid);
			if gameAccountInfo then
				local gameAccountID = gameAccountInfo.gameAccountID;
				if gameAccountID then
					--print(character.text, gameAccountID);
					character.gameAccountID = gameAccountID;
					SilentlyLinkedCharacters[gameAccountID] = true;
					if character ~= CurrentCharacter then
						OnlineAccounts[gameAccountID] = character;
					end
				end
			end
		end
	end
end
local function ValidateMessage(msg)
	-- Convert the message table to a string if necessary
	if type(msg) == "table" then
		if #msg < 1 then return false; end
		local str = msg[1];
		for i,s in ipairs(msg) do
			str = str .. "," .. s;
		end
		return str;
	end
	return msg;
end
local function SendCharacterMessage(character, msg)
	if character then
		msg = ValidateMessage(msg);
		local gameAccountID = character.gameAccountID;
		if BNSendGameData and gameAccountID then
			SendBattleNetMessage(gameAccountID, msg);
		elseif character.realm == CurrentCharacter.realm and character.factionID == CurrentCharacter.factionID then
			SendAddonMessage(name, msg);
		end
	end
end
local function BroadcastMessage(msg)
	-- Update the last played timestamp. This ensures the sync process does NOT destroy unsaved progress on this character.
	CurrentCharacter.lastPlayed = time();
	
	-- Cache some things related to BattleNet.
	UpdateBattleTags();
	UpdateOnlineAccounts();
	
	-- Check for online accounts and send them the check message.
	local sent = {};
	msg = ValidateMessage(msg);
	for key,character in pairs(OnlineAccounts) do
		local name = character.name;
		if not sent[name] then
			SendCharacterMessage(character, msg);
			sent[name] = true;
		end
	end
	
	-- Check to see if we have any linked accounts
	local any = false;
	for playerName,allowed in pairs(LinkedCharacters) do
		if allowed then
			any = true;
			break;
		end
	end
	if any then
		-- Cache characters by their names.
		local characterByInfo = {};
		for guid,character in pairs(CharacterData) do
			local name = character.name;
			if name then characterByInfo[name] = character; end
			characterByInfo[guid] = character;
		end
		
		-- Now send to any explicitly linked accounts.
		for identifier,allowed in pairs(LinkedCharacters) do
			if allowed then
				local character = characterByInfo[identifier];
				if character then
					local name = character.name;
					if not sent[name] then
						SendCharacterMessage(character, msg);
						sent[name] = true;
					end
					SendCharacterMessage(character, msg);
				elseif not sent[identifier] then
					sent[identifier] = true;
					SendAddonMessage(identifier, msg);
				end
			end
		end
	end
end
local function ProcessAddonMessageText(self, sender, text, responses)
	for i,message in ipairs({ strsplit("~", text) }) do
		local content = { strsplit(",", message) };
		local handler = MESSAGE_HANDLERS[content[1]];
		if handler then
			--print("HANDLER[" .. content[1]  .. "]:", message);
			handler(self, sender, content, responses);
		else
			print("Undefined handler", message);
		end
	end
end
local function RecalculateAccountWideData()
	for key,data in pairs(AccountWideData) do
		if type(data) == "table" then
			data = {};
			for guid,character in pairs(CharacterData) do
				local characterData = character[key];
				if characterData then
					for index,_ in pairs(characterData) do
						data[index] = 1;
					end
				end
			end
			AccountWideData[key] = data;
		end
	end
	local deaths = 0;
	for guid,character in pairs(CharacterData) do
		if character.Deaths then
			deaths = deaths + character.Deaths;
		end
	end
	AccountWideData.Deaths = deaths;
end

-- Data Handling
local maxTimeStamp = 9999999999999;
local ignoreField = function()
	-- Ignore.
end;
local defaultDeserializer = function(field, currentValue, data)
	if currentValue then
		
	else
		
	end
end
local defaultSerializer = function(field, value, timeStamp, lastUpdated)
	local t = type(value);
	if t == "function" then
		-- Skip functions
	elseif t == "table" then
		local str = field .. "/" .. t;
		for index,value in pairs(value) do
			if value then str = str .. "/" .. index; end
		end
		return str;
	elseif t == "boolean" then
		if value then
			return field .. "/" .. t .. "/1";
		else
			-- We don't write falses
			return;
		end
	else
		return field .. "/" .. t .. "/" .. value;
	end
end
local deserializers = {
	ActiveSkills = function(field, currentValue, data)
		
	end,
	gameAccountID = ignoreField,
	guid = ignoreField,
	TimeStamps = function(data)
		
	end
};
local serializers = {
	ActiveSkills = function(field, value, timeStamp, lastUpdated)
		local str = field;
		for skillID,skill in pairs(value) do
			str = str .. "/" .. skillID .. "|" .. skill[1] .. "|" .. skill[2];
		end
		return str;
	end,
	gameAccountID = ignoreField,
	guid = ignoreField,
	TimeStamps = function(field, value)
		local str = field;
		for tableName,timestamp in pairs(value) do
			str = str .. "/" .. tableName .. "|" .. timestamp;
		end
		return str;
	end
};
local function ReceiveCharacterSummary(self, sender, responses, guid, lastPlayed, shouldPrint)
	--print("ReceiveCharacterSummary", guid, lastPlayed, shouldPrint);
	if guid == app.GUID then return false; end
	local character = CharacterData[guid];
	if character then
		-- Check against the last played timestamp on the character
		local lastPlayedForCharacter = character.lastPlayed;
		if not lastPlayedForCharacter then
			-- No timestamp? This character might be corrupted.
			tinsert(responses, "request," .. guid);	-- Request Full Character Copy
		elseif lastPlayedForCharacter < lastPlayed then
			-- The timestamp is newer than the copy we have. Send anything that is new.
			tinsert(responses, "request," .. guid .. "," .. lastPlayedForCharacter);	-- Request Diff
		elseif shouldPrint then
			-- Inform them that we have a newer version of the character than they do.
			tinsert(responses, "uptodate," .. guid);
		end
	else
		-- We don't have the character in our character data table.
		tinsert(responses, "request," .. guid);	-- Request Full Character Copy
	end
end

-- Message Handlers
MESSAGE_HANDLERS.check = function(self, sender, content, responses)
	-- Validate inputs. Battle Tag MUST be supplied and the account must be linked!
	local battleTag, isResponding = content[2], content[3];
	if not battleTag then return false; end
	if not LinkedCharacters[battleTag] then
		app.print("ERROR WITH SYNC: BattleTag '" .. battleTag .. "' not linked!");
		return false;
	else
		-- White list any future communications with this sender for the rest of the session.
		getmetatable(LinkedCharacters).__index[sender] = true;
	end
	
	-- If this wasn't sent as a response to a check request, send our own check request!
	if not isResponding then tinsert(responses, "check," .. CurrentCharacter.battleTag .. ",1"); end
	
	-- Generate the sync string
	local response = "chars";
	for guid,character in pairs(CharacterData) do
		if character.lastPlayed and not character.ignored then
			response = response .. "," .. guid .. ":" .. character.lastPlayed;
		end
	end
	tinsert(responses, response);
	return true;
end
MESSAGE_HANDLERS.char = function(self, sender, content, responses)
	if not LinkedCharacters[sender] then return false; end
	ReceiveCharacterSummary(self, sender, responses, content[2], tonumber(content[3]), true);
end
MESSAGE_HANDLERS.chars = function(self, sender, content, responses)
	if not LinkedCharacters[sender] then return false; end
	for i=2,#content,1 do
		local guid, lastPlayed = strsplit(":", content[i]);
		ReceiveCharacterSummary(self, sender, responses, guid, tonumber(lastPlayed), false);
	end
end
MESSAGE_HANDLERS.rawchar = function(self, sender, content, responses)
	local guid = content[2];
	if not guid then return false; end
	local data = content[3];
	if data then return false; end
	
	-- Now cache the character and update!
	local character = CharacterData[guid];
	if not character then
		character = {};
		character.guid = guid;
		CharacterData[guid] = character;
	end
	print("rawchar", guid, data);
	
	-- Parse the data wad!
	data = { strsplit(":", data) };
	local dataCount = #data;
	if dataCount < 1 then return false; end
	
	-- Parse the fields
	for i=1,dataCount,1 do
		local data = (deserializers[field] or defaultDeserializer)(field, character[field], { strsplit("/", dataCount[i]) });
		if data then character[field] = data; end
	end
	
	-- Update the Sync Window!
	self:Update();
end
MESSAGE_HANDLERS.request = function(self, sender, content, responses)
	local guid, lastUpdated = content[2], content[3];
	if lastUpdated then
		lastUpdated = tonumber(lastUpdated);
	else
		lastUpdated = 0;
	end
	if not guid then return false; end
	print("request", guid, lastUpdated);
	
	-- Cache the character
	local character = CharacterData[guid];
	if not character then return false; end
	
	-- Ensure the TimeStamps field exists.
	local timeStamps = character.TimeStamps;
	if not timeStamps then
		timeStamps = {};
		character.TimeStamps = timeStamps;
	end
	
	-- Iterate through the fields for the character.
	local skip, rawData = true, "rawchar," .. guid .. ",";
	for field,value in pairs(character) do
		local timeStamp = timeStamps[field] or maxTimeStamp;
		local str = (serializers[field] or defaultSerializer)(field, value, timeStamp, lastUpdated);
		if str then
			if skip then
				skip = false;
				rawData = rawData .. str;
			else
				rawData = rawData .. ":" .. str;
			end
		end
	end
	tinsert(responses, rawData);
end
MESSAGE_HANDLERS.uptodate = function(self, sender, content, responses)
	if not LinkedCharacters[sender] then return false; end
	local guid = content[2];
	if guid then
		local character = CharacterData[guid];
		if character then print(character.text .. " is already up-to-date."); end
	end
end

-- Helper Functions
local function OnClickForCharacter(row, button)
	local guid = row.ref.guid;
	if not guid then return true; end
	local character = CharacterData[guid];
	if not character then return true; end
	if button == "RightButton" then
		if IsAltKeyDown() then
			character.ignored = not character.ignored;
			row:GetParent():GetParent():Rebuild();
		else
			app:ShowPopupDialog("CHARACTER DATA: " .. (character.text or RETRIEVING_DATA) .. "\n \nAre you sure you want to delete this?",
			function()
				CharacterData[guid] = nil;
				RecalculateAccountWideData();
				row:GetParent():GetParent():Rebuild();
			end);
		end
	elseif button == "LeftButton" then
		BroadcastMessage("char," .. character.guid .. "," .. character.lastPlayed);
	end
	return true;
end
local function OnClickForLinkedAccount(row, button)
	local identifier = row.ref.datalink;
	if not identifier then return true; end
	
	if button == "RightButton" then
		app:ShowPopupDialog("LINKED ACCOUNT: " .. (row.ref.text or RETRIEVING_DATA) .. "\n \nAre you sure you want to delete this?",
		function()
			LinkedCharacters[identifier] = nil;
			row:GetParent():GetParent():Rebuild();
		end);
	else
		print("SynchronizeWithLinkedCharacter", identifier);
		
		-- Cache characters by their names.
		local characterByInfo = {};
		for guid,character in pairs(CharacterData) do
			local name = character.name;
			if name then characterByInfo[name] = character; end
			characterByInfo[guid] = character;
		end
		
		-- Update the last played timestamp. This ensures the sync process does NOT destroy unsaved progress on this character.
		CurrentCharacter.lastPlayed = time();
		
		-- Now send to any explicitly linked accounts.
		local msg = ValidateMessage("check," .. CurrentCharacter.battleTag);
		local character = characterByInfo[identifier];
		if character then
			SendCharacterMessage(character, msg);
		else
			SendAddonMessage(identifier, msg);
		end
	end
	return true;
end
local function OnTooltipForCharacter(t)
	local character = CharacterData[t.unit];
	if character then
		local primeData = character.PrimeData;
		if primeData then
			GameTooltipTextRight1:SetText(app.GetProgressColorText(primeData.progress, primeData.total));
			GameTooltip:AddLine(primeData.modeString, 1, 1, 1);
		end
		
		local total = 0;
		for i,field in ipairs({ "Achievements", "BattlePets", "Exploration", "Factions", "FlightPaths", "RWP", "Spells", "Titles", "Toys", "Quests" }) do
			local values = character[field];
			if values then
				local subtotal = 0;
				for key,value in pairs(values) do
					if value then
						subtotal = subtotal + 1;
					end
				end
				total = total + subtotal;
				GameTooltip:AddDoubleLine(field, tostring(subtotal), 1, 1, 1);
			end
		end
		GameTooltip:AddLine(" ", 1, 1, 1);
		GameTooltip:AddDoubleLine("Total", tostring(total), 0.8, 0.8, 1);
		GameTooltip:AddLine("Left Click to Sync this Character", 0.8, 1, 0.8);
		GameTooltip:AddLine("Right Click to Delete this Character", 1, 0.8, 0.8);
		if character.ignored then
			GameTooltip:AddLine("Alt-Right Click to Unignore this Character", 1, 0.8, 0.8);
			GameTooltip:AddLine(" ");
			GameTooltip:AddLine("Ignored Characters will not appear in the tooltip when using 'Show Other Characters' nor will they be sync'd with your other accounts. Characters from other accounts that are ignored on your current account will still receive updates from your other accounts.", 1, 1, 1, true);
		else
			GameTooltip:AddLine("Alt-Right Click to Ignore this Character", 1, 0.8, 0.8);
		end
	end
end
local function OnTooltipForLinkedAccount(t)
	if t.unit then
		GameTooltip:AddLine("This character's account will be synchronized with automatically when they log in. For optimal play, you should whitelist a bank character and probably not your main as to not affect your ability to play your character when syncing account data.", 0.8, 0.8, 1, true);
		GameTooltip:AddLine("Right Click to Delete this Linked Character", 1, 0.8, 0.8);
	else
		GameTooltip:AddLine("Right Click to Delete this Linked Account", 1, 0.8, 0.8);
	end
end

-- Implementation
app:GetWindow("Synchronization", {
	parent = UIParent,
	Silent = true,
	--IgnoreSettings = true,
	IgnoreQuestUpdates = true,
	Defaults = {
		AutoSync = true,
		LinkedCharacters = LinkedCharacters,
	},
	OnInit = function(self, handlers)
		SLASH_ATTSYNC1 = "/attaccount";
		SLASH_ATTSYNC2 = "/attdata";
		SLASH_ATTSYNC3 = "/attsync";
		SlashCmdList["ATTSYNC"] = function(cmd)
			self:Toggle();
		end
		
		-- Register for Battle.net addon messaging
		handlers.BN_CHAT_MSG_ADDON = function(self, prefix, text, channel, sender)
			if prefix ~= AddonMessagePrefix then return; end
			--print("BN_CHAT_MSG_ADDON", prefix, text, channel, sender);
			
			-- Process the addon message and send back a response. (or several)
			local responses = {};
			ProcessAddonMessageText(self, sender, text, responses);
			local responseCount = #responses;
			if responseCount > 0 then
				local wad = responses[1];
				for i=2,responseCount,1 do
					wad = wad .. "~" .. responses[i];
				end
				SendBattleNetMessage(sender, wad);
			end
		end
		handlers.CHAT_MSG_ADDON = function(self, prefix, text, channel, sender, target, zoneChannelID, localID, name, instanceID, ...)
			if prefix ~= AddonMessagePrefix then return; end
			--print(prefix, text, channel, sender, target, zoneChannelID, localID, name, instanceID, ...)
			
			-- Process the addon message and send back a response. (or several)
			local responses = {};
			ProcessAddonMessageText(self, sender, text, responses);
			local responseCount = #responses;
			if responseCount > 0 then
				local wad = responses[1];
				for i=2,responseCount,1 do
					wad = wad .. "~" .. responses[i];
				end
				SendAddonMessage(sender, wad);
			end
		end
	end,
	OnLoad = function(self, settings)
		-- Cache some globals SavedVariables!
		AccountWideData = ATTAccountWideData;
		CharacterData = ATTCharacterData;
		CurrentCharacter = app.CurrentCharacter;
		
		-- Delete some things I thought were going to be useful but ARENT THANKS BLIZZARD.
		-- We do actually use gameAccountID, but its value changes between game sessions and is unreliable.
		for guid,character in pairs(CharacterData) do
			character.bnetAccountID = nil;
			character.gameAccountID = nil;
		end
		
		-- Setup the saved variable for Linked Characters
		local linked = settings.LinkedCharacters;
		if not linked then
			linked = LinkedCharacters;
			settings.LinkedCharacters = linked;
		else
			LinkedCharacters = linked;
		end
		setmetatable(linked, { __index = SilentlyLinkedCharacters });
		
		-- Cache the current character's BattleTag. 
		if BNGetInfo then
			local battleTag = select(2, BNGetInfo());
			SilentlyLinkedCharacters[battleTag] = true;
			CurrentCharacter.battleTag = battleTag;
		end
		
		-- Register for Addon Messaging
		C_ChatInfo.RegisterAddonMessagePrefix(AddonMessagePrefix);
		pcall(self.RegisterEvent, self, "BN_CHAT_MSG_ADDON");
		self:RegisterEvent("CHAT_MSG_ADDON");
		if settings.AutoSync then
			BroadcastMessage("check," .. CurrentCharacter.battleTag);
		else
			-- Cache some things related to BattleNet. (this happens in the BroadcastMessage function already)
			UpdateBattleTags();
			UpdateOnlineAccounts();
		end
	end,
	OnRebuild = function(self)
		if not self.data then
			local options = {
				{	-- Add Linked Character
					text = "Add Linked Character",
					icon = app.asset("Ability_Priest_VoidShift"),
					description = "Click here to link a character to your account.",
					OnUpdate = app.AlwaysShowUpdate,
					OnClick = function(row, button)
						app:ShowPopupDialogWithEditBox("Please type the name of the character to link to.", "", function(cmd)
							if cmd and cmd ~= "" then
								-- Prevent server names.
								cmd = strsplit("-", cmd);
								LinkedCharacters[cmd] = true;
								self:Rebuild();
							end
						end);
						return true;
					end,
				},
				{	-- Sync All Characters
					text = "Sync All Characters",
					icon = app.asset("Ability_Priest_VoidShift"),
					description = "Click here to sync all of your characters.",
					OnUpdate = app.AlwaysShowUpdate,
					OnClick = function(row, button)
						BroadcastMessage("check," .. CurrentCharacter.battleTag);
						return true;
					end,
				},
				{	-- Characters
					text = "Characters",
					icon = "Interface\\FriendsFrame\\Battlenet-Portrait",
					description = "This shows all of the characters on your account.",
					expanded = true,
					characters = {},
					g = {},
					OnUpdate = function(data)
						local g, characters = data.g, data.characters;
						wipe(g);
						for guid,characterData in pairs(CharacterData) do
							if characterData then
								local character = characters[guid];
								if not character then
									character = app.CreateUnit(guid, {
										OnClick = OnClickForCharacter,
										OnTooltip = OnTooltipForCharacter,
										OnUpdate = app.AlwaysShowUpdate,
										trackable = true,
										visible = true,
										parent = data,
									});
									characters[guid] = character;
								end
								character.saved = not characterData.ignored and 1;
								table.insert(g, character);
							end
						end
						
						if #g < 1 then
							table.insert(g, {
								text = "No characters found.",
								icon = "Interface\\FriendsFrame\\Battlenet-Portrait",
								visible = true,
								parent = data,
							});
						else
							app.Sort(g, app.SortDefaults.Text);
						end
						return app.AlwaysShowUpdate(data);
					end,
				},
				{	-- Linked Characters
					text = "Linked Characters",
					icon = "Interface\\FriendsFrame\\Battlenet-Portrait",
					description = "This shows all of the linked characters you have defined so far.",
					expanded = true,
					g = {},
					OnUpdate = function(data)
						local g = data.g;
						wipe(g);
						for playerName,allowed in pairs(LinkedCharacters) do
							table.insert(g, app.CreateUnit(playerName, {
								datalink = playerName,
								OnClick = OnClickForLinkedAccount,
								OnTooltip = OnTooltipForLinkedAccount,
								OnUpdate = app.AlwaysShowUpdate,
								visible = true,
								parent = data,
							}));
						end
						
						if #g < 1 then
							table.insert(g, {
								text = "No linked accounts found.",
								icon = "Interface\\FriendsFrame\\Battlenet-Portrait",
								visible = true,
								parent = data,
							});
						end
						return app.AlwaysShowUpdate(data);
					end,
				},
			};
			self.data = {
				text = "Account Management",
				icon = app.asset("Achievement_Dungeon_HEROIC_GloryoftheRaider"), 
				description = "This list shows you all of the functionality related to syncing account data.",
				visible = true, 
				expanded = true,
				indent = 0,
				back = 1,
				g = {},
				OnUpdate = function(data)
					local g = data.g;
					if #g < 1 then
						for i,option in ipairs(options) do
							option.parent = data;
							table.insert(g, option);
						end
					end
				end,
			};
		end
	end,
});