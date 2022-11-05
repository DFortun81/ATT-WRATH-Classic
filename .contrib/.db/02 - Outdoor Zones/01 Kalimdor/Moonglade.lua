---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(KALIMDOR, {
	m(MOONGLADE, {
		["lore"] = "Moonglade is both home of the Cenarion Circle and a haven for all druids. It is an uncorrupted neutral zone, protected by mountains and shrouded in green light, without any hostile mobs or gathering resources. The main village of Nighthaven is maintained by the Cenarion Circle and features druid trainers and a rare robe vendor, Geenia Sunshadow, who sells items like Formal Dangui.",
		-- #if AFTER WRATH
		["icon"] = "Interface\\Icons\\spell_arcane_teleportmoonglade",
		-- #endif
		["groups"] = {
			n(ACHIEVEMENTS, {
				explorationAch(855, {	-- Explore Moonglade
					-- #if BEFORE WRATH
					["description"] = "Explore Moonglade, revealing the covered areas of the world map.",
					-- #endif
				}),
			}),
			-- #if AFTER MOP
			petbattle(filter(BATTLE_PETS, {
				p(478, {	-- Forest Moth
					["crs"] = { 62177 },	-- Forest Moth
				}),
				p(378, {	-- Rabbit
					["crs"] = { 61080 },	-- Rabbit
				}),
				p(379, {	-- Squirrel
					["crs"] = { 61080 },	-- Squirrel
				}),
				p(503, {	-- Silky Moth
					["crs"] = { 62373 },	-- Silky Moth
				}),
			})),
			-- #endif
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["555:510:244:89"] = 656,	-- Lake Elune'ara
				--[[
				[2361] = 2,                              -- Nighthaven
				[2362] = 3,                              -- Shrine of Remulos
				[2363] = 4,                              -- Stormrage Barrow Dens
				]]--
			})),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(49, {	-- Moonglade
					["cr"] = 10897,	-- Sindrayl <Hippogryph Master>
					["coord"] = { 48.0, 67.2, MOONGLADE },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(69, {	-- Moonglade
					["cr"] = 12740,	-- Faustron <Wind Rider Master>
					["coord"] = { 32.2, 66.6, MOONGLADE },
					["races"] = HORDE_ONLY,
				}),
				fp(63, {	-- Nighthaven, Moonglade
					["cr"] = 11800,	-- Silva Fil'naveth <Darnassus Flight Master>
					["coord"] = { 44.2, 45.2, MOONGLADE },
					["classes"] = { DRUID },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(62, {	-- Nighthaven, Moonglade
					["cr"] = 11798,	-- Bunthen Plainswind <Thunder Bluff Flight Master>
					["coord"] = { 44.4, 45.6, MOONGLADE },
					["classes"] = { DRUID },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(26, {	-- A Lesson to Learn [A]
					["qg"] = 4217,	-- Mathrengyl Bearwalker <Druid Trainer>
					["coord"] = { 35.2, 8, DARNASSUS },
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 16,
				}),
				q(27, {	-- A Lesson to Learn [H]
					["qg"] = 3033,	-- Turak Runetotem <Druid Trainer>
					["coord"] = { 76.4, 27.6, THUNDER_BLUFF },
					["timeline"] = { "removed 4.0.3" },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 16,
				}),
				q(5527, {	-- A Reliquary of Purity
					["qg"] = 11801,	-- Rabine Saturna
					["coord"] = { 51.7, 45.1, MOONGLADE },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { DIRE_MAUL, SILITHUS },
					["lvl"] = 56,
					["groups"] = {
						objective(1, {	-- 0/1 Reliquary of Purity
							["providers"] = {
								{ "i", 22201 },	-- Reliquary of Purity
								{ "o", 179565 },	-- Dusty Reliquary
							},
							["coord"] = { 63.2, 55.4, SILITHUS },
						}),
					},
				}),
				{	-- Aquatic Form
					["allianceQuestData"] = q(5061, {	-- Aquatic Form [A]
						["sourceQuest"] = 272,	-- Trial of the Sea Lion [A]
					}),
					["hordeQuestData"] = q(31, {	-- Aquatic Form [H]
						["sourceQuest"] = 30,	-- Trial of the Sea Lion [H]
					}),
					["qg"] = 11802,	-- Dendrite Starblaze
					["coord"] = { 56.2, 30.4, MOONGLADE },
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { DRUID },
					["lvl"] = 16,
					["groups"] = {
						-- #if BEFORE 4.0.3
						recipe(1066),	-- Aquatic Form
						-- #endif
						i(16608, {	-- Aquarius Belt
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				},
				q(5931, {	-- Back to Darnassus
					["qg"] = 11802,  -- Dendrite Starblaze
					["sourceQuest"] = 5929,  -- Great Bear Spirit [A]
					["coord"] = { 56.2, 30.4, MOONGLADE },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 10,
				}),
				q(5932, {	-- Back to Thunder Bluff
					["qg"] = 11802,  -- Dendrite Starblaze
					["sourceQuest"] = 5930,  -- Great Bear Spirit [H]
					["coord"] = { 56.2, 30.4, MOONGLADE },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 10,
				}),
				q(6001, {	-- Body and Heart [A]
					["qg"] = 4217,	-- Mathrengyl Bearwalker <Druid Trainer>
					["sourceQuest"] = 5931,	-- Back to Darnassus
					["coord"] = { 35.2, 8, DARNASSUS },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Face Lunaclaw and earn the strength of body and heart it possesses.
							["provider"] = { "n", 12138 },	-- Lunaclaw
							["cost"] = {{ "i", 15208, 1 }},	-- Cenarion Moondust
							["coord"] = { 43, 45, DARKSHORE },
						}),
						-- #if BEFORE 4.0.3
						{
							["recipeID"] = 5487,	-- Bear Form // Dire Bear Form
							["OnUpdate"] = [[function(t)
								if _.IsSpellKnown(9634) then
									t.collected = 2;
								end
							end]],
						},
						recipe(6795),	-- Growl
						{
							["recipeID"] = 6807,	-- Maul (Rank 1)
							["rank"] = 1,
						},
						-- #endif
					},
				}),
				q(6002, {	-- Body and Heart [H]
					["qg"] = 3033,	-- Turak Runetotem <Druid Trainer>
					["sourceQuest"] = 5932,	-- Back to Thunder Bluff
					["coord"] = { 76.4, 27.6, THUNDER_BLUFF },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Face Lunaclaw and earn the strength of body and heart it possesses.
							["provider"] = { "n", 12138 },	-- Lunaclaw
							["cost"] = {{ "i", 15710, 1 }},	-- Cenarion Lunardust
							["coord"] = { 42, 60, THE_BARRENS },
						}),
						-- #if BEFORE 4.0.3
						{
							["recipeID"] = 5487,	-- Bear Form // Dire Bear Form
							["OnUpdate"] = [[function(t)
								if _.IsSpellKnown(9634) then
									t.collected = 2;
								end
							end]],
						},
						recipe(6795),	-- Growl
						{
							["recipeID"] = 6807,	-- Maul (Rank 1)
							["rank"] = 1,
						},
						-- #endif
					},
				}),
				{	-- Great Bear Spirit
					["allianceQuestData"] = q(5929, {	-- Great Bear Spirit [A]
						["sourceQuest"] = 5921,	-- Moonglade [A]
					}),
					["hordeQuestData"] = q(5930, {	-- Great Bear Spirit [H]
						["sourceQuest"] = 5922,	-- Moonglade [H]
					}),
					["qg"] = 11802,	-- Dendrite Starblaze
					["coord"] = { 56.2, 30.4, MOONGLADE },
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { DRUID },
					["lvl"] = 10,
				},
				q(5923, {	-- Heeding the Call [Darnassus]
					["qg"] = 4218,	-- Denatharion <Druid Trainer>
					["coord"] = { 34.8, 7.8, DARNASSUS },
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(5924, {	-- Heeding the Call [Stormwind City]
					["qg"] = 5505,	-- Theridran <Druid Trainer>
					-- #if AFTER WRATH
					["coord"] = { 36.2, 64.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 21.4, 51.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(5925, {	-- Heeding the Call [Teldrassil]
					["qg"] = 3602,	-- Kal <Druid Trainer>
					["coord"] = { 56, 61.6, TELDRASSIL },
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(5926, {	-- Heeding the Call [Thunder Bluff]
					["qg"] = 6746,	-- Innkeeper Pala <Innkeeper>
					["coord"] = { 45.8, 64.4, THUNDER_BLUFF },
					["timeline"] = { "removed 4.0.3" },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(5927, {	-- Heeding the Call [Orgrimmar]
					["qg"] = 6929,	-- Innkeeper Gryshka <Innkeeper>
					["coord"] = { 54.2, 68.4, ORGRIMMAR },
					["timeline"] = { "removed 4.0.3" },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(5928, {	-- Heeding the Call [Mulgore]
					["qg"] = 3064,	-- Gennia Runetotem <Druid Trainer>
					["coord"] = { 48.4, 59.6, MULGORE },
					["timeline"] = { "removed 4.0.3" },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(6121, {	-- Lessons Anew [A]
					["qg"] = 4217,	-- Mathrengyl Bearwalker <Druid Trainer>
					["sourceQuests"] = {
						5923,	-- Heeding the Call [Darnassus]
						5924,   -- Heeding the Call [Stormwind City]
						5925,   -- Heeding the Call [Teldrassil]
					},
					["coord"] = { 35.2, 8.0, DARNASSUS },
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 14,
				}),
				q(6126, {	-- Lessons Anew [H]
					["qg"] = 3033,	-- Turak Runetotem <Druid Trainer>
					["sourceQuests"] = {
						5926,	-- Heeding the Call [Thunder Bluff]
						5927,   -- Heeding the Call [Orgrimmar]
						5928,   -- Heeding the Call [Mulgore]
					},
					["coord"] = { 76.4, 27.6, THUNDER_BLUFF },
					["timeline"] = { "removed 4.0.3" },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 14,
				}),
				q(5921, {	-- Moonglade [A]
					["qg"] = 4217,  -- Mathrengyl Bearwalker <Druid Trainer>
					["sourceQuests"] = {
						5923,	-- Heeding the Call [Darnassus]
						5924,   -- Heeding the Call [Stormwind City]
						5925,   -- Heeding the Call [Teldrassil]
					},
					["coord"] = { 35.2, 8.0, DARNASSUS },
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
				}),
				q(5922, {	-- Moonglade [H]
					["qg"] = 3033,  -- Turak Runetotem <Druid Trainer>
					["sourceQuests"] = {
						5926,	-- Heeding the Call [Thunder Bluff]
						5927,   -- Heeding the Call [Orgrimmar]
						5928,   -- Heeding the Call [Mulgore]
					},
					["coord"] = { 76.4, 27.6, THUNDER_BLUFF },
					["timeline"] = { "removed 4.0.3" },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
				}),
				q(28289, {	-- Moonglade Calls
					["qgs"] = {
						44395,	-- Celestine of the Harvest
						44978,	-- Sesebi
						16721,	-- Shalannius
						4217,	-- Mathrengyl Bearwalker
						3034,	-- Sheal Runetotem
						52319,	-- Mala Skywatcher
					},
					["coords"] = {
						{ 24.4, 54.5, AZUREMYST_ISLE },	-- Shalannius
						{ 40.4, 27.6, DARNASSUS },	-- Mathrengyl Bearwalker
						{ 35.0, 67.6, ORGRIMMAR },	-- Sesebi
						{ 77.0, 27.4, THUNDER_BLUFF },	-- Sheal Runetotem
						{ 57.6, 24.8, STORMWIND_CITY },	-- Celestine of the Harvest
						{ 55.0, 50.4, UNDERCITY },	-- Mala Skywatcher
					},
					["timeline"] = { "added 4.0.3.13277" },
					["classes"] = { DRUID },
					["isBreadcrumb"] = true,
				}),
				q(47430, {	-- Moonkin Monitoring (HOLIDAY/WORLD EVENT: Moonkin Festival)
					["qg"] = 122134,	-- Makkaw <Moonkin Festival>
					["coord"] = { 45.4, 62.0, MOONGLADE },
					["description"] = "This quest is only available during the Moonkin Festival event, on 12 November each year. The title granted by completing this quest is temporary.",
					["timeline"] = { "added 7.2.5.23959" },
					["isYearly"] = true,
					["groups"] = {
						title(358, {	-- %s, Adventuring Instructor
							["timeline"] = { "added 7.2.5.23959" },
							["collectible"] = false,
						}),
					},
				}),
				applyclassicphase(TBC_PHASE_TWO_SWIFTFLIGHTFORM, q(10955, {	-- Morthis Whisperwing
					["qg"] = 12042,	-- Loganaar <Druid Trainer>
					["coord"] = { 52.5, 40.6, MOONGLADE },
					["timeline"] = { "removed 4.0.1" },
					["classes"] = { DRUID },
					["lvl"] = 70,
				})),
				applyclassicphase(TBC_PHASE_TWO_SWIFTFLIGHTFORM, q(10965, {	-- No Mere Dream
					["qg"] = 22834,	-- Clintar Dreamwalker
					["sourceQuest"] = 10964,	-- Waking the Sleeper
					["coord"] = { 75.5, 67.0, MOONGLADE },
					["timeline"] = { "removed 4.0.1" },
					["classes"] = { DRUID },
					["lvl"] = 70,
				})),
				{	-- Power over Poison
					["allianceQuestData"] = q(6125, {	-- Power over Poison [A]
						["sourceQuest"] = 6124,	-- Curing the Sick [A]
						["maps"] = { DARNASSUS },
					}),
					["hordeQuestData"] = q(6130, {	-- Power over Poison [H]
						["sourceQuest"] = 6129,	-- Curing the Sick [H]
						["maps"] = { THUNDER_BLUFF },
					}),
					["qg"] = 11802,	-- Dendrite Starblaze
					["coord"] = { 56.2, 30.4, MOONGLADE },
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { DRUID },
					["lvl"] = 14,
					["groups"] = {
						-- #if BEFORE 4.0.3
						recipe(8946),	-- Cure Poison
						-- #endif
					},
				},
				q(6762, {	-- Rabine Saturna [A]
					["qg"] = 4217,  -- Mathrengyl Bearwalker <Druid Trainer>
					["sourceQuest"] = 6761,	-- The New Frontier (2/2) [Darnassus]
					["coord"] = { 35.2, 8.0, DARNASSUS },
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 54,
				}),
				q(1123, {	-- Rabine Saturna [H]
					["qg"] = 5769,	-- Arch Druid Hamuul Runetotem
					["sourceQuests"] = {
						1000,	-- The New Frontier [Thunder Bluff]
						1004,   -- The New Frontier [Undercity]
						1018,   -- The New Frontier [Orgrimmar]
					},
					["coord"] = { 78.4, 28.4, THUNDER_BLUFF },
					["timeline"] = { "removed 4.0.3" },
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
				}),
				applyclassicphase(TBC_PHASE_TWO_SWIFTFLIGHTFORM, q(10978, {	-- Return to Morthis Whisperwing
					["providers"] = {
						{ "n", 22837 },	-- Dreamwarden Lurosa
						{ "i", 32074 },	-- Relics of Aviana
					},
					["sourceQuest"] = 10965,	-- No Mere Dream
					["coord"] = { 72.5, 63.3, MOONGLADE },
					["timeline"] = { "removed 4.0.1" },
					["maps"] = { ZANGARMARSH },
					["classes"] = { DRUID },
					["lvl"] = 70,
				})),
				q(5526, {	-- Shards of the Felvine
					["qg"] = 11801,	-- Rabine Saturna
					["sourceQuest"] = 5527,	-- A Reliquary of Purity
					["coord"] = { 51.7, 45.1, MOONGLADE },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { DIRE_MAUL },
					["lvl"] = 56,
					["groups"] = {
						objective(1, {	-- 0/1 Sealed Reliquary of Purity
							["provider"] = { "i", 18540 },	-- Sealed Reliquary of Purity
							["cost"] = {
								{ "i", 18539, 1 },	-- Reliquary of Purity
								{ "i", 18501, 1 },	-- Felvine Shard
							},
						}),
						i(18535, {	-- Milli's Shield
							["timeline"] = { "removed 4.0.3" },
						}),
						i(18536, {	-- Milli's Lexicon
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(28343, {	-- The Breath of Cenarius
					["qg"] = 12042,	-- Loganaar
					["sourceQuest"] = 28289,	-- Moonglade Calls
					["coord"] = { 52.4, 40.4, MOONGLADE },
					["timeline"] = { "added 4.0.3.13277" },
					["maps"] = { BLACKROCK_DEPTHS },
					["classes"] = { DRUID },
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- 0/3 Elemental Gate closed
							["provider"] = { "i", 63469 },	-- Breath of Cenarius
						}),
						i(65638, {	-- Headdress of the Green Circle
							["timeline"] = { "added 4.0.3.13277" },
						}),
						i(65617, {	-- Headdress of the Verdant Circle
							["timeline"] = { "added 4.0.3.13277" },
						}),
					},
				}),
				q(1015, {	-- The New Frontier [Stormwind City]
					["qg"] = 2198,	-- Crier Goodman
					["altQuests"] = {
						1019,   -- The New Frontier [Ironforge]
						1047,   -- The New Frontier [Darnassus]
					},
					["coord"] = { 54.8, 62.6, STORMWIND_CITY },
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 54,
				}),
				q(1019, {	-- The New Frontier [Ironforge]
					["qg"] = 10877,	-- Courier Hammerfall
					["altQuests"] = {
						1015,	-- The New Frontier [Stormwind City]
						1047,   -- The New Frontier [Darnassus]
					},
					["coord"] = { 31.6, 67, IRONFORGE },
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 54,
				}),
				q(1047, {	-- The New Frontier (1/2) [Darnassus]
					["qg"] = 10878,	-- Herald Moonstalker
					["altQuests"] = {
						1015,	-- The New Frontier [Stormwind City]
						1019,   -- The New Frontier [Ironforge]
					},
					["coord"] = { 36.4, 39.8, DARNASSUS },
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 54,
				}),
				q(6761, {	-- The New Frontier (2/2) [Darnassus]
					["qg"] = 3516,	-- Arch Druid Fandral Staghelm
					["sourceQuests"] = {
						1015,	-- The New Frontier [Stormwind City]
						1019,   -- The New Frontier [Ironforge]
						1047,   -- The New Frontier (1/2) [Darnassus]
					},
					["coord"] = { 34.8, 8.8, DARNASSUS },
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 54,
				}),
				q(1000, {	-- The New Frontier [Thunder Bluff]
					["qg"] = 10881,	-- Bluff Runner Windstrider
					["sourceQuests"] = {
						1018,	-- The New Frontier [Orgrimmar]
						1004,   -- The New Frontier [Undercity]
					},
					["coord"] = { 41.4, 54.2, THUNDER_BLUFF },
					["timeline"] = { "removed 4.0.3" },
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
				}),
				q(1004, {	-- The New Frontier [Undercity]
					["qg"] = 10879,	-- Harbinger Balthazad
					["sourceQuests"] = {
						1018,	-- The New Frontier [Orgrimmar]
						1000,   -- The New Frontier [Thunder Bluff]
					},
					["coord"] = { 68.8, 48.4, UNDERCITY },
					["timeline"] = { "removed 4.0.3" },
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
				}),
				q(1018, {	-- The New Frontier [Orgrimmar]
					["qg"] = 10880,	-- Warcaller Gorlach
					["sourceQuests"] = {
						1000,   -- The New Frontier [Thunder Bluff]
						1004,   -- The New Frontier [Undercity]
					},
					["coord"] = { 46.6, 64.6, ORGRIMMAR },
					["timeline"] = { "removed 4.0.3" },
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
				}),
				q(6122, {	-- The Principal Source [A]
					["qg"] = 11802,	-- Dendrite Starblaze
					["sourceQuest"] = 6121,	-- Lessons Anew [A]
					["coord"] = { 56.2, 30.4, MOONGLADE },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/1 Filled Cliffspring Falls Sampler
							["provider"] = { "i", 15845 },	-- Filled Cliffspring Falls Sampler
							["cost"] = {{ "i", 15844, 1 }},	-- Empty Cliffspring Falls Sampler
							["coord"] = { 54.9 , 33.3, DARKSHORE },
						}),
					},
				}),
				q(6127, {	-- The Principal Source [H]
					["qg"] = 11802,	-- Dendrite Starblaze
					["sourceQuest"] = 6121,	-- Lessons Anew [H]
					["coord"] = { 56.2, 30.4, MOONGLADE },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/1 Filled Dreadmist Falls Sampler
							["provider"] = { "i", 15843 },	-- Filled Dreadmist Falls Sampler
							["cost"] = {{ "i", 15842, 1 }},	-- Empty Dreadmist Falls Sampler
							["coord"] = { 47, 18, THE_BARRENS },
						}),
					},
				}),
				{	-- Trial of the Lake
					["allianceQuestData"] = q(29, {	-- Trial of the Lake [A]
						["sourceQuest"] = 26,	-- A Lesson to Learn [A]
					}),
					["hordeQuestData"] = q(28, {	-- Trial of the Lake [H]
						["sourceQuest"] = 27,	-- A Lesson to Learn [H]
					}),
					["qg"] = 11802,	-- Dendrite Starblaze
					["coord"] = { 56.2, 30.4, MOONGLADE },
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { DRUID },
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 Shrine Bauble
							["provider"] = { "i", 15877 },	-- Shrine Bauble
							["coords"] = {
								{ 54.1, 50.1, MOONGLADE },
								{ 36.4, 40.2, MOONGLADE },
							},
						}),
					},
				},
				q(272, {	-- Trial of the Sea Lion [A]
					["qg"] = 11799,	-- Tajarri
					["sourceQuest"] = 29,	-- Trial of the Lake [A]
					["coord"] = { 36.4, 40.2, MOONGLADE },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { DARKSHORE, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 Pendant of the Sea Lion
							["provider"] = { "i", 15885 },	-- Pendant of the Sea Lion
							["cost"] = {
								{ "i", 15882, 1 },	-- Half Pendant of Aquatic Endurance
								{ "i", 15883, 1 },	-- Half Pendant of Aquatic Agility
							},
						}),
						-- #if BEFORE 4.0.3
						{
							["itemID"] = 15882,	-- Half Pendant of Aquatic Endurance
							["coord"] = { 17.9, 33.0, WESTFALL },
						},
						{
							["itemID"] = 15883,	-- Half Pendant of Aquatic Agility
							["coord"] = { 48.9, 11.3, DARKSHORE },
						},
						-- #endif
					},
				}),
				q(30, {	-- Trial of the Sea Lion [H]
					["qg"] = 11799,	-- Tajarri
					["sourceQuest"] = 28,	-- Trial of the Lake [H]
					["coord"] = { 36.4, 40.2, MOONGLADE },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { THE_BARRENS, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 Pendant of the Sea Lion
							["provider"] = { "i", 15885 },	-- Pendant of the Sea Lion
							["cost"] = {
								{ "i", 15882, 1 },	-- Half Pendant of Aquatic Endurance
								{ "i", 15883, 1 },	-- Half Pendant of Aquatic Agility
							},
						}),
						-- #if BEFORE 4.0.3
						{
							["itemID"] = 15882,	-- Half Pendant of Aquatic Endurance
							["coord"] = { 29.6, 29.5, SILVERPINE_FOREST },
						},
						{
							["itemID"] = 15883,	-- Half Pendant of Aquatic Agility
							["coord"] = { 56.7, 8.3, THE_BARRENS },
						},
						-- #endif
					},
				}),
				q(6845, {	-- Uncovering Past Secrets
					["qg"] = 11939,	-- Umber
					["sourceQuest"] = 6844,	-- Umber, Archivist
					["coord"] = { 44.88, 35.6, MOONGLADE },
					["timeline"] = { "removed 4.0.3" },
					["lvl"] = 54,
					["groups"] = {
						i(18400, {	-- Ring of Living Stone
							["timeline"] = { "removed 4.0.3" },
						}),
						i(18402, {	-- Glowing Crystal Ring
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(1185, {	-- Under the Chitin Was...
					["qg"] = 11939,	-- Umber
					["sourceQuest"] = 6845,	-- Uncovering Past Secrets
					["coord"] = { 44.88, 35.6, MOONGLADE },
					["timeline"] = { "removed 4.0.3" },
					["lvl"] = 54,
				}),
				q(1124, {	-- Wasteland
					["providers"] = {
						{ "n", 11801 },	-- Rabine Saturna
						{ "i", 17355 },	-- Rabine's Letter
					},
					["sourceQuests"] = {
						1123,	-- Rabine Saturna [H]
						6762,	-- Rabine Saturna [A]
					},
					["coord"] = { 51.7, 45.1, MOONGLADE },
					["timeline"] = { "removed 4.0.3" },
					["lvl"] = 54,
				}),
			}),
			n(VENDORS, {
				n(7940, {	-- Darnall <Tailoring Supplies>
					["coord"] = { 51.6, 33.2, MOONGLADE },
					["groups"] = {
						i(14488, {	-- Pattern: Runecloth Boots
							["timeline"] = { "removed 2.0.1" },	-- Learned from trainer, recipe removed.
							-- #if BEFORE 2.0.1
							["isLimited"] = true
							-- #endif
						}),
						i(14472, {	-- Pattern: Runecloth Cloak
							["timeline"] = { "removed 6.0.1" },	-- Learned from trainer, recipe removed.
							-- NOTE: Not sure what patch, it's apparently still sold well into MOP. Will check back in future Classic versions.
							-- #if BEFORE 6.0.1
							["isLimited"] = true
							-- #endif
						}),
						i(14469, {	-- Pattern: Runecloth Robe
							["timeline"] = { "removed 6.0.1" },	-- Learned from trainer, recipe removed.
							-- NOTE: Not sure what patch, it's apparently still sold well into MOP. Will check back in future Classic versions.
							-- #if BEFORE 6.0.1
							["isLimited"] = true
							-- #endif
						}),
					},
				}),
				n(12023, {	-- Kharedon <Light Armor Merchant>
					["coord"] = { 56.6, 29.8, MOONGLADE },
					["groups"] = {
						i(12254, {	-- Well Oiled Cloak
							["isLimited"] = true,
						}),
					},
				}),
				n(12022, {	-- Lorelae Wintersong <Trade Supplies>
					-- #if AFTER CATA
					["coord"] = { 48.6, 40.2, MOONGLADE },
					-- #else
					["coord"] = { 48.2, 40.0, MOONGLADE },
					-- #endif
					["groups"] = {
						i(16224, {	-- Formula: Enchant Cloak - Superior Defense (RECIPE!)
							["isLimited"] = true,
						}),
						i(16243, {	-- Formula: Runed Arcanite Rod
							["timeline"] = { "removed 5.0.4" },
						}),
						i(136849, {	-- Nature's Beacon (TOY!)
							["timeline"] = { "added 7.0.3.22248" },
						}),
						i(14483, {	-- Pattern: Felcloth Pants
							["isLimited"] = true,
						}),
						i(141041, {	-- Technique: Glyph of the Forest Path (RECIPE!)
							["timeline"] = { "added 7.0.3.22248" },
						}),
						i(136795, {	-- Tome of the Wilds: Charm Woodland Creature
							["spellID"] = 127757,	-- Charm Woodland Creature
							["timeline"] = { "added 7.0.3.22248" },
						}),
						i(136794, {	-- Tome of the Wilds: Flap
							["spellID"] = 164862,	-- Flap
							["timeline"] = { "added 7.0.3.22248" },
						}),
						i(136789, {	-- Tome of the Wilds: Stag Form
							["spellID"] = 210053,	-- Stag Form
							["timeline"] = { "added 7.0.3.22248" },
						}),
						i(136790, {	-- Tome of the Wilds: Track Beasts
							-- TODO: Is this really not trackable? Can we do it?
							["spellID"] = 0,	-- Invalidate the Spell ID (this makes it uncollectible)
							["timeline"] = { "added 7.0.3.22248" },
						}),
						i(136787, {	-- Tome of the Wilds: Treant Form
							["spellID"] = 114282,	-- Treant Form
							["timeline"] = { "added 7.0.3.22248" },
						}),
					},
				}),
				n(12029, {	-- Narianna <Bowyer>
					["coord"] = { 53.2, 42.6, MOONGLADE },
					["groups"] = {
						i(11308, {	-- Sylvan Shortbow
							["isLimited"] = true,
						}),
					},
				}),
			}),
		},
	}),
}));