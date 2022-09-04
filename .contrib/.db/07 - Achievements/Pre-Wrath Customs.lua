--------------------------------------------------
--    A C H I E V E M E N T S    M O D U L E    --
--------------------------------------------------
local COMPANIONS_OnClick = [[function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local template = {};
		for i,o in pairs(_.SearchForFieldContainer("speciesID")) do
			table.insert(template, o[1]);
		end
		
		local clone = _.CreateMiniListForGroup(_.CreateAchievement(t[t.key], template)).data;
		clone.OnTooltip = t.OnTooltip;
		clone.OnUpdate = t.OnUpdate;
		clone.rank = t.rank;
		return true;
	end
end]];
local COMPANIONS_OnUpdate = [[function(t)
	if _.CollectibleBattlePets then
		local count = 0;
		local pets = _.SearchForFieldContainer("speciesID");
		for i,g in pairs(pets) do
			if g[1].collected then
				count = count + 1;
			end
		end
		if t.rank > 1 then
			t.progress = math.min(count, t.rank);
			t.total = t.rank;
			t.collectible = false;
			
			if _.GroupFilter(t) then
				local parent = t.parent;
				parent.total = (parent.total or 0) + t.total;
				parent.progress = (parent.progress or 0) + t.progress;
				t.visible = (t.progress < t.total or _.CollectedItemVisibilityFilter(t));
			else
				t.visible = false;
			end
		else
			t.collected = count >= 1;
			t.collectible = collectible;
			
			if _.GroupFilter(t) then
				local parent = t.parent;
				parent.total = (parent.total or 0) + 1;
				if t.collected then parent.progress = (parent.progress or 0) + 1; end
				t.visible = (not t.collected or _.CollectedItemVisibilityFilter(t));
			else
				t.visible = false;
			end
		end
	else
		t.collected = nil;
		t.collectible = false;
		t.progress = nil;
		t.total = nil;
		t.visible = false;
	end
	return true;
end]];
local COMPANIONS_OnTooltip = [[function(t)
	GameTooltip:AddLine("Collect " .. t.rank .. " companion pets.");
	if t.total and t.progress < t.total and t.rank >= 25 then
		GameTooltip:AddLine(" ");
		local c = 0;
		for i,g in pairs(_.SearchForFieldContainer("speciesID")) do
			local p = g[1];
			if p.visible then
				c = c + 1;
				if c < 16 then
					GameTooltip:AddDoubleLine(" |T" .. p.icon .. ":0|t " .. p.text, _.L[p.collected and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
				end
			end
		end
		if c > 15 then GameTooltip:AddLine(" And " .. (c - 15) .. " more!"); end
	end
end]];
local INSANE_IN_THE_MEMBRANE_OnClick = [[function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local dmf = _.CreateFaction(t.dmf.factionID);
		dmf.OnTooltip = t.dmf.OnTooltip;
		local bloodsail = _.CreateFaction(t.bloodsail.factionID);
		bloodsail.minReputation = { t.bloodsail.factionID, ]] .. HONORED .. [[ };
		bloodsail.OnTooltip = t.bloodsail.OnTooltip;
		local template = {
			bloodsail,
			t.bb,
			t.everlook,
			t.gadgetzan,
			t.ratchet,
			dmf,
			t.ravenholdt,
			t.shendralar,
		};
		local clone = _.CreateMiniListForGroup(_.CreateNPC(t[t.key], template)).data;
		clone.description = t.description;
		return true;
	end
end]];
local INSANE_IN_THE_MEMBRANE_OnUpdate = [[function(t)
	if t.collectible then
		if not t.shendralar then
			local f = _.SearchForField("factionID", 809);
			if f and #f > 0 then
				t.shendralar = f[1];
			else
				return true;
			end
		end
		if not t.bloodsail then
			local f = _.SearchForField("factionID", 87);
			if f and #f > 0 then
				t.bloodsail = f[1];
			else
				return true;
			end
		end
		if not t.ravenholdt then
			local f = _.SearchForField("factionID", 349);
			if f and #f > 0 then
				t.ravenholdt = f[1];
			else
				return true;
			end
		end
		if not t.dmf then
			local f = _.SearchForField("factionID", 909);
			if f and #f > 0 then
				t.dmf = f[1];
			else
				return true;
			end
		end
		if not t.bb then
			local f = _.SearchForField("factionID", 21);
			if f and #f > 0 then
				t.bb = f[1];
			else
				return true;
			end
		end
		if not t.everlook then
			local f = _.SearchForField("factionID", 577);
			if f and #f > 0 then
				t.everlook = f[1];
			else
				return true;
			end
		end
		if not t.gadgetzan then
			local f = _.SearchForField("factionID", 369);
			if f and #f > 0 then
				t.gadgetzan = f[1];
			else
				return true;
			end
		end
		if not t.ratchet then
			local f = _.SearchForField("factionID", 470);
			if f and #f > 0 then
				t.ratchet = f[1];
			else
				return true;
			end
		end
		-- #if BEFORE WRATH
		t.SetAchievementCollected(t.achievementID, t.ratchet.standing == 8 and t.gadgetzan.standing == 8
			and t.everlook.standing == 8 and t.bb.standing == 8 and t.dmf.standing == 8
			and t.ravenholdt.standing == 8 and t.shendralar.standing == 8
			and t.bloodsail.standing >= 6);
		-- #endif
	end
end]];
local INSANE_IN_THE_MEMBRANE_OnTooltip = [[function(t)
	if t.collectible then
		GameTooltip:AddLine(" ");
		GameTooltip:AddDoubleLine(" |T" .. t.bloodsail.icon .. ":0|t " .. t.bloodsail.text, _.L[t.bloodsail.standing >= 6 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
		GameTooltip:AddDoubleLine(" |T" .. t.bb.icon .. ":0|t " .. t.bb.text, _.L[t.bb.standing == 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
		GameTooltip:AddDoubleLine(" |T" .. t.everlook.icon .. ":0|t " .. t.everlook.text, _.L[t.everlook.standing == 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
		GameTooltip:AddDoubleLine(" |T" .. t.gadgetzan.icon .. ":0|t " .. t.gadgetzan.text, _.L[t.gadgetzan.standing == 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
		GameTooltip:AddDoubleLine(" |T" .. t.ratchet.icon .. ":0|t " .. t.ratchet.text, _.L[t.ratchet.standing == 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
		GameTooltip:AddDoubleLine(" |T" .. t.dmf.icon .. ":0|t " .. t.dmf.text, _.L[t.dmf.standing == 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
		GameTooltip:AddDoubleLine(" |T" .. t.ravenholdt.icon .. ":0|t " .. t.ravenholdt.text, _.L[t.ravenholdt.standing == 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
		GameTooltip:AddDoubleLine(" |T" .. t.shendralar.icon .. ":0|t " .. t.shendralar.text, _.L[t.shendralar.standing == 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
	end
end]];
local HK_OnUpdate = [[function(t) t.SetAchievementCollected(t.achievementID, GetPVPLifetimeStats() >= t.rank); end]];
local HK_OnTooltip = [[function(t)
	local s = "Get " .. t.rank .. " honorable kill" .. (t.rank == 1 and "" or "s") .. ".";
	if not t.collected then
		GameTooltip:AddDoubleLine(s, select(1, GetPVPLifetimeStats()) .. " / " .. t.rank, 1, 1, 1);
	else
		GameTooltip:AddLine(s);
	end
end]];
local LEVEL_OnUpdate = [[function(t) t.SetAchievementCollected(t.achievementID, _.Level >= t.lvl); end]];
local MOUNTS_OnClick = [[function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local template,r = {},{};
		for i,o in pairs(_.SearchForFieldContainer("spellID")) do
			if ((o[1].f and o[1].f == 100) or (o[1].filterID and o[1].filterID == 100)) and not r[i] then
				table.insert(template, o[1]);
				r[i] = 1;
			end
		end
		
		local clone = _.CreateMiniListForGroup(_.CreateAchievement(t[t.key], template)).data;
		clone.OnTooltip = t.OnTooltip;
		clone.OnUpdate = t.OnUpdate;
		clone.rank = t.rank;
		return true;
	end
end]];
local MOUNTS_OnUpdate = [[function(t)
	if _.CollectibleMounts then
		local count,r = 0,{};
		local spells = _.SearchForFieldContainer("spellID");
		for i,g in pairs(spells) do
			if ((g[1].f and g[1].f == 100) or (g[1].filterID and g[1].filterID == 100)) and not r[i] then
				if g[1].collected then count = count + 1; end
				r[i] = 1;
			end
		end
		if t.rank > 1 then
			t.progress = math.min(count, t.rank);
			t.total = t.rank;
			t.collectible = false;
			
			if _.GroupFilter(t) then
				local parent = t.parent;
				parent.total = (parent.total or 0) + t.total;
				parent.progress = (parent.progress or 0) + t.progress;
				t.visible = (t.progress < t.total or _.CollectedItemVisibilityFilter(t));
			else
				t.visible = false;
			end
		else
			t.collected = count >= 1;
			t.collectible = collectible;
			
			if _.GroupFilter(t) then
				local parent = t.parent;
				parent.total = (parent.total or 0) + 1;
				if t.collected then parent.progress = (parent.progress or 0) + 1; end
				t.visible = (not t.collected or _.CollectedItemVisibilityFilter(t));
			else
				t.visible = false;
			end
		end
	else
		t.collected = nil;
		t.collectible = false;
		t.progress = nil;
		t.total = nil;
		t.visible = false;
	end
	return true;
end]];
local MOUNTS_OnTooltip = [[function(t)
	GameTooltip:AddLine("Collect " .. t.rank .. " mounts.");
	if t.total and t.progress < t.total and t.rank >= 25 then
		GameTooltip:AddLine(" ");
		local c = 0;
		local template,r = {},{};
		for i,o in pairs(_.SearchForFieldContainer("spellID")) do
			local p = o[1];
			if ((p.f and p.f == 100) or (p.filterID and p.filterID == 100)) and not r[i] then
				r[i] = 1;
				if p.visible then
					c = c + 1;
					if c < 16 then
						GameTooltip:AddDoubleLine(" |T" .. p.icon .. ":0|t " .. p.text, _.L[p.collected and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
					end
				end
			end
		end
		if c > 15 then GameTooltip:AddLine(" And " .. (c - 15) .. " more!"); end
	end
end]];
local REPUTATIONS_OnClick = [[function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local template = {};
		for i,o in ipairs(_:GetDataCache().g) do
			if o.headerID == -8 then
				for j,p in ipairs(o.g) do
					if (not p.minReputation or (p.minReputation[1] == p.factionID and p.minReputation[2] >= 41999)) and (not p.maxReputation or (p.maxReputation[1] ~= p.factionID and p.reputation >= 0)) then
						table.insert(template, p);
					end
				end
			end
		end
		
		local clone = _.CreateMiniListForGroup(_.CreateAchievement(t[t.key], template)).data;
		clone.OnTooltip = t.OnTooltip;
		clone.OnUpdate = t.OnUpdate;
		clone.rank = t.rank;
		return true;
	end
end]];
-- #if AFTER WRATH
local REPUTATIONS_OnUpdate = nil;
local REPUTATIONS_OnTooltip = [[function(t)
	if not t.collected and t.rank >= 25 then
		GameTooltip:AddLine(" ");
		local ignored = _.IgnoredReputationsForAchievements;
		if not ignored then
			ignored = {[169] = 1};
			_.IgnoredReputationsForAchievements = ignored;
		end
		for i,o in ipairs(_:GetDataCache().g) do
			if o.headerID == -8 then
				for j,p in ipairs(o.g) do
					if (p.visible or p.factionID == 909) and not ignored[p.factionID] and (not p.minReputation or (p.minReputation[1] == p.factionID and p.minReputation[2] >= 41999)) and (not p.maxReputation or (p.maxReputation[1] ~= p.factionID and p.reputation >= 0)) then
						GameTooltip:AddDoubleLine(" |T" .. p.icon .. ":0|t " .. p.text, _.L[p.standing >= 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
					end
				end
			end
		end
	end
end]];
-- #else
local REPUTATIONS_OnUpdate = [[function(t)
	if _.CollectibleAchievements then
		local count = 0;
		local ignored = _.IgnoredReputationsForAchievements;
		if not ignored then
			ignored = {[169] = 1};
			_.IgnoredReputationsForAchievements = ignored;
		end
		local factions = _.SearchForFieldContainer("factionID");
		for factionID,g in pairs(factions) do
			if not ignored[factionID] and g[1].standing == 8 then
				count = count + 1;
			end
		end
		if t.rank > 1 then
			t.progress = math.min(count, t.rank);
			t.total = t.rank;
			t.collectible = false;
			
			if _.GroupFilter(t) then
				local parent = t.parent;
				parent.total = (parent.total or 0) + t.total;
				parent.progress = (parent.progress or 0) + t.progress;
				t.visible = (t.progress < t.total or _.CollectedItemVisibilityFilter(t));
			else
				t.visible = false;
			end
		else
			t.collected = count >= 1;
			t.collectible = collectible;
			
			if _.GroupFilter(t) then
				local parent = t.parent;
				parent.total = (parent.total or 0) + 1;
				if t.collected then parent.progress = (parent.progress or 0) + 1; end
				t.visible = (not t.collected or _.CollectedItemVisibilityFilter(t));
			else
				t.visible = false;
			end
		end
	else
		t.collected = nil;
		t.collectible = false;
		t.progress = nil;
		t.total = nil;
		t.visible = false;
	end
	return true;
end]];
local REPUTATIONS_OnTooltip = [[function(t)
	GameTooltip:AddLine("Raise " .. t.rank .. " reputations to Exalted.");
	if t.total and t.progress < t.total and t.rank >= 25 then
		GameTooltip:AddLine(" ");
		local ignored = _.IgnoredReputationsForAchievements or {};
		for i,o in ipairs(_:GetDataCache().g) do
			if o.headerID == -8 then
				for j,p in ipairs(o.g) do
					if (p.visible or p.factionID == 909) and not ignored[p.factionID] and (not p.minReputation or (p.minReputation[1] == p.factionID and p.minReputation[2] >= 41999)) and (not p.maxReputation or (p.maxReputation[1] ~= p.factionID and p.reputation >= 0)) then
						GameTooltip:AddDoubleLine(" |T" .. p.icon .. ":0|t " .. p.text, _.L[p.standing >= 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
					end
				end
			end
		end
	end
end]];
-- #endif
root("Achievements", {
	achcat(ACHIEVEMENT_CATEGORY_CHARACTER, {
		-- Armored Brown Bear, located in Dalaran.
		applyclassicphase(CATA_PHASE_ONE, ach(5180, {	-- Breaking the Sound Barrier
			["spellID"] = 90265,	-- Master Riding
			["rank"] = 5,
		})),
		classicAch(1017, {	-- Can I Keep Him?
			["OnClick"] = COMPANIONS_OnClick,
			["OnTooltip"] = COMPANIONS_OnTooltip,
			["OnUpdate"] = COMPANIONS_OnUpdate,
			["f"] = 101,
			["rank"] = 1,
		}),
		-- #if BEFORE 4.0.1
		applyclassicphase(WRATH_PHASE_ONE, ach(16, {	-- Did Somebody Order a Knuckle Sandwich?
			["timeline"] = { "added 3.0.1", "removed 4.0.1" },
		})),
		-- #endif
		ach(2716),	-- Dual Talent Specialization
		applyclassicphase(WRATH_PHASE_ONE, ach(556)),	-- Epic
		classicAch(889, {	-- Fast and Furious
			["spellID"] = 33391,	-- Journeyman Riding
			["rank"] = 2,
		}),
		classicAch(2142, {	-- Filling Up The Barn
			["OnClick"] = MOUNTS_OnClick,
			["OnTooltip"] = MOUNTS_OnTooltip,
			["OnUpdate"] = MOUNTS_OnUpdate,
			["rank"] = 25,
			["f"] = 100,
		}),
		-- Friend or Fowl? Located in Howling Fjord.
		applyclassicphase(WRATH_PHASE_ONE, ach(2097, {	-- Get to the Choppa!
			["providers"] = {
				{ "i", 44413 },	-- Mekgineer's Chopper
				{ "i", 41508 },	-- Mechano-hog
			},
			["f"] = 100,
		})),
		classicAch(891, {	-- Giddy Up!
			["spellID"] = 33388,	-- Apprentice Riding
			["rank"] = 1,
		}),
		ach(1176, {	-- Got My Mind On My Money [100g]
			["rank"] = 100,
		}),
		ach(1177, {	-- Got My Mind On My Money [1000g]
			["rank"] = 1000,
		}),
		ach(1178, {	-- Got My Mind On My Money [5000g]
			["rank"] = 5000,
		}),
		ach(1180, {	-- Got My Mind On My Money [10000g]
			["rank"] = 10000,
		}),
		ach(1181, {	-- Got My Mind On My Money [25000g]
			["rank"] = 25000,
		}),
		applyclassicphase(WRATH_PHASE_ONE, ach(558)),	-- Greedy
		-- Higher Learning, located in Dalaran.
		applyclassicphase(TBC_PHASE_ONE, ach(890, {	-- Into the Wild Blue Yonder
			["spellID"] = 34090,	-- Expert Riding
			["rank"] = 3,
		})),
		ach(1833),	-- It's Happy Hour Somewhere
		applyclassicphase(TBC_PHASE_ONE, ach(2143, {	-- Leading the Cavalry
			["OnClick"] = MOUNTS_OnClick,
			["OnTooltip"] = MOUNTS_OnTooltip,
			["OnUpdate"] = MOUNTS_OnUpdate,
			["rank"] = 50,
			["f"] = 100,
			["groups"] = {
				applyclassicphase(WRATH_PHASE_ONE, i(44178)),	-- Reins of the Albino Drake
			},
		})),
		classicAch(6, {	-- Level 10
			["lvl"] = 10,
			-- #if BEFORE WRATH
			["OnUpdate"] = LEVEL_OnUpdate,
			-- #endif
		}),
		classicAch(7, {	-- Level 20
			["lvl"] = 20,
			-- #if BEFORE WRATH
			["OnUpdate"] = LEVEL_OnUpdate,
			-- #endif
		}),
		classicAch(8, {	-- Level 30
			["lvl"] = 30,
			-- #if BEFORE WRATH
			["OnUpdate"] = LEVEL_OnUpdate,
			-- #endif
		}),
		classicAch(9, {	-- Level 40
			["lvl"] = 40,
			-- #if BEFORE WRATH
			["OnUpdate"] = LEVEL_OnUpdate,
			-- #endif
		}),
		classicAch(10, {	-- Level 50
			["lvl"] = 50,
			-- #if BEFORE WRATH
			["OnUpdate"] = LEVEL_OnUpdate,
			-- #endif
		}),
		classicAch(11, {	-- Level 60
			["lvl"] = 60,
			-- #if BEFORE WRATH
			["OnUpdate"] = LEVEL_OnUpdate,
			-- #endif
		}),
		applyclassicphase(TBC_PHASE_ONE, ach(12, {	-- Level 70
			["lvl"] = 70,
			-- #if BEFORE WRATH
			["OnUpdate"] = LEVEL_OnUpdate,
			-- #endif
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(13, {	-- Level 80
			["lvl"] = 80,
			-- #if BEFORE WRATH
			["OnUpdate"] = LEVEL_OnUpdate,
			-- #endif
			["groups"] = {
				i(41426, {	-- Magically Wrapped Gift
					i(41427),	-- Dalaran Firework
				}),
			},
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(2516, {	-- Lil' Game Hunter
			["OnClick"] = COMPANIONS_OnClick,
			["OnTooltip"] = COMPANIONS_OnTooltip,
			["OnUpdate"] = COMPANIONS_OnUpdate,
			["f"] = 101,
			["rank"] = 75,
			["groups"] = {
				applyclassicphase(WRATH_PHASE_ONE, i(44841)),	-- Little Fawn's Salt Lick
			},
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(705)),	-- Master of Arms
		applyclassicphase(WRATH_PHASE_ONE, ach(2536, {	-- Mountain o' Mounts [A]
			["OnClick"] = MOUNTS_OnClick,
			["OnTooltip"] = MOUNTS_OnTooltip,
			["OnUpdate"] = MOUNTS_OnUpdate,
			["races"] = ALLIANCE_ONLY,
			["rank"] = 100,
			["f"] = 100,
			["groups"] = {
				applyclassicphase(WRATH_PHASE_ONE, i(44843)),	-- Blue Dragonhawk Mount
			},
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(2537, {	-- Mountain o' Mounts [H]
			["OnClick"] = MOUNTS_OnClick,
			["OnTooltip"] = MOUNTS_OnTooltip,
			["OnUpdate"] = MOUNTS_OnUpdate,
			["races"] = HORDE_ONLY,
			["rank"] = 100,
			["f"] = 100,
			["groups"] = {
				applyclassicphase(WRATH_PHASE_ONE, i(44842)),	-- Red Dragonhawk Mount
			},
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(559)),	-- Needy
		applyclassicphase(WRATH_PHASE_ONE, ach(2556)),	-- Pest Control
		classicAch(15, {	-- Plenty of Pets
			["OnClick"] = COMPANIONS_OnClick,
			["OnTooltip"] = COMPANIONS_OnTooltip,
			["OnUpdate"] = COMPANIONS_OnUpdate,
			["f"] = 101,
			["rank"] = 15,
		}),
		classicAch(1248, {	-- Plethora of Pets
			["OnClick"] = COMPANIONS_OnClick,
			["OnTooltip"] = COMPANIONS_OnTooltip,
			["OnUpdate"] = COMPANIONS_OnUpdate,
			["f"] = 101,
			["rank"] = 25,
		}),
		ach(621, {	-- Represent [TODO]
			["rank"] = 1,
		}),
		-- Ring of the Kirin Tor, located in Dalaran.
		classicAch(546, {	-- Safe Deposit
			-- #if BEFORE WRATH
			["description"] = "Buy 7 additional bank slots.",
			["OnUpdate"] = [[function(t) t.SetAchievementCollected(t.achievementID, GetNumBankSlots() >= 7); end]],
			-- #endif
		}),
		ach(545, {	-- Shave and a Haircut
			["maps"] = { STORMWIND_CITY, ORGRIMMAR, DALARAN },
		}),
		applyclassicphase(TBC_PHASE_ONE, ach(1250, {	-- Shop Smart, Shop Pet...Smart
			["OnClick"] = COMPANIONS_OnClick,
			["OnTooltip"] = COMPANIONS_OnTooltip,
			["OnUpdate"] = COMPANIONS_OnUpdate,
			["f"] = 101,
			["rank"] = 50,
			["groups"] = {
				applyclassicphase(WRATH_PHASE_ONE, i(40653)),	-- Reeking Pet Carrier
			},
		})),
		classicAch(2141, {	-- Stable Keeper
			["OnClick"] = MOUNTS_OnClick,
			["OnTooltip"] = MOUNTS_OnTooltip,
			["OnUpdate"] = MOUNTS_OnUpdate,
			["rank"] = 10,
			["f"] = 100,
		}),
		applyclassicphase(WRATH_PHASE_ONE, ach(557)),	-- Superior
		ach(1832),	-- Tastes Like Chicken
		ach(1020, {	-- Ten Tabards [TODO]
			["rank"] = 10,
		}),
		applyclassicphase(WRATH_PHASE_ONE, ach(1187)),	-- The Keymaster
		applyclassicphase(TBC_PHASE_ONE, ach(892, {	-- The Right Stuff
			["spellID"] = 34091,	-- Artisan Riding
			["rank"] = 4,
		})),
		ach(1206),	-- To All The Squirrels I've Loved Before
		ach(2557),	-- To All The Squirrels Who Shared My Life
		-- Traveler's Tundra Mammoth, located in Dalaran.
		ach(1021, {	-- Twenty-Five Tabards [TODO]
			["rank"] = 25,
			["groups"] = {
				i(40643),	-- Tabard of the Achiever
			},
		}),
		ach(1244),	-- Well Read
		-- Wooly Mammoth, located in Dalaran.
	}),
	achcat(ACHIEVEMENT_CATEGORY_QUESTS, {
		achcat(ACHIEVEMENT_CATEGORY_EASTERN_KINGDOMS_QUESTS, {	-- Pre-Cata, this is CLASSIC.
			classicAch(1676, {	-- Loremaster of Eastern Kingdoms
				-- #if BEFORE WRATH
				["description"] = "Complete 700 quests in Eastern Kingdoms.",
				-- #endif
				-- #if ANYCLASSIC
				["OnClick"] = [[_.CommonAchievementHandlers.LOREMASTER_CONTINENT_OnClick]],
				["OnTooltip"] = [[_.CommonAchievementHandlers.LOREMASTER_OnTooltip]],
				["OnUpdate"] = [[_.CommonAchievementHandlers.LOREMASTER_EASTERNKINGDOMS_OnUpdate]],
				["rank"] = 700,
				-- #endif
				["races"] = ALLIANCE_ONLY,
			}),
			classicAch(1677, {	-- Loremaster of Eastern Kingdoms
				-- #if BEFORE WRATH
				["description"] = "Complete 550 quests in Eastern Kingdoms.",
				-- #endif
				-- #if ANYCLASSIC
				["OnClick"] = [[_.CommonAchievementHandlers.LOREMASTER_CONTINENT_OnClick]],
				["OnTooltip"] = [[_.CommonAchievementHandlers.LOREMASTER_OnTooltip]],
				["OnUpdate"] = [[_.CommonAchievementHandlers.LOREMASTER_EASTERNKINGDOMS_OnUpdate]],
				["rank"] = 550,
				-- #endif
				["races"] = HORDE_ONLY,
			}),
			classicAch(1678, {	-- Loremaster of Kalimdor
				-- #if BEFORE WRATH
				["description"] = "Complete 700 quests in Kalimdor.",
				-- #endif
				-- #if ANYCLASSIC
				["OnClick"] = [[_.CommonAchievementHandlers.LOREMASTER_CONTINENT_OnClick]],
				["OnTooltip"] = [[_.CommonAchievementHandlers.LOREMASTER_OnTooltip]],
				["OnUpdate"] = [[_.CommonAchievementHandlers.LOREMASTER_KALIMDOR_OnUpdate]],
				["rank"] = 700,
				-- #endif
				["races"] = ALLIANCE_ONLY,
			}),
			classicAch(1680, {	-- Loremaster of Kalimdor
				-- #if BEFORE WRATH
				["description"] = "Complete 685 quests in Kalimdor.",
				-- #endif
				-- #if ANYCLASSIC
				["OnClick"] = [[_.CommonAchievementHandlers.LOREMASTER_CONTINENT_OnClick]],
				["OnTooltip"] = [[_.CommonAchievementHandlers.LOREMASTER_OnTooltip]],
				["OnUpdate"] = [[_.CommonAchievementHandlers.LOREMASTER_KALIMDOR_OnUpdate]],
				["rank"] = 685,
				-- #endif
				["races"] = HORDE_ONLY,
			}),
		}),
		-- #if AFTER 2.0.1
		achcat(ACHIEVEMENT_CATEGORY_OUTLAND_QUESTS, {
			applyclassicphase(TBC_PHASE_ONE, classicAch(1262, {	-- Loremaster of Outland (A)
				-- #if BEFORE WRATH
				["description"] = "Complete the Outland quest achievements listed below.",
				-- #endif
				-- #if ANYCLASSIC
				["OnClick"] = [[_.CommonAchievementHandlers.META_OnClick]],
				["OnTooltip"] = [[_.CommonAchievementHandlers.META_OnTooltip]],
				["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.META_OnUpdate(t, 1194, 1190, 1192, 1193, 1195, 1191, 1189); end]],
				-- #else
				["sym"] = { {"select","achievementID", 1194, 1190, 1192, 1193, 1195, 1191, 1189 } },
				-- #endif
				["races"] = ALLIANCE_ONLY,
			})),
			applyclassicphase(TBC_PHASE_ONE, classicAch(1274, {	-- Loremaster of Outland (H)
				-- #if BEFORE WRATH
				["description"] = "Complete the Outland quest achievements listed below.",
				-- #endif
				-- #if ANYCLASSIC
				["OnClick"] = [[_.CommonAchievementHandlers.META_OnClick]],
				["OnTooltip"] = [[_.CommonAchievementHandlers.META_OnTooltip]],
				["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.META_OnUpdate(t, 1194, 1190, 1273, 1193, 1195, 1272, 1271); end]],
				-- #else
				["sym"] = { {"select","achievementID", 1194, 1190, 1273, 1193, 1195, 1272, 1271 } },
				-- #endif
				["races"] = HORDE_ONLY,
			})),
		}),
		-- #endif
		-- #if AFTER 3.0.1
		achcat(ACHIEVEMENT_CATEGORY_NORTHREND_QUESTS, {
			applyclassicphase(WRATH_PHASE_ONE, ach(41, {	-- Loremaster of Northrend (A)
				-- #if BEFORE WRATH
				["description"] = "Complete the Northrend quest achievements listed below.",
				-- #endif
				-- #if ANYCLASSIC
				["OnClick"] = [[_.CommonAchievementHandlers.META_OnClick]],
				["OnTooltip"] = [[_.CommonAchievementHandlers.META_OnTooltip]],
				["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.META_OnUpdate(t, 33, 35, 36, 37, 38, 39, 34, 40); end]],
				-- #else
				["sym"] = { {"select","achievementID", 33, 35, 36, 37, 38, 39, 34, 40 } },
				-- #endif
				["races"] = ALLIANCE_ONLY,
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(1360, {	-- Loremaster of Northrend (H)
				-- #if BEFORE WRATH
				["description"] = "Complete the Northrend quest achievements listed below.",
				-- #endif
				-- #if ANYCLASSIC
				["OnClick"] = [[_.CommonAchievementHandlers.META_OnClick]],
				["OnTooltip"] = [[_.CommonAchievementHandlers.META_OnTooltip]],
				["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.META_OnUpdate(t, 1358, 1356, 38, 1357, 1359, 39, 36, 40); end]],
				-- #else
				["sym"] = { {"select","achievementID", 1358, 1356, 38, 1357, 1359, 39, 36, 40 } },
				-- #endif
				["races"] = HORDE_ONLY,
			})),
		}),
		-- #endif
		ach(973, {	-- 5 Daily Quests Complete
			["rank"] = 5,
		}),
		ach(974, {	-- 50 Daily Quests Complete
			["rank"] = 50,
		}),
		ach(975, {	-- 200 Daily Quests Complete
			["rank"] = 200,
		}),
		ach(976, {	-- 500 Daily Quests Complete
			["rank"] = 500,
		}),
		ach(977, {	-- 1000 Daily Quests Complete
			["rank"] = 1000,
		}),
		
		ach(503, {	-- 50 Quests Completed
			["rank"] = 50,
		}),
		ach(504, {	-- 100 Quests Completed
			["rank"] = 100,
		}),
		ach(505, {	-- 250 Quests Completed
			["rank"] = 250,
		}),
		ach(506, {	-- 500 Quests Completed
			["rank"] = 500,
		}),
		ach(507, {	-- 1000 Quests Completed
			["rank"] = 1000,
		}),
		ach(508, {	-- 1500 Quests Completed
			["rank"] = 1500,
		}),
		ach(32, {	-- 2000 Quests Completed
			["rank"] = 2000,
		}),
		applyclassicphase(WRATH_PHASE_ONE, ach(978, {	-- 3000 Quests Completed
			["rank"] = 3000,
			["groups"] = {
				-- #if AFTER CATA
				title(81),	-- The Seeker
				-- #else
				title(42),	-- The Seeker
				-- #endif
			},
		})),
		
		ach(31),	-- A Simple Re-Quest
		ach(1182),	-- The Bread Winner
		
		applyclassicphase(WRATH_PHASE_ONE, ach(941, {	-- Hemet Nesingwary: The Collected Quests
			-- #if BEFORE WRATH
			["description"] = "Complete the Green Hills of Stranglethorn, Hills Like White Elekk and Snows of Northrend achievements.",
			["OnClick"] = [[_.CommonAchievementHandlers.META_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.META_OnTooltip]],
			["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.META_OnUpdate(t, 939, 938, 940); end]],
			-- #else
			["sym"] = {
				{"select","achievementID",
					939,	-- Hills Like White Elekk
					938,	-- The Snows of Northrend
					940,	-- The Green Hills of Stranglethorn
				},
			},
			-- #endif
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1576, {	-- Of Blood and Anguish
			["sourceQuests"] = {
				9977,	-- The Ring of Blood: The Final Challenge
				12948,	-- The Champion of Anguish
			},
		})),
		
		-- #if AFTER 3.0.1
		applyclassicphase(WRATH_PHASE_ONE, ach(1681, {	-- The Loremaster (A)
			["sym"] = {
				{"select","achievementID",
					1678,	-- Loremaster of Kalimdor
					1676,	-- Loremaster of Eastern Kingdoms
					1262,	-- Loremaster of Outland
					41,	-- Loremaster of Northrend
				},
			},
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				title(93),	-- Loremaster
				i(43300),	-- Loremaster's Colors
			},
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1682, {	-- The Loremaster (H)
			["sym"] = {
				{"select","achievementID",
					1680,	-- Loremaster of Kalimdor
					1677,	-- Loremaster of Eastern Kingdoms
					1274,	-- Loremaster of Outland
					1360,	-- Loremaster of Northrend
				},
			},
			["races"] = HORDE_ONLY,
			["groups"] = {
				title(93),	-- Loremaster
				i(43300),	-- Loremaster's Colors
			},
		})),
		-- #endif
	}),
	achcat(ACHIEVEMENT_CATEGORY_EXPLORATION, {
		-- #if AFTER 2.0.1
		achcat(ACHIEVEMENT_CATEGORY_OUTLAND_EXP, {
			ach(1312),	-- Bloody Rare
			ach(1311),	-- Medium Rare
		}),
		-- #endif
		classicAch(42, {	-- Explore Eastern Kingdoms
			-- #if BEFORE WRATH
			["description"] = "Explore the regions of Eastern Kingdoms.",
			["OnClick"] = [[_.CommonAchievementHandlers.META_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.META_OnTooltip]],
			["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.META_ACHCAT_OnUpdate(t, ]] .. ACHIEVEMENT_CATEGORY_EASTERN_KINGDOMS_EXP .. [[); end]],
			-- #endif
		}),
		classicAch(43, {	-- Explore Kalimdor
			-- #if BEFORE WRATH
			["description"] = "Explore the regions of Kalimdor.",
			["OnClick"] = [[_.CommonAchievementHandlers.META_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.META_OnTooltip]],
			["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.META_ACHCAT_OnUpdate(t, ]] .. ACHIEVEMENT_CATEGORY_KALIMDOR_EXP .. [[); end]],
			-- #endif
		}),
		applyclassicphase(TBC_PHASE_ONE, ach(44, {	-- Explore Outland
			-- #if BEFORE WRATH
			["description"] = "Explore the regions of Outland.",
			["OnClick"] = [[_.CommonAchievementHandlers.META_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.META_OnTooltip]],
			["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.META_ACHCAT_OnUpdate(t, ]] .. ACHIEVEMENT_CATEGORY_OUTLAND_EXP .. [[); end]],
			-- #endif
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(45, {	-- Explore Northrend
			i(43348),	-- Tabard of the Explorer
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(46, {	-- World Explorer
			-- #if AFTER CATA
			title(78),	-- % the Explorer
			-- #else
			title(47),	-- % the Explorer
			-- #endif
		})),
	}),
	pvp(achcat(ACHIEVEMENT_CATEGORY_PVP, {
		applyclassicphase(PHASE_TWO, ach(238, {	-- An Honorable Kill
			["rank"] = 1,
			-- #if BEFORE WRATH
			["OnTooltip"] = HK_OnTooltip,
			["OnUpdate"] = HK_OnUpdate,
			-- #endif
		})),
		applyclassicphase(PHASE_TWO, ach(513, {	-- 100 Honorable Kills
			["rank"] = 100,
			-- #if BEFORE WRATH
			["OnTooltip"] = HK_OnTooltip,
			["OnUpdate"] = HK_OnUpdate,
			-- #endif
		})),
		applyclassicphase(PHASE_TWO, ach(515, {	-- 500 Honorable Kills
			["rank"] = 500,
			-- #if BEFORE WRATH
			["OnTooltip"] = HK_OnTooltip,
			["OnUpdate"] = HK_OnUpdate,
			-- #endif
		})),
		applyclassicphase(PHASE_TWO, ach(516, {	-- 1000 Honorable Kills
			["rank"] = 1000,
			-- #if BEFORE WRATH
			["OnTooltip"] = HK_OnTooltip,
			["OnUpdate"] = HK_OnUpdate,
			-- #endif
		})),
		applyclassicphase(PHASE_TWO, ach(512, {	-- 5000 Honorable Kills
			["rank"] = 5000,
			-- #if BEFORE WRATH
			["OnTooltip"] = HK_OnTooltip,
			["OnUpdate"] = HK_OnUpdate,
			-- #endif
		})),
		applyclassicphase(PHASE_TWO, ach(509, {	-- 10000 Honorable Kills
			["rank"] = 10000,
			-- #if BEFORE WRATH
			["OnTooltip"] = HK_OnTooltip,
			["OnUpdate"] = HK_OnUpdate,
			-- #endif
		})),
		applyclassicphase(PHASE_TWO, ach(239, {	-- 25000 Honorable Kills
			["rank"] = 25000,
			-- #if BEFORE WRATH
			["OnTooltip"] = HK_OnTooltip,
			["OnUpdate"] = HK_OnUpdate,
			-- #endif
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(869, {	-- 50000 Honorable Kills
			["rank"] = 50000,
			-- #if BEFORE WRATH
			["OnTooltip"] = HK_OnTooltip,
			["OnUpdate"] = HK_OnUpdate,
			-- #endif
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(870, {	-- 100000 Honorable Kills
			["rank"] = 100000,
			-- #if BEFORE WRATH
			["OnTooltip"] = HK_OnTooltip,
			["OnUpdate"] = HK_OnUpdate,
			-- #endif
			["groups"] = {
				-- #if ANYCLASSIC
				title(94, {	-- <Name> of the Alliance
					["races"] = ALLIANCE_ONLY,
				}),
				title(95, {	-- <Name> of the Horde
					["races"] = HORDE_ONLY,
				}),
				-- #else
				title(126, {	-- <Name> of the Alliance
					["races"] = ALLIANCE_ONLY,
				}),
				title(127, {	-- <Name> of the Horde
					["races"] = HORDE_ONLY,
				}),
				-- #endif
			},
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(230, {	-- Battlemaster (Alliance)
			["races"] = ALLIANCE_ONLY,
			-- #if AFTER CATA
			-- Crieve NOTE: This is coming back with the wrong title. Disabled for now.
			["groups"] = {
				title(72),	-- Battlemaster
			},
			-- #endif
		})),
		ach(1175, applyclassicphase(WRATH_PHASE_ONE, {	-- Battlemaster (Horde)
			["races"] = HORDE_ONLY,
			-- #if AFTER CATA
			-- Crieve NOTE: This is coming back with the wrong title. Disabled for now.
			["groups"] = {
				title(72),	-- Battlemaster
			},
			-- #endif
		})),
		ach(611, {	-- Bleeding Bloodhoof
			["provider"] = { "n", 3057 },	-- Cairne Bloodhoof <High Chieftain>
			["maps"] = { THUNDER_BLUFF },
			["races"] = ALLIANCE_ONLY,
		}),
		applyclassicphase(PHASE_TWO, ach(727, {	-- Call in the Cavalry
			["providers"] = {
				{ "i", 18243 },	-- Black Battlestrider (Original)
				{ "i", 18247 },	-- Black War Kodo (Original)
				{ "i", 18244 },	-- Black War Ram (Original)
				{ "i", 18241 },	-- Black War Steed Bridle (Original)
				{ "i", 18245 },	-- Horn of the Black War Wolf (Original)
				{ "i", 18248 },	-- Red Skeletal Warhorse (Original)
				{ "i", 18242 },	-- Reins of the Black War Tiger (Original)
				{ "i", 18246 },	-- Whistle of the Black War Raptor (Original)
				-- #if AFTER TBC
				{ "i", 29465 },	-- Black Battlestrider
				{ "i", 29466 },	-- Black War Kodo
				{ "i", 29467 },	-- Black War Ram
				{ "i", 29468 },	-- Black War Steed Bridle
				{ "i", 29469 },	-- Horn of the Black War Wolf
				{ "i", 29470 },	-- Red Skeletal Warhorse
				{ "i", 35906 },	-- Reins of the Black War Elekk
				{ "i", 29471 },	-- Reins of the Black War Tiger
				{ "i", 34129 },	-- Swift Warstrider
				{ "i", 29472 },	-- Whistle of the Black War Raptor
				-- #endif
			},
			-- #if BEFORE WRATH
			["description"] = "Obtain one of the war mounts through the honor system.",
			["OnUpdate"] = [[_.CommonAchievementHandlers.ANY_ITEM_PROVIDER]],
			-- #endif
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(908, {	-- Call to Arms! (Alliance)
			["races"] = ALLIANCE_ONLY,
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(909, {	-- Call to Arms! (Horde)
			["races"] = HORDE_ONLY,
		})),
		ach(388, {	-- City Defender (Alliance)
			["races"] = ALLIANCE_ONLY,
		}),
		ach(1006, {	-- City Defender (Horde)
			["races"] = HORDE_ONLY,
		}),
		ach(227),	-- Damage Control
		ach(616, {	-- Death to the King!
			["provider"] = { "n", 2784 },	-- King Magni Bronzebeard <Lord of Ironforge>
			["maps"] = { IRONFORGE },
			["races"] = HORDE_ONLY,
		}),
		ach(610, {	-- Death to the Warchief!
			["provider"] = { "n", 4949 },	-- Thrall <Warchief>
			["maps"] = { ORGRIMMAR },
			["races"] = ALLIANCE_ONLY,
		}),
		ach(612, {	-- Downing the Dark Lady
			["provider"] = { "n", 10181 },	-- Lady Sylvanas Windrunner <Banshee Queen>
			["maps"] = { UNDERCITY },
			["races"] = ALLIANCE_ONLY,
		}),
		ach(1157),	-- Duel-icious
		ach(614, {	-- For The Alliance!
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				i(44223),	-- Reins of the Black War Bear
			},
		}),
		ach(619, {	-- For The Horde!
			["races"] = HORDE_ONLY,
			["groups"] = {
				i(44224),	-- Reins of the Black War Bear
			},
		}),
		ach(701, {	-- Freedom of the Alliance
			-- TODO: Add providers and make accessible to classic
			["races"] = ALLIANCE_ONLY,
		}),
		ach(700, {	-- Freedom of the Horde
			-- TODO: Add providers and make accessible to classic
			["races"] = HORDE_ONLY,
		}),
		-- TODO: Move the two following to Grizzly Hills Zone File
		applyclassicphase(WRATH_PHASE_ONE, ach(2016, {	-- Grizzled Veteran (Alliance)
			["races"] = ALLIANCE_ONLY,
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(2017, {	-- Grizzled Veteran (Horde)
			["races"] = HORDE_ONLY,
		})),
		ach(617, {	-- Immortal No More
			["provider"] = { "n", 7999 },	-- Tyrande Whisperwind <High Priestess of Elune>
			["maps"] = { DARNASSUS },
			["races"] = HORDE_ONLY,
		}),
		ach(613, {	-- Killed in Quel'Thalas
			["provider"] = { "n", 16802 },	-- Lor'themar Theron <Regent Lord of Quel'Thalas>
			["maps"] = { SILVERMOON_CITY },
			["races"] = ALLIANCE_ONLY,
		}),
		ach(246, {	-- Know Thy Enemy (Alliance)
			["races"] = ALLIANCE_ONLY,
		}),
		ach(1005, {	-- Know Thy Enemy (Horde)
			["races"] = HORDE_ONLY,
		}),
		ach(247),	-- Make Love, Not Warcraft
		ach(618, {	-- Putting Out the Light
			["provider"] = { "n", 17468 },	-- Prophet Velen
			["maps"] = { THE_EXODAR },
			["races"] = HORDE_ONLY,
		}),
		ach(615, {	-- Storming Stormwind
			["provider"] = { "n", 29611 },	-- King Varian Wrynn <King of Stormwind>
			["maps"] = { STORMWIND_CITY },
			["races"] = HORDE_ONLY,
		}),
		ach(245),	-- That Takes Class
		ach(229),	-- The Grim Reaper
		ach(604, {	-- Wrath of the Alliance
			["races"] = ALLIANCE_ONLY,
		}),
		ach(603, {	-- Wrath of the Horde
			["races"] = HORDE_ONLY,
		}),
		ach(231),	-- Wrecking Ball
	})),
	achcat(ACHIEVEMENT_CATEGORY_DUNGEONS_AND_RAIDS, {
		applyclassicphase(WRATH_PHASE_ONE, ach(1658, {	-- Champion of the Frozen Wastes
			title(97),	-- , Champion of the Frozen Wastes
		})),
		ach(1283, {	-- Classic Dungeonmaster
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				628,	-- Deadmines
				629,	-- Ragefire Chasm
				630,	-- Wailing Caverns
				631,	-- Shadowfang Keep
				632,	-- Blackfathom Deeps
				633,	-- Stormwind Stockade
				634,	-- Gnomeregan
				635,	-- Razorfen Kraul
				636,	-- Razorfen Downs
				637,	-- Scarlet Monastery
				638,	-- Uldaman
				639,	-- Zul'Farrak
				640,	-- Maraudon
				641,	-- Sunken Temple
				642,	-- Blackrock Depths
				643,	-- Blackrock Spire
				644,	-- King of Dire Maul
				645,	-- Scholomance
				646,	-- Stratholme
			}},
		}),
		ach(1285, {	-- Classic Raider
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				685,	-- Blackwing Lair
				686,	-- Molten Core
				687,	-- Temple of Ahn'Qiraj
				689,	-- Ruins of Ahn'Qiraj
			}},
		}),
		applyclassicphase(WRATH_PHASE_ONE, ach(2136, {	-- Glory of the Hero
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				1919,	-- On The Rocks
				2150,	-- Split Personality
				2036,	-- Intense Cold
				2037,	-- Chaos Theory
				1296,	-- Watch Him Die
				1297,	-- Hadronox Denied
				1860,	-- Gotta Go!
				1862,	-- Volazj's Quick Demise
				2038,	-- Respect Your Elders
				2056,	-- Volunteer Work
				2151,	-- Consumption Junction
				2039,	-- Better Off Dred
				2057,	-- Oh Novos!
				1816,	-- Defenseless
				1865,	-- Lockdown!
				2041,	-- Dehydration
				2153,	-- A Void Dance
				1864,	-- What the Eck?
				2040,	-- Less-rabi
				2058,	-- Snakes. Why'd It Have To Be Snakes?
				1866,	-- Good Grief
				2154,	-- Brann Spankin' New
				2155,	-- Abuse the Ooze
				1867,	-- Timely Death
				1834,	-- Lightning Struck
				2042,	-- Shatter Resistant
				1817,	-- The Culling of Time
				1872,	-- Zombiefest!
				2043,	-- The Incredible Hulk
				1873,	-- Lodi Dodi We Loves the Skadi
				2156,	-- My Girl Loves to Skadi All the Time
				2157,	-- King's Bane
				1871,	-- Experienced Drake Rider
				1868,	-- Make It Count
				2044,	-- Ruby Void
				2045,	-- Emerald Void
				2046,	-- Amber Void
			}},
			["groups"] = {
				i(44160),	-- Red Proto-Drake (MOUNT!)
			},
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(2137, {	-- Glory of the Raider (10 player)
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				-- #if BEFORE 4.0.1
				2187,	-- The Undying
				-- #endif
				578,	-- The Dedicated Few (10 player)
				1858,	-- Arachnophobia (10 player)
				1856,	-- Make Quick Werk of Him (10 player)
				1996,	-- The Safety Dance (10 player)
				1997,	-- Momma Said Knock You Out (10 player)
				2178,	-- Shocking! (10 player)
				2180,	-- Subtraction (10 player)
				622,	-- The Spellweaver's Downfall (10 player)
				1874,	-- You Don't Have an Eternity (10 player)
				1869,	-- A Poke in the Eye (10 player)
				2047,	-- Gonna Go When the Volcano Blows (10 player)
				2051,	-- The Twilight Zone (10 player)
				2146,	-- The Hundred Club (10 player)
				2176,	-- And They Would All Go Down Together (10 player)
				2148,	-- Denyin' the Scion (10 player)
				2184,	-- Just Can't Get Enough (10 player)
			}},
			["maps"] = { EYE_OF_ETERNITY, OBSIDIAN_SANCTUM, NAXXRAMAS },
			["groups"] = {
				i(44175, {	-- Plagued Proto-Drake (MOUNT!)
					-- #if ANYCLASSIC
					["OnUpdate"] = [[function(t)
						if ATTClassicSettings.Unobtainables[]] .. WRATH_PHASE_TWO .. [[] then
							t.u = ]] .. REMOVED_FROM_GAME .. [[;
							t.rwp = nil;
						else
							t.u = ]] .. WRATH_PHASE_ONE .. [[;
							t.rwp = 30100;
						end
					end]],
					-- #else
					["timeline"] = { "removed 3.1.0" },
					-- #endif
				}),
			},
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(2138, {	-- Glory of the Raider (25 player)
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				579,	-- The Dedicated Few (25 player)
				1859,	-- Arachnophobia (25 player)
				1857,	-- Make Quick Werk of Him (25 player)
				-- #if BEFORE 4.0.1
				2186,	-- The Immortal
				-- #endif
				2139,	-- The Safety Dance (25 player)
				2140,	-- Momma Said Knock You Out (25 player)
				2179,	-- Shocking! (25 player)
				2177,	-- And They Would All Go Down Together (25 player)
				2181,	-- Subtraction (25 player)
				623,	-- The Spellweaver's Downfall (25 player)
				1875,	-- You Don't Have an Eternity (25 player)
				1870,	-- A Poke in the Eye (25 player)
				2048,	-- Gonna Go When the Volcano Blows (25 player)
				2149,	-- Denyin' the Scion (25 player)
				2054,	-- The Twilight Zone (25 player)
				2147,	-- The Hundred Club (25 player)
				2185,	-- Just Can't Get Enough (25 player)
			}},
			["maps"] = { EYE_OF_ETERNITY, OBSIDIAN_SANCTUM, NAXXRAMAS },
			["groups"] = {
				i(44164, {	-- Black Proto-Drake (MOUNT!)
					-- #if ANYCLASSIC
					["OnUpdate"] = [[function(t)
						if ATTClassicSettings.Unobtainables[]] .. WRATH_PHASE_TWO .. [[] then
							t.u = ]] .. REMOVED_FROM_GAME .. [[;
							t.rwp = nil;
						else
							t.u = ]] .. WRATH_PHASE_ONE .. [[;
							t.rwp = 30100;
						end
					end]],
					-- #else
					["timeline"] = { "removed 3.1.0" },
					-- #endif
				}),
			},
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1289, {	-- Northrend Dungeon Hero
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				492,	-- Heroic: Ahn'kahet: The Old Kingdom
				491,	-- Heroic: Azjol-Nerub
				500,	-- Heroic Caverns of Time: Stratholme
				493,	-- Heroic: Drak'Tharon Keep
				495,	-- Heroic: Gundrak
				497,	-- Heroic: Halls of Lightning
				496,	-- Heroic: Halls of Stone
				490,	-- Heroic: The Nexus
				498,	-- Heroic: The Oculus
				494,	-- Heroic: The Violet Hold
				489,	-- Heroic: Utgarde Keep
				499,	-- Heroic: Utgarde Pinnacle
			}},
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1288, {	-- Northrend Dungeonmaster
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				481,	-- Ahn'kahet: The Old Kingdom
				480,	-- Azjol-Nerub
				479,	-- Caverns of Time: Stratholme
				482,	-- Drak'Tharon Keep
				484,	-- Gundrak
				486,	-- Halls of Lightning
				485,	-- Halls of Stone
				478,	-- The Nexus
				487,	-- The Oculus
				483,	-- The Violet Hold
				477,	-- Utgarde Keep
				488,	-- Utgarde Pinnacle
			}},
		})),
		ach(1287, {	-- Outland Dungeon Hero
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				672,	-- Heroic: Auchenai Crypts
				667,	-- Heroic: Hellfire Ramparts
				682,	-- Heroic: Magister's Terrace
				671,	-- Heroic: Mana-Tombs
				676,	-- Heroic: Opening of the Dark Portal
				674,	-- Heroic: Sethekk Halls
				675,	-- Heroic: Shadow Labyrinth
				681,	-- Heroic: The Arcatraz
				668,	-- Heroic: The Blood Furnace
				680,	-- Heroic: The Botanica
				673,	-- Heroic: The Escape From Durnholde
				679,	-- Heroic: The Mechanar
				678,	-- Heroic: The Shattered Halls
				669,	-- Heroic: The Slave Pens
				677,	-- Heroic: The Steamvault
				670,	-- Heroic: Underbog
			}},
		}),
		ach(1284, {	-- Outland Dungeonmaster
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				666,	-- Auchenai Crypts
				647,	-- Hellfire Ramparts
				661,	-- Magister's Terrace
				651,	-- Mana-Tombs
				655,	-- Opening of the Dark Portal
				653,	-- Sethekk Halls
				654,	-- Shadow Labyrinth
				660,	-- The Arcatraz
				648,	-- The Blood Furnace
				659,	-- The Botanica
				652,	-- The Escape From Durnholde
				658,	-- The Mechanar
				657,	-- The Shattered Halls
				649,	-- The Slave Pens
				656,	-- The Steamvault
				650,	-- Underbog
			}},
		}),
		ach(1286, {	-- Outland Raider
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				690,	-- Karazhan
				692,	-- Gruul's Lair
				693,	-- Magtheridon's Lair
				694,	-- Serpentshrine Cavern
				695,	-- The Battle for Mount Hyjal
				696,	-- Tempest Keep
				697,	-- The Black Temple
				698,	-- Sunwell Plateau
			}},
		}),
	}),
	achcat(ACHIEVEMENT_CATEGORY_PROFESSIONS, {
		achcat(170, {	-- Cooking
			applyclassicphase(WRATH_PHASE_ONE, ach(1563, {	-- Hail to the Chef [Alliance]
				["requireSkill"] = COOKING,
				["races"] = ALLIANCE_ONLY,
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(1784, {	-- Hail to the Chef [Horde]
				["requireSkill"] = COOKING,
				["races"] = HORDE_ONLY,
			})),
			classicAch(121, {	-- Journeyman Cook
				["requireSkill"] = COOKING,
				["spellID"] = 3102,	-- Cooking (Journeyman)
				["rank"] = 2,
			}),
			classicAch(122, {	-- Expert Cook
				["requireSkill"] = COOKING,
				["spellID"] = 3413,	-- Cooking (Expert)
				["rank"] = 3,
			}),
			classicAch(123, {	-- Artisan Cook
				["requireSkill"] = COOKING,
				["spellID"] = 18260,	-- Cooking (Artisan)
				["rank"] = 4,
			}),
			applyclassicphase(TBC_PHASE_ONE, ach(124, {	-- Master Cook
				["requireSkill"] = COOKING,
				["spellID"] = 33359,	-- Cooking (Master)
				["rank"] = 5,
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(125, {	-- Grand Master Cook
				["requireSkill"] = COOKING,
				["spellID"] = 51296,	-- Cooking (Grand Master)
				["rank"] = 6,
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(1998, {	-- Dalaran Cooking Award
				["provider"] = { "i", 43016 },	-- Dalaran Cooking Award
				["requireSkill"] = COOKING,
				["maps"] = { DALARAN },
				["rank"] = 1,
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(1999, {	-- 10 Dalaran Cooking Awards
				["provider"] = { "i", 43016 },	-- Dalaran Cooking Award
				["requireSkill"] = COOKING,
				["maps"] = { DALARAN },
				["rank"] = 10,
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(2000, {	-- 25 Dalaran Cooking Awards
				["provider"] = { "i", 43016 },	-- Dalaran Cooking Award
				["requireSkill"] = COOKING,
				["maps"] = { DALARAN },
				["rank"] = 25,
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(2001, {	-- 50 Dalaran Cooking Awards
				["provider"] = { "i", 43016 },	-- Dalaran Cooking Award
				["requireSkill"] = COOKING,
				["maps"] = { DALARAN },
				["rank"] = 50,
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(2002, {	-- 100 Dalaran Cooking Awards
				["provider"] = { "i", 43016 },	-- Dalaran Cooking Award
				["requireSkill"] = COOKING,
				["maps"] = { DALARAN },
				["rank"] = 100,
			})),
			ach(1801, {	-- Captain Rumsey's Lager
				["provider"] = { "i", 34832 },	-- Captain Rumsey's Lager
				["requireSkill"] = COOKING,
			}),
			applyclassicphase(WRATH_PHASE_ONE, ach(1799, {	-- Chef de Cuisine
				["requireSkill"] = COOKING,
				["rank"] = 160,
			})),
			ach(1797, {	-- Chef de Partie
				["requireSkill"] = COOKING,
				["rank"] = 75,
			}),
			applyclassicphase(WRATH_PHASE_ONE, ach(3296, {	-- Cooking with Style
				["provider"] = { "i", 46349 },	-- Chef's Hat
				["requireSkill"] = COOKING,
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(1781, {	-- Critter Gitter
				["provider"] = { "i", 43004 },	-- Critter Bites
				["requireSkill"] = COOKING,
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(1785, {	-- Dinner Impossible
				["requireSkill"] = COOKING,
			})),
			ach(1795, {	-- Lunch Lady
				["requireSkill"] = COOKING,
				["rank"] = 25,
			}),
			applyclassicphase(WRATH_PHASE_ONE, ach(1782, {	-- Our Daily Bread [Alliance]
				["requireSkill"] = COOKING,
				["maps"] = { DALARAN },
				["races"] = ALLIANCE_ONLY,
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(1783, {	-- Our Daily Bread [Horde]
				["requireSkill"] = COOKING,
				["maps"] = { DALARAN },
				["races"] = HORDE_ONLY,
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(1780, {	-- Second That Emotion
				["providers"] = {
					{ "i", 43492 },	-- Haunted Herring
					{ "i", 43491 },	-- Bad Clams
					{ "i", 43490 },	-- Tasty Cupcake
					{ "i", 43488 },	-- Last Weeks Mammoth
				},
				["requireSkill"] = COOKING,
			})),
			ach(1796, {	-- Short Order Cook
				["requireSkill"] = COOKING,
				["rank"] = 50,
			}),
			ach(1798, {	-- Sous Chef
				["requireSkill"] = COOKING,
				["rank"] = 100,
			}),
			ach(877, {	-- The Cake Is Not A Lie
				["provider"] = { "i", 33924 },	-- Delicious Chocolate Cake
				["requireSkill"] = COOKING,
			}),
			applyclassicphase(WRATH_PHASE_ONE, ach(1777, {	-- The Northrend Gourmet (15)
				["requireSkill"] = COOKING,
				["rank"] = 15,
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(1778, {	-- The Northrend Gourmet (30)
				["requireSkill"] = COOKING,
				["rank"] = 30,
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(1779, {	-- The Northrend Gourmet (45)
				["requireSkill"] = COOKING,
				["rank"] = 45,
			})),
			ach(1800, {	-- The Outland Gourmet
				["requireSkill"] = COOKING,
			}),
		}),
		achcat(171, {	-- Fishing
			applyclassicphase(WRATH_PHASE_ONE, ach(1516, {	-- Accomplished Angler
				["requireSkill"] = FISHING,
				["groups"] = {
					-- #if AFTER CATA
					title(83),	-- Salty %t
					-- #else
					title(51),	-- Salty %t
					-- #endif
				},
			})),
			classicAch(126, {	-- Journeyman Fisherman
				["requireSkill"] = FISHING,
				["spellID"] = 7731,	-- Fishing (Journeyman)
				["rank"] = 2,
			}),
			classicAch(127, {	-- Expert Fisherman
				["requireSkill"] = FISHING,
				["spellID"] = 7732,	-- Fishing (Expert)
				["rank"] = 3,
			}),
			classicAch(128, {	-- Artisan Fisherman
				["requireSkill"] = FISHING,
				["spellID"] = 18248,	-- Fishing (Artisan)
				["rank"] = 4,
			}),
			applyclassicphase(TBC_PHASE_ONE, ach(129, {	-- Master Fisherman
				["requireSkill"] = FISHING,
				["spellID"] = 33095,	-- Fishing (Master)
				["rank"] = 5,
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(130, {	-- Grand Master Fisherman
				["requireSkill"] = FISHING,
				["spellID"] = 51294,	-- Fishing (Grand Master)
				["rank"] = 6,
			})),
			classicAch(1243, {	-- Fish Don't Leave Footprints
				["timeline"] = { "added 2.3.0" },
				-- #if BEFORE WRATH
				["description"] = "Learn the ability to find fish.",
				-- #endif
				["requireSkill"] = FISHING,
				["spellID"] = 43308,	-- Find Fish
			}),
			ach(1556, {	-- 25 Fish
				["requireSkill"] = FISHING,
			}),
			ach(1557, {	-- 50 Fish
				["requireSkill"] = FISHING,
			}),
			ach(1558, {	-- 100 Fish
				["requireSkill"] = FISHING,
			}),
			ach(1559, {	-- 250 Fish
				["requireSkill"] = FISHING,
			}),
			ach(1560, {	-- 500 Fish
				["requireSkill"] = FISHING,
			}),
			ach(1561, {	-- 1000 Fish
				["requireSkill"] = FISHING,
			}),
			applyclassicphase(WRATH_PHASE_ONE, ach(2094, {	-- A Penny For Your Thoughts
				["requireSkill"] = FISHING,
				["maps"] = { DALARAN },
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(3217, {	-- Chasing Marcia
				["requireSkill"] = FISHING,
				["maps"] = { DALARAN },
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(1958, {	-- I Smell A Giant Rat
				["provider"] = { "i", 43698 },	-- Giant Sewer Rat
				["requireSkill"] = FISHING,
				["maps"] = { DALARAN },
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(1517, {	-- Northrend Angler
				["requireSkill"] = FISHING,
			})),
			ach(878, {	-- One That Didn't Get Away
				["providers"] = {
					{ "i", 6295 },	-- 15 Pound Mud Snapper
					{ "i", 13913 },	-- 22 Pound Lobster
					{ "i", 13905 },	-- 29 Pound Salmon
					{ "i", 6364 },	-- 32 Pound Catfish
					{ "i", 13887 },	-- 52 Pound Redgill
					{ "i", 13880 },	-- 68 Pound Grouper
					{ "i", 13917 },	-- 103 Pound Mightfish
					-- #if AFTER WRATH
					{ "i", 44703 },	-- Dark Herring
					-- #endif
					{ "i", 19808 },	-- Rockhide Strongfish
					{ "i", 6360 },	-- Steelscale Crushfish
				},
				["requireSkill"] = FISHING,
				-- #if BEFORE WRATH
				["description"] = "Catch one of the rare fish in the list below.\n\nKeep one in your inventory somewhere to keep credit for this.",
				["OnUpdate"] = [[_.CommonAchievementHandlers.ANY_ITEM_PROVIDER]],
				-- #endif
			}),
			ach(1225, {	-- Outland Angler
				["requireSkill"] = FISHING,
			}),
			applyclassicphase(WRATH_PHASE_ONE, ach(2095, {	-- Silver in the City
				["requireSkill"] = FISHING,
				["maps"] = { DALARAN },
			})),
			ach(150, {	-- The Fishing Diplomat
				["requireSkill"] = FISHING,
				["maps"] = { ORGRIMMAR, STORMWIND_CITY },
			}),
			ach(153, {	-- The Old Gnome and the Sea
				["requireSkill"] = FISHING,
			}),
			ach(1257, {	-- The Old Gnome and the Sea
				["requireSkill"] = FISHING,
			}),
			applyclassicphase(WRATH_PHASE_ONE, ach(1957, {	-- There's Gold In That There Fountain
				["requireSkill"] = FISHING,
				["maps"] = { DALARAN },
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(3218, {	-- Turtles All the Way Down
				["provider"] = { "i", 46109 },	-- Sea Turtle
				["requireSkill"] = FISHING,
			})),
		}),
		achcat(172, {	-- First Aid
			classicAch(131, {	-- Journeyman in First Aid
				["requireSkill"] = FIRST_AID,
				["spellID"] = 3274,	-- First Aid (Journeyman)
				["rank"] = 2,
			}),
			classicAch(132, {	-- Expert in First Aid
				["requireSkill"] = FIRST_AID,
				["spellID"] = 7924,	-- First Aid (Expert)
				["rank"] = 3,
			}),
			classicAch(133, {	-- Artisan in First Aid
				["requireSkill"] = FIRST_AID,
				["spellID"] = 10846,	-- First Aid (Artisan)
				["rank"] = 4,
			}),
			applyclassicphase(TBC_PHASE_ONE, ach(134, {	-- Master in First Aid
				["requireSkill"] = FIRST_AID,
				["spellID"] = 27028,	-- First Aid (Master)
				["rank"] = 5,
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(135, {	-- Grand Master in First Aid
				["requireSkill"] = FIRST_AID,
				["spellID"] = 45542,	-- First Aid (Grand Master)
				["rank"] = 6,
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(137, {	-- Stocking Up
				["requireSkill"] = FIRST_AID,
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(141, {	-- Ultimate Triage
				["requireSkill"] = FIRST_AID,
			})),
		}),
		applyclassicphase(WRATH_PHASE_ONE, ach(730, {	-- Skills to Pay the Bills
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				130,	-- Grand Master Fisherman
				135,	-- Grand Master in First Aid
				125,	-- Grand Master Cook
			}},
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(735)),	-- Working Day and Night
	}),
	achcat(ACHIEVEMENT_CATEGORY_REPUTATION, {
		classicAch(522, {	-- Somebody Likes Me
			["OnClick"] = REPUTATIONS_OnClick,
			["OnTooltip"] = REPUTATIONS_OnTooltip,
			["OnUpdate"] = REPUTATIONS_OnUpdate,
			["rank"] = 1,
		}),
		classicAch(523, {	-- 5 Exalted Reputations
			["OnClick"] = REPUTATIONS_OnClick,
			["OnTooltip"] = REPUTATIONS_OnTooltip,
			["OnUpdate"] = REPUTATIONS_OnUpdate,
			["rank"] = 5,
		}),
		classicAch(524, {	-- 10 Exalted Reputations
			["OnClick"] = REPUTATIONS_OnClick,
			["OnTooltip"] = REPUTATIONS_OnTooltip,
			["OnUpdate"] = REPUTATIONS_OnUpdate,
			["rank"] = 10,
		}),
		classicAch(521, {	-- 15 Exalted Reputations
			["OnClick"] = REPUTATIONS_OnClick,
			["OnTooltip"] = REPUTATIONS_OnTooltip,
			["OnUpdate"] = REPUTATIONS_OnUpdate,
			["rank"] = 15,
		}),
		classicAch(520, {	-- 20 Exalted Reputations
			["OnClick"] = REPUTATIONS_OnClick,
			["OnTooltip"] = REPUTATIONS_OnTooltip,
			["OnUpdate"] = REPUTATIONS_OnUpdate,
			["rank"] = 20,
		}),
		applyclassicphase(TBC_PHASE_ONE, ach(519, {	-- 25 Exalted Reputations
			["OnClick"] = REPUTATIONS_OnClick,
			["OnTooltip"] = REPUTATIONS_OnTooltip,
			["OnUpdate"] = REPUTATIONS_OnUpdate,
			["rank"] = 25,
		})),
		applyclassicphase(TBC_PHASE_ONE, ach(518, {	-- 30 Exalted Reputations
			["OnClick"] = REPUTATIONS_OnClick,
			["OnTooltip"] = REPUTATIONS_OnTooltip,
			["OnUpdate"] = REPUTATIONS_OnUpdate,
			["rank"] = 30,
		})),
		applyclassicphase(TBC_PHASE_TWO, ach(1014, {	-- 35 Exalted Reputations
			["OnClick"] = REPUTATIONS_OnClick,
			["OnTooltip"] = REPUTATIONS_OnTooltip,
			["OnUpdate"] = REPUTATIONS_OnUpdate,
			["rank"] = 35,
		})),
		applyclassicphase(TBC_PHASE_FIVE, ach(1015, {	-- 40 Exalted Reputations
			["OnClick"] = REPUTATIONS_OnClick,
			["OnTooltip"] = REPUTATIONS_OnTooltip,
			["OnUpdate"] = REPUTATIONS_OnUpdate,
			["rank"] = 40,
			-- #if AFTER 3.0.1
			["groups"] = {
				title(46),		-- <Name> the Exalted
			},
			-- #endif
		})),
		applyclassicphase(PHASE_ONE, ach(948, {	-- Ambassador of the Alliance
			-- #if BEFORE 3.0.1
			["description"] = "Earn exalted reputation with 5 home cities.",
			-- #endif
			-- #if ANYCLASSIC
			["OnClick"] = [[_.CommonAchievementHandlers.EXALTED_REPS_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.EXALTED_REPS_OnTooltip]],
			["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.EXALTED_REPS_OnUpdate(t, 69, 930, 54, 47, 72); end]],
			-- #endif
			["races"] = ALLIANCE_ONLY,
			["groups"] = applyclassicphase(WRATH_PHASE_ONE, {
				-- #if AFTER CATA
				title(130),	-- Ambassador %
				-- #else
				title(98),	-- Ambassador %
				-- #endif
			}),
		})),
		applyclassicphase(PHASE_ONE, ach(762, {	-- Ambassador of the Horde
			-- #if BEFORE 3.0.1
			["description"] = "Earn exalted reputation with 5 home cities.",
			-- #endif
			-- #if ANYCLASSIC
			["OnClick"] = [[_.CommonAchievementHandlers.EXALTED_REPS_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.EXALTED_REPS_OnTooltip]],
			["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.EXALTED_REPS_OnUpdate(t, 530, 76, 911, 81, 68); end]],
			-- #endif
			["races"] = HORDE_ONLY,
			["groups"] = applyclassicphase(WRATH_PHASE_ONE, {
				-- #if AFTER CATA
				title(130),	-- Ambassador %
				-- #else
				title(98),	-- Ambassador %
				-- #endif
			}),
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(945, {	-- The Argent Champion
			-- #if BEFORE 3.0.1
			["description"] = "Earn exalted status with the Argent Dawn and the Argent Crusade.",
			-- #endif
			-- #if ANYCLASSIC
			["OnClick"] = [[_.CommonAchievementHandlers.EXALTED_REPS_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.EXALTED_REPS_OnTooltip]],
			["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.EXALTED_REPS_OnUpdate(t, 947, 946); end]],
			-- #endif
			["groups"] = {
				-- #if AFTER CATA
				title(131),	-- % the Argent Champion
				-- #else
				title(99),	-- % the Argent Champion
				-- #endif
			},
		})),
		applyclassicphase(TBC_PHASE_ONE, ach(942, {	-- The Diplomat
			-- #if BEFORE 3.0.1
			["OnClick"] = [[_.CommonAchievementHandlers.EXALTED_REPS_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.EXALTED_REPS_OnTooltip]],
			["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.EXALTED_REPS_OnUpdate(t, 978, 970, 576); end]],
			["description"] = "Raise your reputation level from unfriendly to exalted with Timbermaw Hold, Sporeggar and the Kurenai.",
			-- #endif
			["maps"] = { FERALAS, ZANGARMARSH, NAGRAND },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				-- #if AFTER CATA
				title(79),	-- % the Diplomat
				-- #else
				title(48),	-- % the Diplomat
				-- #endif
			},
		})),
		applyclassicphase(TBC_PHASE_ONE,  ach(943,{	-- The Diplomat
			-- #if BEFORE 3.0.1
			["OnClick"] = [[_.CommonAchievementHandlers.EXALTED_REPS_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.EXALTED_REPS_OnTooltip]],
			["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.EXALTED_REPS_OnUpdate(t, 941, 970, 576); end]],
			["description"] = "Raise your reputation level from unfriendly to exalted with Timbermaw Hold, Sporeggar and the Mag'har.",
			-- #endif
			["maps"] = { FERALAS, ZANGARMARSH, NAGRAND },
			["races"] = HORDE_ONLY,
			["groups"] = applyclassicphase(WRATH_PHASE_ONE, {
				-- #if AFTER CATA
				title(79),	-- % the Diplomat
				-- #else
				title(48),	-- % the Diplomat
				-- #endif
			}),
		})),
	}),
	achcat(ACHIEVEMENT_CATEGORY_WORLD_EVENTS, {
		
	}),
	achcat(ACHIEVEMENT_CATEGORY_PET_BATTLES, {
		
	}),
	achcat(ACHIEVEMENT_CATEGORY_COLLECTIONS, {
		
	}),
	achcat(ACHIEVEMENT_CATEGORY_EXPANSION_FEATURES, {
		
	}),
	achcat(ACHIEVEMENT_CATEGORY_FEATS_OF_STRENGTH, {
		classicAch(2358, {	-- Charger
			["classes"] = { PALADIN },
			["f"] = 100,
			-- #if BEFORE 3.0.1
			["sourceQuests"] = {
				7647,	-- Judgment and Redemption
				-- #if AFTER TBC
				9737,	-- True Masters of the Light
				-- #endif
			},
			["OnUpdate"] = [[_.CommonAchievementHandlers.ANY_SOURCE_QUEST]],
			-- #endif
		}),
		-- #if AFTER 4.0.1
		applyclassicphase(WRATH_PHASE_ONE, ach(92, {	-- Did Somebody Order a Knuckle Sandwich?
			["timeline"] = { "added 3.0.1", "removed 4.0.1" },
		})),
		-- #endif
		applyclassicphase(PHASE_THREE, ach(2336, {	-- Insane in the Membrane
			["OnClick"] = INSANE_IN_THE_MEMBRANE_OnClick,
			["OnTooltip"] = INSANE_IN_THE_MEMBRANE_OnTooltip,
			["OnUpdate"] = INSANE_IN_THE_MEMBRANE_OnUpdate,
			["description"] = "Insane in the Membrane is a Feat of Strength that rewards the title <The Insane>. This feat requires you to become honored with the Bloodsail Buccaneers and exalted with the Steamwheedle Cartel (Booty Bay, Everlook, Gadgetzan, Ratchet), Ravenholdt, Darkmoon Faire, and the Shen'dralar. It does not require that all of these reputation levels be reached at the same time, however, this may not be a thing until the achievement itself is introduced. Raising reputation with these factions is typically very difficult, time-consuming, and costly.",
			["groups"] = {
				title(112, {	-- the Insane
					["timeline"] = { "added 3.0.1" },
				}),
			},
		})),
		applyclassicphase(PHASE_ONE, ach(879, {	-- Old School Ride
			["providers"] = {
				{ "i", 13328 },	-- Black Ram
				{ "i", 13329 },	-- Frost Ram
				{ "i", 13327 },	-- Icy Blue Mechanostrider Mod A
				{ "i", 13326 },	-- White Mechanostrider Mod B
				{ "i", 12354 },	-- Palomino Bridle
				{ "i", 12353 },	-- White Stallion Bridle
				{ "i", 12302 },	-- Reins of the Ancient Frostsaber
				{ "i", 12303 },	-- Reins of the Nightsaber
				{ "i", 12351 },	-- Horn of the Arctic Wolf
				{ "i", 12330 },	-- Horn of the Red Wolf
				{ "i", 15292 },	-- Green Kodo
				{ "i", 15293 },	-- Teal Kodo
				{ "i", 13317 },	-- Whistle of the Ivory Raptor
				{ "i", 8586 },	-- Whistle of the Mottled Red Raptor
			},
			["timeline"] = { "removed 1.4.0" },
		})),
	}),
	achcat(ACHIEVEMENT_CATEGORY_LEGACY, {
		
	}),
});