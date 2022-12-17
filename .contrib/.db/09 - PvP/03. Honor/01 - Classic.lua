-- TODO: Crieve NOTE: This file looks awful.
-- Add Vendors
-- https://classic.wowhead.com/npc=12783/lieutenant-karter
-- https://classic.wowhead.com/npc=12796/raider-bork
local THE_CONQUEROR_OnUpdate = [[function(t)
	if t.collectible then
		if not t.wsg then
			local f = _.SearchForField("factionID", 889);
			if f and #f > 0 then
				t.wsg = f[1];
			else
				return true;
			end
		end
		if not t.ab then
			local f = _.SearchForField("factionID", 510);
			if f and #f > 0 then
				t.ab = f[1];
			else
				return true;
			end
		end
		if not t.av then
			local f = _.SearchForField("factionID", 729);
			if f and #f > 0 then
				t.av = f[1];
			else
				return true;
			end
		end
		t.SetAchievementCollected(t.achievementID, t.wsg.standing == 8 and t.ab.standing == 8 and t.av.standing == 8);
	end
end]];
local THE_JUSTICAR_OnUpdate = [[function(t)
	if t.collectible then
		if not t.wsg then
			local f = _.SearchForField("factionID", 890);
			if f and #f > 0 then
				t.wsg = f[1];
			else
				return true;
			end
		end
		if not t.ab then
			local f = _.SearchForField("factionID", 509);
			if f and #f > 0 then
				t.ab = f[1];
			else
				return true;
			end
		end
		if not t.av then
			local f = _.SearchForField("factionID", 730);
			if f and #f > 0 then
				t.av = f[1];
			else
				return true;
			end
		end
		t.SetAchievementCollected(t.achievementID, t.wsg.standing == 8 and t.ab.standing == 8 and t.av.standing == 8);
	end
end]];
local THE_JUSTICAR_AND_THE_CONQUEROR_OnClick = [[function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local clone = _.CreateMiniListForGroup(_.CreateAchievement(t[t.key], {
			t.wsg,
			t.ab,
			t.av
		})).data;
		clone.description = t.description;
		return true;
	end
end]];
local THE_JUSTICAR_AND_THE_CONQUEROR_OnTooltip = [[function(t)
	if t.collectible then
		GameTooltip:AddLine(" ");
		GameTooltip:AddDoubleLine(" |T" .. t.wsg.icon .. ":0|t " .. t.wsg.text, _.L[t.wsg.standing == 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
		GameTooltip:AddDoubleLine(" |T" .. t.ab.icon .. ":0|t " .. t.ab.text, _.L[t.ab.standing == 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
		GameTooltip:AddDoubleLine(" |T" .. t.av.icon .. ":0|t " .. t.av.text, _.L[t.av.standing == 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
	end
end]];
root("PVP", {
	n(FACTION_HEADER_ALLIANCE, {
		["races"] = ALLIANCE_ONLY,
		["groups"] = {
			n(ACHIEVEMENTS, {
				applyclassicphase(PHASE_TWO, ach(907, {	-- The Justicar
					-- #if BEFORE 3.0.1
					["description"] = "Raise your reputation values in Warsong Gulch, Arathi Basin and Alterac Valley to Exalted.",
					["OnClick"] = THE_JUSTICAR_AND_THE_CONQUEROR_OnClick,
					["OnTooltip"] = THE_JUSTICAR_AND_THE_CONQUEROR_OnTooltip,
					["OnUpdate"] = THE_JUSTICAR_OnUpdate,
					-- #else
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						709,	-- Hero of the Stormpike Guard
						711,	-- Knight of Arathor
						713,	-- Silverwing Sentinel
					}},
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, title(	-- Justicar <Name>
							-- #if BEFORE CATA
							35,
							-- #else
							48,
							-- #endif
						{
							["races"] = ALLIANCE_ONLY,
						})),
					},
				})),
			}),
			n(QUESTS, {
				q(8371, {	-- Concerted Efforts
					["qg"] = 15351,	-- Alliance Brigadier General
					["coords"] = {
						{ 57.8, 34.6, DARNASSUS },
						{ 69.8, 90, IRONFORGE },
						{ 79.4, 18, STORMWIND_CITY },
						-- #if AFTER TBC
						{ 67.4, 33.9, SHATTRATH_CITY },
						-- #else
						{ 39.4, 82.2, ALTERAC_MOUNTAINS },
						{ 45.6, 45.8, ARATHI_HIGHLANDS },
						{ 61.8, 83.8, ASHENVALE },
						-- #endif
					},
					["timeline"] = { "removed 3.3.3" },
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER TBC
					["cost"] = {
						{ "i", 20560, 1 },	-- Alterac Valley Mark of Honor
						{ "i", 20559, 1 },	-- Arathi Basin Mark of Honor
						{ "i", 29024, 1 },	-- Eye of the Storm Mark of Honor
						{ "i", 20558, 1 },	-- Warsong Gulch Mark of Honor
					},
					-- #else
					["cost"] = {
						{ "i", 20560, 3 },	-- Alterac Valley Mark of Honor
						{ "i", 20559, 3 },	-- Arathi Basin Mark of Honor
						{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
					},
					-- #endif
					-- #if AFTER WRATH
					["lvl"] = 61,
					-- #elseif AFTER TBC
					["lvl"] = 60,
					-- #else
					["lvl"] = 51,
					-- #endif
				}),
				q(8385, {	-- Concerted Efforts
					["qg"] = 15351,	-- Alliance Brigadier General
					["sourceQuest"] = 8371,	-- Concerted Efforts
					["coords"] = {
						{ 57.8, 34.6, DARNASSUS },
						{ 69.8, 90, IRONFORGE },
						{ 79.4, 18, STORMWIND_CITY },
						-- #if AFTER TBC
						{ 67.4, 33.9, SHATTRATH_CITY },
						-- #else
						{ 39.4, 82.2, ALTERAC_MOUNTAINS },
						{ 45.6, 45.8, ARATHI_HIGHLANDS },
						{ 61.8, 83.8, ASHENVALE },
						-- #endif
					},
					["timeline"] = { "removed 3.3.3" },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					-- #if AFTER TBC
					["cost"] = {
						{ "i", 20560, 1 },	-- Alterac Valley Mark of Honor
						{ "i", 20559, 1 },	-- Arathi Basin Mark of Honor
						{ "i", 29024, 1 },	-- Eye of the Storm Mark of Honor
						{ "i", 20558, 1 },	-- Warsong Gulch Mark of Honor
					},
					-- #else
					["cost"] = {
						{ "i", 20560, 3 },	-- Alterac Valley Mark of Honor
						{ "i", 20559, 3 },	-- Arathi Basin Mark of Honor
						{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
					},
					-- #endif
					-- #if AFTER WRATH
					["lvl"] = 61,
					-- #elseif AFTER TBC
					["lvl"] = 60,
					-- #else
					["lvl"] = 51,
					-- #endif
				}),
			}),
		},
	}),
	n(FACTION_HEADER_HORDE, {
		["races"] = HORDE_ONLY,
		["groups"] = {
			n(ACHIEVEMENTS, {
				applyclassicphase(PHASE_TWO, ach(714, {	-- The Conqueror
					-- #if BEFORE 3.0.1
					["description"] = "Raise your reputation values in Warsong Gulch, Arathi Basin and Alterac Valley to Exalted.",
					["OnClick"] = THE_JUSTICAR_AND_THE_CONQUEROR_OnClick,
					["OnTooltip"] = THE_JUSTICAR_AND_THE_CONQUEROR_OnTooltip,
					["OnUpdate"] = THE_CONQUEROR_OnUpdate,
					-- #else
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						708,	-- Hero of the Frostwolf Clan
						710,	-- The Defiler
						712,	-- Warsong Outrider
					}},
					-- #endif
					["races"] = HORDE_ONLY,
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, title(	-- Conqueror <Name>
							-- #if BEFORE CATA
							34,
							-- #else
							47,
							-- #endif
						{
							["races"] = HORDE_ONLY,
						})),
					},
				})),
			}),
			n(QUESTS, {
				q(8367, {	-- For Great Honor
					["qg"] = 15350,	-- Horde Warbringer
					["coords"] = {
						{ 79.8, 30.4, ORGRIMMAR },
						{ 56.0, 76.7, THUNDER_BLUFF },
						{ 60.7, 87.7, UNDERCITY },
						-- #if AFTER TBC
						{ 67.0, 56.6, SHATTRATH_CITY },
						-- #else
						{ 62.6, 59.1, ALTERAC_MOUNTAINS },
						{ 73.5, 29.7, ARATHI_HIGHLANDS },
						{ 46.7, 8.4, THE_BARRENS },
						-- #endif
					},
					["timeline"] = { "removed 3.3.3" },
					["races"] = HORDE_ONLY,
					-- #if AFTER TBC
					["cost"] = {
						{ "i", 20560, 1 },	-- Alterac Valley Mark of Honor
						{ "i", 20559, 1 },	-- Arathi Basin Mark of Honor
						{ "i", 29024, 1 },	-- Eye of the Storm Mark of Honor
						{ "i", 20558, 1 },	-- Warsong Gulch Mark of Honor
					},
					-- #else
					["cost"] = {
						{ "i", 20560, 3 },	-- Alterac Valley Mark of Honor
						{ "i", 20559, 3 },	-- Arathi Basin Mark of Honor
						{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
					},
					-- #endif
					-- #if AFTER WRATH
					["lvl"] = 61,
					-- #elseif AFTER TBC
					["lvl"] = 60,
					-- #else
					["lvl"] = 51,
					-- #endif
				}),
				q(8388, {	-- For Great Honor
					["qg"] = 15350,	-- Horde Warbringer
					["sourceQuest"] = 8367,	-- For Great Honor
					["coords"] = {
						{ 79.8, 30.4, ORGRIMMAR },
						{ 56.0, 76.7, THUNDER_BLUFF },
						{ 60.7, 87.7, UNDERCITY },
						-- #if AFTER TBC
						{ 67.0, 56.6, SHATTRATH_CITY },
						-- #else
						{ 62.6, 59.1, ALTERAC_MOUNTAINS },
						{ 73.5, 29.7, ARATHI_HIGHLANDS },
						{ 46.7, 8.4, THE_BARRENS },
						-- #endif
					},
					["timeline"] = { "removed 3.3.3" },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					-- #if AFTER TBC
					["cost"] = {
						{ "i", 20560, 1 },	-- Alterac Valley Mark of Honor
						{ "i", 20559, 1 },	-- Arathi Basin Mark of Honor
						{ "i", 29024, 1 },	-- Eye of the Storm Mark of Honor
						{ "i", 20558, 1 },	-- Warsong Gulch Mark of Honor
					},
					-- #else
					["cost"] = {
						{ "i", 20560, 3 },	-- Alterac Valley Mark of Honor
						{ "i", 20559, 3 },	-- Arathi Basin Mark of Honor
						{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
					},
					-- #endif
					-- #if AFTER WRATH
					["lvl"] = 61,
					-- #elseif AFTER TBC
					["lvl"] = 60,
					-- #else
					["lvl"] = 51,
					-- #endif
				}),
			}),
		},
	}),
});