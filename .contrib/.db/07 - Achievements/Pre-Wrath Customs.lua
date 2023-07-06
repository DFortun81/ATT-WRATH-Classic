--------------------------------------------------
--    A C H I E V E M E N T S    M O D U L E    --
--------------------------------------------------
root("Achievements", {
	achcat(ACHIEVEMENT_CATEGORY_CHARACTER, {
		-- Armored Brown Bear, located in Dalaran.
		applyclassicphase(CATA_PHASE_ONE, ach(5180, {	-- Breaking the Sound Barrier
			["spellID"] = 90265,	-- Master Riding
			["rank"] = 5,
		})),
		classicAch(1017, {	-- Can I Keep Him?
			["OnClick"] = [[_.CommonAchievementHandlers.COMPANIONS_OnClick]],
			-- #if BEFORE WRATH
			["OnTooltip"] = [[_.CommonAchievementHandlers.COMPANIONS_OnTooltip]],
			["OnUpdate"] = [[_.CommonAchievementHandlers.COMPANIONS_OnUpdate]],
			-- #endif
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
		-- #if AFTER TBC
		classicAch(889, {	-- Fast and Furious
			["spellID"] = 33391,	-- Journeyman Riding
			["rank"] = 2,
		}),
		-- #endif
		classicAch(2142, {	-- Filling Up The Barn
			["OnClick"] = [[_.CommonAchievementHandlers.MOUNTS_OnClick]],
			-- #if BEFORE WRATH
			["OnTooltip"] = [[_.CommonAchievementHandlers.MOUNTS_OnTooltip]],
			["OnUpdate"] = [[_.CommonAchievementHandlers.MOUNTS_OnUpdate]],
			-- #endif
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
			-- #if AFTER TBC
			["spellID"] = 33388,	-- Apprentice Riding
			["rank"] = 1,
			-- #else
			["description"] = "Learn any of the riding skills.",
			["OnClick"] = [[_.CommonAchievementHandlers.KNOW_SPELLS_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.KNOW_SPELLS_OnTooltip]],
			["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.KNOW_SPELLS_ANY_OnUpdate(t, 824, 18995, 10907, 826, 10861, 828, 10906, 825); end]],
			--[[
				824,	-- Horse Riding
				18995,	-- Kodo Riding
				10907,	-- Mechanostrider Piloting
				826,	-- Ram Riding
				10861,	-- Raptor Riding
				828,	-- Tiger Riding
				10906,	-- Undead Horsemanship
				825,	-- Wolf Riding
			]]--
			-- #endif
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
			["OnClick"] = [[_.CommonAchievementHandlers.MOUNTS_OnClick]],
			-- #if BEFORE WRATH
			["OnTooltip"] = [[_.CommonAchievementHandlers.MOUNTS_OnTooltip]],
			["OnUpdate"] = [[_.CommonAchievementHandlers.MOUNTS_OnUpdate]],
			-- #endif
			["rank"] = 50,
			["f"] = 100,
			["groups"] = {
				applyclassicphase(WRATH_PHASE_ONE, i(44178)),	-- Reins of the Albino Drake
			},
		})),
		classicAch(6, {	-- Level 10
			["lvl"] = 10,
			-- #if BEFORE WRATH
			["OnUpdate"] = [[_.CommonAchievementHandlers.LEVEL_OnUpdate]],
			-- #endif
		}),
		classicAch(7, {	-- Level 20
			["lvl"] = 20,
			-- #if BEFORE WRATH
			["OnUpdate"] = [[_.CommonAchievementHandlers.LEVEL_OnUpdate]],
			-- #endif
		}),
		classicAch(8, {	-- Level 30
			["lvl"] = 30,
			-- #if BEFORE WRATH
			["OnUpdate"] = [[_.CommonAchievementHandlers.LEVEL_OnUpdate]],
			-- #endif
		}),
		classicAch(9, {	-- Level 40
			["lvl"] = 40,
			-- #if BEFORE WRATH
			["OnUpdate"] = [[_.CommonAchievementHandlers.LEVEL_OnUpdate]],
			-- #endif
		}),
		classicAch(10, {	-- Level 50
			["lvl"] = 50,
			-- #if BEFORE WRATH
			["OnUpdate"] = [[_.CommonAchievementHandlers.LEVEL_OnUpdate]],
			-- #endif
		}),
		classicAch(11, {	-- Level 60
			["lvl"] = 60,
			-- #if BEFORE WRATH
			["OnUpdate"] = [[_.CommonAchievementHandlers.LEVEL_OnUpdate]],
			-- #endif
		}),
		applyclassicphase(TBC_PHASE_ONE, ach(12, {	-- Level 70
			["lvl"] = 70,
			-- #if BEFORE WRATH
			["OnUpdate"] = [[_.CommonAchievementHandlers.LEVEL_OnUpdate]],
			-- #endif
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(13, {	-- Level 80
			["lvl"] = 80,
			-- #if BEFORE WRATH
			["OnUpdate"] = [[_.CommonAchievementHandlers.LEVEL_OnUpdate]],
			-- #endif
			["groups"] = {
				i(41426, {	-- Magically Wrapped Gift
					i(41427),	-- Dalaran Firework
				}),
			},
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(2516, {	-- Lil' Game Hunter
			["OnClick"] = [[_.CommonAchievementHandlers.COMPANIONS_OnClick]],
			-- #if BEFORE WRATH
			["OnTooltip"] = [[_.CommonAchievementHandlers.COMPANIONS_OnTooltip]],
			["OnUpdate"] = [[_.CommonAchievementHandlers.COMPANIONS_OnUpdate]],
			-- #endif
			["f"] = 101,
			["rank"] = 75,
			["groups"] = {
				applyclassicphase(WRATH_PHASE_ONE, i(44841)),	-- Little Fawn's Salt Lick
			},
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(705)),	-- Master of Arms
		applyclassicphase(WRATH_PHASE_ONE, ach(2536, {	-- Mountain o' Mounts [A]
			["OnClick"] = [[_.CommonAchievementHandlers.MOUNTS_OnClick]],
			-- #if BEFORE WRATH
			["OnTooltip"] = [[_.CommonAchievementHandlers.MOUNTS_OnTooltip]],
			["OnUpdate"] = [[_.CommonAchievementHandlers.MOUNTS_OnUpdate]],
			-- #endif
			["races"] = ALLIANCE_ONLY,
			["rank"] = 100,
			["f"] = 100,
			["groups"] = {
				applyclassicphase(WRATH_PHASE_ONE, i(44843)),	-- Blue Dragonhawk Mount
			},
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(2537, {	-- Mountain o' Mounts [H]
			["OnClick"] = [[_.CommonAchievementHandlers.MOUNTS_OnClick]],
			-- #if BEFORE WRATH
			["OnTooltip"] = [[_.CommonAchievementHandlers.MOUNTS_OnTooltip]],
			["OnUpdate"] = [[_.CommonAchievementHandlers.MOUNTS_OnUpdate]],
			-- #endif
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
			["OnClick"] = [[_.CommonAchievementHandlers.COMPANIONS_OnClick]],
			-- #if BEFORE WRATH
			["OnTooltip"] = [[_.CommonAchievementHandlers.COMPANIONS_OnTooltip]],
			["OnUpdate"] = [[_.CommonAchievementHandlers.COMPANIONS_OnUpdate]],
			-- #endif
			["f"] = 101,
			["rank"] = 15,
		}),
		classicAch(1248, {	-- Plethora of Pets
			["OnClick"] = [[_.CommonAchievementHandlers.COMPANIONS_OnClick]],
			-- #if BEFORE WRATH
			["OnTooltip"] = [[_.CommonAchievementHandlers.COMPANIONS_OnTooltip]],
			["OnUpdate"] = [[_.CommonAchievementHandlers.COMPANIONS_OnUpdate]],
			-- #endif
			["f"] = 101,
			["rank"] = 25,
		}),
		ach(621, {	-- Represent [TODO]
			["rank"] = 1,
		}),
		-- Ring of the Kirin Tor, located in Dalaran.
		classicAch(546, {	-- Safe Deposit
			-- #if BEFORE TBC
			["description"] = "Buy 6 additional bank slots.",
			["OnUpdate"] = [[function(t) t.SetAchievementCollected(t.achievementID, GetNumBankSlots() >= 6); end]],
			-- #elseif BEFORE WRATH
			["description"] = "Buy 7 additional bank slots.",
			["OnUpdate"] = [[function(t) t.SetAchievementCollected(t.achievementID, GetNumBankSlots() >= 7); end]],
			-- #endif
		}),
		ach(545, {	-- Shave and a Haircut
			["maps"] = { STORMWIND_CITY, ORGRIMMAR, NORTHREND_DALARAN },
		}),
		applyclassicphase(TBC_PHASE_ONE, ach(1250, {	-- Shop Smart, Shop Pet...Smart
			["OnClick"] = [[_.CommonAchievementHandlers.COMPANIONS_OnClick]],
			-- #if BEFORE WRATH
			["OnTooltip"] = [[_.CommonAchievementHandlers.COMPANIONS_OnTooltip]],
			["OnUpdate"] = [[_.CommonAchievementHandlers.COMPANIONS_OnUpdate]],
			-- #endif
			["f"] = 101,
			["rank"] = 50,
			["groups"] = {
				applyclassicphase(WRATH_PHASE_ONE, i(40653)),	-- Reeking Pet Carrier
			},
		})),
		classicAch(2141, {	-- Stable Keeper
			["OnClick"] = [[_.CommonAchievementHandlers.MOUNTS_OnClick]],
			-- #if BEFORE WRATH
			["OnTooltip"] = [[_.CommonAchievementHandlers.MOUNTS_OnTooltip]],
			["OnUpdate"] = [[_.CommonAchievementHandlers.MOUNTS_OnUpdate]],
			-- #endif
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
		--ach(1206),	-- To All The Squirrels I've Loved Before
		--ach(2557),	-- To All The Squirrels Who Shared My Life
		-- Traveler's Tundra Mammoth, located in Dalaran.
		ach(1021, {	-- Twenty-Five Tabards [TODO]
			["rank"] = 25,
			["groups"] = {
				i(40643),	-- Tabard of the Achiever
			},
		}),
		-- Wooly Mammoth, located in Dalaran.
	}),
	achcat(ACHIEVEMENT_CATEGORY_QUESTS, {
		achcat(ACHIEVEMENT_CATEGORY_EASTERN_KINGDOMS_QUESTS),
		-- #if AFTER 2.0.1
		achcat(ACHIEVEMENT_CATEGORY_OUTLAND_QUESTS),
		-- #endif
		-- #if AFTER 3.0.1
		achcat(ACHIEVEMENT_CATEGORY_NORTHREND_QUESTS, {
			applyclassicphase(WRATH_PHASE_ONE, ach(41, {	-- Loremaster of Northrend (A)
				-- #if AFTER WRATH
				["sym"] = { {"select","achievementID", 33, 35, 36, 37, 38, 39, 34, 40 } },
				-- #else
				["description"] = "Complete the Northrend quest achievements listed below.",
				["OnClick"] = [[_.CommonAchievementHandlers.META_OnClick]],
				["OnTooltip"] = [[_.CommonAchievementHandlers.META_OnTooltip]],
				["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.META_OnUpdate(t, 33, 35, 36, 37, 38, 39, 34, 40); end]],
				-- #endif
				["races"] = ALLIANCE_ONLY,
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(1360, {	-- Loremaster of Northrend (H)
				-- #if AFTER WRATH
				["sym"] = { {"select","achievementID", 1358, 1356, 38, 1357, 1359, 39, 36, 40 } },
				-- #else
				["description"] = "Complete the Northrend quest achievements listed below.",
				["OnClick"] = [[_.CommonAchievementHandlers.META_OnClick]],
				["OnTooltip"] = [[_.CommonAchievementHandlers.META_OnTooltip]],
				["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.META_OnUpdate(t, 1358, 1356, 38, 1357, 1359, 39, 36, 40); end]],
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
			-- #if AFTER WRATH
			["sym"] = { {"select","achievementID",
				939,	-- Hills Like White Elekk
				938,	-- The Snows of Northrend
				940,	-- The Green Hills of Stranglethorn
			}},
			-- #else
			["description"] = "Complete the Green Hills of Stranglethorn, Hills Like White Elekk and Snows of Northrend achievements.",
			["OnClick"] = [[_.CommonAchievementHandlers.META_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.META_OnTooltip]],
			["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.META_OnUpdate(t, 939, 938, 940); end]],
			-- #endif
			["maps"] = {
				NAGRAND,
				-- #if AFTER CATA
				NORTHERN_STRANGLETHORN,
				-- #else
				STRANGLETHORN_VALE,
				-- #endif
				SHOLAZAR_BASIN,
			},
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1576, {	-- Of Blood and Anguish
			["sourceQuests"] = {
				9977,	-- The Ring of Blood: The Final Challenge
				12948,	-- The Champion of Anguish
			},
			["maps"] = { NAGRAND, ZULDRAK },
			["groups"] = {
				crit(5799, {	-- The Champion of Anguish
					["_quests"] = { 12948 },	-- The Champion of Anguish
				}),
				crit(5798, {	-- The Ring of Blood: The Final Challenge
					["_quests"] = { 9977 },	-- The Ring of Blood: The Final Challenge
				}),
			},
		})),
		
		-- #if AFTER 3.0.1
		applyclassicphase(WRATH_PHASE_ONE, ach(1681, {	-- The Loremaster (A)
			["sym"] = {{"meta_achievement",
				1678,	-- Loremaster of Kalimdor (A)
				1676,	-- Loremaster of Eastern Kingdoms (A)
				1262,	-- Loremaster of Outland (A)
				41,		-- Loremaster of Northrend (A)
			}},
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				title(93),	-- Loremaster
				i(43300),	-- Loremaster's Colors
			},
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1682, {	-- The Loremaster (H)
			["sym"] = {{"meta_achievement",
				1680,	-- Loremaster of Kalimdor (H)
				1677,	-- Loremaster of Eastern Kingdoms (H)
				1274,	-- Loremaster of Outland (H)
				1360,	-- Loremaster of Northrend (H)
			}},
			["races"] = HORDE_ONLY,
			["groups"] = {
				title(93),	-- Loremaster
				i(43300),	-- Loremaster's Colors
			},
		})),
		-- #endif
	}),
	achcat(ACHIEVEMENT_CATEGORY_EXPLORATION, {
		applyclassicphase(TBC_PHASE_ONE, achcat(ACHIEVEMENT_CATEGORY_OUTLAND_EXP, {
		
		})),
		applyclassicphase(WRATH_PHASE_ONE, achcat(ACHIEVEMENT_CATEGORY_NORTHREND_EXP, {
		
		})),
		applyclassicphase(BFA_PHASE_ONE, ach(12988, {	-- Battle for Azeroth Explorer
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				12556,	-- Explore Tiragarde Sound
				12557,	-- Explore Drustvar
				12558,	-- Explore Stormsong Valley
				12559,	-- Explore Zuldazar
				12561,	-- Explore Nazmir
				12560,	-- Explore Vol'dun
			}},
		})),
		applyclassicphase(LEGION_PHASE_ONE, ach(11188, {	-- Broken Isles Explorer
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				10665,	-- Explore Azsuna
				10666,	-- Explore Val'sharah
				10667,	-- Explore Highmountain
				10668,	-- Explore Stormheim
				10669,	-- Explore Suramar
			}},
		})),
		applyclassicphase(CATA_PHASE_ONE, ach(4868, {	-- Cataclysm Explorer [7.0.3] / Explore Cataclysm
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				4864,	-- Explore Deepholm
				4863,	-- Explore Hyjal
				4866,	-- Explore Twilight Highlands
				4865,	-- Explore Uldum
				4825,	-- Explore Vashj'ir
			}},
		})),
		applyclassicphase(WOD_PHASE_ONE, ach(8935, {	-- Draenor Explorer [7.0.3] / Explore Draenor
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				8937,	-- Explore Frostfire Ridge
				8939,	-- Explore Gorgrond
				8942,	-- Explore Nagrand
				8938,	-- Explore Shadowmoon Valley
				8941,	-- Explore Spires of Arak
				8940,	-- Explore Talador
			}},
		})),
		classicAch(42, {	-- Eastern Kingdoms Explorer [7.0.3] / Explore Eastern Kingdoms
			-- #if AFTER WRATH
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				-- #if BEFORE CATA
				760,	-- Explore Alterac Mountains
				-- #endif
				761,	-- Explore Arathi Highlands
				765,	-- Explore Badlands
				766,	-- Explore Blasted Lands
				775,	-- Explore Burning Steppes
				777,	-- Explore Deadwind Pass
				627,	-- Explore Dun Morogh
				778,	-- Explore Duskwood
				771,	-- Explore Eastern Plaguelands
				776,	-- Explore Elwynn Forest
				859,	-- Explore Eversong Woods
				858,	-- Explore Ghostlands
				772,	-- Explore Hillsbrad Foothills
				868,	-- Explore Isle of Quel'Danas
				779,	-- Explore Loch Modan
				-- #if AFTER CATA
				781,	-- Explore Northern Stranglethorn
				-- #endif
				780,	-- Explore Redridge Mountains
				774,	-- Explore Searing Gorge
				769,	-- Explore Silverpine Forest
				-- #if BEFORE CATA
				781,	-- Explore Stranglethorn Vale
				-- #endif
				782,	-- Explore Swamp of Sorrows
				-- #if AFTER CATA
				4995,	-- Explore the Cape of Stranglethorn
				-- #endif
				773,	-- Explore The Hinterlands
				768,	-- Explore Tirisfal Glades
				770,	-- Explore Western Plaguelands
				802,	-- Explore Westfall
				841,	-- Explore Wetlands
			}},
			-- #else
			["description"] = "Explore the regions of Eastern Kingdoms.",
			["OnClick"] = [[_.CommonAchievementHandlers.META_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.META_OnTooltip]],
			["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.META_ACHCAT_OnUpdate(t, ]] .. ACHIEVEMENT_CATEGORY_EASTERN_KINGDOMS_EXP .. [[); end]],
			-- #endif
		}),
		classicAch(43, {	-- Kalimdor Explorer [7.0.3] / Explore Kalimdor
			-- #if AFTER WRATH
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				845,	-- Explore Ashenvale
				852,	-- Explore Azshara
				860,	-- Explore Azuremyst Isle
				861,	-- Explore Bloodmyst Isle
				844,	-- Explore Darkshore
				848,	-- Explore Desolace
				728,	-- Explore Durotar
				850,	-- Explore Dustwallow Marsh
				853,	-- Explore Felwood
				849,	-- Explore Feralas
				855,	-- Explore Moonglade
				736,	-- Explore Mulgore
				-- #if AFTER CATA
				750,	-- Explore Northern Barrens
				-- #endif
				856,	-- Explore Silithus
				-- #if AFTER CATA
				4996,	-- Explore Southern Barrens
				-- #endif
				847,	-- Explore Stonetalon Mountains
				851,	-- Explore Tanaris
				842,	-- Explore Teldrassil
				-- #if AFTER CATA
				750,	-- Explore The Barrens
				-- #endif
				846,	-- Explore Thousand Needles
				854,	-- Explore Un'Goro Crater
				857,	-- Explore Winterspring
			}},
			-- #else
			["description"] = "Explore the regions of Kalimdor.",
			["OnClick"] = [[_.CommonAchievementHandlers.META_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.META_OnTooltip]],
			["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.META_ACHCAT_OnUpdate(t, ]] .. ACHIEVEMENT_CATEGORY_KALIMDOR_EXP .. [[); end]],
			-- #endif
		}),
		applyclassicphase(WRATH_PHASE_ONE, ach(45, {	-- Northrend Explorer [7.0.3] / Explore Northrend
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				1264,	-- Explore Borean Tundra
				1457,	-- Explore Crystalsong Forest
				1265,	-- Explore Dragonblight
				1266,	-- Explore Grizzly Hills
				1263,	-- Explore Howling Fjord
				1270,	-- Explore Icecrown
				1268,	-- Explore Sholazar Basin
				1269,	-- Explore Storm Peaks
				1267,	-- Explore Zul'Drak
			}},
			["groups"] = {
				i(43348),	-- Tabard of the Explorer
			},
		})),
		applyclassicphase(TBC_PHASE_ONE, ach(44, {	-- Outland Explorer [7.0.3] / Explore Outland
			-- #if AFTER WRATH
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				865,	-- Explore Blade's Edge Mountains
				862,	-- Explore Hellfire Peninsula
				866,	-- Explore Nagrand
				843,	-- Explore Netherstorm
				864,	-- Explore Shadowmoon Valley
				867,	-- Explore Terokkar Forest
				863,	-- Explore Zangarmarsh
			}},
			-- #else
			["description"] = "Explore the regions of Outland.",
			["OnClick"] = [[_.CommonAchievementHandlers.META_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.META_OnTooltip]],
			["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.META_ACHCAT_OnUpdate(t, ]] .. ACHIEVEMENT_CATEGORY_OUTLAND_EXP .. [[); end]],
			-- #endif
		})),
		applyclassicphase(MOP_PHASE_ONE, ach(6974, {	-- Pandaria Explorer [7.0.3] / Explore Pandaria
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				6978,	-- Explore Dread Wastes
				6351,	-- Explore Jade Forest
				6975,	-- Explore Krasarang Wilds
				6976,	-- Explore Kun-Lai Summit
				6977,	-- Explore Townlong Steppes
				6979,	-- Explore Vale of Eternal Blossoms
				6969,	-- Explore Valley of the Four Winds
			}},
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(46, {	-- Universal Explorer [7.0.3] / World Explorer
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				42,	-- Eastern Kingdoms Explorer
				43,	-- Kalimdor Explorer
				44,	-- Outland Explorer
				45,	-- Northrend Explorer
				-- #if AFTER CATA
				4868,	-- Cataclysm Explorer
				-- #endif
				-- #if AFTER 5.0.4
				6974,	-- Pandaria Explorer
				-- #endif
				-- #if AFTER 6.0.1
				8935,	-- Draenor Explorer
				-- #endif
				-- #if AFTER 7.0.1
				11188,	-- Broken Isles Explorer
				-- #endif
				-- #if AFTER 8.0.1
				12988,	-- Battle for Azeroth Explorer
				-- #endif
			}},
			["groups"] = {
				title(47),	-- the Explorer
			},
		})),
	}),
	pvp(achcat(ACHIEVEMENT_CATEGORY_PVP, {
		-- Temporary location while an Arena file is made.
		achcat(ACHIEVEMENT_CATEGORY_ARENA, {
			ach(397),	-- Step Into the Arena [1]
			ach(398),	-- Mercilessly Dedicated [100]
			ach(875),	-- Vengefully Dedicated
			ach(876, {	-- Brutally Dedicated
				i(43349),	-- Tabard of Brute Force
			}),
			ach(2090, {	-- Challenger
				title(32, {	-- Challenger
					["collectible"] = false,
				}),
			}),
			ach(2092, {	-- Duelist
				title(30, {	-- Duelist
					["collectible"] = false,
				}),
			}),
			ach(2091, {	-- Gladiator
				title(29, {	-- Gladiator
					["collectible"] = false,
				}),
			}),
			ach(406),		-- High Five: 1550
			ach(407),		-- High Five: 1750
			ach(404),		-- High Five: 2000
			ach(1161),		-- High Five: 2200
			
			ach(408),	-- Hot Streak
			ach(1162),	-- Hotter Streak
			ach(399),	-- Just the Two of Us: 1550
			ach(400),	-- Just the Two of Us: 1750
			ach(401),	-- Just the Two of Us: 2000
			ach(1159),	-- Just the Two of Us: 2200
			ach(409),	-- Last Man Standing
			ach(2093, {	-- Rival
				title(31, {	-- Rival
					["collectible"] = false,
				}),
			}),
			ach(1174, {		-- The Arena Master
				title(50),	-- Arena Master
			}),
			
			ach(402),	-- Three's Company: 1550
			ach(403),	-- Three's Company: 1750
			ach(405),	-- Three's Company: 2000
			ach(1160),	-- Three's Company: 2200
			ach(699, {	-- World Wide Winner
				["sym"] = {{ "achievement_criteria" }},
			}),
		}),
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
		-- #if ANYCLASSIC
		applyclassicphase(WRATH_PHASE_TWO, ach(17304, {	-- Defense Protocol Alpha: Terminated
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				17291,	-- Defense Protocol Alpha: Ahn'kahet: The Old Kingdom
				17285,	-- Defense Protocol Alpha: Azjol-Nerub
				17292,	-- Defense Protocol Alpha: Drak'Tharon Keep
				17295,	-- Defense Protocol Alpha: Gundrak
				17299,	-- Defense Protocol Alpha: Halls of Lightning
				17297,	-- Defense Protocol Alpha: Halls of Stone
				17302,	-- Defense Protocol Alpha: The Culling of Stratholme
				17283,	-- Defense Protocol Alpha: The Nexus
				17300,	-- Defense Protocol Alpha: The Oculus
				17293,	-- Defense Protocol Alpha: The Violet Hold
				17213,	-- Defense Protocol Alpha: Utgarde Keep
				17301,	-- Defense Protocol Alpha: Utgarde Pinnacle
			}},
		})),
		applyclassicphase(WRATH_PHASE_THREE, ach(18614, {	-- Defense Protocol Beta: Terminated (A)
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				18593,	-- Defense Protocol Beta: Ahn'kahet: The Old Kingdom
				18592,	-- Defense Protocol Beta: Azjol-Nerub
				18594,	-- Defense Protocol Beta: Drak'Tharon Keep
				18596,	-- Defense Protocol Beta: Gundrak
				18598,	-- Defense Protocol Beta: Halls of Lightning
				18597,	-- Defense Protocol Beta: Halls of Stone
				18601,	-- Defense Protocol Beta: The Culling of Stratholme
				18591,	-- Defense Protocol Beta: The Nexus
				18599,	-- Defense Protocol Beta: The Oculus
				18595,	-- Defense Protocol Beta: The Violet Hold
				18677,	-- Defense Protocol Beta: Trial of the Champion (A)
				18590,	-- Defense Protocol Beta: Utgarde Keep
				18600,	-- Defense Protocol Beta: Utgarde Pinnacle
			}},
			["races"] = ALLIANCE_ONLY,
		})),
		applyclassicphase(WRATH_PHASE_THREE, ach(18688, {	-- Defense Protocol Beta: Terminated (H)
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				18593,	-- Defense Protocol Beta: Ahn'kahet: The Old Kingdom
				18592,	-- Defense Protocol Beta: Azjol-Nerub
				18594,	-- Defense Protocol Beta: Drak'Tharon Keep
				18596,	-- Defense Protocol Beta: Gundrak
				18598,	-- Defense Protocol Beta: Halls of Lightning
				18597,	-- Defense Protocol Beta: Halls of Stone
				18601,	-- Defense Protocol Beta: The Culling of Stratholme
				18591,	-- Defense Protocol Beta: The Nexus
				18599,	-- Defense Protocol Beta: The Oculus
				18595,	-- Defense Protocol Beta: The Violet Hold
				18678,	-- Defense Protocol Beta: Trial of the Champion (H)
				18590,	-- Defense Protocol Beta: Utgarde Keep
				18600,	-- Defense Protocol Beta: Utgarde Pinnacle
			}},
			["races"] = HORDE_ONLY,
		})),
		-- #endif
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
		applyclassicphase(WRATH_PHASE_FOUR, ach(4602, {	-- Glory of the Icecrown Raider (10 player)
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				4628,	-- Heroic: Storming the Citadel (10 player)
				4629,	-- Heroic: The Plagueworks (10 player)
				4630,	-- Heroic: The Crimson Hall (10 player)
				4631,	-- Heroic: The Frostwing Halls (10 player)
				4534,	-- Boned (10 player)
				4535,	-- Full House (10 player)
				4536,	-- I'm on a Boat (10 player)
				4537,	-- I've Gone and Made a Mess (10 player)
				4538,	-- Dances with Oozes (10 player)
				4577,	-- Flu Shot Shortage (10 player)
				4578,	-- Nausea, Heartburn, Indigestion... (10 player)
				4582,	-- The Orb Whisperer (10 player)
				4539,	-- Once Bitten, Twice Shy (10 player)
				4579,	-- Portal Jockey (10 player)
				4580,	-- All You Can Eat (10 player)
				4601,	-- Been Waiting a Long Time for This (10 player)
			}},
			["groups"] = {
				i(51954),		-- Bloodbathed Frostbrood Vanquisher (MOUNT!)
			},
		})),
		applyclassicphase(WRATH_PHASE_FOUR, ach(4603, {	-- Glory of the Icecrown Raider (25 player)
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				4632,	-- Heroic: Storming the Citadel (25 player)
				4633,	-- Heroic: The Plagueworks (25 player)
				4634,	-- Heroic: The Crimson Hall (25 player)
				4635,	-- Heroic: The Frostwing Halls (25 player)
				4610,	-- Boned (25 player)
				4611,	-- Full House (25 player)
				4612,	-- I'm on a Boat (25 player)
				4613,	-- I've Gone and Made a Mess (25 player)
				4614,	-- Dances with Oozes (25 player)
				4615,	-- Flu Shot Shortage (25 player)
				4616,	-- Nausea, Heartburn, Indigestion... (25 player)
				4617,	-- The Orb Whisperer (25 player)
				4618,	-- Once Bitten, Twice Shy (25 player)
				4619,	-- Portal Jockey (25 player)
				4620,	-- All You Can Eat (25 player)
				4621,	-- Been Waiting a Long Time for This (25 player)
				4622,	-- Neck-Deep in Vile (25 player)
			}},
			["groups"] = {
				i(51955),		-- Icebound Frostbrood Vanquisher (MOUNT!)
			},
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(2137, {	-- Glory of the Raider (10 player)
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				-- #if BEFORE 4.0.1
				2187,	-- The Undying
				-- #endif
				--578,	-- The Dedicated Few (10 player)
				1858,	-- Arachnophobia (10 player)
				1856,	-- Make Quick Werk of Him (10 player)
				1996,	-- The Safety Dance (10 player)
				1997,	-- Momma Said Knock You Out (10 player)
				2178,	-- Shocking! (10 player)
				--2180,	-- Subtraction (10 player)
				622,	-- The Spellweaver's Downfall (10 player)
				1874,	-- You Don't Have an Eternity (10 player)
				--1869,	-- A Poke in the Eye (10 player)
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
					-- They didn't actually remove this with Phase 2... Blizzard?!
					["OnUpdate"] = [[function(t)
						if _.Settings:GetUnobtainableFilter(]] .. CATA_PHASE_ONE .. [[) then
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
				--579,	-- The Dedicated Few (25 player)
				1859,	-- Arachnophobia (25 player)
				1857,	-- Make Quick Werk of Him (25 player)
				-- #if BEFORE 4.0.1
				2186,	-- The Immortal
				-- #endif
				2139,	-- The Safety Dance (25 player)
				2140,	-- Momma Said Knock You Out (25 player)
				2179,	-- Shocking! (25 player)
				2177,	-- And They Would All Go Down Together (25 player)
				--2181,	-- Subtraction (25 player)
				623,	-- The Spellweaver's Downfall (25 player)
				1875,	-- You Don't Have an Eternity (25 player)
				--1870,	-- A Poke in the Eye (25 player)
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
					-- They didn't actually remove this with Phase 2... Blizzard?!
					["OnUpdate"] = [[function(t)
						if _.Settings:GetUnobtainableFilter(]] .. CATA_PHASE_ONE .. [[) then
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
		applyclassicphase(WRATH_PHASE_ONE, ach(4477, {	-- Looking For Many
			["description"] = "Blizzard hasn't figured out a way to award credit for this yet.",
			["timeline"] = { "created 3.0.2" },
			["groups"] = {
				title(137, {	-- the Patient
					["description"] = "Blizzard hasn't figured out a way to award credit for this yet.",
					["timeline"] = { "created 3.0.2" },
				}),
			},
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(4476, {	-- Looking For More
			["description"] = "Blizzard hasn't figured out a way to award credit for this yet.",
			["timeline"] = { "created 3.0.2" },
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(4478, {	-- Looking For Multitudes
			["description"] = "Blizzard hasn't figured out a way to award credit for this yet.",
			["timeline"] = { "created 3.0.2" },
			["groups"] = {
				i(49912, {	-- Perky Pug
					["description"] = "Blizzard hasn't figured out a way to award credit for this yet.",
					["timeline"] = { "created 3.0.2" },
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
		classicAch(4784, {	-- Emblematic
			["timeline"] = { "added 3.3.3", "removed 4.0.1", "deleted 4.0.6" },
			["rank"] = 1,
		}),
		classicAch(3838, {	-- Dungeon & Raid Emblem
			["timeline"] = { "added 3.3.3", "removed 4.0.1", "deleted 4.0.6" },
			["rank"] = 1,
		}),
		classicAch(3839, {	-- 25 Dungeon & Raid Emblems
			["timeline"] = { "added 3.3.3", "removed 4.0.1", "deleted 4.0.6" },
			["rank"] = 25,
		}),
		classicAch(3840, {	-- 50 Dungeon & Raid Emblems
			["timeline"] = { "added 3.3.3", "removed 4.0.1", "deleted 4.0.6" },
			["rank"] = 50,
		}),
		classicAch(3841, {	-- 100 Dungeon & Raid Emblems
			["timeline"] = { "added 3.3.3", "removed 4.0.1", "deleted 4.0.6" },
			["rank"] = 100,
		}),
		classicAch(3842, {	-- 250 Dungeon & Raid Emblems
			["timeline"] = { "added 3.3.3", "removed 4.0.1", "deleted 4.0.6" },
			["rank"] = 250,
		}),
		classicAch(3843, {	-- 500 Dungeon & Raid Emblems
			["timeline"] = { "added 3.3.3", "removed 4.0.1", "deleted 4.0.6" },
			["rank"] = 500,
		}),
		classicAch(3844, {	-- 1000 Dungeon & Raid Emblems
			["timeline"] = { "added 3.3.3", "removed 4.0.1", "deleted 4.0.6" },
			["rank"] = 1000,
		}),
		classicAch(3876, {	-- 1500 Dungeon & Raid Emblems
			["timeline"] = { "added 3.3.3", "removed 4.0.1", "deleted 4.0.6" },
			["rank"] = 1500,
		}),
		classicAch(4316, {	-- 2500 Dungeon & Raid Emblems
			["timeline"] = { "added 3.3.3", "removed 4.0.1", "deleted 4.0.6" },
			["rank"] = 2500,
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
				["cost"] = {{ "c", 81, 1 }},	-- Epicurean's Award
				["requireSkill"] = COOKING,
				["rank"] = 1,
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(1999, {	-- 10 Dalaran Cooking Awards
				["cost"] = {{ "c", 81, 10 }},	-- Epicurean's Award
				["requireSkill"] = COOKING,
				["rank"] = 10,
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(2000, {	-- 25 Dalaran Cooking Awards
				["cost"] = {{ "c", 81, 25 }},	-- Epicurean's Award
				["requireSkill"] = COOKING,
				["rank"] = 25,
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(2001, {	-- 50 Dalaran Cooking Awards
				["cost"] = {{ "c", 81, 50 }},	-- Epicurean's Award
				["requireSkill"] = COOKING,
				["rank"] = 50,
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(2002, {	-- 100 Dalaran Cooking Awards
				["cost"] = {{ "c", 81, 100 }},	-- Epicurean's Award
				["requireSkill"] = COOKING,
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
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					1561,		-- 1000 Fish
					1243,		-- Fish Don't Leave Footprints
					130,		-- Grand Master Fisherman / Northrend Fisherman
					306,		-- Master Angler of Azeroth
					726,		-- Mr. Pinchy's Magical Crawdad Box
					1517,		-- Northrend Angler
					905,		-- Old Man Barlowned
					878,		-- One That Didn't Get Away
					1225,		-- Outland Angler
					2096,		-- The Coin Master
					150,		-- The Fishing Diplomat
					144,		-- The Lurker Above
					153,		-- The Old Gnome and the Sea
					1257,		-- The Scavenger
				}},
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
				["rank"] = 25,
			}),
			ach(1557, {	-- 50 Fish
				["requireSkill"] = FISHING,
				["rank"] = 50,
			}),
			ach(1558, {	-- 100 Fish
				["requireSkill"] = FISHING,
				["rank"] = 100,
			}),
			ach(1559, {	-- 250 Fish
				["requireSkill"] = FISHING,
				["rank"] = 250,
			}),
			ach(1560, {	-- 500 Fish
				["requireSkill"] = FISHING,
				["rank"] = 500,
			}),
			ach(1561, {	-- 1000 Fish
				["requireSkill"] = FISHING,
				["rank"] = 1000,
			}),
			applyclassicphase(WRATH_PHASE_ONE, ach(1517, {	-- Northrend Angler
				["maps"] = { BOREAN_TUNDRA, DRAGONBLIGHT, HOWLING_FJORD, GRIZZLY_HILLS, CRYSTALSONG_FOREST, SHOLAZAR_BASIN },
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
				["maps"] = { NAGRAND, TEROKKAR_FOREST, ZANGARMARSH },
				["requireSkill"] = FISHING,
			}),
			ach(150, {	-- The Fishing Diplomat
				["requireSkill"] = FISHING,
				["maps"] = { ORGRIMMAR, STORMWIND_CITY },
			}),
			ach(153, {	-- The Old Gnome and the Sea
				["requireSkill"] = FISHING,
			}),
			ach(1257, {	-- The Scavenger
				["requireSkill"] = FISHING,
				["groups"] = {
					crit(3873, {	-- Bloodsail Wreckage
						["provider"] = { "o", 180901 },	-- Bloodsail Wreckage
						["requireSkill"] = FISHING,
						["maps"] = {
							-- #if AFTER CATA
							THE_CAPE_OF_STRANGLETHORN,
							NORTHERN_STRANGLETHORN,
							-- #else
							STRANGLETHORN_VALE,
							-- #endif
						},
					}),
					crit(3876, {	-- Floating Wreckage
						["provider"] = { "o", 180751 },	-- Floating Wreckage
						["requireSkill"] = FISHING,
						["maps"] = {
							-- #if AFTER CATA
							BLASTED_LANDS,
							EASTERN_PLAGUELANDS,
							SWAMP_OF_SORROWS,
							TANARIS,
							THOUSAND_NEEDLES,
							-- #else
							AZSHARA,
							FERALAS,
							TANARIS,
							-- #endif
						},
					}),
					crit(3874, {	-- Schooner Wreckage
						["provider"] = { "o", 180662 },	-- Schooner Wreckage
						["requireSkill"] = FISHING,
						["maps"] = {
							-- #if AFTER CATA
							ARATHI_HIGHLANDS,
							ASHENVALE,
							-- #endif
							HILLSBRAD_FOOTHILLS,
							STONETALON_MOUNTAINS,
							WETLANDS,
						},
					}),
					crit(3872, {	-- Steam Pump Flotsam
						["provider"] = { "o", 182952 },	-- Steam Pump Flotsam
						["requireSkill"] = FISHING,
						["maps"] = { ZANGARMARSH },
					}),
					crit(3875, {	-- Waterlogged Wreckage
						["provider"] = { "o", 180685 },	-- Waterlogged Wreckage
						["requireSkill"] = FISHING,
						["maps"] = {
							-- #if AFTER CATA
							DESOLACE,
							DUSTWALLOW_MARSH,
							FERALAS,
							WESTERN_PLAGUELANDS,
							-- #else
							ALTERAC_MOUNTAINS,
							ARATHI_HIGHLANDS,
							DESOLACE,
							DUSTWALLOW_MARSH,
							STRANGLETHORN_VALE,
							-- #endif
						},
					}),
				},
			}),
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
				["provider"] = { "i", 34722 },	-- Heavy Frostweave Bandage
				["requireSkill"] = FIRST_AID,
			})),
			applyclassicphase(WRATH_PHASE_ONE, ach(141, {	-- Ultimate Triage
				["providers"] = {
					{ "i", 34722 },	-- Heavy Frostweave Bandage
					-- #if AFTER CATA
					{ "i", 53049 },	-- Embersilk Bandage
					{ "i", 53051 },	-- Dense Embersilk Bandage
					-- #endif
					-- #if AFTER MOP
					{ "i", 72985 },	-- Windwool Bandage
					{ "i", 72986 },	-- Heavy Windwool Bandage
					-- #endif
				},
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
		ach(116, {	-- Professional Journeyman
			["rank"] = 1,
		}),
		ach(731, {	-- Professional Expert
			["rank"] = 2,
		}),
		ach(732, {	-- Professional Artisan / Professional Classic Master [BFA]
			["rank"] = 3,
		}),
		ach(733, {	-- Professional Master / Professional Outland Master [BFA]
			["rank"] = 4,
		}),
		ach(734, {	-- Professional Grand Master / Professional Northrend Master [BFA]
			["rank"] = 5,
		}),
		ach(4924, {	-- Professional Illustrious Grand Master / Professional Cataclysmic Master [BFA]
			["timeline"] = { "added 4.0.3" },
			["rank"] = 6,
		}),
	}),
	achcat(ACHIEVEMENT_CATEGORY_REPUTATION, {
		classicAch(522, {	-- Somebody Likes Me
			["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
			["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
			["rank"] = 1,
		}),
		classicAch(523, {	-- 5 Exalted Reputations
			["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
			["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
			["rank"] = 5,
		}),
		classicAch(524, {	-- 10 Exalted Reputations
			["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
			["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
			["rank"] = 10,
		}),
		classicAch(521, {	-- 15 Exalted Reputations
			["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
			["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
			["rank"] = 15,
		}),
		classicAch(520, {	-- 20 Exalted Reputations
			["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
			["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
			["rank"] = 20,
		}),
		applyclassicphase(TBC_PHASE_ONE, ach(519, {	-- 25 Exalted Reputations
			["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
			["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
			["rank"] = 25,
		})),
		applyclassicphase(TBC_PHASE_ONE, ach(518, {	-- 30 Exalted Reputations
			["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
			["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
			["rank"] = 30,
		})),
		applyclassicphase(TBC_PHASE_TWO, ach(1014, {	-- 35 Exalted Reputations
			["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
			["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
			["rank"] = 35,
		})),
		applyclassicphase(TBC_PHASE_FIVE, ach(1015, {	-- 40 Exalted Reputations
			["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
			["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
			["rank"] = 40,
			-- #if AFTER 3.0.1
			["groups"] = {
				title(46),		-- <Name> the Exalted
			},
			-- #endif
		})),
		applyclassicphase(PHASE_ONE, ach(948, {	-- Ambassador of the Alliance
			-- #if BEFORE WRATH
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
			-- #if BEFORE WRATH
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
		applyclassicphase(TBC_PHASE_ONE, ach(942, {	-- The Diplomat
			-- #if BEFORE WRATH
			["description"] = "Raise your reputation level from unfriendly to exalted with Timbermaw Hold, Sporeggar and the Kurenai.",
			-- #endif
			-- #if ANYCLASSIC
			["OnClick"] = [[_.CommonAchievementHandlers.EXALTED_REPS_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.EXALTED_REPS_OnTooltip]],
			["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.EXALTED_REPS_OnUpdate(t, 978, 970, 576); end]],
			-- #endif
			["maps"] = { FELWOOD, ZANGARMARSH, NAGRAND },
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
			-- #if BEFORE WRATH
			["description"] = "Raise your reputation level from unfriendly to exalted with Timbermaw Hold, Sporeggar and the Mag'har.",
			-- #endif
			-- #if ANYCLASSIC
			["OnClick"] = [[_.CommonAchievementHandlers.EXALTED_REPS_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.EXALTED_REPS_OnTooltip]],
			["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.EXALTED_REPS_OnUpdate(t, 941, 970, 576); end]],
			-- #endif
			["maps"] = { FELWOOD, ZANGARMARSH, NAGRAND },
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
	achcat(ACHIEVEMENT_CATEGORY_WORLD_EVENTS),
	-- #if AFTER 4.2.0
	achcat(ACHIEVEMENT_CATEGORY_PET_BATTLES, {
		petbattle(ach(5875, {	-- Littlest Pet Shop (150)
			["timeline"] = { "added 4.2.0" },
			["groups"] = {
				i(54810, {	-- Celestial Dragon (PET!)
					["timeline"] = { "created 3.3.0", "added 4.2.0" },
				}),
			},
		})),
	}),
	achcat(ACHIEVEMENT_CATEGORY_COLLECTIONS, {
		
	}),
	achcat(ACHIEVEMENT_CATEGORY_EXPANSION_FEATURES, {
		
	}),
	-- #endif
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
	-- #if AFTER 4.1.0
	achcat(ACHIEVEMENT_CATEGORY_LEGACY, {
		
	}),
	-- #endif
});

-- #if BEFORE 4.2.0
root("NeverImplemented", {
	i(54810, {	-- Celestial Dragon (PET!)
		["timeline"] = { "created 3.3.0", "added 4.2.0" },
	}),
});
-- #endif