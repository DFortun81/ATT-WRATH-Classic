do
local appName, app = ...;
local L = app.L;
local searchCache = app.searchCache;

-- Performance cache
local _GetRaidRosterInfo, _GuildControlGetNumRanks, _GetGuildRosterInfo, _GetGuildRosterLastOnline =
	   GetRaidRosterInfo,  GuildControlGetNumRanks,  GetGuildRosterInfo,  GetGuildRosterLastOnline;
local _GetItemInfo = _G["GetItemInfo"];
local _GetItemInfoInstant = _G["GetItemInfoInstant"];

-- Helper Functions
-- TODO: Make these functions in an internal ATT helper class or something
local defaultComparison = function(a,b)
	return a > b;
end
local function insertionSort(t, compare, nested)
	if t then
		if not compare then compare = defaultComparison; end
		local j;
		for i=2,#t,1 do
			j = i;
			while j > 1 and compare(t[j], t[j - 1]) do
				t[j],t[j - 1] = t[j - 1],t[j];
				j = j - 1;
			end
		end
		if nested then
			for i=#t,1,-1 do
				insertionSort(t[i].g, compare, nested);
			end
		end
	end
end
local function SendGroupChatMessage(msg)
	if IsInRaid() then
		SendChatMessage(msg, "RAID", nil, nil);
	elseif IsInGroup(LE_PARTY_CATEGORY_HOME) then
		SendChatMessage(msg, "PARTY", nil, nil);
	end
end
local function SendGroupMessage(msg)
	if IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and IsInInstance() then
		C_ChatInfo.SendAddonMessage("ATTC", msg, "INSTANCE_CHAT")
	elseif IsInRaid() then
		C_ChatInfo.SendAddonMessage("ATTC", msg, "RAID")
	elseif IsInGroup(LE_PARTY_CATEGORY_HOME) then
		C_ChatInfo.SendAddonMessage("ATTC", msg, "PARTY")
	end
end
local function SendGUIDWhisper(msg, guid)
	local name = select(6, GetPlayerInfoByGUID(guid));
	if name then SendChatMessage(msg, "WHISPER", nil, name); end
end
local function SendGuildMessage(msg)
	if IsInGuild() then
		C_ChatInfo.SendAddonMessage("ATTC", msg, "GUILD");
	else
		app.events.CHAT_MSG_ADDON("ATTC", msg, "WHISPER", "player");
	end
end

-- Local Functions
local SoftReservesDirty = nil;
local function SortByText(a, b)
	return b.text > a.text;
end
local function SortByTextAndPriority(a, b)
	if b.priority >= a.priority then
		return b.text > a.text;
	else
		return false;
	end
end

-- Soft Reserve Functions
app.ParseSoftReserve = function(app, guid, cmd, isSilentMode, isCurrentPlayer)
	-- Attempt to parse the command.
	if cmd and cmd ~= "" then
		cmd = cmd:match("^%s*(.+)$");
		if cmd == "clear" or cmd == '0' then
			app:UpdateSoftReserve(guid, nil, time(), isSilentMode, isCurrentPlayer);
			return;
		end
		
		-- Parse out the itemID if possible.
		local itemID = tonumber(cmd) or _GetItemInfoInstant(cmd);
		if itemID then cmd = "itemid:" .. itemID; end
		
		-- Search for the Link in the database
		local group = app.SearchForLink(cmd);
		if group and #group > 0 then
			for i,g in ipairs(group) do
				if g.itemID then
					app:UpdateSoftReserve(guid, g.itemID, time(), isSilentMode, isCurrentPlayer);
					return true;
				end
			end
		end
	end
	
	-- Send back an error message.
	SendGUIDWhisper("Unrecognized Command. Please use '!sr [itemLink/itemID]'. You can send an item link or an itemID from WoWHead. EX: '!sr 12345' or '!sr [Azuresong Mageblade]'", guid);
end
app.PlayerGUIDFromInfo = setmetatable({}, { __index = function(t, info)
	-- Let WoW parse it.
	local guid = UnitGUID(info);
	if guid then
		rawset(t, info, guid);
		return guid;
	end
	if string.match(info, "Player-") then
		-- Already a GUID!
		rawset(t, info, info);
		return info;
	end
	
	-- Only check the guild once every 10 seconds.
	if (rawget(t, "cooldown") or 0) <= time() then
		local count = GetNumGuildMembers();
		if count > 0 then
			for guildIndex = 1, count, 1 do
				local name, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, guid = GetGuildRosterInfo(guildIndex);
				if name and guid then
					rawset(t, strsplit('-', name), guid);
				end
			end
		end
		rawset(t, "cooldown", time() + 10);
		return rawget(t, info);
	end
end });
app.PushSoftReserve = function(ignoreZero)
	local guid, itemID, timeStamp = UnitGUID("player");
	local reserves = app.GetDataMember("SoftReserves");
	if reserves then
		local oldreserve = reserves[guid];
		if oldreserve then
			itemID = oldreserve[1];
			timeStamp = oldreserve[2];
		end
	end
	if itemID or not ignoreZero then
		itemID = "!\tsr\t" .. guid .. "\t" .. (itemID or 0);
		if timeStamp then itemID = itemID .. "\t" .. timeStamp; end
		SendGuildMessage(itemID);
		if IsInGroup() then SendGroupMessage(itemID); end
	end
end
app.PushSoftReserves = function(method, target)
	local reserves = app.GetDataMember("SoftReserves");
	if reserves then
		local count, length, msg, s = 7, 0, "!\tsrml";
		if not method then method = app.GetGroupType(); end
		for gu,reserve in pairs(reserves) do
			if gu and IsGUIDInGroup(gu) then
				s = "\t" .. gu .. "\t" .. reserve[1];
				length = string.len(s);
				if count + length >= 255 then
					C_ChatInfo.SendAddonMessage("ATTC", msg, method, target);
					count = 7;
					msg = "!\tsrml";
				else
					count = count + length;
					msg = msg .. s;
				end
			end
		end
		if count > 5 then
			C_ChatInfo.SendAddonMessage("ATTC", msg, method, target);
		end
	end
end
app.QuerySoftReserve = function(app, guid, cmd, target)
	-- Attempt to parse the command.
	if cmd and cmd ~= "" then
		local all = not IsInGroup() or not IsGUIDInGroup(guid);
		cmd = cmd:match("^%s*(.+)$");
		if strsub(cmd, 1, 3) == "all" then
			cmd = strsub(cmd, 4):match("^%s*(.+)$");
			all = true;
		elseif cmd == "srml" then
			if app.IsMasterLooter() then
				-- Push the Soft Reserve List to the target.
				app.PushSoftReserves("WHISPER", target);
			end
			return true;
		end
		
		-- Parse out the itemID if possible.
		local itemID = tonumber(cmd) or _GetItemInfoInstant(cmd);
		if itemID then cmd = "itemid:" .. itemID; end
		
		-- Search for the Link in the database
		local group = app.SearchForLink(cmd);
		if group and #group > 0 then
			for i,g in ipairs(group) do
				if g.itemID then
					local link = g.link;
					if not link or link == RETRIEVING_DATA or strsub(link, 1, 4) == "item" then
						link = "item:" .. g.itemID;
					end
					local sr = {};
					local message = link .. " ";
					local reservesForItem = app.GetTempDataMember("SoftReservesByItemID")[g.itemID];
					if reservesForItem then
						for i,guid in ipairs(reservesForItem) do
							if guid and (all or IsGUIDInGroup(guid)) then
								local unit = app.CreateSoftReserveUnit(guid);
								table.insert(sr, unit.unitText and unit.name or guid);
							end
						end
					end
					if #sr == 0 then
						if all then
							message = message .. "Not Soft Reserved by anyone.";
						else
							message = message .. "Not Soft Reserved by anyone in our group.";
						end
					else
						for i,name in ipairs(sr) do
							if i > 1 then message = message .. ", "; end
							message = message .. name;
						end
					end
					SendGUIDWhisper(message, guid);
					return true;
				end
			end
		end
	else
		local reserve = rawget(app.GetDataMember("SoftReserves"), guid);
		if reserve then
			-- Parse out the itemID if possible.
			local itemID = type(reserve) == 'number' and reserve or reserve[1];
			if itemID then itemID = "itemid:" .. itemID; end
			
			-- Search for the Link in the database
			local group = app.SearchForLink(itemID);
			if group and #group > 0 then
				for i,g in ipairs(group) do
					if g.itemID then
						local link = g.link;
						if not link or link == RETRIEVING_DATA or strsub(link, 1, 4) == "item" then
							link = "item:" .. g.itemID;
						end
						SendGUIDWhisper("You have " .. link .. " Soft Reserved.", guid);
						return true;
					end
				end
			end
		else
			SendGUIDWhisper("You have nothing Soft Reserved.", guid);
			return true;
		end
	end
	
	-- Send back an error message.
	SendGUIDWhisper("Unrecognized Command. Please use '!sr [itemLink/itemID]'. You can send an item link or an itemID from WoWHead. EX: '!sr 12345' or '!sr [Azuresong Mageblade]'", guid);
end
app.RefreshSoftReserveWindow = function(app, force)
	if SoftReservesDirty or force then
		SoftReservesDirty = nil;
		app:GetWindow("SoftReserves"):Update(true);
	end
end
app.UpdateSoftReserveInternal = function(app, guid, itemID, timeStamp, isCurrentPlayer)
	local reserves = app.GetDataMember("SoftReserves");
	local reservesByItemID = app.GetTempDataMember("SoftReservesByItemID");
	
	-- Check the Old Reserve against the new one.
	local oldreserve = reserves[guid];
	if oldreserve then
		-- If there was an old reservation...
		local oldItemID = oldreserve[1];
		if oldItemID then
			if oldItemID == itemID then
				return true;
			end
			
			-- Uncache the reserve
			local reservesForItem = reservesByItemID[oldItemID];
			if reservesForItem then
				for i,value in ipairs(reservesForItem) do
					if value == guid then
						table.remove(reservesForItem, i);
						break;
					end
				end
			end
		end
	end
	
	-- Update the Reservation
	wipe(searchCache);
	SoftReservesDirty = true;
	if itemID and itemID > 0 then
		if not timeStamp then timeStamp = time(); end
		reserves[guid] = { itemID, timeStamp };
		local reservesForItem = reservesByItemID[itemID];
		if not reservesForItem then
			reservesForItem = {};
			reservesByItemID[itemID] = reservesForItem;
		end
		table.insert(reservesForItem, guid);
	else
		itemID = 0;
		reserves[guid] = nil;
	end
	if isCurrentPlayer then
		itemID = "!\tsr\t" .. guid .. "\t" .. itemID;
		if timeStamp then itemID = itemID .. "\t" .. timeStamp; end
		SendGuildMessage(itemID);
		if IsInGroup() then SendGroupMessage(itemID); end
	end
end
app.UpdateSoftReserve = function(app, guid, itemID, timeStamp, silentMode, isCurrentPlayer)
	if IsInGroup() and app.GetDataMember("SoftReserves")[guid] and not app.IsMasterLooter() and app.Settings:GetTooltipSetting("SoftReservesLocked") then
		if not silentMode then
			SendGUIDWhisper("The Soft Reserve is currently locked by your Master Looter. Please make sure to update your Soft Reserve before raid next time!", guid);
		end
	else
		-- If they didn't previously have a reserve, then allow it. If so, then reject it.
		app:UpdateSoftReserveInternal(guid, itemID, timeStamp, isCurrentPlayer);
		app:RefreshSoftReserveWindow();
		if not silentMode then
			if itemID then
				local searchResults = app.SearchForLink("itemid:" .. itemID);
				if searchResults and #searchResults > 0 then
					if guid ~= UnitGUID("player") then
						SendGUIDWhisper("SR: Updated to " .. (searchResults[1].link or _GetItemInfo(itemID) or ("itemid:" .. itemID)), guid);
					end
					if app.IsMasterLooter() then
						C_ChatInfo.SendAddonMessage("ATTC", "!\tsrml\t" .. guid .. "\t" .. itemID, app.GetGroupType());
						if app.Settings:GetTooltipSetting("SoftReservesLocked") then
							SendGroupChatMessage("Updated " .. (app:GetWindow("SoftReserves").GUIDToName(guid) or UnitName(guid) or guid) .. " to " .. (searchResults[1].link or _GetItemInfo(itemID) or ("itemid:" .. itemID)));
						end
					end
				end
			else
				if guid ~= UnitGUID("player") then
					SendGUIDWhisper("SR: Cleared.", guid);
				end
				if app.IsMasterLooter() then
					C_ChatInfo.SendAddonMessage("ATTC", "!\tsrml\t" .. guid .. "\t0", app.GetGroupType());
				end
			end
		end
	end
end


-- Implementation
app:GetWindow("SoftReserves", {
	parent = UIParent,
	Silent = true,
	OnInit = function(self)
		self.ignoreNoEntries = true;
		SLASH_ATTCSR1 = "/attsr";
		SLASH_ATTCSR2 = "/attsoft";
		SLASH_ATTCSR3 = "/attsoftreserve";
		SLASH_ATTCSR4 = "/attsoftreserves";
		SlashCmdList["ATTCSR"] = function(cmd)
			if cmd and cmd ~= "" then
				app:ParseSoftReserve(UnitGUID("player"), cmd, true, true);
			else
				-- Default command
				self:Toggle();
			end
		end
		
		-- Setup Event Handlers and register for events
		self:SetScript("OnEvent", function(self, e, ...)
			if e == "GROUP_ROSTER_UPDATE" or e == "PARTY_LOOT_METHOD_CHANGED" then
				self:Update(true);
			else
				self:Refresh();
			end
		end);
		self:RegisterEvent("GROUP_ROSTER_UPDATE");
		self:RegisterEvent("CHAT_MSG_SYSTEM");
		self:RegisterEvent("PARTY_LOOT_METHOD_CHANGED");
	end,
	OnRebuild = function(self)
		if self.data then return true; end
		self.groupMembers = {};
		self.data = {
			text = "Soft Reserves",
			icon = app.asset("Achievement_Dungeon_HEROIC_GloryoftheRaider"), 
			description = "The soft reservation list submitted by your raid group. This is managed through the Master Looter, should they have " .. appName .. " installed. If not, this feature will not function.\n\nML: Members of your raid without " .. appName .. " installed can whisper you '!sr <itemlink>' or '!sr <itemID>' to Soft Reserve an item.",
			visible = true, 
			expanded = true,
			dirty = true,
			back = 1,
			g = {},
			options = {
				app.CreateLootMethod("group", {	-- Loot Method Selector
					title = LOOT_METHOD,
					description = "If you are seeing this option, you are the group leader and have not setup Master Looter yet.",
					visible = true,
					priority = 1,
					OnClick = function(row, button)
						SetLootMethod("master", UnitName("player"));
						return true;
					end,
					OnUpdate = function(data)
						data.visible = IsInGroup() and UnitIsGroupLeader("player", "raid");
						if data.visible then
							data.id = GetLootMethod();
							data.visible = data.id ~= "master";
						end
						return true;
					end,
				}),
				setmetatable({	-- Lock All Soft Reserves Button
					text = "Lock All Soft Reserves",
					icon = "Interface\\Icons\\INV_MISC_KEY_13",
					description_ML = "Click to toggle locking the Soft Reserves. You must click this again to turn it back off.",
					description_PLEB = "Your Master Looter controls whether the Soft Reserve list is locked or not.",
					visible = true,
					priority = 2,
					OnClick = function(row, button)
						if app.IsMasterLooter() then
							local locked = not app.Settings:GetTooltipSetting("SoftReservesLocked");
							if locked then app.PushSoftReserves(); end
							SendGroupMessage("!\tsrlock\t" .. (locked and 1 or 0));
							app.Settings:SetTooltipSetting("SoftReservesLocked", locked);
							SendGroupChatMessage(locked and "Soft Reserves locked." or "Soft Reserves unlocked.");
							wipe(searchCache);
							self:Update();
							return true;
						else
							app.print("You must be the Master Looter to lock the soft reserves.");
						end
					end,
					OnUpdate = function(data)
						if IsInGroup() then
							if GetLootMethod() == "master" then
								data.visible = true;
								if app.IsMasterLooter() then
									data.description = data.description_ML;
								else
									data.description = data.description_PLEB;
								end
							else
								data.visible = app.Settings:GetTooltipSetting("SoftReservesLocked");
								data.description = data.description_PLEB;
							end
						else
							data.visible = false;
							
							-- Automatically unlock when not in a group.
							local locked = app.Settings:GetTooltipSetting("SoftReservesLocked");
							if locked then
								app.Settings:SetTooltipSetting("SoftReservesLocked", false);
								wipe(searchCache);
								self:Update();
								return true;
							end
						end
						return true;
					end,
				}, {
					__index = function(t, key)
						if key == "title" then
							if t.saved then return "Locked"; end
						elseif key == "saved" then
							if app.Settings:GetTooltipSetting("SoftReservesLocked") then
								return 1;
							end
						elseif key == "trackable" then
							return true;
						else
							return table[key];
						end
					end
				}),
				setmetatable({	-- Use Persistence Button
					text = "Use Persistence",
					icon = "Interface\\Icons\\INV_MISC_KEY_13",
					description_ML = "Click to toggle Persistence for this raid.\n\nIf Persistence is active, each member of the raid with a persistence value on their Soft Reserved item gets a +10 to the top end of their roll for each Persistence they have on the item.\n\nYou may import Persistence from a CSV document.\n\nPersistence is stored locally and not sent to your group.",
					description_PLEB = "Your Master Looter controls whether Persistence is active or not.",
					description_SOLO = "Click to toggle Persistence for viewing the list outside of raid.\n\nThis state will change when you join a group whose Persistence is inactive.",
					visible = true,
					priority = 3,
					OnClick = function(row, button)
						if app.IsMasterLooter() or not IsInGroup() then
							local persistence = not app.Settings:GetTooltipSetting("SoftReservePersistence");
							app.Settings:SetTooltipSetting("SoftReservePersistence", persistence);
							SendGroupMessage("!\tsrpersistence\t" .. (persistence and 1 or 0));
							wipe(searchCache);
							self:Update();
							return true;
						else
							app.print("You must be the Master Looter to modify Persistence.");
						end
					end,
					OnUpdate = function(data)
						if IsInGroup() then
							if GetLootMethod() == "master" then
								data.visible = true;
								if app.IsMasterLooter() then
									data.description = data.description_ML;
								else
									data.description = data.description_PLEB;
								end
							else
								data.visible = app.Settings:GetTooltipSetting("SoftReservePersistence");
								data.description = data.description_PLEB;
							end
						else
							data.visible = true;
							data.description = data.description_SOLO;
						end
						return true;
					end,
				}, {
					__index = function(t, key)
						if key == "title" then
							if t.saved then return "Persistence Active"; end
						elseif key == "saved" then
							if app.Settings:GetTooltipSetting("SoftReservePersistence") then
								return 1;
							end
						elseif key == "trackable" then
							return true;
						else
							return table[key];
						end
					end
				}),
				{	-- Import Persistence Button
					text = "Import Persistence",
					icon = "Interface\\Icons\\INV_MISC_KEY_12",
					description = "Click this to import Persistence from a CSV document.\n\nFORMAT:\nPLAYER NAME/GUID \\t ITEM NAME/ID \\t PERSISTENCE\n\nNOTE: There's an issue with Blizzard not finding player GUIDs that aren't in your raid and items that you personally have never encountered. For best performance, import Player GUIDs, Item IDs, and Persistence values.\n\nPersistence is stored locally and not sent to your group.",
					visible = true,
					priority = 4,
					OnClick = function(row, button)
						app:ShowPopupDialogWithMultiLineEditBox("FORMAT: PLAYER NAME\\tITEM NAME/ID\\tPERSISTENCE\n\n", function(text)
							text = string.gsub(text, "    ", "\t");	-- The WoW UI converts tab characters into 4 spaces in the English Client.
							local u, pers, g, word, l, esc, c = "", {}, {}, "", string.len(text), false;
							for i=1,l,1 do
								c = string.sub(text, i, i);
								if c == "\\" then
									esc = true;
								elseif esc then
									esc = false;
									if c == "t" then
										c = "\t";
									elseif c == "n" or c == "r" then
										c = "\n";
									else
										-- Add back the backslash.
										word = word .. "\\";
									end
								end
								
								if c == "\t" then
									if string.len(word) > 0 then
										if #g < 1 then
											u = word;
										end
										tinsert(g, word);
										word = "";
									else
										if #g < 1 and string.len(u) > 0 then
											tinsert(g, u);
										end
									end
								elseif c == "\n" or c == "\r" then
									if string.len(word) > 0 then
										tinsert(g, word);
										word = "";
									end
									if #g > 2 then
										if not string.match(g[1], "FORMAT: ") then
											tinsert(pers, g);
										end
										g = {};
									end
								else
									word = word .. c;
								end
							end
							if string.len(word) > 0 then
								tinsert(g, word);
							end
							if #g > 2 and not string.match(g[1], "FORMAT: ") then tinsert(pers, g); end
							if #pers > 0 then
								local success = 0;
								local allpersistence, allsrs = app.GetDataMember("SoftReservePersistence"), app.GetDataMember("SoftReserves");
								for i,g in ipairs(pers) do
									local guid, itemID = app.PlayerGUIDFromInfo[g[1]], app.ParseItemID(g[2]);
									if guid and itemID then
										local persistence = rawget(allpersistence, guid);
										if not persistence then
											persistence = {};
											allpersistence[guid] = persistence;
										end
										persistence[itemID] = tonumber(g[3]);
										success = success + 1;
										-- app.print(g[1] .. ": " .. (select(2, _GetItemInfo(itemID)) or g[2]) .. " [+" .. g[3] .. "]");
									else
										app.print("FAILED TO IMPORT: ", g[1], g[2], guid, itemID);
									end
								end
								if success > 0 then
									app.print("Successfully imported " .. success .. " Persistence entries.");
								end
							end
						end);
						wipe(searchCache);
						self:Update();
						return true;
					end,
				},
				{	-- Push List to Group Members Button
					text = "Push List to Group Members",
					icon = "Interface\\Icons\\INV_Wand_06",
					description = "Press this button to send an addon message to your group containing all of the Soft Reserves in this session.",
					visible = true,
					priority = 6,
					OnClick = function(row, button)
						app.PushSoftReserves();
						return true;
					end,
					OnUpdate = function(data)
						if app.IsMasterLooter() then
							data.visible = true;
						else
							data.visible = false;
						end
						return true;
					end,
				},
				{	-- Push Soft Reserve Button
					text = "Push Soft Reserve",
					icon = "Interface\\Icons\\INV_Wand_06",
					description = "Press this button to send an addon message containing your Soft Reserve to your group or guild.",
					visible = true,
					priority = 6,
					OnClick = function(row, button)
						app.PushSoftReserve();
						return true;
					end,
					OnUpdate = function(data)
						if app.Settings:GetTooltipSetting("SoftReservesLocked") or app.IsMasterLooter() then
							data.visible = false;
						else
							data.visible = true;
						end
						return true;
					end,
				},
				{	-- Query Group Members Button
					text = "Query Group Members",
					icon = "Interface\\Icons\\INV_Wand_05",
					description = "Press this button to send an addon message to your Group Members to update their Soft Reserves.",
					priority = 7,
					OnClick = function(row, button)
						SendGroupMessage("?\tsr");
						self:Rebuild();
						return true;
					end,
					OnUpdate = function(data)
						if IsInGroup() then
							if app.Settings:GetTooltipSetting("SoftReservesLocked") then
								data.visible = false;
							elseif app.IsMasterLooter() then
								data.visible = true;
							else
								data.visible = false;
							end
						else
							data.visible = false;
						end
						return true;
					end,
				},
				{	-- Query Guild Members Button
					text = "Query Guild Members",
					icon = "Interface\\Icons\\INV_Wand_04",
					description = "Press this button to send an addon message to your Guild Members to update their Soft Reserves.",
					visible = true,
					priority = 7,
					OnClick = function(row, button)
						SendGuildMessage("?\tsr");
						self:Rebuild();
						return true;
					end,
					OnUpdate = function(data)
						if IsInGroup() then
							data.visible = false;
						else
							if app.Settings:GetTooltipSetting("SoftReservesLocked") then
								data.visible = false;
							elseif not IsInGroup() or app.IsMasterLooter() then
								data.visible = true;
							else
								data.visible = false;
							end
						end
						return true;
					end,
				},
				{	-- Query Master Looter Button
					text = "Query Master Looter",
					icon = "Interface\\Icons\\INV_Wand_06",
					description = "Press this button to send an addon message to the Master Looter for a list of all the Soft Reserves in the raid.",
					cooldown = 0,
					priority = 7,
					OnClick = function(row, button)
						SendGroupMessage("?\tsrml");
						self:Rebuild();
						return true;
					end,
					OnUpdate = function(data)
						if not IsInGroup() or GetLootMethod() ~= "master" or app.IsMasterLooter() then
							data.visible = false;
						else
							data.visible = true;
						end
						return true;
					end,
				},
				{	-- Export Soft Reserves Button
					text = "Export Soft Reserves",
					icon = "Interface\\Icons\\Spell_Shadow_LifeDrain02",
					description = "Press this button to open an edit box containing the full content of your raid's Soft Reserve list in the format expected by the Persistence importer.\n\nYou can give this string to your raid members for them to import the full persistence list for the session.",
					visible = true,
					priority = 8,
					OnClick = function(row, button)
						local s, count = "", 0;
						for i,o in ipairs(self.data.g) do
							if o.guid then
								if count > 0 then
									s = s .. "\n";
								end
								s = s .. o.guid .. "\\t" .. (o.itemID or 0) .. "\\t" .. (o.persistence or 0) .. "\\t" .. o.name .. "\\t" .. o.itemName;
								count = count + 1;
							end
						end
						
						app:ShowPopupDialogWithMultiLineEditBox(s);
						return true;
					end,
					OnUpdate = function(data)
						if app.Settings:GetTooltipSetting("SoftReservesLocked") then
							data.visible = true;
						else
							data.visible = false;
						end
						return true;
					end,
				},
				{	-- Guild Members Header
					text = "Guild Members",
					icon = "Interface\\Icons\\Ability_Warrior_BattleShout",
					description = "These active characters are in your guild.\n\nOnly showing characters logged in the last 2 months.",
					priority = 10,
					ranks = {},
					g = {},
					OnUpdate = function(data)
						if IsInGroup() then return false; end
						-- Insert Guild Members
						local g, groupMembers = data.g, self.groupMembers;
						if #g < 1 then
							local numRanks = _GuildControlGetNumRanks();
							if numRanks > 0 then
								for rankIndex = #g + 1, numRanks, 1 do
									table.insert(g, {
										text = GuildControlGetRankName(rankIndex),
										icon = format("Interface\\PvPRankBadges\\PvPRank%02d",  (15 - rankIndex)),
										--OnUpdate = app.AlwaysShowUpdate,
										parent = data,
										visible = true,
										g = {},
									});
								end
								
								local debugMode = app.Settings:Get("DebugMode");
								local count = GetNumGuildMembers();
								if count > 0 then
									for guildIndex = 1, count, 1 do
										local _, _, rankIndex, _, _, _, _, _, _, _, _, _, _, _, _, _, guid = _GetGuildRosterInfo(guildIndex);
										if guid then
											if not groupMembers[guid] then
												groupMembers[guid] = true;
												local yearsOffline, monthsOffline, daysOffline, hoursOffline = _GetGuildRosterLastOnline(guildIndex);
												if (((yearsOffline or 0) * 12) + (monthsOffline or 0)) < 3 or debugMode then
													local a = g[rankIndex + 1];
													if a then table.insert(a.g, app.CreateSoftReserveUnit(guid, { parent = a, visible = true })); end
												end
											end
										end
									end
									
									local any = false;
									for rankIndex = 1, numRanks, 1 do
										if #g[rankIndex].g > 0 then
											insertionSort(g[rankIndex].g, SortByText);
											any = true;
										end
									end
									data.visible = any;
									return true;
								end
							end
						end
					end,
				},
				{	-- Non-Group Members Header
					text = "Non-Group Members",
					icon = "Interface\\Icons\\INV_Misc_Head_Dragon_01",
					description = "These are players that have Soft Reserved something in your raid, but are not currently in your group.",
					visible = true,
					priority = 11,
					g = {},
					OnUpdate = function(data)
						data.visible = #data.g > 0 and not app.Settings:GetTooltipSetting("SoftReservesLocked");
					end,
				}
			},
			OnUpdate = function(data)
				local g, groupMembers = data.g, self.groupMembers;
				wipe(g);
				
				-- Insert yourself every time.
				local name = UnitName("player");
				local me = groupMembers[name];
				if not me then
					me = app.CreateSoftReserveUnit(app.GUID, { parent = data, priority = 8, OnUpdate = app.AlwaysShowUpdate });	-- YOU!
					groupMembers[name] = me;
				end
				
				-- Add in your group members.
				local count = GetNumGroupMembers();
				if count > 0 then
					local groupies = { [name] = true };
					for raidIndex = 1, 40, 1 do
						name = _GetRaidRosterInfo(raidIndex);
						if name then
							groupies[name] = true;
							if not groupMembers[name] then
								groupMembers[name] = app.CreateSoftReserveUnit(name, { parent = data, priority = 9, OnUpdate = app.AlwaysShowUpdate });
							end
						end
					end
					
					-- Insert every groupie! (including yourself!)
					for name,member in pairs(groupMembers) do
						if groupies[name] then
							table.insert(g, member);
						end
					end
				else
					-- Insert just you!
					table.insert(g, me);
				end
				for i,option in ipairs(data.options) do
					option.parent = data;
					table.insert(g, option);
				end
				insertionSort(g, SortByTextAndPriority);
			end,
		};
		return true;
	end,
	OnUpdate = function(self, ...)
		-- Update the groups without forcing Debug Mode.
		local visibilityFilter, groupFilter, GroupRequirementsFilter = app.VisibilityFilter, app.GroupFilter, app.GroupRequirementsFilter;
		app.GroupRequirementsFilter = app.NoFilter;
		app.GroupFilter = app.NoFilter;
		app.VisibilityFilter = app.ObjectVisibilityFilter;
		self:DefaultUpdate(...);
		app.GroupRequirementsFilter = GroupRequirementsFilter;
		app.GroupFilter = groupFilter;
		app.VisibilityFilter = visibilityFilter;
		return false;
	end
});
end