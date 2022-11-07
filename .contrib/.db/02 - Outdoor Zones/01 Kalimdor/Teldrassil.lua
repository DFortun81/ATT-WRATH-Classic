---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(KALIMDOR, {
	m(TELDRASSIL, {
		-- #if AFTER CATA
		["lore"] = "Teldrassil is the starter zone for the night elves. Players learn how times have changed since Malfurion Stormrage has returned to Darnassus and how Fandrel Staghelm was corrupted. It is a lush spiritual zone, set high on an island that is also a great tree. It is home to the elven capital of Darnassus.",
		-- #else
		["lore"] = "In the past few years, the night elves have moved their capital to an island off northwest Kalimdor. Here, the Circle of the Ancients and the wise druids pooled their power to create a great tree akin to the World Tree, but on a smaller scale.\n\nThey called this tree Teldrassil, meaning “Crown of the Earth,” and built their city of Darnassus atop it. The island takes the name of the tree as well, and a twilite forest now covers it.",
		-- #endif
		-- #if AFTER WRATH
		["icon"] = "Interface\\Icons\\achievement_zone_darnassus",
		-- #endif
		["maps"] = {
			59,	-- Fel Rock
			60,	-- Ban'ethil Barrow Den
			61,	-- Ban'ethil Barrow Den
		},
		["groups"] = {
			m(SHADOWGLEN, {
				["lore"] = "Shadowglen is the starting area for night elves in the northeast part of Teldrassil, just north of Starbreeze Village. A small twilight field, bathed in a quiet dusk, the area is dominated by the great tree Aldrassil, which lies at the clearing's center. It has class trainers for all night elf classes. Another notable location is Shadowthread Cave, which lies in the region's extreme northwest. The area is ringed by mountains; the only gap is to the south, where the path headed to Dolanaar parts the mountain range.",
				-- #if AFTER WRATH
				["icon"] = "Interface\\Icons\\Achievement_Character_Nightelf_Female",
				-- #else
				["icon"] = asset("Achievement_Character_Nightelf_Female"),
				-- #endif
				["maps"] = { 58 },	-- Shadowthread Cave
				["groups"] = {
					-- #if AFTER MOP
					petbattle(filter(BATTLE_PETS, {
						p(507, {	-- Crested Owl
							["crs"] = { 62242 },	-- Crested Owl
						}),
						p(447, {	-- Fawn
							["crs"] = { 61165 },	-- Fawn
						}),
					})),
					-- #endif
					n(QUESTS, {
						
					}),
				},
			}),
			n(ACHIEVEMENTS, {
				explorationAch(842, {	-- Explore Teldrassil
					-- #if BEFORE WRATH
					["description"] = "Explore Teldrassil, revealing the covered areas of the world map.",
					-- #endif
				}),
			}),
			-- #if AFTER MOP
			petbattle(filter(BATTLE_PETS, {
				p(507, {	-- Crested Owl
					["crs"] = { 62242 },	-- Crested Owl
				}),
				p(479, {	-- Elfin Rabbit
					["crs"] = { 62178 },	-- Elfin Rabbit
				}),
				p(447, {	-- Fawn
					["crs"] = { 61165 },	-- Fawn
				}),
				p(478, {	-- Forest Moth
					["crs"] = { 62177 },	-- Forest Moth
				}),
				p(452, {	-- Red-Tailed Chipmunk
					["crs"] = { 61757 },	-- Red-Tailed Chipmunk
				}),
				p(419, {	-- Small Frog
					["crs"] = { 61071 },	-- Small Frog
				}),
			})),
			-- #endif
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["128:100:494:548"] = 702,	-- Rut'theran Village
				["128:190:335:313"] = 478,	-- Pools of Arlithrien
				["160:210:382:281"] = 736,	-- Ban'ethil Hollow
				["170:240:272:127"] = 264,	-- The Oracle Glade
				["180:256:377:93"] = 266,	-- Wellspring Lake
				["185:128:368:443"] = 261,	-- Gnarlpine Hold
				["190:128:462:323"] = 186,	-- Dolanaar
				["200:200:561:292"] = 260,	-- Starbreeze Village
				["225:225:491:153"] = 188,	-- Shadowglen
				["256:185:436:380"] = 259,	-- Lake Al'Ameth
				["315:256:101:247"] = 1657,	-- Darnassus
				--[[
				[256] = 4,                               -- Aldrassil
				[257] = 5,                               -- Shadowthread Cave
				[258] = 6,                               -- Fel Rock
				[262] = 10,                              -- Ban'ethil Barrow Den
				[263] = 11,                              -- The Cleft
				[265] = 13,                              -- Wellspring River
				[2322] = 24,                             -- The Veiled Sea
				]]
			})),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(456, {	-- Dolanaar, Teldrassil
					["cr"] = 40553,	-- Fidelio <Hippogryph Master>
					["coord"] = { 55.4, 50.4, TELDRASSIL },
					["timeline"] = { "added 4.0.3.13277" },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(27, {	-- Rut'theran Village, Teldrassil
					["cr"] = 3838,	-- Vesprystus <Hippogryph Master>
					-- #if AFTER CATA
					["coord"] = { 55.4, 88.4, TELDRASSIL },
					-- #else
					["coord"] = { 58.4, 94.0, TELDRASSIL },
					-- #endif
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(3519, {	-- A Friend in Need
					["qg"] = 8584,	-- Iverron
					["sourceQuest"] = 4495,	-- A Good Friend
					["coord"] = { 54.6, 33.0, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 2,
				}),
				q(4495, {	-- A Good Friend
					["qg"] = 8583,	-- Dirania Silvershine
					["coord"] = { 60.8, 42, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 2,
				}),
				q(475, {	-- A Troubling Breeze
					["qg"] = 2078,	-- Athridas Bearmantle
					["coord"] = { 56, 57.4, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 4,
				}),
				q(921, {	-- Crown of the Earth (1/6)
					["qg"] = 3514,	-- Tenaron Stormgrip
					["sourceQuest"] = 920,	-- Tenaron's Summons
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5184, 1 },	-- Filled Crystal Phial
					},
					["groups"] = {
						i(5185, {	-- Crystal Phial
							["coord"] = { 59.94, 33.07, TELDRASSIL },
							["groups"] = {
								{
									["itemID"] = 5184,	-- Filled Crystal Phial
									["questID"] = 921,	-- Crown of the Earth (1/6)
								},
							},
						}),
					},
				}),
				q(928, {	-- Crown of the Earth (2/6)
					["qg"] = 3514,	-- Tenaron Stormgrip
					["sourceQuest"] = 921,	-- Crown of the Earth (1/6)
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5186, 1 },	-- Partially Filled Vessel
					},
				}),
				q(929, {	-- Crown of the Earth (3/6)
					["qg"] = 3515,	-- Corithras Moonrage
					["sourceQuest"] = 928,	-- Crown of the Earth (2/6)
					["coord"] = { 56.2, 61.7, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5639, 1 },	-- Filled Jade Phial
					},
					["groups"] = {
						i(5619, {	-- Jade Phial
							["coord"] = { 63, 58, TELDRASSIL },
							["groups"] = {
								{
									["itemID"] = 5639,	-- Filled Jade Phial
									["questID"] = 929,	-- Crown of the Earth (3/6)
								},
							},
						}),
					},
				}),
				q(933, {	-- Crown of the Earth (4/6)
					["qg"] = 3515,	-- Corithras Moonrage
					["sourceQuest"] = 929,	-- Crown of the Earth (3/6)
					["coord"] = { 56.2, 61.7, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5645, 1 },	-- Filled Tourmaline Phial
					},
					["groups"] = {
						i(5621, {	-- Tourmaline Phial
							["coord"] = { 42, 67, TELDRASSIL },
							["groups"] = {
								{
									["itemID"] = 5645,	-- Filled Tourmaline Phial
									["questID"] = 933,	-- Crown of the Earth (4/6)
								},
							},
						}),
					},
				}),
				q(7383, {	-- Crown of the Earth (5/6)
					["qg"] = 3515,	-- Corithras Moonrage
					["sourceQuest"] = 933,	-- Crown of the Earth (4/6)
					["altQuests"] = { 934 },	-- Crown of the Earth (?/?) did the entire chain and never got this one yet it is marked as completed at the end
					["coord"] = { 56.2, 61.7, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 18151, 1 },	-- Filled Amethyst Phial
					},
					["groups"] = {
						i(18152, {	-- Amethyst Phial
							["coord"] = { 38, 34, TELDRASSIL },
							["groups"] = {
								{
									["itemID"] = 18151,	-- Filled Amethyst Phial
									["questID"] = 7383,	-- Crown of the Earth (5/6)
									["altQuests"] = { 934 },	-- Crown of the Earth (?/?)
								},
							},
						}),
					},
				}),
				q(935, {	-- Crown of the Earth (6/6)
					["qg"] = 3515,	-- Corithras Moonrage
					["sourceQuest"] = 7383,	-- Crown of the Earth (5/6)
					["coord"] = { 56.2, 61.7, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5188, 1 },	-- Filled Vessel
					},
					["groups"] = {
						i(5596),	-- Ashwood Bow
						i(5595),	-- Thicket Hammer
					},
				}),
				q(997, {	-- Denalan's Earth
					["qg"] = 2083,	-- Syral Bladeleaf
					["coord"] = { 56, 57.8, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5391, 1 },	-- Rare Earth
					},
					["lvl"] = 4,
				}),
				q(2159, {	-- Dolanaar Delivery
					["qg"] = 6780,	-- Porthannius
					["coord"] = { 61.2, 47.6, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 7627, 1 },	-- Dolanaar Delivery
					},
					["groups"] = {
						i(2070),	-- Darnassian Bleu
						i(159),	-- Refreshing Spring Water
					},
				}),
				q(2561, {	-- Druid of the Claw
					["qg"] = 7317,	-- Oben Rageclaw
					["sourceQuest"] = 2541,	-- The Sleeping Druid
					["coord"] = { 45, 61.4, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 3,
					["groups"] = {
						objective(1, {	-- Release Oben Rageclaw's spirit
							["qg"] = 7318,	-- Rageclaw
							["coord"] = { 45.6, 59.6, TELDRASSIL },
							["cost"] = {
								{ "i", 8149, 1 },	-- Voodoo Charm
							},
						}),
						i(9598),	-- Sleeping Robes
						i(18957),	-- Brushwood Blade
					},
				}),
				q(1684, {	-- Elanaria
					["qgs"] = {
						3657,	-- Sentinel Elissa Starbreeze [Darkshore]
						3598,	-- Kyra Windblade <Warrior Trainer> [Teldrassil]
						2151,	-- Moon Priestess Amara [Teldrassil]
					},
					["altQuests"] = {
						1638,	-- A Warrior's Training
						1679,	-- Muren Stormpike
						1678,	-- Vejrek
						-- #if AFTER TBC
						9582,	-- Strength of One
						-- #endif
					},
					["coords"] = {
						{ 39.0, 43.4, DARKSHORE },
						{ 56.2, 59.2, TELDRASSIL },
					},
					["maps"] = { DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
				}),
				q(1581, {	-- Elixirs for the Bladeleafs
					["qg"] = 2083,	-- Syral Bladeleaf
					["coord"] = { 55.8, 50.4, TELDRASSIL },
					["description"] = "Available at Skill Level 20.",
					["requireSkill"] = ALCHEMY,
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2454, 6 },	-- Elixir of Lion's Strength
						{ "i", 5997, 2 },	-- Elixir of Minor Defense
					},
					["lvl"] = 4,
				}),
				q(3118, {	-- Encrypted Sigil
					["qg"] = 2079,	-- Conservator Ilthalaine
					["sourceQuest"] = 457,	-- The Balance of Nature (2/2)
					["coord"] = { 58.6, 44.2, TELDRASSIL },
					["races"] = { NIGHTELF },
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 9551, 1 },	-- Encrypted Sigil
					},
				}),
				q(2259, {	-- Erion Shadewhisper
					["qg"] = 3599,	-- Jannok Breezesong
					["sourceQuest"] = 2241,	-- The Apple Falls
					["coord"] = { 56.4, 60.1, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["isBreadcrumb"] = true,
					["lvl"] = 16,
				}),
				q(3117, {	-- Etched Sigil
					["qg"] = 2079,	-- Conservator Ilthalaine
					["sourceQuest"] = 457,	-- The Balance of Nature (2/2)
					["coord"] = { 58.6, 44.2, TELDRASSIL },
					["races"] = { NIGHTELF },
					["classes"] = { HUNTER },
					["cost"] = {
						{ "i", 9567, 1 },	-- Etched Sigil
					},
				}),
				q(3661, {	-- Favored of Elune?
					["qg"] = 7916,	-- Erelas Ambersky
					["coord"] = { 55.5, 92.1, TELDRASSIL },
					["maps"] = { THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
					["groups"] = {
						objective(1, {	-- 0/15 Wildkin Feather
							["provider"] = { "i", 10819 },	-- Wildkin Feather
							["description"] = "Scattered on the ground around the Hinterlands.",
						}),
					},
				}),
				q(2940, {	-- Feralas: A History
					["provider"] = { "o", 142958 },	-- Feralas: A History
					["sourceQuest"] = 2939,	-- In Search of Knowledge
					["coord"] = { 55.2, 91.4, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
				}),
				q(2459, {	-- Ferocitas the Dream Eater
					["qg"] = 3567,	-- Tallonkai Swiftroot
					["sourceQuest"] = 2438,	-- The Emerald Dreamcatcher
					["coord"] = { 55.4, 56.8, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 8050, 1 },	-- Tallonkai's Jewel
					},
					["groups"] = {
						i(8049, {	-- Gnarlpine Necklace
							["cr"] = 7234,	-- Ferocitas the Dream Eater
							["coord"] = { 69.2, 53.4, TELDRASSIL },
							["groups"] = {
								{
									["itemID"] = 8050,	-- Tallonkai's Jewel
									["questID"] = 2459,	-- Ferocitas the Dream Eater
								},
							},
						}),
					},
				}),
				q(979, {	-- Find Ranshalla
					["qg"] = 7916,	-- Erelas Ambersky
					["sourceQuest"] = 978,	-- Moontouched Wildkin
					["coord"] = { 55.5, 92.1, TELDRASSIL },
					["maps"] = { WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 52,
				}),
				-- #if BEFORE CATA
				q(6342, {	-- Flight to Auberdine
					["qg"] = 3838,	-- Vesprystus
					["sourceQuest"] = 6341,	-- The Bounty of Teldrassil
					["coord"] = { 58.4, 94, TELDRASSIL },
					["races"] = { NIGHTELF },
					["cost"] = {
						{ "i", 16262, 1 },	-- Nessa's Collection
					},
					["lvl"] = 10,
				}),
				-- #endif
				q(5621, {	-- Garments of the Moon
					["qg"] = 3600,	-- Laurna Morninglight <Priest Trainer>
					["sourceQuest"] = 5622,	-- In Favor of Elune
					["coord"] = { 55.6, 56.8, TELDRASSIL },
					["races"] = { NIGHTELF },
					["classes"] = { PRIEST },
					["lvl"] = 5,
					["groups"] = {
						i(16604),	-- Moon Robes of Elune
					},
				}),
				q(476, {	-- Gnarlpine Corruption
					["qg"] = 2107,	-- Gaerolas Talvethren
					["sourceQuest"] = 475,	-- A Troubling Breeze
					["coord"] = { 66.2, 58.6, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 4,
				}),
				q(3119, {	-- Hallowed Sigil
					["qg"] = 2079,	-- Conservator Ilthalaine
					["sourceQuest"] = 457,	-- The Balance of Nature (2/2)
					["coord"] = { 58.6, 44.2, TELDRASSIL },
					["races"] = { NIGHTELF },
					["classes"] = { PRIEST },
					["cost"] = {
						{ "i", 9557, 1 },	-- Hallowed Sigil
					},
				}),
				q(5622, {	-- In Favor of Elune
					["qg"] = 3595,	-- Shanda <Priest Trainer>
					["coord"] = { 59.2, 40.6, TELDRASSIL },
					["races"] = { NIGHTELF },
					["classes"] = { PRIEST },
					["lvl"] = 5,
				}),
				q(3521, {	-- Iverron's Antidote
					["qg"] = 8583,	-- Dirania Silvershine
					["sourceQuest"] = 3519,	-- A Friend in Need
					["coord"] = { 60.8, 42, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 2,
					["groups"] = {
						objective(1, {	-- 0/7 Hyacinth Mushroom
							["provider"] = { "i", 10639 },	-- Hyacinth Mushroom
							["crs"] = {
								1988,	-- Grell
								1989,	-- Grellkin
							},
						}),
						objective(2, {	-- 0/4 Moonpetal Lily
							["providers"] = {
								{ "i", 10641 },	-- Moonpetal Lily
								{ "o", 152095 },	-- Moonpetal Lily
							},
						}),
						objective(3, {	-- 0/1 Webwood Ichor
							["provider"] = { "i", 10640 },	-- Webwood Ichor
							["cr"] = 1986,	-- Webwood Spider
						}),
					},
				}),
				q(3522, {	-- Iverron's Antidote
					["qg"] = 8583,	-- Dirania Silvershine
					["sourceQuest"] = 3522,	-- Iverron's Antidote
					["coord"] = { 60.8, 42, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 10642, 1 },	-- Iverron's Antidote
					},
					["lvl"] = 2,
					["groups"] = {
						i(10655),	-- Sedgeweed Britches
						i(10656),	-- Barkmail Vest
					},
				}),
				q(938, {	-- Mist
					["qg"] = 3568,	-- Mist
					["coord"] = { 31.4, 31.6, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
					["groups"] = {
						i(5590),	-- Cord Bracers
						i(5593),	-- Crag Buckler
						i(5618),	-- Scout's Cloak
					},
				}),
				q(978, {	-- Moontouched Wildkin
					["qg"] = 7916,	-- Erelas Ambersky
					["sourceQuest"] = 3661,	-- Favored of Elune?
					["coord"] = { 55.5, 92.1, TELDRASSIL },
					["maps"] = { WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12383, 10 },	-- Moontouched Feather
					},
					["lvl"] = 52,
				}),
				q(2499, {	-- Oakenscowl
					["qg"] = 2080,	-- Denalan
					["sourceQuest"] = 2498,	-- Return to Denalan
					["coord"] = { 60.8, 68.4, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 8136, 1 },	-- Gargantuan Tumor
					},
					["lvl"] = 4,
					["groups"] = {
						{
							["itemID"] = 8136,	-- Gargantuan Tumor
							["questID"] = 2499,	-- Oakenscowl
							["cr"] = 2166,	-- Oakenscowl
							["coord"] = { 53.6, 75.0, TELDRASSIL },
						},
						i(5458),	-- Dirtwood Belt
						i(5589),	-- Moss-covered Gauntlets
					},
				}),
				q(941, {	-- Planting the Heart
					["qg"] = 2080,	-- Denalan
					["sourceQuest"] = 927,	-- The Moss-twined Heart
					["coord"] = { 60.8, 68.4, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5217, 1 },	-- Tainted Heart
					},
					["lvl"] = 9,
					["groups"] = {
						i(5218),	-- Cleansed Timberling Heart
					},
				}),
				q(4161, {	-- Recipe of the Kaldorei
					["qg"] = 6286,	-- Zarrin
					["coord"] = { 57, 61.2, TELDRASSIL },
					["timeline"] = { "removed 4.0.3.2000" },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["cost"] = { { "i", 5465, 7 } },	-- Small Spider Leg
					["groups"] = {
						i(5482, {	-- Recipe: Kaldorei Spider Kabob
							["timeline"] = { "removed 4.0.3.2000" },
						}),
					},
				}),
				q(922, {	-- Rellian Greenspyre
					["providers"] = {
						{ "n", 2080 },	-- Denalan
						{ "i", 5168 },	-- Timberling Seed
					},
					["sourceQuest"] = 918,	-- Timberling Seeds
					["coord"] = { 60.8, 68.4, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 4,
				}),
				q(2498, {	-- Return to Denalan
					["qg"] = 3517,	-- Rellian Greenspyre
					["sourceQuest"] = 923,	-- Tumors
					["coord"] = { 38.4, 21.6, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 4,
				}),
				q(2943, {	-- Return to Troyas
					["qg"] = 7907,	-- Daryn Lightwind
					["sourceQuest"] = 2944,	-- The Super Snapper FX
					["coord"] = { 55.4, 92.2, TELDRASSIL },
					["maps"] = { FERALAS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 9331, 1 },	-- Feralas: A History
					},
					["lvl"] = 42,
				}),
				q(489, {	-- Seek Redemption!
					["qg"] = 2083,	-- Syral Bladeleaf
					["sourceQuest"] = 488,	-- Zenn's Bidding
					["coord"] = { 56, 59.4, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 4,
					["groups"] = {
						objective(1, {	-- 0/3 Fel Cone
							["providers"] = {
								{ "i", 3418 },	-- Fel Cone
								{ "o", 1673 },	-- Fel Cone
							},
						}),
					},
				}),
				q(3116, {	-- Simple Sigil
					["qg"] = 2079,	-- Conservator Ilthalaine
					["sourceQuest"] = 457,	-- The Balance of Nature (2/2)
					["coord"] = { 58.6, 44.2, TELDRASSIL },
					["races"] = { NIGHTELF },
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 9545, 1 },	-- Simple Sigil
					},
				}),
				q(5250, {	-- Starfall
					["qg"] = 7907,	-- Daryn Lightwind
					["coord"] = { 55.4, 92.2, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 53,
				}),
				q(6063, {	-- Taming the Beast
					["qg"] = 3601,	-- Dazalar <Hunter Trainer>
					["sourceQuests"] = {
						6071,	-- The Hunter's Path
						6072,	-- The Hunter's Path
						6073,	-- The Hunter's Path
						6721,	-- The Hunter's Path
						6722,	-- The Hunter's Path
					},
					["coord"] = { 56.6, 59.6, TELDRASSIL },
					["races"] = { NIGHTELF },
					["classes"] = { HUNTER },
					["lvl"] = 10,
				}),
				q(6101, {	-- Taming the Beast
					["qg"] = 3601,	-- Dazalar <Hunter Trainer>
					["sourceQuest"] = 6063,	-- Taming the Beast
					["coord"] = { 56.6, 59.6, TELDRASSIL },
					["races"] = { NIGHTELF },
					["classes"] = { HUNTER },
					["lvl"] = 10,
				}),
				q(6102, {	-- Taming the Beast
					["qg"] = 3601,	-- Dazalar <Hunter Trainer>
					["sourceQuest"] = 6101,	-- Taming the Beast
					["coord"] = { 56.6, 59.6, TELDRASSIL },
					["races"] = { NIGHTELF },
					["classes"] = { HUNTER },
					["lvl"] = 10,
					["groups"] = {
						recipe(883),	-- Call Pet
						recipe(2641),	-- Dismiss Pet
						recipe(1515),	-- Tame Beast
					},
				}),
				q(940, {	-- Teldrassil
					["qg"] = 3519,	-- Sentinel Arynia Cloudsbreak
					["sourceQuest"] = 937,	-- The Enchanted Glade
					["coord"] = { 38.2, 34.4, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5219, 1 },	-- Inscribed Bark
					},
					["lvl"] = 6,
				}),
				q(920, {	-- Tenaron's Summons
					["qg"] = 2082,	-- Gilshalan Windwalker
					["sourceQuest"] = 917,	-- Webwood Egg
					["coord"] = { 57.8, 41.6, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
				}),
				q(2241, {	-- The Apple Falls
					["qg"] = 3599,	-- Jannok Breezesong
					["altQuests"] = {
						2218,	-- Road to Salvation
						2205,	-- Seek out SI: 7
					},
					["coord"] = { 56.4, 60.1, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 7735, 1 },	-- Jannok's Rose
					},
					["lvl"] = 10,
				}),
				q(456, {	-- The Balance of Nature (1/2)
					["qg"] = 2079,	-- Conservator Ilthalaine
					["coord"] = { 58.6, 44.2, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5394),	-- Archery Training Gloves
						i(11187),	-- Stemleaf Bracers
					},
				}),
				q(457, {	-- The Balance of Nature (2/2)
					["qg"] = 2079,	-- Conservator Ilthalaine
					["sourceQuest"] = 456,	-- The Balance of Nature (1/2)
					["coord"] = { 58.6, 44.2, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5405),	-- Draped Cloak
						i(6058),	-- Blackened Leather Belt
					},
				}),
				q(6341, {	-- The Bounty of Teldrassil
					["qg"] = 10118,	-- Nessa Shadowsong
					["sourceQuest"] = 6344,	-- Nessa Shadowsong
					["coord"] = { 56.2, 92.4, TELDRASSIL },
					["races"] = { NIGHTELF },
					["cost"] = {
						{ "i", 16262, 1 },	-- Nessa's Collection
					},
					["lvl"] = 10,
				}),
				q(2941, {	-- The Borrower
					["qg"] = 7907,	-- Daryn Lightwind
					["sourceQuest"] = 2940,	-- Feralas: A History
					["coord"] = { 55.4, 92.2, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 9329, 1 },	-- A Short Note
					},
					["lvl"] = 42,
				}),
				q(2438, {	-- The Emerald Dreamcatcher
					["qg"] = 3567,	-- Tallonkai Swiftroot
					["coord"] = { 55.4, 56.8, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 8048, 1 },	-- Emerald Dreamcatcher
					},
					["groups"] = {
						{
							["itemID"] = 8048,	-- Emerald Dreamcatcher
							["questID"] = 2438,	-- The Emerald Dreamcatcher
							["coord"] = { 68.0, 59.6, TELDRASSIL },
						},
					},
				}),
				q(937, {	-- The Enchanted Glade
					["qg"] = 3519,	-- Sentinel Arynia Cloudsbreak
					["coord"] = { 38.2, 34.4, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 6,
					["groups"] = {
						objective(1, {	-- 0/6 Bloodfeather Belt
							["provider"] = { "i", 5204 },	-- Bloodfeather Belt
							["crs"] = {
								2019,	-- Bloodfeather Fury
								2015,	-- Bloodfeather Harpy
								2021,	-- Bloodfeather Matriarch
								2017,	-- Bloodfeather Rogue
								2018,	-- Bloodfeather Sorceress
								2020,	-- Bloodfeather Wind Witch
								14431,	-- Fury Shelda
							},
						}),
						i(5591),	-- Rain-spotted Cape
						i(54872, {	-- Shackled Girdle
							["timeline"] = { "added 4.0.3.13287" },
						}),
						i(5592, {	-- Shackled Girdle
							-- #if ANYCLASSIC
							["description"] = "This gets completely removed. To be safe, keep this in your bank forever on a leather user.",
							-- #endif
							["timeline"] = { "removed 4.0.3" },
						}),
						i(131229, {	-- Shackled Cuffs
							["timeline"] = { "added 7.0.3.22248" },
						}),
					},
				}),
				q(930, {	-- The Glowing Fruit
					["provider"] = { "o", 6751 },	-- Strange Fruited Plant
					["coord"] = { 42.6, 76.1, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5189, 1 },	-- Glowing Fruit
					},
					["lvl"] = 4,
				}),
				q(6071, {	-- The Hunter's Path
					["qg"] = 4146,	-- Jocaste <Hunter Trainer>
					["coord"] = { 40.2, 8.8, DARNASSUS },
					["races"] = { NIGHTELF },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(6072, {	-- The Hunter's Path
					["qg"] = 3596,	-- Ayanna Everstride <Hunter Trainer>
					["coord"] = { 58.66, 40.45, TELDRASSIL },
					["races"] = { NIGHTELF },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(6073, {	-- The Hunter's Path
					["qg"] = 4205,	-- Dorion <Hunter Trainer>
					["coord"] = { 42.2, 7.6, DARNASSUS },
					["races"] = { NIGHTELF },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(6721, {	-- The Hunter's Path
					["qg"] = 5117,	-- Regnus Thundergranite <Hunter Trainer>
					["coord"] = { 69.8, 83.6, IRONFORGE },
					["races"] = { NIGHTELF },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(6722, {	-- The Hunter's Path
					["qg"] = 1231,	-- Grif Wildheart <Hunter Trainer>
					["coord"] = { 45.8, 53, DUN_MOROGH },
					["races"] = { NIGHTELF },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(927, {	-- The Moss-twined Heart
					["provider"] = { "i", 5179 },	-- Moss-twined Heart
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 5,
				}),
				q(483, {	-- The Relics of Wakening
					["qg"] = 2078,	-- Athridas Bearmantle
					["sourceQuest"] = 476,	-- Gnarlpine Corruption
					["coord"] = { 56, 57.4, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3406, 1 },	-- Black Feather Quill
						{ "i", 3405, 1 },	-- Raven Claw Talisman
						{ "i", 3408, 1 },	-- Rune of Nesting
						{ "i", 3407, 1 },	-- Sapphire of Sky
					},
					["lvl"] = 4,
					["groups"] = {
						{
							["itemID"] = 3406,	-- Black Feather Quill
							["questID"] = 483,	-- The Relics of Wakening
							["coord"] = { 43.8, 61.2, TELDRASSIL },
						},
						{
							["itemID"] = 3405,	-- Raven Claw Talisman
							["questID"] = 483,	-- The Relics of Wakening
							["coord"] = { 45.7, 57.5, TELDRASSIL },
						},
						{
							["itemID"] = 3408,	-- Rune of Nesting
							["questID"] = 483,	-- The Relics of Wakening
							["coord"] = { 44.5, 60.6, TELDRASSIL },
						},
						{
							["itemID"] = 3407,	-- Sapphire of Sky
							["questID"] = 483,	-- The Relics of Wakening
							["coord"] = { 44.6, 62.5, TELDRASSIL },
						},
						i(9599),	-- Barkmail Leggings
						i(9603),	-- Gritroot Staff
					},
				}),
				q(487, {	-- The Road to Darnassus
					["qg"] = 2151,	-- Moon Priestess Amara
					["coord"] = { 55.6, 58.4, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 5,
				}),
				q(931, {	-- The Shimmering Frond
					["provider"] = { "o", 6752 },	-- Strange Fronded Plant
					["coord"] = { 34.7, 28.8, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5190, 1 },	-- Shimmering Frond
					},
					["lvl"] = 4,
				}),
				q(2541, {	-- The Sleeping Druid
					["qg"] = 7317,	-- Oben Rageclaw
					["coord"] = { 45, 61.4, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 3,
					["groups"] = {
						objective(1, {	-- Shaman Voodoo Charm
							["provider"] = { "i", 8363 },	-- Shaman Voodoo Charm
							["cr"] = 2009,	-- Gnarlpine Shaman
						}),
					},
				}),
				q(2399, {	-- The Sprouted Fronds
					["provider"] = { "o", 7510 },	-- Sprouted Frond
					["sourceQuest"] = 931,	-- The Shimmering Frond
					["coord"] = { 60.8, 68.5, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 4,
					["groups"] = {
						i(5205),	-- Sprouted Frond
					},
				}),
				q(458, {	-- The Woodland Protector (1/2)
					["qg"] = 2077,	-- Melithar Staghelm
					["coord"] = { 59.8, 42.4, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
				}),
				q(459, {	-- The Woodland Protector (2/2)
					["qg"] = 1992,	-- Tarindrella
					["sourceQuest"] = 458,	-- The Woodland Protector (1/2)
					["coord"] = { 57.8, 45, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Fel Moss
							["provider"] = { "i", 3297 },	-- Fel Moss
							["crs"] = {
								1988,	-- Grell
								1989,	-- Grellkin
							},
						}),
						i(5398),	-- Canopy Leggings
						i(5399),	-- Tracking Boots
						i(11190),	-- Viny Gloves
						i(961),	-- Healing Herb
					},
				}),
				q(918, {	-- Timberling Seeds
					["qg"] = 2080,	-- Denalan
					["sourceQuest"] = 997,	-- Denalan's Earth
					["coord"] = { 60.8, 68.4, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 4,
					["groups"] = {
						objective(1, {	-- 0/8 Timberling Seed
							["provider"] = { "i", 5168 },	-- Timberling Seed
							["crs"] = {
								2030,	-- Elder Timberling
								2166,	-- Oakenscowl
								2022,	-- Timberling
								2025,	-- Timberling Bark Ripper
								2027,	-- Timberling Trampler
							},
						}),
						i(4604),	-- Forest Mushroom Cap
					},
				}),
				q(919, {	-- Timberling Sprouts
					["qg"] = 2080,	-- Denalan
					["sourceQuest"] = 997,	-- Denalan's Earth
					["coord"] = { 60.8, 68.4, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5169, 12 },	-- Timberling Sprout
					},
					["lvl"] = 4,
					["groups"] = {
						i(5606),	-- Gardening Gloves
						i(6061),	-- Graystone Bracers
					},
				}),
				q(923, {	-- Tumors
					["qg"] = 3517,	-- Rellian Greenspyre
					["sourceQuest"] = 922,	-- Rellian Greenspyre
					["coord"] = { 38.2, 21.6, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 4,
					["groups"] = {
						objective(1, {	-- 0/5 Mossy Tumor
							["provider"] = { "i", 5170 },	-- Mossy Tumor
							["crs"] = {
								2030,	-- Elder Timberling
								2029,	-- Timberling Mire Beast
								2027,	-- Timberling Trampler
							},
						}),
						i(5605),	-- Pruning Knife
					},
				}),
				q(6103, {	-- Training the Beast
					["qg"] = 3601,	-- Dazalar <Hunter Trainer>
					["sourceQuest"] = 6102,	-- Taming the Beast
					["coord"] = { 56.6, 59.6, TELDRASSIL },
					["races"] = { NIGHTELF },
					["classes"] = { HUNTER },
					["lvl"] = 10,
					["groups"] = {
						recipe(6991),		-- Feed Pet
						recipe(982),		-- Revive Pet
					},
				}),
				q(932, {	-- Twisted Hatred
					["qg"] = 3567,	-- Tallonkai Swiftroot
					["coord"] = { 55.4, 56.8, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5221, 1 },	-- Melenas' Head
					},
					["lvl"] = 4,
					["groups"] = {
						{
							["itemID"] = 5221,	-- Melenas' Head
							["questID"] = 932,	-- Twisted Hatred
							["cr"] = 2038,	-- Lord Melenas
							["coord"] = { 51.6, 51.6, TELDRASSIL },
						},
						i(5419),	-- Feral Bracers
						i(2571),	-- Viny Wrappings
					},
				}),
				q(486, {	-- Ursal the Mauler
					["qg"] = 2078,	-- Athridas Bearmantle
					["sourceQuest"] = 775,	-- The Relics of Wakening
					["coord"] = { 55.9, 57.3, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 4,
					["groups"] = {
						objective(1, {	-- Ursal the Mauler slain
							["coord"] = { 39.8, 80.6, TELDRASSIL },
							["cr"] = 2039,	-- Ursal the Mauler
						}),
						i(5459),	-- Defender Axe
						i(5587),	-- Thornroot Club
					},
				}),
				q(3120, {  -- Verdant Sigil
					["qg"] = 2079,  -- Conservator Ilthalaine
					["sourceQuest"] = 456,	-- The Balance of Nature (1/2)
					["coord"] = { 58.6, 44.2, TELDRASSIL },
					["races"] = { NIGHTELF },
					["classes"] = { DRUID },
					["cost"] = {
						{ "i", 9580, 1 },	-- Verdant Sigil
					},
				}),
				q(917, {	-- Webwood Egg
					["qg"] = 2082,	-- Gilshalan Windwalker
					["sourceQuest"] = 916,	-- Webwood Venom
					["coord"] = { 57.8, 41.6, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5167, 1 },	-- Webwood Egg
					},
					["groups"] = {
						{
							["itemID"] = 5167,	-- Webwood Egg
							["questID"] = 917,	-- Webwood Egg
							["coord"] = { 56.6, 26.5, TELDRASSIL },
						},
						i(5395),	-- Woodland Shield
						i(4907),	-- Woodland Tunic
						i(11189),	-- Woodland Robes
					},
				}),
				q(916, {	-- Webwood Venom
					["qg"] = 2082,	-- Gilshalan Windwalker
					["coord"] = { 57.8, 41.6, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 3,
					["groups"] = {
						objective(1, {	-- 0/10 Webwood Venom Sac
							["provider"] = { "i", 5166 },	-- Webwood Venom Sac
							["cr"] = 1986,	-- Webwood Spider
						}),
						i(10544),	-- Thistlewood Maul
						i(5392),	-- Thistlewood Dagger
						i(5393),	-- Thistlewood Staff
						i(5586),	-- Thistlewood Blade
					},
				}),
				q(4902, {	-- Wildkin of Elune
					["qg"] = 7916,	-- Erelas Ambersky
					["sourceQuest"] = 4901,	-- Guardians of the Altar
					["coord"] = { 55.5, 92.1, TELDRASSIL },
					["maps"] = { WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 52,
					["groups"] = {
						i(16622),	-- Thornflinger
						i(16623),	-- Opaline Medallion
					},
				}),
				q(488, {	-- Zenn's Bidding
					["qg"] = 2150,	-- Zenn Foulhoof
					["coord"] = { 60.4, 56.2, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 4,
					["groups"] = {
						objective(1, {	-- 0/3 Nightsaber Fang
							["provider"] = { "i", 3409 },	-- Nightsaber Fang
							["crs"] = {
								14430,	-- Duskstalker
								2042,	-- Nightsaber
								2043,	-- Nightsaber Stalker
							},
						}),
						objective(2, {	-- 0/3 Strigid Owl Feather
							["provider"] = { "i", 3411 },	-- Strigid Owl Feather
							["crs"] = {
								1995,	-- Strigid Owl
								1996,	-- Strigid Screecher
							},
						}),
						objective(3, {	-- 0/3 Webwood Spider Silk
							["provider"] = { "i", 3412 },	-- Webwood Spider Silk
							["crs"] = {
								1998,	-- Webwood Lurker
								2000,	-- Webwood Silkspinner
								1999,	-- Webwood Venomfang
							},
						}),
						i(5457),	-- Severed Voodoo Claw
					},
				}),
			}),
			n(RARES, {
				-- #if AFTER CATA
				n(2162, {	-- Agal
					-- NOTE: Was not previous a Rare until Cata.
					["coord"] = { 47.2, 44.8, TELDRASSIL },
				}),
				-- #endif
				n(3535, {	-- Blackmoss the Fetid
					-- #if AFTER CATA
					["coord"] = { 52.0, 63.8, TELDRASSIL },
					-- #else
					["coords"] = {
						{ 42.8, 25.8, TELDRASSIL },
						{ 44.6, 27.6, TELDRASSIL },
						{ 43.0, 31.0, TELDRASSIL },
						{ 43.8, 33.2, TELDRASSIL },
						{ 46.0, 30.4, TELDRASSIL },
						{ 40.8, 39.6, TELDRASSIL },
						{ 43.6, 36.6, TELDRASSIL },
						{ 42.8, 38.6, TELDRASSIL },
						{ 44.0, 39.6, TELDRASSIL },
					},
					-- #endif
					["groups"] = {
						i(5179, {	-- Moss-twined Heart
							["description"] = "This is one of the only drops from a rare spawn in the game that start a quest. Good luck!",
							["races"] = ALLIANCE_ONLY,
						}),
					},
				}),
				n(14430, {	-- Duskstalker
					-- #if AFTER CATA
					["coords"] = {
						{ 52.2, 67.6, TELDRASSIL },
						{ 54.0, 66.6, TELDRASSIL },
						{ 57.6, 66.6, TELDRASSIL },
						{ 59.6, 65.6, TELDRASSIL },
					},
					-- #else
					["coords"] = {
						{ 51.2, 77.8, TELDRASSIL },
						{ 53.4, 77.2, TELDRASSIL },
						{ 54.6, 75.8, TELDRASSIL },
						{ 54.8, 77.4, TELDRASSIL },
						{ 58.0, 75.8, TELDRASSIL },
						{ 58.8, 76.6, TELDRASSIL },
						{ 60.6, 76.2, TELDRASSIL },
						{ 61.0, 74.4, TELDRASSIL },
					},
					-- #endif
				}),
				n(14431, {	-- Fury Shelda
					-- #if AFTER CATA
					["coords"] = {
						{ 37.2, 30.6, TELDRASSIL },
						{ 38.2, 33.4, TELDRASSIL },
						{ 39.4, 35.2, TELDRASSIL },
						{ 39.4, 36.4, TELDRASSIL },
						{ 39.6, 37.4, TELDRASSIL },
					},
					-- #else
					["coords"] = {
						{ 34.8, 34.4, TELDRASSIL },
						{ 38.2, 34.8, TELDRASSIL },
						{ 36.0, 37.8, TELDRASSIL },
						{ 38.0, 39.0, TELDRASSIL },
						{ 36.4, 42.4, TELDRASSIL },
						{ 39.0, 41.4, TELDRASSIL },
						{ 38.0, 44.0, TELDRASSIL },
					},
					-- #endif
					["groups"] = {
						i(18612, {	-- Bloody Chain Boots
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				n(14429, {	-- Grimmaw
					-- #if AFTER CATA
					["coord"] = { 51.6, 38.6, TELDRASSIL },
					-- #else
					["coords"] = {
						{ 41.6, 78.6, TELDRASSIL },
						{ 40.2, 80.6, TELDRASSIL },
					},
					-- #endif
				}),
				n(14432, {	-- Threggil
					-- #if AFTER CATA
					["coord"] = { 53.0, 44.6, TELDRASSIL },
					-- #else
					["coords"] = {
						{ 51.2, 50.8, TELDRASSIL },
						{ 52.0, 50.6, TELDRASSIL },
						{ 52.6, 52.4, TELDRASSIL },
					},
					-- #endif
					["groups"] = {
						i(18610, {	-- Keen Machete
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				n(14428, {	-- Uruson
					-- #if AFTER CATA
					["coord"] = { 65.6, 51.8, TELDRASSIL },
					-- #else
					["coords"] = {
						{ 63.8, 57.2, TELDRASSIL },
						{ 65.4, 57.8, TELDRASSIL },
						{ 67.6, 56.4, TELDRASSIL },
						{ 66.2, 60.6, TELDRASSIL },
						{ 67.8, 61.0, TELDRASSIL },
						{ 69.6, 62.0, TELDRASSIL },
					},
					-- #endif
					["groups"] = {
						i(18611, {	-- Gnarlpine Leggings
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
			}),
			n(VENDORS, {
				n(44030, {	-- Draelan <Enchanting Supplies>
					["coord"] = { 39.0, 30.0, TELDRASSIL },
					["timeline"] = { "added 4.0.3.13277" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(20753),	-- Formula: Lesser Wizard Oil (RECIPE!)
						i(20752),	-- Formula: Minor Mana Oil (RECIPE!)
						i(20758),	-- Formula: Minor Wizard Oil (RECIPE!)
						i(22307),	-- Pattern: Enchanted Mageweave Pouch
					},
				}),
				n(10118, {	-- Nessa Shadowsong <Fishing Supplies>
					-- #if AFTER CATA
					["coord"] = { 54.0, 90.0, TELDRASSIL },
					-- #else
					["coord"] = { 56.2, 92.4, TELDRASSIL },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6368),	-- Recipe: Rainbow Fin Albacore
						i(6326),	-- Recipe: Slitherskin Mackerel
					},
				}),
				n(4265, {	-- Nyoma <Cooking Supplies>
					-- #if AFTER CATA
					["coord"] = { 56.6, 53.4, TELDRASSIL },
					-- #else
					["coord"] = { 57.2, 61.2, TELDRASSIL },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish
						i(6328),	-- Recipe: Longjaw Mud Snapper
						i(21219),	-- Recipe: Sagefish Delight
						i(21099),	-- Recipe: Smoked Sagefish
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(5206, {	-- Bogling Root
					["cr"] = 3569,	-- Bogling
				}),
				i(7094, {	-- Driftwood Branch
					["timeline"] = { "removed 4.0.3" },
					["cr"] = 2030,	-- Elder Timberling
				}),
			}),
		},
	}),
}));