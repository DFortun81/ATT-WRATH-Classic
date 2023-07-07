-- App locals
local appName, app = ...;

-- Global locals
local ipairs, tinsert, pairs, wipe
	= ipairs, tinsert, pairs, wipe;
local C_Timer, GetLootMethod, GetLootThreshold, GetNumGroupMembers, GetRaidRosterInfo =
	  C_Timer, GetLootMethod, GetLootThreshold, GetNumGroupMembers, GetRaidRosterInfo;
local IsInGroup, IsInInstance, LeaveParty, ResetInstances, SetLootMethod =
	  IsInGroup, IsInInstance, LeaveParty, ResetInstances, SetLootMethod;
local GetBuildInfo, ResetInstances, UnitIsGroupLeader =
	  GetBuildInfo, ResetInstances, UnitIsGroupLeader;

-- Implementation
app:GetWindow("RaidAssistant", {
	parent = UIParent,
	Silent = true,
	OnInit = function(self)
		self.ignoreNoEntries = true;
		SLASH_ATTRAIDASSIST1 = "/attra";
		SLASH_ATTRAIDASSIST2 = "/attraid";
		SlashCmdList["ATTRAIDASSIST"] = function(cmd)
			self:Toggle();
		end
		
		-- Setup Event Handlers and register for events
		self:SetScript("OnEvent", function(self, e, ...)
			if e == "ADDON_LOADED" then
				local addonName = ...;
				if addonName == appName then
					self:UnregisterEvent("ADDON_LOADED");
					if app.Settings:GetTooltipSetting("Auto:RaidAssistant") then
						self:Show();
					end
				end
			elseif e == "GROUP_ROSTER_UPDATE" or e == "ZONE_CHANGED_NEW_AREA" then
				self:Update(true);
			else
				self:Update();
			end
		end);
		self:RegisterEvent("ADDON_LOADED");
		self:RegisterEvent("CHAT_MSG_SYSTEM");
		self:RegisterEvent("ZONE_CHANGED_NEW_AREA");
		self:RegisterEvent("GROUP_ROSTER_UPDATE");
	end,
	OnRebuild = function(self, ...)
		if not self.data then
			-- Loot Method Switching
			local lootmethod, lootmasters, lootthreshold;
			lootmethod = {
				text = LOOT_METHOD,
				icon = "Interface\\Icons\\INV_Misc_Coin_01",
				description = "This setting allows you to customize what kind of loot will drop and how much.\n\nThis only works while in a party - If you're by yourself, you can create a Premade Group (just don't invite anyone) and then change it.\n\nClick this row to go back to the Raid Assistant.",
				expanded = true,
				back = 1,
				g = {},
				OnClick = function(row, button)
					self:Reset();
					return true;
				end, 
				OnUpdate = function(data)
					local g = data.g;
					if #g < 1 then
						for key,value in pairs(UnitLootMethod or { group = 1, master = 2 }) do
							local method = app.CreateLootMethod(key);
							method.OnUpdate = app.AlwaysShowUpdate;
							method.parent = data;
							table.insert(g, method);
						end
					end
					data.visible = true;
				end,
			};
			lootmasters = {
				text = MASTER_LOOTER,
				icon = "Interface\\Icons\\INV_Misc_Coin_01",
				description = "This setting allows you to select a new Master Looter.",
				expanded = true,
				members = {},
				back = 1,
				g = {},
				OnClick = function(row, button)
					self:Reset();
					return true;
				end,
				OnUpdate = function(data)
					local g = data.g;
					wipe(g);
					local count = GetNumGroupMembers();
					if count > 0 then
						local members = data.members;
						for raidIndex = 1, 40, 1 do
							local name, rank, subgroup, level, class, fileName, zone, online, isDead, role, isML = GetRaidRosterInfo(raidIndex);
							if name then
								local guid = UnitGUID(name);
								local member = members[name];
								if not member then
									member = app.CreateUnit(guid or name, {
										isML = isML,
										parent = data,
										OnUpdate = app.AlwaysShowUpdate,
										OnClick = function(row, button)
											SetLootMethod("master", row.ref.name);
											self:Reset();
											return true;
										end,
									});
									members[name] = member;
								else
									member.isML = isML;
								end
								table.insert(data.g, member);
							end
						end
					end
					data.visible = true;
				end,
			};
			lootthreshold = {
				text = "Loot Threshold",
				icon = "Interface\\Icons\\INV_Misc_Coin_01.blp",
				description = "Select a new loot threshold.",
				expanded = true,
				maximum = 5,
				minimum = (select(4, GetBuildInfo()) > 11403) and 2 or 0,
				back = 1,
				g = {},
				OnClick = function(row, button)
					self:Reset();
					return true;
				end,
				OnUpdate = function(data)
					local g = data.g;
					if #g < 1 then
						local maximum, minimum = data.maximum, data.minimum;
						for i=maximum,minimum,-1 do
							local threshold = app.CreateLootThreshold(i);
							threshold.OnUpdate = app.AlwaysShowUpdate;
							threshold.parent = data;
							tinsert(g, threshold);
						end
					end
					data.visible = true;
				end,
			};
			
			-- Raid Assistant
			local raidassistant = {
				text = "Raid Assistant",
				icon = app.asset("Achievement_Dungeon_GloryoftheRaider"), 
				description = "Never enter the instance with the wrong settings again! Verify that everything is as it should be!",
				visible = true,
				expanded = true,
				back = 1,
				options = {
					app.CreateLootMethod("group", {
						title = LOOT_METHOD,
						OnClick = function(row, button)
							if UnitIsGroupLeader("player", "raid") then
								self.data = lootmethod;
								self:Update(true);
							end
							return true;
						end,
						OnUpdate = function(data)
							data.visible = IsInGroup();
							if data.visible then
								data.id = GetLootMethod();
							end
							return true;
						end,
					}),
					app.CreateUnit("player", {
						title = MASTER_LOOTER,
						description = "This player is currently the Master Looter.",
						OnClick = function(row, button)
							if UnitIsGroupLeader("player", "raid") then
								self.data = lootmasters;
								self:Update(true);
							end
							return true;
						end,
						OnUpdate = function(data)
							if IsInGroup() then
								local lootMethod, partyIndex, raidIndex = GetLootMethod();
								if lootMethod == "master" then
									local savedData = {};
									savedData.parent = data.parent;
									savedData.title = data.title;
									savedData.description = data.description;
									savedData.OnClick = data.OnClick;
									savedData.OnUpdate = data.OnUpdate;
									if raidIndex then
										savedData.unit = "raid" .. raidIndex;
									elseif partyIndex == 0 then
										savedData.unit = "player";
									else
										savedData.unit = "party" .. partyIndex;
									end
									wipe(data);
									for key,value in pairs(savedData) do
										data[key] = value;
									end
									data.visible = true;
								else
									data.visible = false;
								end
							else
								data.visible = false;
							end
							return true;
						end,
					}),
					app.CreateLootThreshold(2, {
						title = LOOT_TRESHOLD,
						visible = true,
						OnClick = function(row, button)
							if UnitIsGroupLeader("player", "raid") then
								self.data = lootthreshold;
								self:Update(true);
							end
							return true;
						end,
						OnUpdate = function(data)
							data.visible = IsInGroup();
							if data.visible then
								data.id = GetLootThreshold();
							end
							return true;
						end,
					}),
					{
						text = "Reset Instances",
						icon = app.asset("Ability_Priest_VoidShift"),
						description = "Click here to reset your instances.\n\nAlt+Click to toggle automatically resetting your instances when you leave a dungeon.\n\nWARNING: BE CAREFUL WITH THIS!",
						OnClick = function(row, button)
							if IsAltKeyDown() then
								row.ref.saved = not row.ref.saved;
								self:Update();
							else
								ResetInstances();
							end
							return true;
						end,
						OnUpdate = function(data)
							data.visible = (not IsInGroup() or UnitIsGroupLeader("player", "raid"));
							if data.visible and data.saved then
								if IsInInstance() then
									data.shouldReset = true;
								elseif data.shouldReset then
									data.shouldReset = nil;
									C_Timer.After(0.5, ResetInstances);
								end
							end
							return true;
						end,
					},
					{
						text = "Leave Group",
						icon = "Interface\\Icons\\Ability_Vanish",
						description = "Click here to leave the group. In most instances, this will also port you to the nearest graveyard after 60 seconds or so.\n\nNOTE: Only works if you're in a group or if the game thinks you're in a group.",
						['visible'] = true,
						['OnClick'] = function(row, button)
							LeaveParty();
							self:Reset();
							return true;
						end,
						['OnUpdate'] = function(data)
							data.visible = IsInGroup();
							return true;
						end,
					},
					{
						text = "Create a Group",
						icon = "Interface\\Icons\\Ability_Vanish",
						description = "Click here to attempt to create a group.\n\nNOTE: This will invite a fake character and you can use this to force teleport out of dungeons when used in conjection with Leave Group option.",
						['visible'] = true,
						['OnClick'] = function(row, button)
							InviteUnit("ATTGODCRIEVE");
							self:Reset();
							return true;
						end,
						['OnUpdate'] = function(data)
							data.visible = not IsInGroup();
							return true;
						end,
					},
					{
						text = "Create a Raid",
						icon = "Interface\\Icons\\Ability_Vanish",
						description = "Click here to attempt to create a raid group.\n\nNOTE: This will invite a fake character and you can use this to force enter a raid without actually needing to be in a raid group. You need to run into the instance the moment you see 'Party converted to Raid'. It may take a couple of attempts.",
						['visible'] = true,
						['OnClick'] = function(row, button)
							InviteUnit("ATTGODCRIEVE");
							C_Timer.After(.5,function() ConvertToRaid() end);
							self:Reset();
							return true;
						end,
						['OnUpdate'] = function(data)
							data.visible = not IsInGroup();
							return true;
						end,
					},
				},
				g = {},
				OnUpdate = function(data)
					local g = data.g;
					if #g < 1 then
						for i,option in ipairs(data.options) do
							option.parent = data;
							tinsert(g, option);
						end
					end
					data.visible = true;
				end,
			};
			self.data = raidassistant;
			self.Reset = function()
				self.data = raidassistant;
				self:Update(true);
			end
			
			
		end
	end
});