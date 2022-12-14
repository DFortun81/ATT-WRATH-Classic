---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(KALIMDOR, {
	m(SILITHUS, {
		["lore"] = "Silithus is a rough desert in the southwest end of Kalimdor. While Silithus today acts as the main working place of the Cenarion Circle, it was once the seat of the Aqiri Empire, known to the world as Ahn'Qiraj. Its gates were sealed off millennia ago by the Night Elves, but the silithid managed to regain some footage over Kalimdor. Today, the Cenarion Circle enlists both the Horde and the Alliance to help with their vigil.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				explorationAch(856, {	-- Explore Silithus
					-- #if BEFORE WRATH
					["description"] = "Explore Silithus, revealing the covered areas of the world map.",
					-- #endif
				}),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, {
				applyclassicphase(TBC_PHASE_ONE, exploration(3427, {	-- Bronzebeard Encampment
					["maphash"] = "128:128:0:0",
					["coord"] = { 41.2, 89.2, SILITHUS },
				})),
				exploration(3425, "320:256:344:197"),	-- Cenarion Hold
				exploration(2742, "512:320:265:12"),	-- Hive'Ashi
				exploration(2744, "512:384:245:285"),	-- Hive'Regal
				exploration(2743, "384:512:97:144"),	-- Hive'Zora
				exploration(2738, "384:384:500:65"),	-- Southwind Village
				exploration(2740, "320:289:104:24"),	-- The Crystal Vale
				exploration(2737, "288:256:116:413"),	-- The Scarab Wall
				--[[
				exploration(2477, ""),	-- The Veiled Sea
				exploration(2739, ""),	-- Twilight Base Camp
				exploration(2741, ""),	-- The Scarab Dais
				exploration(3077, ""),	-- Valor's Rest
				exploration(3097, ""),	-- The Swarming Pillar
				exploration(3098, ""),	-- Twilight Post
				exploration(3099, ""),	-- Twilight Outpost
				exploration(3100, ""),	-- Ravaged Twilight Camp
				exploration(3257, ""),	-- Bones of Grakkarond
				exploration(3426, ""),	-- Staghelm Point
				exploration(3446, ""),	-- Twilight's Run
				exploration(3447, ""),	-- Ortell's Hideout
				exploration(3454, ""),	-- Ruins of Ahn'Qiraj
				]]--
			}),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(73, {	-- Cenarion Hold, Silithus
					["cr"] = 15177,	-- Cloud Skydancer <Hippogryph Master>
					["coord"] = { 50.6, 34.4, SILITHUS },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(72, {	-- Cenarion Hold, Silithus
					["cr"] = 15178,	-- Runk Windtamer <Wind Rider Master>
					["coord"] = { 48.8, 36.6, SILITHUS },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				applyclassicphase(PHASE_FIVE_CATCH_UP, q(9248, {	-- A Humble Offering
					["qg"] = 15282,	-- Aurel Goldleaf
					["coord"] = { 52.0, 38.2, SILITHUS },
					["minReputation"] = { 609, HONORED },	-- Cenarion Circle
					["cost"] = {
						{ "i", 20515, 1 },	-- Abyssal Scepter
					},
					["lvl"] = 58,
					["groups"] = {
						i(22725),	-- Band of Cenarius
					},
				})),
				q(8287, {	-- A Terrible Purpose
					["qg"] = 15194,	-- Hermit Ortell
					["sourceQuest"] = 8279,	-- The Twilight Lexicon
					["coord"] = { 67, 69.6, SILITHUS },
					["cost"] = {
						{ "i", 20405, 1 },	-- Decoded Tablet Transcription
					},
					["lvl"] = 40,
					["groups"] = {
						i(20645, {	-- Nature's Whisper
							["description"] = "This is a reward that is mailed to you in about a day after completing the quest A Terrible Purpose. Keep this for your Nature Resist set.",
						}),
					},
				}),
				q(8361, {	-- Abyssal Contacts
					["qg"] = 15306,	-- Bor Wildmane
					["coord"] = { 48.6, 37.8, SILITHUS },
					["cost"] = {
						{ "i", 20513, 1 },	-- Abyssal Crest
					},
					["lvl"] = 60,
					["groups"] = {
						i(20603),	-- Bag of Spoils
					},
				}),
				q(8362, {	-- Abyssal Crests
					["qg"] = 15306,	-- Bor Wildmane
					["sourceQuest"] = 8361,	-- Abyssal Contacts
					["coord"] = { 48.6, 37.8, SILITHUS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 20513, 3 },	-- Abyssal Crest
					},
					["lvl"] = 60,
					["groups"] = {
						i(20603),	-- Bag of Spoils
					},
				}),
				q(8364, {	-- Abyssal Scepters
					["qg"] = 15306,	-- Bor Wildmane
					["sourceQuest"] = 8352,	-- Scepter of the Council
					["coord"] = { 48.6, 37.8, SILITHUS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 20515, 3 },	-- Abyssal Scepter
					},
					["lvl"] = 54,
					["groups"] = {
						i(20602),	-- Chest of Spoils
					},
				}),
				q(8363, {	-- Abyssal Signets
					["qg"] = 15306,	-- Bor Wildmane
					["sourceQuest"] = 8348,	-- Signet of the Dukes
					["coord"] = { 48.6, 37.8, SILITHUS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 20514, 3 },	-- Abyssal Signet
					},
					["lvl"] = 54,
					["groups"] = {
						i(20601),	-- Sack of Spoils
					},
				}),
				applyclassicphase(PHASE_FIVE, q(9338, {	-- Allegiance to Cenarion Circle
					["qg"] = 15540,	-- Windcaller Kaldon
					["coord"] = { 50.0, 36.4, SILITHUS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 20802, 1 },	-- Cenarion Combat Badge
						{ "i", 20800, 1 },	-- Cenarion Logistics Badge
						{ "i", 20801, 1 },	-- Cenarion Tactical Badge
					},
					["lvl"] = 60,
				})),
				q(8316, {	-- Armaments of War [WARRIOR]
					["qg"] = 15183,	-- Geologist Larksbane
					["sourceQuest"] = 8315,	-- The Calling
					["coord"] = { 49.7, 37.5, SILITHUS },
					["classes"] = { WARRIOR },
					["lvl"] = 40,
					["groups"] = {
						i(20699),	-- Cenarion Reservist's Legplates
						i(20710),	-- Crystal Encrusted Greaves
					},
				}),
				q(8381, {	-- Armaments of War [MAGE / WARLOCK]
					["qg"] = 15183,	-- Geologist Larksbane
					["sourceQuest"] = 8315,	-- The Calling
					["coord"] = { 49.7, 37.5, SILITHUS },
					["classes"] = { MAGE, WARLOCK },
					["lvl"] = 40,
					["groups"] = {
						i(20705),	-- Cenarion Reservist's Pants
						i(20716),	-- Sandworm Skin Gloves
					},
				}),
				q(8379, {	-- Armaments of War [PRIEST]
					["qg"] = 15183,	-- Geologist Larksbane
					["sourceQuest"] = 8315,	-- The Calling
					["coord"] = { 49.7, 37.5, SILITHUS },
					["classes"] = { PRIEST },
					["lvl"] = 40,
					["groups"] = {
						i(20707),	-- Cenarion Reservist's Pants
						i(20717),	-- Desert Bloom Gloves
					},
				}),
				q(8378, {	-- Armaments of War [ROGUE]
					["qg"] = 15183,	-- Geologist Larksbane
					["sourceQuest"] = 8315,	-- The Calling
					["coord"] = { 49.7, 37.5, SILITHUS },
					["classes"] = { ROGUE },
					["lvl"] = 40,
					["groups"] = {
						i(20703),	-- Cenarion Reservist's Leggings
						i(20715),	-- Dunestalker's Boots
					},
				}),
				q(8382, {	-- Armaments of War [DRUID]
					["qg"] = 15183,	-- Geologist Larksbane
					["sourceQuest"] = 8315,	-- The Calling
					["coord"] = { 49.7, 37.5, SILITHUS },
					["classes"] = { DRUID },
					["lvl"] = 40,
					["groups"] = {
						i(20704),	-- Cenarion Reservist's Leggings
						i(20714),	-- Sandstorm Boots
					},
				}),
				q(8377, {	-- Armaments of War [HUNTER]
					["qg"] = 15183,	-- Geologist Larksbane
					["sourceQuest"] = 8315,	-- The Calling
					["coord"] = { 49.7, 37.5, SILITHUS },
					["classes"] = { HUNTER },
					["lvl"] = 40,
					["groups"] = {
						i(20702),	-- Cenarion Reservist's Legguards
						i(20713),	-- Desertstalkers's Gauntlets
					},
				}),
				q(8376, {	-- Armaments of War [PALADIN]
					["qg"] = 15183,	-- Geologist Larksbane
					["sourceQuest"] = 8315,	-- The Calling
					["coord"] = { 49.7, 37.5, SILITHUS },
					["classes"] = { PALADIN },
					["lvl"] = 40,
					["groups"] = {
						i(20700),	-- Cenarion Reservist's Legplates
						i(20711),	-- Crystal Lined Greaves
					},
				}),
				q(8380, {	-- Armaments of War [SHAMAN]
					["qg"] = 15183,	-- Geologist Larksbane
					["sourceQuest"] = 8315,	-- The Calling
					["coord"] = { 49.7, 37.5, SILITHUS },
					["classes"] = { SHAMAN },
					["lvl"] = 40,
					["groups"] = {
						i(20701),	-- Cenarion Reservist's Legguards
						i(20712),	-- Wastewalker's Gauntlets
					},
				}),
				applyclassicphase(PHASE_FIVE, q(8780, {	-- Armor Kits for the Field [ALLIANCE]
					["provider"] = { "i", 21263 },	-- Logistics Task Briefing VII
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 15564, 8 },	-- Rugged Armor Kit
						{ "i", 4265, 8 },	-- Heavy Armor Kit
					},
					["lvl"] = 60,
					["groups"] = {
						i(20800),	-- Cenarion Logistics Badge
						i(20805),	-- Followup Logistics Assignment
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8787, {	-- Armor Kits for the Field [HORDE]
					["provider"] = { "i", 21264 },	-- Logistics Task Briefing VII
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 15564, 8 },	-- Rugged Armor Kit
						{ "i", 4265, 8 },	-- Heavy Armor Kit
					},
					["lvl"] = 60,
					["groups"] = {
						i(20800),	-- Cenarion Logistics Badge
						i(21386),	-- Followup Logistics Assignment
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8781, {	-- Arms for the Field [ALLIANCE]
					["provider"] = { "i", 21260 },	-- Logistics Task Briefing VI
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 3853, 2 },	-- Moonsteel Broadsword
					},
					["lvl"] = 60,
					["groups"] = {
						i(20800),	-- Cenarion Logistics Badge
						i(20805),	-- Followup Logistics Assignment
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8786, {	-- Arms for the Field [HORDE]
					["provider"] = { "i", 21261 },	-- Logistics Task Briefing VI
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 3855, 3 },	-- Massive Iron Axe
					},
					["lvl"] = 60,
					["groups"] = {
						i(20800),	-- Cenarion Logistics Badge
						i(21386),	-- Followup Logistics Assignment
					},
				})),
				q(8331, {	-- Aurel Goldleaf
					["qg"] = 15270,	-- Huum Wildmane
					["minReputation"] = { 609, FRIENDLY },	-- Cenarion Circle
					["coord"] = { 48.7, 37.9, SILITHUS },
					["isBreadcrumb"] = true,
					["lvl"] = 54,
				}),
				applyclassicphase(PHASE_FIVE, q(8737, {	-- Azure Templar
					["provider"] = { "i", 21245 },	-- Tactical Task Briefing I
					["cr"] = 15211,	-- Azure Templar <Abyssal Council>
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						i(20801),	-- Cenarion Tactical Badge
						i(21133),	-- Followup Tactical Assignment
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8496, {	-- Bandages for the Field
					["provider"] = { "i", 20806 },	-- Logistics Task Briefing X
					["repeatable"] = true,
					["cost"] = {
						{ "i", 14530, 30 },	-- Heavy Runecloth Bandage
						{ "i", 8545, 30 },	-- Heavy Mageweave Bandage
						{ "i", 6451, 30 },	-- Heavy Silk Bandage
					},
					["lvl"] = 60,
					["groups"] = {
						i(20800),	-- Cenarion Logistics Badge
						i(20805),	-- Followup Logistics Assignment
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8810, {	-- Bandages for the Field
					["provider"] = { "i", 21385 },	-- Logistics Task Briefing X
					["repeatable"] = true,
					["cost"] = {
						{ "i", 14530, 30 },	-- Heavy Runecloth Bandage
						{ "i", 8545, 30 },	-- Heavy Mageweave Bandage
						{ "i", 6451, 30 },	-- Heavy Silk Bandage
					},
					["lvl"] = 60,
					["groups"] = {
						i(20800),	-- Cenarion Logistics Badge
						i(21386),	-- Followup Logistics Assignment
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8540, {	-- Boots for the Guard
					["provider"] = { "i", 20939 },	-- Logistics Task Briefing II
					["repeatable"] = true,
					["cost"] = {
						{ "i", 7936, 3 },	-- Ornate Mithril Boots
					},
					["lvl"] = 60,
					["groups"] = {
						i(20800),	-- Cenarion Logistics Badge
						i(21132),	-- Logistics Assignment
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8805, {	-- Boots for the Guard
					["provider"] = { "i", 21379 },	-- Logistics Task Briefing II
					["repeatable"] = true,
					["cr"] = 15209,	-- Crimson Templar <Abyssal Council>
					["lvl"] = 60,
					["groups"] = {
						i(20800),	-- Cenarion Logistics Badge
						i(21266),	-- Logistics Assignment
					},
				})),
				q(8349, {	-- Bor Wildmane
					["qg"] = 15282,	-- Aurel Goldleaf
					["sourceQuest"] = 8332,	-- Dukes of the Council
					["coord"] = { 52.0, 38.2, SILITHUS },
					["isBreadcrumb"] = true,
					["lvl"] = 54,
				}),
				q(8351, {	-- Bor Wishes to Speak
					["qg"] = 15282,	-- Aurel Goldleaf
					["sourceQuest"] = 8341,	-- Lords of the Council
					["coord"] = { 52.0, 38.2, SILITHUS },
					["lvl"] = 54,
				}),
				q(8308, {	-- Brann Bronzebeard's Lost Letter
					["provider"] = { "i", 20461 },	-- Brann Bronzebeard's Lost Letter
					["lvl"] = 58,
					["groups"] = {
						i(20723),	-- Brann's Trusty Pick
					},
				}),
				q(8310, {	-- Breaking the Code
					["qg"] = 15171,	-- Frankal Stonebridge
					["sourceQuest"] = 8304,	-- Dearest Natalia
					["coord"] = { 40.8, 88.6, SILITHUS },
					["cost"] = {
						{ "i", 20457, 1 },	-- Hive'Ashi Silithid Brain
						{ "i", 20459, 1 },	-- Hive'Regal Silithid Brain
						{ "i", 20458, 1 },	-- Hive'Zora Silithid Brain
					},
					["lvl"] = 40,
				}),
				applyclassicphase(PHASE_FIVE, q(8800, {	-- Cenarion Battlegear
					["qg"] = 15540,	-- Windcaller Kaldon
					["coord"] = { 50.0, 36.4, SILITHUS },
					["lvl"] = 60,
				})),
				applyclassicphase(PHASE_FIVE, q(8573, {	-- Champion's Battlegear
					["qg"] = 15176,	-- Vargus
					["sourceQuest"] = 8800,	-- Cenarion Battlegear
					["minReputation"] = { 609, EXALTED },	-- Cenarion Circle
					["coord"] = { 51.2, 38.9, SILITHUS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 20802, 15 },	-- Cenarion Combat Badge
						{ "i", 20800, 20 },	-- Cenarion Logistics Badge
						{ "i", 20801, 20 },	-- Cenarion Tactical Badge
						{ "i", 21508, 1 },	-- Mark of Cenarius
					},
					["lvl"] = 54,
					["groups"] = {
						i(21188),	-- Fist of Cenarius
						i(21190),	-- Wrath of Cenarius
						i(21180),	-- Earthstrike
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8537, {	-- Crimson Templar
					["provider"] = { "i", 20945 },	-- Tactical Task Briefing II
					["cr"] = 15209,	-- Crimson Templar <Abyssal Council>
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						i(20801),	-- Cenarion Tactical Badge
						i(20809),	-- Tactical Assignment
					},
				})),
				q(8277, {	-- Deadly Desert Venom
					["qg"] = 15189,	-- Beetix Ficklespragg
					["coord"] = { 51.6, 38.6, SILITHUS },
					["cost"] = {
						{ "i", 20376, 8 },	-- Sand Skitterer Fang
						{ "i", 20373, 8 },	-- Stonelash Scorpid Stinger
					},
					["lvl"] = 54,
				}),
				q(8304, {	-- Dearest Natalia
					["qg"] = 15181,	-- Commander Mar'alith
					["coord"] = { 49.2, 34.2, SILITHUS },
					["lvl"] = 40,
				}),
				q(8307, {	-- Desert Recipe
					["qg"] = 15174,	-- Calandrath <Innkeeper>
					["requireSkill"] = COOKING,
					-- #if AFTER CATA
					["coord"] = { 55.4, 36.6, SILITHUS },
					-- #else
					["coord"] = { 51.8, 39, SILITHUS },
					-- #endif
					["lvl"] = 40,
				}),
				applyclassicphase(PHASE_FIVE, q(8804, {	-- Desert Survival Kits
					["provider"] = { "i", 21378 },	-- Logistics Task Briefing I
					["repeatable"] = true,
					["cost"] = {
						{ "i", 7079, 4 },	-- Globe of Water
						{ "i", 19440, 4 },	-- Powerful Anti-Venom
						{ "i", 20452, 4 },	-- Smoked Desert Dumplings
					},
					["lvl"] = 55,
					["groups"] = {
						i(20800),	-- Cenarion Logistics Badge
						i(21266),	-- Logistics Assignment
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8497, {	-- Desert Survival Kits
					["provider"] = { "i", 20807 },	-- Logistics Task Briefing I
					["repeatable"] = true,
					["cost"] = {
						{ "i", 7079, 4 },	-- Globe of Water
						{ "i", 19440, 4 },	-- Powerful Anti-Venom
						{ "i", 20452, 4 },	-- Smoked Desert Dumplings
					},
					["lvl"] = 60,
					["groups"] = {
						i(20800),	-- Cenarion Logistics Badge
						i(21132),	-- Logistics Assignment
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8856, {	-- Desert Survival Kits
					["provider"] = { "i", 20807 },	-- Logistics Task Briefing I
					["repeatable"] = true,
					["cost"] = {
						{ "i", 7079, 4 },	-- Globe of Water
						{ "i", 19440, 4 },	-- Powerful Anti-Venom
						{ "i", 20452, 4 },	-- Smoked Desert Dumplings
					},
					["lvl"] = 60,
					["groups"] = {
						i(20800),	-- Cenarion Logistics Badge
						i(20805),	-- Followup Logistics Assignment
					},
				})),
				q(8332, {	-- Dukes of the Council
					["qg"] = 15282,	-- Aurel Goldleaf
					["sourceQuest"] = 8331,	-- Aurel Goldleaf
					["coord"] = { 52.0, 38.2, SILITHUS },
					["cost"] = {
						{ "i", 14344, 1 },	-- Large Brilliant Shard
						{ "i", 20513, 3 },	-- Abyssal Crest
					},
					["lvl"] = 54,
					["groups"] = {
						i(20422),	-- Twilight Cultist Medallion of Station
					},
				}),
				applyclassicphase(PHASE_FIVE, q(8536, {	-- Earthen Templar
					["provider"] = { "i", 21751 },	-- Tactical Task Briefing III
					["cr"] = 15307,	-- Earthen Templar <Abyssal Council>
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						i(20801),	-- Cenarion Tactical Badge
						i(21133),	-- Followup Tactical Assignment
					},
				})),
				q(8319, {	-- Encrypted Twilight Texts
					["qg"] = 15306,	-- Bor Wildmane
					["sourceQuest"] = 8318,	-- Secret Communication
					["coord"] = { 48.6, 37.8, SILITHUS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 20404, 10 },	-- Encrypted Twilight Texts
					},
					["lvl"] = 40,
				}),
				applyclassicphase(PHASE_FIVE, q(8783, {	-- Extraordinary Materials
					["provider"] = { "i", 21265 },	-- Logistics Task Briefing IX
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12655, 2 },	-- Enchanted Thorium Bar
						{ "i", 12810, 2 },	-- Enchanted Leather
					},
					["lvl"] = 60,
					["groups"] = {
						i(20800),	-- Cenarion Logistics Badge
						i(21132),	-- Logistics Assignment
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8809, {	-- Extraordinary Materials
					["provider"] = { "i", 21381 },	-- Logistics Task Briefing IX
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12655, 2 },	-- Enchanted Thorium Bar
						{ "i", 12810, 2 },	-- Enchanted Leather
					},
					["lvl"] = 60,
					["groups"] = {
						i(20800),	-- Cenarion Logistics Badge
						i(21266),	-- Logistics Assignment
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8507, {	-- Field Duty
					["qg"] = 15540,	-- Windcaller Kaldon
					["coord"] = { 50.0, 36.4, SILITHUS },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 20810, 1 },	-- Signed Field Duty Papers
					},
					["lvl"] = 60,
					["groups"] = {
						{
							["itemID"] = 21143,	-- Unsigned Field Duty Papers
							["groups"] = {
								i(23024),	-- Prepared Field Duty Papers
							},
						},
						i(20808),	-- Combat Assignment
						i(21132),	-- Logistics Assignment
						i(20809),	-- Tactical Assignment
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8731, {	-- Field Duty
					["qg"] = 15540,	-- Windcaller Kaldon
					["coord"] = { 50.0, 36.4, SILITHUS },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 20810, 1 },	-- Signed Field Duty Papers
					},
					["lvl"] = 60,
					["groups"] = {
						{
							["itemID"] = 21143,	-- Unsigned Field Duty Papers
							["groups"] = {
								i(23024),	-- Prepared Field Duty Papers
							},
						},
						i(20808),	-- Combat Assignment
						i(21266),	-- Logistics Assignment
						i(20809),	-- Tactical Assignment
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8508, {	-- Field Duty Papers [ALLIANCE]
					["qg"] = 15440,	-- Captain Blackanvil <Ironforge Brigade Captain>
					["coord"] = { 33.2, 52.1, SILITHUS },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 23024, 1 },	-- Prepared Field Duty Papers
					},
					["lvl"] = 54,
					["groups"] = {
						i(20810),	-- Signed Field Duty Papers
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8732, {	-- Field Duty Papers [HORDE]
					["qg"] = 15612,	-- Krug Skullsplit
					["coord"] = { 52.2, 68.4, SILITHUS },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 23024, 1 },	-- Prepared Field Duty Papers
					},
					["lvl"] = 54,
					["groups"] = {
						i(20810),	-- Signed Field Duty Papers
					},
				})),
				q(8309, {	-- Glyph Chasing
					["qg"] = 15170,	-- Rutgar Glyphshaper
					["sourceQuest"] = 8304,	-- Dearest Natalia
					["coord"] = { 41.2, 88.4, SILITHUS },
					["cost"] = {
						{ "i", 20455, 1 },	-- Hive'Ashi Rubbing
						{ "i", 20456, 1 },	-- Hive'Regal Rubbing
						{ "i", 20454, 1 },	-- Hive'Zora Rubbing
					},
					["lvl"] = 40,
					["groups"] = {
						{
							["itemID"] = 20453,	-- Geologist's Transcription Kit
							["groups"] = {
								{
									["itemID"] = 20455,	-- Hive'Ashi Rubbing
									["questID"] = 8309,	-- Glyph Chasing
									["coord"] = { 50, 26, SILITHUS },
								},
								{
									["itemID"] = 20456,	-- Hive'Regal Rubbing
									["questID"] = 8309,	-- Glyph Chasing
									["coord"] = { 52, 99, SILITHUS },
								},
								{
									["itemID"] = 20454,	-- Hive'Zora Rubbing
									["questID"] = 8309,	-- Glyph Chasing
									["coord"] = { 37, 62, SILITHUS },
								},
							},
						},
					},
				}),
				q(8343, {	-- Goldleaf's Discovery
					["qg"] = 15270,	-- Huum Wildmane
					["minReputation"] = { 609, REVERED },	-- Cenarion Circle
					["coord"] = { 48.6, 37.9, SILITHUS },
					["isBreadcrumb"] = true,
					["lvl"] = 54,
				}),
				applyclassicphase(PHASE_FIVE, q(8541, {	-- Grinding Stones for the Guard
					["provider"] = { "i", 20940 },	-- Logistics Task Briefing III
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12644, 10 },	-- Dense Grinding Stone
						{ "i", 7966, 10 },	-- Solid Grinding Stone
						{ "i", 3486, 10 },	-- Heavy Grinding Stone
					},
					["lvl"] = 60,
					["groups"] = {
						i(20800),	-- Cenarion Logistics Badge
						i(21132),	-- Logistics Assignment
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8806, {	-- Grinding Stones for the Guard
					["provider"] = { "i", 21380 },	-- Logistics Task Briefing III
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12644, 10 },	-- Dense Grinding Stone
						{ "i", 7966, 10 },	-- Solid Grinding Stone
						{ "i", 3486, 10 },	-- Heavy Grinding Stone
					},
					["lvl"] = 60,
					["groups"] = {
						i(20800),	-- Cenarion Logistics Badge
						i(21266),	-- Logistics Assignment
					},
				})),
				q(1126, {	-- Hive in the Tower
					["qg"] = 13220,	-- Layo Starstrike
					["sourceQuest"] = 1125,	-- The Spirits of Southwind
					["coord"] = { 81.8, 18.8, SILITHUS },
					["cost"] = {
						{ "i", 17346, 1 },	-- Encrusted Silithid Object
					},
					["cr"] = 13301,	-- Hive'Ashi Ambusher
					["lvl"] = 54,
					["groups"] = {
						{
							["provider"] = { "o", 178553 },	-- Hive'Ashi Pod
							["itemID"] = 17345,	-- Silithid Goo
							["coord"] = { 60.3, 52.6, SILITHUS },
							["groups"] = {
								{
									["itemID"] = 17346,	-- Encrusted Silithid Object
									["questID"] = 1126,	-- Hive in the Tower
									["cr"] = 13301,	-- Hive'Ashi Ambusher
								},
							},
						},
					},
				}),
				applyclassicphase(PHASE_FIVE, q(8739, {	-- Hive'Ashi Scout Report
					["provider"] = { "i", 21167 },	-- Tactical Task Briefing VIII
					["repeatable"] = true,
					["cost"] = {
						{ "i", 21161, 1 },	-- Hive'Ashi Scout Report
					},
					["lvl"] = 60,
					["groups"] = {
						{
							["itemID"] = 21161,	-- Hive'Ashi Scout Report
							["coord"] = { 44, 14, SILITHUS },
							["cr"] = 15611,	-- Cenarion Scout Jalia
						},
						i(20801),	-- Cenarion Tactical Badge
						i(20809),	-- Tactical Assignment
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8738, {	-- Hive'Regal Scout Report
					["provider"] = { "i", 21166 },	-- Tactical Task Briefing VII
					["repeatable"] = true,
					["cost"] = {
						{ "i", 21160, 1 },	-- Hive'Regal Scout Report
					},
					["lvl"] = 60,
					["groups"] = {
						{
							["itemID"] = 21160,	-- Hive'Regal Scout Report
							["coord"] = { 53, 97, SILITHUS },
							["cr"] = 15609,	-- Cenarion Scout Landion
						},
						i(20801),	-- Cenarion Tactical Badge
						i(21133),	-- Followup Tactical Assignment
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8534, {	-- Hive'Zora Scout Report
					["provider"] = { "i", 21165 },	-- Tactical Task Briefing VI
					["repeatable"] = true,
					["cost"] = {
						{ "i", 21158, 1 },	-- Hive'Zora Scout Report
					},
					["lvl"] = 60,
					["groups"] = {
						{
							["itemID"] = 21158,	-- Hive'Zora Scout Report
							["coord"] = { 23.6, 62.4, SILITHUS },
							["cr"] = 15610,	-- Cenarion Scout Azenel
						},
						i(20801),	-- Cenarion Tactical Badge
						i(21133),	-- Followup Tactical Assignment
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8535, {	-- Hoary Templar
					["provider"] = { "i", 20947 },	-- Tactical Task Briefing IV
					["cr"] = 15212,	-- Hoary Templar <Abyssal Council>
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						i(20801),	-- Cenarion Tactical Badge
						i(20809),	-- Tactical Assignment
					},
				})),
				q(8306, {	-- Into The Maw of Madness
					["qg"] = 15181,	-- Commander Mar'alith
					["sourceQuest"] = 8304,	-- Dearest Natalia
					["cr"] = 15215,	-- Mistress Natalia Mar'alith <High Priestess of C'Thun>
					["coord"] = { 49.2, 34.2, SILITHUS },
					["lvl"] = 40,
					["groups"] = {
						i(20724),	-- Corrupted Blackwood Staff
					},
				}),
				q(8317, {	-- Kitchen Assistance
					["qg"] = 15174,	-- Calandrath <Innkeeper>
					["sourceQuest"] = 8313,	-- Sharing the Knowledge
					["requireSkill"] = COOKING,
					-- #if AFTER CATA
					["coord"] = { 55.4, 36.6, SILITHUS },
					-- #else
					["coord"] = { 51.8, 39, SILITHUS },
					-- #endif
					["cost"] = {
						{ "i", 20452, 10 },	-- Smoked Desert Dumplings
					},
					["lvl"] = 40,
				}),
				q(8341, {	-- Lords of the Council
					["qg"] = 15282,	-- Aurel Goldleaf
					["sourceQuest"] = 8343,	-- Goldleaf's Discovery
					["coord"] = { 52.0, 38.2, SILITHUS },
					["cost"] = {
						{ "i", 14344, 5 },	-- Large Brilliant Shard
						{ "i", 20514, 3 },	-- Abyssal Signet
					},
					["lvl"] = 54,
					["groups"] = {
						i(20451),	-- Twilight Cultist Ring of Lordship
					},
				}),
				q(8333, {	-- Medallion of Station
					["qg"] = 15282,	-- Aurel Goldleaf
					["sourceQuest"] = 8332,	-- Dukes of the Council
					["coord"] = { 52.0, 38.2, SILITHUS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 14344, 1 },	-- Large Brilliant Shard
						{ "i", 20513, 3 },	-- Abyssal Crest
					},
					["lvl"] = 54,
					["groups"] = {
						i(20422),	-- Twilight Cultist Medallion of Station
					},
				}),
				q(8278, {	-- Noggle's Last Hope
					["qg"] = 15189,	-- Beetix Ficklespragg
					["sourceQuest"] = 8277,	-- Deadly Desert Venom
					["coord"] = { 51.6, 38.6, SILITHUS },
					["cost"] = {
						{ "i", 20377, 3 },	-- Rock Stalker Fang
						{ "i", 20375, 3 },	-- Stonelash Flayer Stinger
						{ "i", 20374, 3 },	-- Stonelash Pincer Stinger
					},
					["lvl"] = 40,
				}),
				q(8282, {	-- Noggle's Lost Satchel
					["qg"] = 15190,	-- Noggle Ficklespragg
					["sourceQuest"] = 8278,	-- Noggle's Last Hope
					["coord"] = { 51.6, 38.5, SILITHUS },
					["cost"] = {
						{ "i", 20379, 1 },	-- Noggle's Satchel
					},
					["lvl"] = 40,
					["groups"] = {
						{
							["itemID"] = 20379,	-- Noggle's Satchel
							["questID"] = 8282,	-- Noggle's Lost Satchel
							["coord"] = { 44, 91, SILITHUS },
						},
						i(13452),	-- Elixir of the Mongoose
						i(13447),	-- Elixir of the Sages
					},
				}),
				q(8352, {	-- Scepter of the Council
					["qg"] = 15306,	-- Bor Wildmane
					["sourceQuest"] = 8351,	-- Bor Wishes to Speak
					["coord"] = { 48.6, 37.8, SILITHUS },
					["cost"] = {
						{ "i", 20515, 1 },	-- Abyssal Scepter
					},
					["lvl"] = 54,
					["groups"] = {
						i(20602),	-- Chest of Spoils
					},
				}),
				applyclassicphase(PHASE_FIVE, q(8779, {	-- Scrying Materials
					["provider"] = { "i", 21259 },	-- Logistics Task Briefing V
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12364, 1 },	-- Huge Emerald
						{ "i", 14344, 1 },	-- Large Brilliant Shard
						{ "i", 11178, 1 },	-- Large Radiant Shard
					},
					["lvl"] = 60,
					["groups"] = {
						i(20800),	-- Cenarion Logistics Badge
						i(20805),	-- Followup Logistics Assignment
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8807, {	-- Scrying Materials
					["provider"] = { "i", 21382 },	-- Logistics Task Briefing V
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12364, 1 },	-- Huge Emerald
						{ "i", 14344, 1 },	-- Large Brilliant Shard
						{ "i", 11178, 1 },	-- Large Radiant Shard
					},
					["lvl"] = 60,
					["groups"] = {
						i(20800),	-- Cenarion Logistics Badge
						i(21386),	-- Followup Logistics Assignment
					},
				})),
				q(8318, {	-- Secret Communication
					["qg"] = 15306,	-- Bor Wildmane
					["coord"] = { 48.6, 37.8, SILITHUS },
					["cost"] = {
						{ "i", 20404, 10 },	-- Encrypted Twilight Texts
					},
					["lvl"] = 57,
				}),
				applyclassicphase(PHASE_FIVE_WAR, q(8857, {	-- Secrets of the Colossus - Ashi
					["provider"] = { "i", 21534 },	-- Colossus of Ashi's Husk
					["cr"] = 15742,	-- Colossus of Ashi
					["lvl"] = 51,
					["groups"] = {
						i(21528),	-- Colossal Bag of Loot
					},
				})),
				applyclassicphase(PHASE_FIVE_WAR, q(8858, {	-- Secrets of the Colossus - Regal
					["provider"] = { "i", 21535 },	-- Colossus of Regal's Husk
					["cr"] = 15741,	-- Colossus of Regal
					["lvl"] = 51,
					["groups"] = {
						i(21528),	-- Colossal Bag of Loot
					},
				})),
				applyclassicphase(PHASE_FIVE_WAR, q(8859, {	-- Secrets of the Colossus - Zora
					["provider"] = { "i", 21533 },	-- Colossus of Zora's Husk
					["cr"] = 15740,	-- Colossus of Zora
					["lvl"] = 51,
					["groups"] = {
						i(21528),	-- Colossal Bag of Loot
					},
				})),
				q(8280, {	-- Securing the Supply Lines
					["qg"] = 15191,	-- Windcaller Proudhorn
					["sourceQuests"] = {
						8275,	-- Taking Back Silithus
						8276,	-- Taking Back Silithus
					},
					["coord"] = { 51.2, 38.3, SILITHUS },
					["cr"] = 11740,	-- Dredge Striker
					["lvl"] = 54,
				}),
				q(8313, {	-- Sharing the Knowledge
					["provider"] = { "o", 180503 },	-- Sandy Cookbook
					["sourceQuest"] = 8307,	-- Desert Recipe
					["requireSkill"] = COOKING,
					-- #if AFTER CATA
					["coord"] = { 43.6, 42.0, SILITHUS },
					-- #else
					["coord"] = { 37.9, 45.3, SILITHUS },
					-- #endif
					["cost"] = {
						{ "i", 20467, 1 },	-- Torn Recipe Page
					},
					["lvl"] = 40,
					["groups"] = {
						recipe(24801),	-- Smoked Desert Dumplings
					},
				}),
				q(8348, {	-- Signet of the Dukes
					["qg"] = 15306,	-- Bor Wildmane
					["sourceQuest"] = 8349,	-- Bor Wildmane
					["coord"] = { 48.6, 37.8, SILITHUS },
					["cost"] = {
						{ "i", 20514, 1 },	-- Abyssal Signet
					},
					["lvl"] = 54,
					["groups"] = {
						i(20601),	-- Sack of Spoils
					},
				}),
				applyclassicphase(PHASE_FIVE, q(8574, {	-- Stalwart's Battlegear
					["qg"] = 15176,	-- Vargus
					["sourceQuest"] = 8800,	-- Cenarion Battlegear
					["minReputation"] = { 609, REVERED },	-- Cenarion Circle
					["coord"] = { 51.2, 38.9, SILITHUS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 20802, 15 },	-- Cenarion Combat Badge
						{ "i", 20800, 20 },	-- Cenarion Logistics Badge
						{ "i", 20801, 17 },	-- Cenarion Tactical Badge
						{ "i", 21515, 1 },	-- Mark of Remulos
					},
					["lvl"] = 54,
					["groups"] = {
						i(21184),	-- Deeprock Bracers
						i(21185),	-- Earthcalm Orb
						i(21186),	-- Rockfury Bracers
						i(21189),	-- Might of Cenarius
					},
				})),
				q(8281, {	-- Stepping Up Security
					["qg"] = 15191,	-- Windcaller Proudhorn
					["sourceQuest"] = 8280, -- Securing the Supply Lines
					["coord"] = { 51.2, 38.3, SILITHUS },
					["cr"] = 11741,	-- Dredge Crusher
					["lvl"] = 40,
				}),
				q(8324, {	-- Still Believing
					["qg"] = 15194,	-- Hermit Ortell
					["sourceQuest"] = 8323,	-- True Believers
					["coord"] = { 67, 69.6, SILITHUS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 20404, 10 },	-- Encrypted Twilight Text
					},
					["lvl"] = 40,
				}),
				q(8276, {	-- Taking Back Silithus
					["qg"] = 15188,	-- Cenarion Emissary Blackhoof
					["coord"] = { 47.6, 65.8, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 54,
				}),
				q(8275, {	-- Taking Back Silithus
					["qg"] = 15187,	-- Cenarion Emissary Jademoon
					["coord"] = { 58.5, 47.3, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 54,
				}),
				applyclassicphase(PHASE_FIVE, q(8770, {	-- Target: Hive'Ashi Defenders
					["provider"] = { "i", 21749 },	-- Combat Task Briefing I
					["cr"] = 11722,	-- Hive'Ashi Defender
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						i(20802),	-- Cenarion Combat Badge
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8771, {	-- Target: Hive'Ashi Sandstalkers
					["provider"] = { "i", 21750 },	-- Combat Task Briefing II
					["cr"] = 11723,	-- Hive'Ashi Sandstalker
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						i(20802),	-- Cenarion Combat Badge
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8501, {	-- Target: Hive'Ashi Stingers
					["provider"] = { "i", 20941 },	-- Combat Task Briefing XII
					["cr"] = 11698,	-- Hive'Ashi Stinger
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						i(20802),	-- Cenarion Combat Badge
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8502, {	-- Target: Hive'Ashi Workers
					["provider"] = { "i", 20942 },	-- Combat Task Briefing III
					["cr"] = 11721,	-- Hive'Ashi Worker
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						i(20802),	-- Cenarion Combat Badge
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8774, {	-- Target: Hive'Regal Ambushers
					["provider"] = { "i", 21252 },	-- Combat Task Briefing VIII
					["cr"] = 11730,	-- Hive'Regal Ambusher
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						i(20802),	-- Cenarion Combat Badge
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8777, {	-- Target: Hive'Regal Burrowers
					["provider"] = { "i", 21256 },	-- Combat Task Briefing XI
					["cr"] = 11731,	-- Hive'Regal Burrower
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						i(20802),	-- Cenarion Combat Badge
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8776, {	-- Target: Hive'Regal Slavemakers
					["provider"] = { "i", 21255 },	-- Combat Task Briefing X
					["cr"] = 11733,	-- Hive'Regal Slavemaker
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						i(20802),	-- Cenarion Combat Badge
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8775, {	-- Target: Hive'Regal Spitfires
					["provider"] = { "i", 21253 },	-- Combat Task Briefing IX
					["cr"] = 11732,	-- Hive'Regal Spitfire
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						i(20802),	-- Cenarion Combat Badge
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8539, {	-- Target: Hive'Zora Hive Sisters
					["provider"] = { "i", 21249 },	-- Combat Task Briefing V
					["cr"] = 11729,	-- Hive'Zora Hive Sister
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						i(20802),	-- Cenarion Combat Badge
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8773, {	-- Target: Hive'Zora Reavers
					["provider"] = { "i", 21248 },	-- Combat Task Briefing IV
					["cr"] = 11728,	-- Hive'Zora Reaver
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						i(20802),	-- Cenarion Combat Badge
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8687, {	-- Target: Hive'Zora Tunnelers
					["provider"] = { "i", 21251 },	-- Combat Task Briefing VII
					["cr"] = 11726,	-- Hive'Zora Tunneler
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						i(20802),	-- Cenarion Combat Badge
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8772, {	-- Target: Hive'Zora Waywatchers
					["provider"] = { "i", 21250 },	-- Combat Task Briefing VI
					["cr"] = 11725,	-- Hive'Zora Waywatcher
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						i(20802),	-- Cenarion Combat Badge
					},
				})),
				q(8315, {	-- The Calling
					["qg"] = 15183,	-- Geologist Larksbane
					["sourceQuest"] = 8314,	-- Unraveling the Mystery
					["coord"] = { 49.7, 37.5, SILITHUS },
					["cost"] = {
						{ "i", 20465, 1 },	-- Crystal Unlocking Mechanism
					},
					["lvl"] = 54,
					["groups"] = {
						{
							["itemID"] = 20464,	-- Glyphs of Calling
							["coord"] = { 48.5, 58.5, SILITHUS },
							["cr"] = 14862,	-- Emissary Roman'khan
							["groups"] = {
								{
									["itemID"] = 20465,	-- Crystal Unlocking Mechanism
									["questID"] = 8315,	-- The Calling
								},
							},
						},
					},
				}),
				q(8285, {	-- The Deserter
					["qg"] = 15183,	-- Geologist Larksbane
					["sourceQuest"] = 8284,	-- The Twilight Mystery
					["coord"] = { 49.7, 37.5, SILITHUS },
					["cost"] = {
						{ "i", 20401, 1 },	-- Restored Twilight Tablet
					},
					["lvl"] = 40,
				}),
				applyclassicphase(PHASE_FIVE, q(8538, {	-- The Four Dukes
					["provider"] = { "i", 20948 },	-- Tactical Task Briefing V
					["crs"] = {
						15206,	-- The Duke of Cynders <Abyssal Council>
						15207,	-- The Duke of Fathoms <Abyssal Council>
						15208,	-- The Duke of Shards <Abyssal Council>
						15220,	-- The Duke of Zephyrs <Abyssal Council>
					},
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						i(21508),	-- Mark of Cenarius
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8778, {	-- The Ironforge Brigade Needs Explosives!
					["provider"] = { "i", 21257 },	-- Logistics Task Briefing IV
					["repeatable"] = true,
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 15992, 10 },	-- Dense Blasting Powder
						{ "i", 9061, 5 },	-- Goblin Rocket Fuel
						{ "i", 8956, 6 },	-- Oil of Immolation
					},
					["lvl"] = 60,
					["groups"] = {
						i(20800),	-- Cenarion Logistics Badge
						i(20805),	-- Followup Logistics Assignment
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8785, {	-- The Orgrimmar Legion Needs Mojo!
					["provider"] = { "i", 21258 },	-- Logistics Task Briefing IV
					["repeatable"] = true,
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 8152, 6 },	-- Flask of Big Mojo
						{ "i", 8956, 8 },	-- Oil of Immolation
						{ "i", 12804, 6 },	-- Powerful Mojo
					},
					["lvl"] = 60,
					["groups"] = {
						i(20800),	-- Cenarion Logistics Badge
						i(21386),	-- Followup Logistics Assignment
					},
				})),
				applyclassicphase(PHASE_FIVE, q(9023, {	-- The Perfect Poison
					["qg"] = 16091,	-- Dirk Thunderwood
					["coord"] = { 52.1, 39.1, SILITHUS },
					["maps"] = { RUINS_OF_AHNQIRAJ, ZULGURUB },
					["cost"] = {
						{ "i", 22217, 1 },	-- Kurinnaxx's Venom Sac
						{ "i", 22216, 1 },	-- Venoxis's Venom Sac
					},
					["lvl"] = 60,
					["groups"] = {
						i(22378),	-- Ravenholdt Slicer
						i(22379),	-- Shivsprocket's Shiv
						i(22377),	-- The Thunderwood Poker
						i(22348),	-- Doomulus Prime
						i(22347),	-- Fahrad's Reloading Repeater
						i(22380),	-- Simone's Cultivating Hammer
					},
				})),
				q(1125, {	-- The Spirits of Southwind
					["qg"] = 13220,	-- Layo Starstrike
					["sourceQuest"] = 1124,	-- Wasteland
					["coord"] = { 81.8, 18.8, SILITHUS },
					["crs"] = {
						12178,	-- Tortured Druid
						12179,	-- Tortured Sentinel
					},
					["lvl"] = 54,
				}),
				q(8279, {	-- The Twilight Lexicon
					["qg"] = 15194,	-- Hermit Ortell
					["sourceQuest"] = 8285,	-- The Deserter
					["coord"] = { 67, 69.6, SILITHUS },
					["cost"] = {
						{ "i", 20394, 1 },	-- Twilight Lexicon - Chapter 1
						{ "i", 20395, 1 },	-- Twilight Lexicon - Chapter 2
						{ "i", 20396, 1 },	-- Twilight Lexicon - Chapter 3
					},
					["lvl"] = 40,
					["groups"] = {
						{
							["itemID"] = 20394,	-- Twilight Lexicon - Chapter 1
							["questID"] = 8279,	-- The Twilight Lexicon
							["coord"] = { 26.3, 36.6, SILITHUS },
							["cr"] = 15200,	-- Twilight Keeper Mayna <Twilight's Hammer>
						},
						{
							["itemID"] = 20395,	-- Twilight Lexicon - Chapter 2
							["questID"] = 8279,	-- The Twilight Lexicon
							["coord"] = { 16.1, 86.4, SILITHUS },
							["cr"] = 11803,	-- Twilight Keeper Exeter <Twilight's Hammer>
						},
						{
							["itemID"] = 20396,	-- Twilight Lexicon - Chapter 3
							["questID"] = 8279,	-- The Twilight Lexicon
							["coord"] = { 40.9, 42.2, SILITHUS },
							["cr"] = 11804,	-- Twilight Keeper Havunth <Twilight's Hammer>
						},
					},
				}),
				q(8284, {	-- The Twilight Mystery
					["qg"] = 15183,	-- Geologist Larksbane
					["coord"] = { 49.7, 37.5, SILITHUS },
					["cost"] = {
						{ "i", 20378, 8 },	-- Twilight Tablet Fragment
					},
					["lvl"] = 54,
					["groups"] = {
						{
							["itemID"] = 20378,	-- Twilight Tablet Fragment
							["questID"] = 8284,	-- The Twilight Mystery
							["coord"] = { 23.4, 11.8, SILITHUS },
						},
					},
				}),
				applyclassicphase(PHASE_FIVE, q(8829, {	-- The Ultimate Deception
					["provider"] = { "i", 21514 },	-- Logistics Task Briefing XI
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12735, 3 },	-- Frayed Abomination Stitching
						{ "i", 12753, 1 },	-- Skin of Shadow
						{ "i", 20407, 1 },	-- Twilight Cultist Robe
					},
					["lvl"] = 60,
					["groups"] = {
						i(21515),	-- Mark of Remulos
					},
				})),
				q(8323, {	-- True Believers
					["qg"] = 15194,	-- Hermit Ortell
					["sourceQuest"] = 8279,	-- The Twilight Lexicon
					["coord"] = { 67, 69.6, SILITHUS },
					["cost"] = {
						{ "i", 20404, 10 },	-- Encrypted Twilight Text
					},
					["lvl"] = 40,
				}),
				applyclassicphase(PHASE_FIVE, q(8498, {	-- Twilight Battle Orders
					["provider"] = { "i", 20943 },	-- Tactical Task Briefing X
					["cr"] = 15308,	-- Twilight Prophet <Twilight's Hammer>
					["repeatable"] = true,
					["cost"] = {
						{ "i", 20803, 1 },	-- Twilight Battle Orders
					},
					["lvl"] = 60,
					["groups"] = {
						i(20801),	-- Cenarion Tactical Badge
						i(20809),	-- Tactical Assignment
					},
				})),
				q(8320, {	-- Twilight Geolords
					["qg"] = 15270,	-- Huum Wildmane
					["coord"] = { 48.7, 37.9, SILITHUS },
					["cr"] = 11881,	-- Twilight Geolord
					["lvl"] = 60,
				}),
				applyclassicphase(PHASE_FIVE, q(8740, {	-- Twilight Marauders
					["provider"] = { "i", 20944 },	-- Tactical Task Briefing IX
					["crs"] = {
						15541,	-- Twilight Marauder Morna <Twilight's Hammer>
						15542,	-- Twilight Marauder <Twilight's Hammer>
					},
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						i(20801),	-- Cenarion Tactical Badge
						i(21133),	-- Followup Tactical Assignment
					},
				})),
				q(8342, {	-- Twilight Ring of Lordship
					["qg"] = 15282,	-- Aurel Goldleaf
					["sourceQuest"] = 8341,	-- Lords of the Council
					["coord"] = { 52.0, 38.2, SILITHUS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 14344, 5 },	-- Large Brilliant Shard
						{ "i", 20514, 3 },	-- Abyssal Signet
					},
					["lvl"] = 54,
					["groups"] = {
						i(20451),	-- Twilight Cultist Ring of Lordship
					},
				}),
				q(6844, {	-- Umber, Archivist
					["qg"] = 13220,	-- Layo Starstrike
					["sourceQuest"] = 1126,	-- Hive in the Tower
					["coord"] = { 81.8, 18.8, SILITHUS },
					["maps"] = { MOONGLADE },
					["cost"] = {
						{ "i", 17346, 1 },	-- Encrusted Silithid Object
					},
					["lvl"] = 54,
				}),
				applyclassicphase(PHASE_FIVE, q(8782, {	-- Uniform Supplies
					["provider"] = { "i", 21262 },	-- Logistics Task Briefing VIII
					["repeatable"] = true,
					["cost"] = {
						{ "i", 14048, 2 },	-- Bolt of Runecloth
						{ "i", 14227, 1 },	-- Ironweb Spider Silk
						{ "i", 14342, 1 },	-- Mooncloth
					},
					["lvl"] = 60,
					["groups"] = {
						i(20800),	-- Cenarion Logistics Badge
						i(21132),	-- Logistics Assignment
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8808, {	-- Uniform Supplies
					["provider"] = { "i", 21384 },	-- Logistics Task Briefing VIII
					["repeatable"] = true,
					["cost"] = {
						{ "i", 14048, 2 },	-- Bolt of Runecloth
						{ "i", 14227, 1 },	-- Ironweb Spider Silk
						{ "i", 14342, 1 },	-- Mooncloth
					},
					["lvl"] = 60,
					["groups"] = {
						i(20800),	-- Cenarion Logistics Badge
						i(21266),	-- Logistics Assignment
					},
				})),
				q(8314, {	-- Unraveling the Mystery
					["qg"] = 15170,	-- Rutgar Glyphshaper
					["sourceQuests"] = {
						8310,	-- Breaking the Code
						8309,	-- Glyph Chasing
					},
					["coord"] = { 41.2, 88.4, SILITHUS },
					["cost"] = {
						{ "i", 20463, 1 },	-- Glyphed Crystal Prism
					},
					["lvl"] = 40,
				}),
				applyclassicphase(PHASE_FIVE, q(8572, {	-- Veteran's Battlegear
					["qg"] = 15176,	-- Vargus
					["sourceQuest"] = 8800,	-- Cenarion Battlegear
					["minReputation"] = { 609, HONORED },	-- Cenarion Circle
					["coord"] = { 51.2, 38.9, SILITHUS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 20802, 7 },	-- Cenarion Combat Badge
						{ "i", 20800, 4 },	-- Cenarion Logistics Badge
						{ "i", 20801, 4 },	-- Cenarion Tactical Badge
					},
					["lvl"] = 54,
					["groups"] = {
						i(21181),	-- Grace of Earth
						i(21182),	-- Band of Earthen Might
						i(21183),	-- Earthpower Vest
					},
				})),
				applyclassicphase(PHASE_FIVE, q(8548, {	-- Volunteer's Battlegear
					["qg"] = 15176,	-- Vargus
					["sourceQuest"] = 8800,	-- Cenarion Battlegear
					["minReputation"] = { 609, FRIENDLY },	-- Cenarion Circle
					["coord"] = { 51.2, 38.9, SILITHUS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 20802, 5 },	-- Cenarion Combat Badge
						{ "i", 20800, 3 },	-- Cenarion Logistics Badge
						{ "i", 20801, 7 },	-- Cenarion Tactical Badge
					},
					["lvl"] = 54,
					["groups"] = {
						i(21178),	-- Gloves of Earthen Power
						i(21179),	-- Band of Earthen Wrath
						i(21187),	-- Earthweave Cloak
					},
				})),
				q(8321, {	-- Vyral the Vile
					["qg"] = 15270,	-- Huum Wildmane
					["sourceQuest"] = 8320,	-- Twilight Geolords
					["coord"] = { 48.7, 37.9, SILITHUS },
					["cost"] = {
						{ "i", 20466, 1 },	-- Vyral's Signet Ring
					},
					["lvl"] = 40,
					["groups"] = {
						{
							["itemID"] = 20466,	-- Vyral's Signet Ring
							["questID"] = 8321,	-- Vyral the Vile
							["cr"] = 15202,	-- Vyral the Vile
							["coord"] = { 72.4, 15.6, SILITHUS },
						},
						i(20650),	-- Desert Wind Gauntlets
						i(20649),	-- Sunprism Pendant
					},
				}),
				q(8283, {	-- Wanted - Deathclasp, Terror of the Sands
					["provider"] = { "o", 180448 },	-- Wanted Poster: Deathclasp
					["coord"] = { 51.34, 38.25, SILITHUS },
					["cost"] = {
						{ "i", 20385, 1 },	-- Deathclasp's Pincer
					},
					["lvl"] = 54,
					["groups"] = {
						{
							["itemID"] = 20385,	-- Deathclasp's Pincer
							["questID"] = 8283,	-- Wanted - Deathclasp, Terror of the Sands
							["coord"] = { 45.0, 91.0, SILITHUS },
							["cr"] = 15196,	-- Deathclasp
						},
						i(20646),	-- Sandstrider's Mark
						i(20647),	-- Black Crystal Dagger
					},
				}),
			}),
			n(RARES, {
				o(180456, {	-- Lesser Wind Stone
					["description"] = "Summons one of 4 Abyssal Templars. The ritual requires a Twilight Trappings set. To guarantee that a specific Templar is summoned, a Crest of Beckoning can be used.",
					["cost"] = {
						{ "i", 20408, 1 },	-- Twilight Cultist Cowl
						{ "i", 20406, 1 },	-- Twilight Cultist Mantle
						{ "i", 20407, 1 },	-- Twilight Cultist Robe
					},
					["coords"] = {
						{ 20.5, 86.2, SILITHUS },
						{ 18.2, 81.1, SILITHUS },
						{ 39.0, 42.4, SILITHUS },
						{ 38.3, 46.5, SILITHUS },
						{ 27.9, 30.6, SILITHUS },
						{ 24.4, 36.0, SILITHUS },
					},
					["groups"] = {
						i(20513, {	-- Abyssal Crest
							["timeline"] = { "removed 4.0.3", "deleted 7.1.5" },
							["crs"] = {
								15211,	-- Azure Templar <Abyssal Council>
								15209,	-- Crimson Templar <Abyssal Council>
								15307,	-- Earthen Templar <Abyssal Council>
								15212,	-- Hoary Templar <Abyssal Council>
							},
						}),
						n(15211, {	-- Azure Templar <Abyssal Council>
							["cost"] = {{ "i", 20420, 1 }},	-- Crest of Beckoning: Water
							["timeline"] = { "removed 4.0.3" },
							["groups"] = {
								i(20654, {	-- Amethyst War Staff
									["timeline"] = { "removed 4.0.3" },
								}),
								i(20652, {	-- Abyssal Cloth Slippers
									["timeline"] = { "removed 4.0.3" },
								}),
								i(20653, {	-- Abyssal Plate Gauntlets
									["timeline"] = { "removed 4.0.3" },
								}),
							},
						}),
						n(15209, {	-- Crimson Templar <Abyssal Council>
							["cost"] = {{ "i", 20416, 1 }},	-- Crest of Beckoning: Fire
							["timeline"] = { "removed 4.0.3" },
							["groups"] = {
								i(20657, {	-- Crystal Tipped Stiletto
									["timeline"] = { "removed 4.0.3" },
								}),
								i(20655, {	-- Abyssal Cloth Handwraps
									["timeline"] = { "removed 4.0.3" },
								}),
								i(20656, {	-- Abyssal Mail Sabatons
									["timeline"] = { "removed 4.0.3" },
								}),
							},
						}),
						n(15307, {	-- Earthen Templar <Abyssal Council>
							["cost"] = {{ "i", 20419, 1 }},	-- Crest of Beckoning: Stone
							["timeline"] = { "removed 4.0.3" },
							["groups"] = {
								i(20663, {	-- Deep Strike Bow
									["timeline"] = { "removed 4.0.3" },
								}),
								i(20661, {	-- Abyssal Leather Gloves
									["timeline"] = { "removed 4.0.3" },
								}),
								i(20662, {	-- Abyssal Plate Greaves
									["timeline"] = { "removed 4.0.3" },
								}),
							},
						}),
						n(15212, {	-- Hoary Templar <Abyssal Council>
							["cost"] = {{ "i", 20418, 1 }},	-- Crest of Beckoning: Thunder
							["timeline"] = { "removed 4.0.3" },
							["groups"] = {
								i(20660, {	-- Stonecutting Glaive
									["timeline"] = { "removed 4.0.3" },
								}),
								i(20658, {	-- Abyssal Leather Boots
									["timeline"] = { "removed 4.0.3" },
								}),
								i(20659, {	-- Abyssal Mail Handguards
									["timeline"] = { "removed 4.0.3" },
								}),
							},
						}),
					},
				}),
				o(180461, {	-- Wind Stone
					["description"] = "Summons one of 4 Abyssal Dukes. The ritual requires a Twilight Trappings set and a medallion of station. To guarantee that a specific Duke is summoned, a Signet of Beckoning can be used.",
					["cost"] = {
						{ "i", 20422, 1 },	-- Twilight Cultist Medallion of Station
						{ "i", 20408, 1 },	-- Twilight Cultist Cowl
						{ "i", 20406, 1 },	-- Twilight Cultist Mantle
						{ "i", 20407, 1 },	-- Twilight Cultist Robe
					},
					["coords"] = {
						{ 17.2, 84.8, SILITHUS },
						{ 37.6, 44.8, SILITHUS },
						{ 24.7, 32.7, SILITHUS },
					},
					["groups"] = {
						i(20514, {	-- Abyssal Signet
							["timeline"] = { "removed 4.0.3", "deleted 7.1.5" },
							["crs"] = {
								15206,	-- The Duke of Cynders <Abyssal Council>
								15207,	-- The Duke of Fathoms <Abyssal Council>
								15208,	-- The Duke of Shards <Abyssal Council>
								15220,	-- The Duke of Zephyrs <Abyssal Council>
							},
						}),
						n(15206, {	-- The Duke of Cynders <Abyssal Council>
							["cost"] = {{ "i", 20432, 1 }},	-- Signet of Beckoning: Fire
							["timeline"] = { "removed 4.0.3" },
							["groups"] = {
								applyclassicphase(PHASE_FIVE, i(21989, {	-- Cinder of Cynders
									["timeline"] = { "removed 4.0.3" },
								})),
								i(20666, {	-- Hardened Steel Warhammer
									["timeline"] = { "removed 4.0.3" },
								}),
								i(20664, {	-- Abyssal Cloth Sash
									["timeline"] = { "removed 4.0.3" },
								}),
								i(20665, {	-- Abyssal Leather Leggings
									["timeline"] = { "removed 4.0.3" },
								}),
							},
						}),
						n(15207, {	-- The Duke of Fathoms <Abyssal Council>
							["cost"] = {{ "i", 20436, 1 }},	-- Signet of Beckoning: Water
							["timeline"] = { "removed 4.0.3" },
							["groups"] = {
								i(20669, {	-- Darkstone Claymore
									["timeline"] = { "removed 4.0.3" },
								}),
								i(20667, {	-- Abyssal Leather Belt
									["timeline"] = { "removed 4.0.3" },
								}),
								i(20668, {	-- Abyssal Mail Legguards
									["timeline"] = { "removed 4.0.3" },
								}),
							},
						}),
						n(15208, {	-- The Duke of Shards <Abyssal Council>
							["cost"] = {{ "i", 20435, 1 }},	-- Signet of Beckoning: Stone
							["timeline"] = { "removed 4.0.3" },
							["groups"] = {
								i(20672, {	-- Sparkling Crystal Wand
									["timeline"] = { "removed 4.0.3" },
								}),
								i(20670, {	-- Abyssal Mail Clutch
									["timeline"] = { "removed 4.0.3" },
								}),
								i(20671, {	-- Abyssal Plate Legplates
									["timeline"] = { "removed 4.0.3" },
								}),
							},
						}),
						n(15220, {	-- The Duke of Zephyrs <Abyssal Council>
							["cost"] = {{ "i", 20433, 1 }},	-- Signet of Beckoning: Thunder
							["timeline"] = { "removed 4.0.3" },
							["groups"] = {
								i(20675, {	-- Soulrender
									["timeline"] = { "removed 4.0.3" },
								}),
								i(20674, {	-- Abyssal Cloth Pants
									["timeline"] = { "removed 4.0.3" },
								}),
								i(20673, {	-- Abyssal Plate Girdle
									["timeline"] = { "removed 4.0.3" },
								}),
							},
						}),
					},
				}),
				o(180466, {	-- Greater Wind Stone
					["description"] = "Summons one of 4 Abyssal High Council bosses. The ritual requires a Twilight Trappings set, a medallion of station, and a ring of lordship. To guarantee that a specific High Council is summoned, a Scepter of Beckoning can be used.",
					["cost"] = {
						{ "i", 20451, 1 },	-- Twilight Cultist Ring of Lordship
						{ "i", 20422, 1 },	-- Twilight Cultist Medallion of Station
						{ "i", 20408, 1 },	-- Twilight Cultist Cowl
						{ "i", 20406, 1 },	-- Twilight Cultist Mantle
						{ "i", 20407, 1 },	-- Twilight Cultist Robe
					},
					["coords"] = {
						{ 18.6, 83.5, SILITHUS },
						{ 39.6, 45.1, SILITHUS },
						{ 25.6, 34.0, SILITHUS },
					},
					["groups"] = {
						i(20515, {	-- Abyssal Scepter
							["timeline"] = { "removed 4.0.3", "deleted 7.1.5" },
							["crs"] = {
								15205,	-- Baron Kazum <Abyssal High Council>
								15204,	-- High Marshal Whirlaxis <Abyssal High Council>
								15305,	-- Lord Skwol <Abyssal High Council>
								15203,	-- Prince Skaldrenox <Abyssal High Council>
							},
						}),
						n(15205, {	-- Baron Kazum <Abyssal High Council>
							["cost"] = {{ "i", 20449, 1 }},	-- Scepter of Beckoning: Stone
							["timeline"] = { "removed 4.0.3" },
							["groups"] = {
								i(20688, {	-- Earthen Guard
									["timeline"] = { "removed 4.0.3" },
								}),
								i(20686, {	-- Abyssal Cloth Amice
									["timeline"] = { "removed 4.0.3" },
								}),
								i(20687, {	-- Abyssal Plate Vambraces
									["timeline"] = { "removed 4.0.3" },
								}),
							},
						}),
						n(15204, {	-- High Marshal Whirlaxis <Abyssal High Council>
							["cost"] = {{ "i", 20448, 1 }},	-- Scepter of Beckoning: Thunder
							["timeline"] = { "removed 4.0.3" },
							["groups"] = {
								i(20691, {	-- Windshear Cape
									["timeline"] = { "removed 4.0.3" },
								}),
								i(20690, {	-- Abyssal Cloth Wristbands
									["timeline"] = { "removed 4.0.3" },
								}),
								i(20689, {	-- Abyssal Leather Shoulders
									["timeline"] = { "removed 4.0.3" },
								}),
							},
						}),
						n(15305, {	-- Lord Skwol <Abyssal High Council>
							["cost"] = {{ "i", 20450, 1 }},	-- Scepter of Beckoning: Water
							["timeline"] = { "removed 4.0.3" },
							["groups"] = {
								i(20685, {	-- Wavefront Necklace
									["timeline"] = { "removed 4.0.3" },
								}),
								i(20684, {	-- Abyssal Mail Armguards
									["timeline"] = { "removed 4.0.3" },
								}),
								i(20683, {	-- Abyssal Plate Epaulets
									["timeline"] = { "removed 4.0.3" },
								}),
							},
						}),
						n(15203, {	-- Prince Skaldrenox <Abyssal High Council>
							["cost"] = {{ "i", 20447, 1 }},	-- Scepter of Beckoning: Fire
							["timeline"] = { "removed 4.0.3" },
							["groups"] = {
								i(20682, {	-- Elemental Focus Band
									["timeline"] = { "removed 4.0.3" },
								}),
								i(20681, {	-- Abyssal Leather Bracers
									["timeline"] = { "removed 4.0.3" },
								}),
								i(20680, {	-- Abyssal Mail Pauldrons
									["timeline"] = { "removed 4.0.3" },
								}),
							},
						}),
					},
				}),
				n(14472, {	-- Gretheer
					["coords"] = {
						{ 28.8, 42.2, SILITHUS },
						{ 39.8, 55.2, SILITHUS },
						{ 48.8, 62.6, SILITHUS },
						{ 61.8, 64.4, SILITHUS },
					},
				}),
				n(14477, {	-- Grubthor
					["coords"] = {
						{ 27.2, 82.0, SILITHUS },
						{ 36.2, 71.6, SILITHUS },
						{ 48.6, 67.2, SILITHUS },
						{ 44.8, 80.2, SILITHUS },
					},
				}),
				n(14478, {	-- Huricanian
					["coords"] = {
						{ 29.4, 24.4, SILITHUS },
						{ 29.8, 19.8, SILITHUS },
						{ 28.2, 16.0, SILITHUS },
						{ 27.0, 13.8, SILITHUS },
						{ 24.2, 13.0, SILITHUS },
						{ 21.4, 17.0, SILITHUS },
						{ 21.4, 22.6, SILITHUS },
						{ 22.2, 26.2, SILITHUS },
						{ 23.0, 28.8, SILITHUS },
						{ 26.0, 26.8, SILITHUS },
					},
				}),
				n(14476, {	-- Krellack
					["coords"] = {
						{ 59.8, 19.6, SILITHUS },
						{ 65.8, 30.0, SILITHUS },
						{ 62.8, 42.4, SILITHUS },
						{ 69.6, 41.0, SILITHUS },
					},
				}),
				n(14473, {	-- Lapress
					["coords"] = {
						{ 54.4, 83.8, SILITHUS },
						{ 55.2, 89.8, SILITHUS },
						{ 63.8, 91.6, SILITHUS },
						{ 61.6, 84.0, SILITHUS },
						{ 64.2, 83.6, SILITHUS },
						{ 64.8, 82.4, SILITHUS },
						{ 64.2, 79.4, SILITHUS },
					},
				}),
				n(14475, {	-- Rex Ashil
					["coords"] = {
						{ 47.2, 23.8, SILITHUS },
						{ 47.6, 26.6, SILITHUS },
						{ 46.0, 28.4, SILITHUS },
					},
				}),
				n(14471, {	-- Setis
					["coords"] = {
						{ 48.0, 82.6, SILITHUS },
						{ 22.2, 80.6, SILITHUS },
						{ 27.8, 86.6, SILITHUS },
						{ 22.6, 87.2, SILITHUS },
					},
				}),
				n(14454, { 	-- The Windreaver
					["description"] = "This is only available during an Elemental Invasion.",
					["coords"] = {
						{ 17.6, 27.0, SILITHUS },
						{ 26.6, 29.6, SILITHUS },
						{ 31.0, 23.6, SILITHUS },
						{ 32.2, 17.2, SILITHUS },
					},
					["timeline"] = { "removed 4.0.3" },
					["groups"] = {
						i(18676, {	-- Sash of the Windreaver
							["timeline"] = { "removed 4.0.3" },
						}),
						i(18677, {	-- Zephyr Cloak
							["timeline"] = { "removed 4.0.3" },
						}),
						i(21548, {	-- Pattern: Stormshroud Gloves
							["timeline"] = { "removed 4.0.3" },
						}),
						applyclassicphase(PHASE_THREE, i(19268)),	-- Ace of Elementals
					},
				}),
				n(14474, {	-- Zora
					["coords"] = {
						{ 20.2, 58.2, SILITHUS },
						{ 23.6, 61.8, SILITHUS },
						{ 17.6, 65.8, SILITHUS },
						{ 24.0, 71.2, SILITHUS },
					},
				}),
			}),
			n(REWARDS, {
				["description"] = "These are rewarded from multiple quests in the zone. Refer to the individual item tooltips for more information.",
				["groups"] = {
					i(20603, { 	-- Bag of Spoils
						["timeline"] = { "removed 4.0.3" },
						["groups"] = {
							i(20694, {	-- Glowing Black Orb
								["timeline"] = { "removed 4.0.3" },
							}),
							i(20693, {	-- Weighted Cloak
								["timeline"] = { "removed 4.0.3" },
							}),
							i(20692, {	-- Multicolored Band
								["timeline"] = { "removed 4.0.3" },
							}),
						},
					}),
					i(20602, { 	-- Chest of Spoils
						["timeline"] = { "removed 4.0.3" },
						["groups"] = {
							i(20721, {	-- Band of the Cultist
								["timeline"] = { "removed 4.0.3" },
							}),
							i(20722, {	-- Crystal Slugthrower
								["timeline"] = { "removed 4.0.3" },
							}),
							i(20720, {	-- Dark Whisper Blade
								["timeline"] = { "removed 4.0.3" },
							}), 
						},
					}),
					i(21528),	-- Colossal Bag of Loot
					i(20808, {	-- Combat Assignment
						i(22648, {	-- Hive'Ashi Dossier
							i(21749),	-- Combat Task Briefing I
							i(21750),	-- Combat Task Briefing II
							i(20942),	-- Combat Task Briefing III
							i(20941),	-- Combat Task Briefing XII
						}),
						i(22649, {	-- Hive'Regal Dossier
							i(21253),	-- Combat Task Briefing IX
							i(21252),	-- Combat Task Briefing VIII
							i(21255),	-- Combat Task Briefing X
							i(21256),	-- Combat Task Briefing XI
						}),
						i(22650, {	-- Hive'Zora Dossier
							i(21248),	-- Combat Task Briefing IV
							i(21249),	-- Combat Task Briefing V
							i(21250),	-- Combat Task Briefing VI
							i(21251),	-- Combat Task Briefing VII
						}),
					}),
					i(20469, {	-- Decoded True Believer Clippings
						["description"] = "This will arrive in your mailbox approximately 12-24 hours either of the quests are turned in.",
						["sourceQuests"] = {
							8324,	-- Still Believing
							8323,	-- True Believers
						},
						["cost"] = {{ "i", 20404, 10 }},	-- Encrypted Twilight Text
						["groups"] = {
							i(20547),	-- Pattern: Runed Stygian Boots
							i(20548),	-- Pattern: Runed Stygian Belt
							i(20546),	-- Pattern: Runed Stygian Leggings
							i(20554),	-- Plans: Darkrune Breastplate
							i(20553),	-- Plans: Darkrune Gauntlets
							i(20555),	-- Plans: Darkrune Helm
						},
					}),
					i(20805, {	-- Followup Logistics Assignment
						i(20807),	-- Logistics Task Briefing I
						i(20939),	-- Logistics Task Briefing II
						i(20940),	-- Logistics Task Briefing III
						i(21262),	-- Logistics Task Briefing VIII
						i(21265),	-- Logistics Task Briefing IX
						i(21514),	-- Logistics Task Briefing XI
					}),
					i(21386, {	-- Followup Logistics Assignment
						i(21378),	-- Logistics Task Briefing I
						i(21379),	-- Logistics Task Briefing II
						i(21380),	-- Logistics Task Briefing III
						i(21384),	-- Logistics Task Briefing VIII
						i(21381),	-- Logistics Task Briefing IX
						i(21514),	-- Logistics Task Briefing XI
					}),
					i(21133, {	-- Followup Tactical Assignment
						i(21245),	-- Tactical Task Briefing I
						i(20945),	-- Tactical Task Briefing II
						i(20947),	-- Tactical Task Briefing IV
						i(20948),	-- Tactical Task Briefing V
						i(21167),	-- Tactical Task Briefing VIII
						i(20943),	-- Tactical Task Briefing X
					}),
					i(21132, {	-- Logistics Assignment
						i(21257),	-- Logistics Task Briefing IV
						i(21259),	-- Logistics Task Briefing V
						i(21260),	-- Logistics Task Briefing VI
						i(21263),	-- Logistics Task Briefing VII
						i(20806),	-- Logistics Task Briefing X
					}),
					i(21266, {	-- Logistics Assignment
						i(21258),	-- Logistics Task Briefing IV
						i(21382),	-- Logistics Task Briefing V
						i(21261),	-- Logistics Task Briefing VI
						i(21264),	-- Logistics Task Briefing VII
						i(21385),	-- Logistics Task Briefing X
					}),
					i(20601, {	-- Sack of Spoils
						["timeline"] = { "removed 4.0.3" },
						["groups"] = {
							i(20695, {	-- Abyssal War Beads
								["timeline"] = { "removed 4.0.3" },
							}),
							i(20696, {	-- Crystal Spiked Maul
								["timeline"] = { "removed 4.0.3" },
							}),
							i(20697, {	-- Crystalline Threaded Cape
								["timeline"] = { "removed 4.0.3" },
							}),
							i(20698, {	-- Elemental Attuned Blade
								["timeline"] = { "removed 4.0.3" },
							}),
						},
					}),
					i(20809, {	-- Tactical Assignment
						i(21245),	-- Tactical Task Briefing I
						i(21751),	-- Tactical Task Briefing III
						i(20944),	-- Tactical Task Briefing IX
						i(21165),	-- Tactical Task Briefing VI
						i(21166),	-- Tactical Task Briefing VII
					}),
				},
			}),
			-- #if BEFORE 4.3.0
			prof(SKINNING, {
				i(20501, {	-- Heavy Silithid Carapace
					["timeline"] = { "deleted 4.3.0" },
					["crs"] = {
						11723,	-- Hive'Ashi Sandstalker
						11730,	-- Hive'Regal Ambusher
						11734,	-- Hive'Regal Hive Lord
						15323,	-- Hive'Zara Sandstalker
						11728,	-- Hive'Zora Reaver
					},
				}),
				i(20500, {	-- Light Silithid Carapace
					["timeline"] = { "deleted 4.3.0" },
					["crs"] = {
						13136,	-- Hive'Ashi Drone
						11698,	-- Hive'Ashi Stinger
						11724,	-- Hive'Ashi Swarmer
						11732,	-- Hive'Regal Spitfire
						11727,	-- Hive'Zora Wasp
					},
				}),
				i(20498, {	-- Silithid Chitin
					["timeline"] = { "deleted 4.3.0" },
				}),
			}),
			-- #endif
			n(VENDORS, {
				n(15293, {	-- Aendel Windspear
					["coord"] = { 62.6, 49.8, SILITHUS },
					["groups"] = {
						applyclassicphase(PHASE_FIVE_CATCH_UP, i(22769)),	-- Pattern: Bramblewood Belt
						applyclassicphase(PHASE_FIVE_CATCH_UP, i(22770)),	-- Pattern: Bramblewood Boots
						applyclassicphase(PHASE_FIVE_CATCH_UP, i(22771)),	-- Pattern: Bramblewood Helm
						applyclassicphase(PHASE_FOUR, i(20382)),	-- Pattern: Dreamscale Breastplate
						applyclassicphase(PHASE_FOUR, i(20509)),	-- Pattern: Sandstalker Bracers
						applyclassicphase(PHASE_FOUR, i(20511)),	-- Pattern: Sandstalker Breastplate
						applyclassicphase(PHASE_FOUR, i(20510)),	-- Pattern: Sandstalker Gauntlets
						applyclassicphase(PHASE_FOUR, i(20506)),	-- Pattern: Spitfire Bracers
						applyclassicphase(PHASE_FOUR, i(20508)),	-- Pattern: Spitfire Breastplate
						applyclassicphase(PHASE_FOUR, i(20507)),	-- Pattern: Spitfire Gauntlets
					},
				}),
				n(15174,  {	-- Calandrath <Innkeeper>
					-- #if AFTER CATA
					["coord"] = { 55.4, 36.6, SILITHUS },
					-- #else
					["coord"] = { 51.8, 39.0, SILITHUS },
					-- #endif
					-- #if AFTER 4.0.3
					["groups"] = {
						i(13496, {	-- Recipe: Greater Nature Protection Potion
							["isLimited"] = true,
						}),
					},
					-- #endif
				}),
				n(15419, {	-- Kania <Enchanting Supplies>
					["coord"] = { 52.0, 39.7, SILITHUS },
					["groups"] = {
						-- #if BEFORE CATA
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						-- #endif
						i(20732),	-- Formula: Enchant Cloak - Greater Fire Resistance
						i(20733),	-- Formula: Enchant Cloak - Greater Nature Resistance
						i(20754),	-- Formula: Lesser Mana Oil
						i(20753),	-- Formula: Lesser Wizard Oil
						i(20752),	-- Formula: Minor Mana Oil
						i(20758),	-- Formula: Minor Wizard Oil
						i(20755),	-- Formula: Wizard Oil
						i(22308),	-- Pattern: Enchanted Runecloth Bag
					},
				}),
				n(15179, {	-- Mishta <General Trade Goods Vendor>
					["coord"] = { 49.8, 36.4, SILITHUS },
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, i(21952)),	-- Design: Emerald Crown of Destruction
						applyclassicphase(PHASE_FIVE, i(22310)),	-- Pattern: Cenarion Herb Bag
						applyclassicphase(PHASE_FIVE_CATCH_UP, i(22683)),	-- Pattern: Gaea's Embrace
						applyclassicphase(PHASE_FIVE, i(22312)),	-- Pattern: Satchel of Cenarius
						applyclassicphase(PHASE_FIVE_CATCH_UP, i(22773)),	-- Pattern: Sylvan Crown
						applyclassicphase(PHASE_FIVE_CATCH_UP, i(22772)),	-- Pattern: Sylvan Shoulders
						applyclassicphase(PHASE_FIVE_CATCH_UP, i(22774)),	-- Pattern: Sylvan Vest
					},
				}),
				n(15176, {	-- Vargus <Blacksmith>
					["coord"] = { 51.2, 38.8, SILITHUS },
					["groups"] = {
						applyclassicphase(PHASE_FIVE, i(22209)),	-- Plans: Heavy Obsidian Belt
						applyclassicphase(PHASE_FIVE_CATCH_UP, i(22768)),	-- Plans: Ironvine Belt
						applyclassicphase(PHASE_FIVE_CATCH_UP, i(22766)),	-- Plans: Ironvine Breastplate
						applyclassicphase(PHASE_FIVE_CATCH_UP, i(22767)),	-- Plans: Ironvine Gloves
						applyclassicphase(PHASE_FIVE, i(22214)),	-- Plans: Light Obsidian Belt
					},
				}),
				n(12956, {	-- Zannok Hidepiercer <Leatherworking Supplies>
					["coord"] = { 81.8, 17.8, SILITHUS },
					["groups"] = {
						i(15724),	-- Pattern: Heavy Scorpid Bracers
						i(15762),	-- Pattern: Heavy Scorpid Helm
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(20461, {	-- Brann Bronzebeard's Lost Letter
					["questID"] = 8308,	-- Brann Bronzebeard's Lost Letter
					["crs"] = {
						13301,	-- Hive'Ashi Ambusher
						11722,	-- Hive'Ashi Defender
						13136,	-- Hive'Ashi Drone
						11723,	-- Hive'Ashi Sandstalker
						11698,	-- Hive'Ashi Stinger
						11724,	-- Hive'Ashi Swarmer
						11721,	-- Hive'Ashi Worker
						11730,	-- Hive'Regal Ambusher
						11731,	-- Hive'Regal Burrower
						11734,	-- Hive'Regal Hive Lord
						11733,	-- Hive'Regal Slavemaker
						11732,	-- Hive'Regal Spitfire
						11729,	-- Hive'Zora Hive Sister
						11728,	-- Hive'Zora Reaver
						11726,	-- Hive'Zora Tunneler
						11727,	-- Hive'Zora Wasp
						11725,	-- Hive'Zora Waywatcher
					},
				}),
				applyclassicphase(PHASE_FIVE, i(22226, {	-- Druidical Remains
					["crs"] = {
						11730,	-- Hive'Regal Ambusher
						11731,	-- Hive'Regal Burrower
						11734,	-- Hive'Regal Hive Lord
						11733,	-- Hive'Regal Slavemaker
						11732,	-- Hive'Regal Spitfire
					},
				})),
				i(20404, {	-- Encrypted Twilight Text
					["questID"] = 8323,	-- True Believers
					["crs"] = {
						15308,	-- Twilight Prophet <Twilight's Hammer>
						15541,	-- Twilight Marauder Morna <Twilight's Hammer>
						11880,	-- Twilight Avenger <Twilight's Hammer>
						15201,	-- Twilight Flamereaver
						11881,	-- Twilight Geolord <Twilight's Hammer>
						11804,	-- Twilight Keeper Havunth <Twilight's Hammer>
						14479,	-- Twilight Lord Everun <Twilight's Hammer>
						15542,	-- Twilight Marauder <Twilight's Hammer>
						11883,	-- Twilight Master <Twilight's Hammer>
						15213,	-- Twilight Overlord <Twilight's Hammer>
						11882,	-- Twilight Stonecaller <Twilight's Hammer>
					},
				}),
				i(20457, {	-- Hive'Ashi Silithid Brain
					["questID"] = 8310,	-- Breaking the Code
					["crs"] = {
						13301,	-- Hive'Ashi Ambusher
						11722,	-- Hive'Ashi Defender
						13136,	-- Hive'Ashi Drone
						11723,	-- Hive'Ashi Sandstalker
						11698,	-- Hive'Ashi Stinger
						11724,	-- Hive'Ashi Swarmer
						11721,	-- Hive'Ashi Worker
					},
				}),
				i(20459, {	-- Hive'Regal Silithid Brain
					["questID"] = 8310,	-- Breaking the Code
					["crs"] = {
						11730,	-- Hive'Regal Ambusher
						11731,	-- Hive'Regal Burrower
						11734,	-- Hive'Regal Hive Lord
						11733,	-- Hive'Regal Slavemaker
						11732,	-- Hive'Regal Spitfire
					},
				}),
				i(20458, {	-- Hive'Zora Silithid Brain
					["questID"] = 8310,	-- Breaking the Code
					["crs"] = {
						11729,	-- Hive'Zora Hive Sister
						11728,	-- Hive'Zora Reaver
						11726,	-- Hive'Zora Tunneler
						11727,	-- Hive'Zora Wasp
						11725,	-- Hive'Zora Waywatcher
					},
				}),
				i(20377, {	-- Rock Stalker Fang
					["questID"] = 8278,	-- Noggle's Last Hope
					["cr"] = 11739,	-- Rock Stalker
				}),
				i(20376, {	-- Sand Skitterer Fang
					["questID"] = 8277,	-- Deadly Desert Venom
					["cr"] = 11738,	-- Sand Skitterer
				}),
				i(22381, {	-- Silithus Venom Sample
					["crs"] = {
						11739,	-- Rock Stalker
						11738,	-- Sand Skitterer
						11737,	-- Stonelash Flayer
						11736,	-- Stonelash Pincer
						11735,	-- Stonelash Scorpid
					},
				}),
				i(20375, {	-- Stonelash Flayer Stinger
					["questID"] = 8278,	-- Noggle's Last Hope
					["cr"] = 11737,	-- Stonelash Flayer
				}),
				i(20374, {	-- Stonelash Pincer Stinger
					["questID"] = 8278,	-- Noggle's Last Hope
					["cr"] = 11736,	-- Stonelash Pincer
				}),
				i(20373, {	-- Stonelash Scorpid Stinger
					["questID"] = 8277,	-- Deadly Desert Venom
					["cr"] = 11735,	-- Stonelash Scorpid
				}),
				
				-- Twilight Cultist Drops
				i(20408, {	-- Twilight Cultist Cowl
					["timeline"] = { "removed 7.1.5" },
				}),
				i(20406, {	-- Twilight Cultist Mantle
					["timeline"] = { "removed 7.1.5" },
				}),
				i(20407, {	-- Twilight Cultist Robe
					["timeline"] = { "removed 7.1.5" },
				}),
			}),
		},
	}),
}));