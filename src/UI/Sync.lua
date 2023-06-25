-- Sync Module
local appName, app = ...;

-- App locals
local function SortByText(a, b)
	return b.text > a.text;
end

-- Helper Functions
local function OnClickForCharacter(row, button)
	if button == "RightButton" then
		if IsAltKeyDown() then
			local character = ATTCharacterData[row.ref.datalink];
			if character then character.ignored = not character.ignored; end
			row:GetParent():GetParent():Rebuild();
		else
			app:ShowPopupDialog("CHARACTER DATA: " .. (row.ref.text or RETRIEVING_DATA) .. "\n \nAre you sure you want to delete this?",
			function()
				ATTCharacterData[row.ref.datalink] = nil;
				app:RecalculateAccountWideData();
				row:GetParent():GetParent():Rebuild();
			end);
		end
	elseif button == "LeftButton" then
		local character = ATTCharacterData[row.ref.datalink];
		if character then 
			local msg = "?\tsyncsumchar\t" .. row.ref.datalink .. ":" .. character.lastPlayed;
			for playerName,allowed in pairs(ATTClassicAD.LinkedAccounts) do
				if allowed and not string.find(playerName, "#") then
					C_ChatInfo.SendAddonMessage("ATTC", msg, "WHISPER", playerName);
				end
			end
		end
	end
	return true;
end
local function OnClickForLinkedAccount(row, button)
	if button == "RightButton" then
		app:ShowPopupDialog("LINKED ACCOUNT: " .. (row.ref.text or RETRIEVING_DATA) .. "\n \nAre you sure you want to delete this?",
		function()
			ATTClassicAD.LinkedAccounts[row.ref.datalink] = nil;
			app:SynchronizeWithPlayer(row.ref.datalink);
			row:GetParent():GetParent():Rebuild();
		end);
	end
	return true;
end
local function OnTooltipForCharacter(t)
	local character = ATTCharacterData[t.unit];
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

app:GetWindow("Sync", {
	parent = UIParent,
	Silent = true,
	OnRebuild = function(self)
		if self.data then return true; end
		self.data = {
			text = "Account Management",
			icon = app.asset("Achievement_Dungeon_HEROIC_GloryoftheRaider"), 
			description = "This list shows you all of the functionality related to syncing account data.",
			visible = true, 
			expanded = true,
			indent = 0,
			back = 1,
			g = {
				{
					text = "Add Linked Character / Account",
					icon = app.asset("Ability_Priest_VoidShift"),
					description = "Click here to link a character or account to your account.",
					OnUpdate = app.AlwaysShowUpdate,
					OnClick = function(row, button)
						app:ShowPopupDialogWithEditBox("Please type the name of the character or BNET account to link to.", "", function(cmd)
							if cmd and cmd ~= "" then
								ATTClassicAD.LinkedAccounts[cmd] = true;
								self:Rebuild();
							end
						end);
						return true;
					end,
				},
				{
					text = "Sync All Characters",
					icon = app.asset("Ability_Priest_VoidShift"),
					description = "Click here to sync all of your characters.",
					OnUpdate = app.AlwaysShowUpdate,
					OnClick = function(row, button)
						app:Synchronize();
						return true;
					end,
				},
				-- Characters Section
				{
					text = "Characters",
					icon = "Interface\\FriendsFrame\\Battlenet-Portrait",
					description = "This shows all of the characters on your account.",
					expanded = true,
					characters = {},
					g = {},
					OnUpdate = function(data)
						local g, characters = data.g, data.characters;
						wipe(g);
						for guid,character in pairs(characters) do
							table.insert(g, character);
						end
						for guid,characterData in pairs(ATTCharacterData) do
							if characterData then
								local character = characters[guid];
								if not character then
									character = app.CreateUnit(guid, {
										datalink = guid,
										OnClick = OnClickForCharacter,
										OnTooltip = OnTooltipForCharacter,
										OnUpdate = app.AlwaysShowUpdate,
										trackable = true,
										visible = true,
										parent = data,
									});
									characters[guid] = character;
									table.insert(g, character);
								end
								character.saved = not characterData.ignored and 1;
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
							app.Sort(g, SortByText);
						end
						return app.AlwaysShowUpdate(data);
					end,
				},
				
				-- Linked Accounts Section
				{
					text = "Linked Accounts",
					icon = "Interface\\FriendsFrame\\Battlenet-Portrait",
					description = "This shows all of the linked accounts you have defined so far.",
					expanded = true,
					g = {},
					OnUpdate = function(data)
						local g = data.g;
						wipe(g);
						local charactersByName = {};
						for guid,character in pairs(ATTCharacterData) do
							if character.name then
								charactersByName[character.name] = character;
							end
						end
						
						for playerName,allowed in pairs(ATTClassicAD.LinkedAccounts) do
							local character = charactersByName[playerName];
							if character then
								table.insert(g, app.CreateUnit(playerName, {
									datalink = playerName,
									OnClick = OnClickForLinkedAccount,
									OnTooltip = OnTooltipForLinkedAccount,
									OnUpdate = app.AlwaysShowUpdate,
									visible = true,
									parent = data,
								}));
							elseif string.find("#", playerName) then
								-- Garbage click handler for unsync'd account data.
								table.insert(g, {
									text = playerName,
									datalink = playerName,
									icon = "Interface\\FriendsFrame\\Battlenet-Portrait",
									OnClick = OnClickForLinkedAccount,
									OnTooltip = OnTooltipForLinkedAccount,
									OnUpdate = app.AlwaysShowUpdate,
									visible = true,
									parent = data,
								});
							else
								-- Garbage click handler for unsync'd character data.
								table.insert(g, {
									text = playerName,
									datalink = playerName,
									icon = "Interface\\FriendsFrame\\Battlenet-WoWicon",
									OnClick = OnClickForLinkedAccount,
									OnTooltip = OnTooltipForLinkedAccount,
									OnUpdate = app.AlwaysShowUpdate,
									visible = true,
									parent = data,
								});
							end
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
			},
		};
		return true;
	end,
});