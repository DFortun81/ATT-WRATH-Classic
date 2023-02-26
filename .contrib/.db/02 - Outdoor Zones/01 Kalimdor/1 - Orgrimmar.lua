---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- #if BEFORE CATA
local OnTooltipForCityFactionReputation = [[function(t)
	local reputation = t.reputation;
	if reputation < 42000 then
		local isHuman = _.RaceIndex == 1;
-- #if AFTER TBC
		local repPerTurnIn = isHuman and 82.5 or 75;
-- #else
		local repPerTurnIn = isHuman and 55 or 50;
-- #endif
		local x, n = math.ceil((42000 - reputation) / repPerTurnIn), math.ceil(42000 / repPerTurnIn);
		GameTooltip:AddDoubleLine("Runecloth Turn Ins", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
	end
end]];
-- #endif

local PVP_MOUNT_COST = {
	-- #if AFTER 7.0.3.22248
	{ "i", 137642, 15 },	-- Mark of Honor
	-- #elseif AFTER 4.0
	{ "c", 1901, 2000 },	-- 2000 Honor Points
	-- #elseif AFTER WRATH
	{ "c", 1901, 16650 },	-- 16650 Honor Points
	-- #else
	{ "i", 20560, 30 },	-- Alterac Valley Mark of Honor
	{ "i", 20559, 30 },	-- Arathi Basin Mark of Honor
	{ "i", 20558, 30 },	-- Warsong Gulch Mark of Honor
	-- #endif
};

root("Zones", m(KALIMDOR, {
	m(ORGRIMMAR, {
		["lore"] = "Named in honor of the legendary Orgrim Doomhammer, Orgrimmar was founded as the capital city of the orcs' new homeland. Built within a huge, winding canyon in the harsh land of Durotar, Orgrimmar stands as one of the mightiest warrior cities in the world. Behind Orgrimmar's immense walls, elderly shaman pass their knowledge on to the Horde's newest generation of leaders, while warriors spar in the gladiatorial arena, honing their skills in preparation for the trials that await them in this dangerous land.",
		["isRaid"] = true,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(1836, applyclassicphase(TBC_PHASE_ONE, {	-- Old Crafty
					["provider"] = { "i", 34486 },	-- Old Crafty
					["requireSkill"] = FISHING,
					-- #if BEFORE WRATH
					["description"] = "Fish up Old Crafty in Orgrimmar.",
					["OnUpdate"] = [[_.CommonAchievementHandlers.ANY_ITEM_PROVIDER]],
					-- #endif
				})),
			}),
			n(FACTIONS, {
				faction(530, {	-- Darkspear Trolls
					["icon"] = asset("Achievement_Character_Troll_Male"),
					-- #if BEFORE CATA
					["OnTooltip"] = OnTooltipForCityFactionReputation,
					-- #endif
					["races"] = HORDE_ONLY,
				}),
				faction(76, {	-- Orgrimmar
					["icon"] = asset("Achievement_Character_Orc_Male"),
					-- #if BEFORE CATA
					["OnTooltip"] = OnTooltipForCityFactionReputation,
					-- #endif
					["races"] = HORDE_ONLY,
				}),
			}),
			applyclassicphase(TBC_PHASE_ONE, prof(FISHING, {
				i(34864),	-- Baby Crocolisk
				i(34486, {	-- Old Crafty
					-- #if BEFORE WRATH
					["description"] = "Keep this in your bank until Achievements are added otherwise you'll need to fish it up again. Fair warning!",
					-- #else
					["description"] = "Keep this in your bank until Transmog is added otherwise you'll need to fish it up again. Fair warning!",
					-- #endif
				}),
			})),
			n(FLIGHT_PATHS, {
				fp(23, {	-- Orgrimmar, Durotar
					["cr"] = 3310,	-- Doras <Wind Rider Master>
					["coord"] = { 45.2, 63.8, ORGRIMMAR },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(7831, {	-- A Donation of Mageweave
					["qg"] = 14726,	-- Rashona Straglash
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(7835, {	-- A Donation of Mageweave
					["qg"] = 14727,	-- Vehena
					["coord"] = { 37.72, 87.89, ORGRIMMAR },
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(7824, {	-- A Donation of Runecloth
					["qg"] = 14726,	-- Rashona Straglash
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(7836, {	-- A Donation of Runecloth
					["qg"] = 14727,	-- Vehena
					["coord"] = { 37.72, 87.89, ORGRIMMAR },
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(7827, {	-- A Donation of Silk
					["qg"] = 14726,	-- Rashona Straglash
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
				}),
				q(7834, {	-- A Donation of Silk
					["qg"] = 14727,	-- Vehena
					["coord"] = { 37.72, 87.89, ORGRIMMAR },
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
				}),
				q(7826, {	-- A Donation of Wool
					["qg"] = 14726,	-- Rashona Straglash
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(7833, {	-- A Donation of Wool
					["qg"] = 14727,	-- Vehena
					["coord"] = { 37.72, 87.89, ORGRIMMAR },
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(7341, {	-- A Fair Trade
					["lvl"] = 52,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(18042),	-- Thorium Headed Arrow
					},
				}),
				q(7832, {	-- Additional Runecloth [Darkspear Trolls]
					["qg"] = 14726,	-- Rashona Straglash
					["sourceQuest"] = 7824,	-- A Donation of Runecloth
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["maxReputation"] = { 530, EXALTED },	-- Darkspear Trolls, Exalted.
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(7837, {	-- Additional Runecloth [Orgrimmar]
					["qg"] = 14727,	-- Vehena
					["sourceQuest"] = 7836,	-- A Donation of Runecloth
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["maxReputation"] = { 76, EXALTED },	-- Orgrimmar, Exalted.
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(2751, {	-- Barbaric Battlements
					["qg"] = 7790,	-- Orokk Omosh
					["coords"] = {
						-- #if AFTER CATA
						{ 76.2, 37.4, ORGRIMMAR },
						-- #else
						{ 79.4, 22.4, ORGRIMMAR },
						-- #endif
					},
					["requireSkill"] = BLACKSMITHING,
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2868, 2 },	-- Patterned Bronze Bracers
						{ "i", 7957, 2 },	-- Bronze Greatsword
						{ "i", 5635, 2 },	-- Sharp Claw
					},
					["lvl"] = lvlsquish(32, 32, 15),
					["groups"] = {
						i(7979, {	-- Plans: Barbaric Iron Breastplate (RECIPE!)
							-- #if ANYCLASSIC
							["description"] = "This item can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths.",
							-- #endif
						}),
					},
				}),
				q(1508, {	-- Blind Cazul
					["qg"] = 5909,	-- Cazul
					["sourceQuests"] = {
						1507,	-- Devourer of Souls [Orgrimmar]
						1472,	-- Devourer of Souls [Undercity]
					},
					["coord"] = { 47.2, 46.6, ORGRIMMAR },
					["timeline"] = { "removed 4.0.3" },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["lvl"] = 20,
				}),
				q(4300, {	-- Bone-Bladed Weapons
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11862),	-- White Bone Band
						i(11863),	-- White Bone Shredder
						i(11864),	-- White Bone Spear
					},
				}),
				q(2757, {	-- Booty Bay or Bust!
					["providers"] = {
						{ "n", 7793 },	-- Ox
						{ "i", 8663 },	-- Mithril Insignia
					},
					["sourceQuest"] = 2756,	-- The Old Ways
					["coord"] = { 80.4, 23.2, ORGRIMMAR },
					["timeline"] = { "removed 4.0.3" },
					["requireSkill"] = BLACKSMITHING,
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(4511, {	-- Calm Before the Storm (2/2)
					["sourceQuest"] = 4509,	-- Calm Before the Storm (1/2)
					["qg"] = 7010,	-- Zilzibin Drumlore
					["coord"] = { 56.4, 46.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						i(11870),	-- Oblivion Orb
						i(11871),	-- Snarkshaw Spaulders
						i(11872),	-- Eschewal Greaves
					},
				}),
				q(1501, {	-- Creature of the Void [Orgrimmar]
					["qg"] = 5875,	-- Gan'rul Bloodeye
					["sourceQuest"] = 1506,	-- Gan'rul's Summons
					["altQuests"] = { 1473 },	-- Creature of the Void [Undercity]
					["coord"] = { 48.2, 45.6, ORGRIMMAR },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { DUROTAR },
					["races"] = { ORC, TROLL, UNDEAD },
					["classes"] = { WARLOCK },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Tablet of Verga
							["provider"] = { "i", 6535 },	-- Tablet of Verga
							["coord"] = { 51.6, 9.7, DUROTAR },
						}),
					},
				}),
				q(2458, {	-- Deep Cover
					["lvl"] = 20,
					["qg"] = 3401,	-- Shenthul
					["races"] = { ORC, UNDEAD, TROLL },
					["classes"] = { ROGUE },
					["sourceQuest"] = 2460,	-- The Shattered Salute
				}),
				q(1507, {	-- Devourer of Souls [Orgrimmar]
					["qg"] = 5875,	-- Dan'rul Bloodeye
					["altQuests"] = { 1472 },	-- Devourer of Souls [Undercity]
					["timeline"] = { "removed 4.0.3" },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				applyclassicphase(PHASE_FOUR, q(8410, {	-- Elemental Mastery
					["qg"] = 5892,	-- Searn Firewarder
					["coord"] = { 38.0, 37.8, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["lvl"] = 50,
					["cost"] = {
						{ "i", 7067, 1 },	-- Elemental Earth
						{ "i", 7068, 1 },	-- Elemental Fire
						{ "i", 7069, 1 },	-- Elemental Air
						{ "i", 7070, 1 },	-- Elemental Water
					},
				})),
				q(2378, {	-- Find the Shattered Hand
					["qg"] = 6467,	-- Mennet Carkad
					["coord"] = { 83.2, 69, UNDERCITY },
					["races"] = { ORC, UNDEAD, TROLL },
					["classes"] = { ROGUE },
					["isBreadcrumb"] = true,
					["lvl"] = 16,
				}),
				q(7491, {	-- For All To See
					["lvl"] = 60,
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(18406),	-- Onyxia Blood Talisman
						i(18403),	-- Dragonslayer's Signet
						i(18404),	-- Onyxia Tooth Pendant
					},
				}),
				q(5652, {	-- Hex of Weakness [Orgrimmar]
					["qgs"] = {
						6018,	-- Ur'kyo <Priest Trainer>
						3706,	-- Tai'jin <Priest Trainer>
						11407,	-- Var'jun
						3044,	-- Miles Welsh <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					["coords"] = {
						{ 35.6, 87.6, ORGRIMMAR },
						{ 54.2, 42.8, DUROTAR },
						{ 47.0, 58.8, MULGORE },
						{ 26.0, 15.8, THUNDER_BLUFF },
						{ 49.01, 18.32, UNDERCITY },
					},
					["altQuests"] = {
						5653,	-- Hex of Weakness (NYI)
						5654,	-- Hex of Weakness [Durotar]
						5655,	-- Hex of Weakness [Mulgore]
						5656,	-- Hex of Weakness [Thunder Bluff]
						5657,	-- Hex of Weakness [Undercity]
					},
					["timeline"] = { "removed 3.0.2" },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 9035,	-- Hex of Weakness (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				q(5726, {	-- Hidden Enemies (1/5)
					["qg"] = 4949,	-- Thrall <Warchief>
					["coord"] = { 32.0, 37.8, ORGRIMMAR },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/1 Lieutenant's Insignia
							["provider"] = { "i", 14544 },	-- Lieutenant's Insignia
							["crs"] = {
								3198,	-- Burning Blade Apprentice
								3197,	-- Burning Blade Fanatic
							},
						}),
					},
				}),
				q(5727, {	-- Hidden Enemies (2/5)
					["qg"] = 4949,	-- Thrall <Warchief>
					["sourceQuest"] = 5726,	-- Hidden Enemies (1/5)
					["coord"] = { 32.0, 37.8, ORGRIMMAR },
					["timeline"] = { "removed 4.0.3" },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/1 Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
							["provider"] = { "i", 14544 },	-- Lieutenant's Insignia
							["coord"] = { 49.5, 50.6, ORGRIMMAR },
							["cr"] = 3216,	-- Neeru Fireblade
						}),
					},
				}),
				q(2479, {	-- Hinott's Assistance (1/2)
					["qg"] = 3401,	-- Shenthul
					["sourceQuest"] = 2478,	-- Mission: Possible But Not Probable
					["races"] = { ORC, UNDEAD, TROLL },
					["classes"] = { ROGUE },
					["lvl"] = 20,
				}),
				q(2754, {	-- Horns of Frenzy
					["qg"] = 7790,	-- Orokk Omosh
					["sourceQuest"] = 2753,	-- Trampled Under Foot
					["coords"] = {
						-- #if AFTER CATA
						{ 76.2, 37.4, ORGRIMMAR },
						-- #else
						{ 79.4, 22.4, ORGRIMMAR },
						-- #endif
					},
					["requireSkill"] = BLACKSMITHING,
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3851, 2 },	-- Solid Iron Maul
						{ "i", 3482, 2 },	-- Silvered Bronze Boots
						{ "i", 3483, 2 },	-- Silvered Bronze Gauntlets
					},
					["lvl"] = lvlsquish(32, 32, 15),
					["groups"] = {
						i(7980, {	-- Plans: Barbaric Iron Helm (RECIPE!)
							-- #if ANYCLASSIC
							["description"] = "This item can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths.",
							-- #endif
						}),
					},
				}),
				applyclassicphase(TBC_PHASE_ONE, q(10892, {	-- Imperial Plate Armor [H]
					["qg"] = 11176,	-- Krathok Moltenfist
					["coord"] = { 80.0, 23.3, ORGRIMMAR },
					["timeline"] = { "removed 4.0.3" },
					["requireSkill"] = BLACKSMITHING,
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				})),
				q(2755, {	-- Joys of Omosh
					["qg"] = 7790,	-- Orokk Omosh
					["sourceQuest"] = 2754,	-- Horns of Frenzy
					["coords"] = {
						-- #if AFTER CATA
						{ 76.2, 37.4, ORGRIMMAR },
						-- #else
						{ 79.4, 22.4, ORGRIMMAR },
						-- #endif
					},
					["requireSkill"] = BLACKSMITHING,
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(32, 32, 15),
					["groups"] = {
						i(7982, {	-- Plans: Barbaric Iron Gloves (RECIPE!)
							-- #if ANYCLASSIC
							["description"] = "This item can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths.",
							-- #endif
						}),
					},
				}),
				q(1945, {	-- Laughing Sisters
					["qg"] = 5885,	-- Deino <Mage Trainer>
					["sourceQuest"] = 1944,	-- Waters of Xavian
					["coord"] = { 38.6, 86.0, ORGRIMMAR },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { ASHENVALE },
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/12 Laughing Sister's Hair
							["provider"] = { "i", 7270 },	-- Laughing Sister's Hair
							["cr"] = 4054,	-- Laughing Sister
						}),
					},
				}),
				q(14086, {	-- Learn to Ride in Orgrimmar
					["provider"] = { "i", 46880 },	-- Riding Training Pamphlet
					["description"] = "The pamphlet that starts this quest is sent to Orcs in their Mailbox upon reaching the specified level.",
					["timeline"] = { "added 3.3.0", "removed 4.0.3" },
					["lockCriteria"] = { 1,
						"spellID", 33388,	-- Apprentice Riding
						"spellID", 33391,	-- Journeyman Riding
						"spellID", 34090,	-- Expert Riding
						"spellID", 34091,	-- Artisan Riding
						"spellID", 90265,	-- Master Riding
					},
					["races"] = { ORC },
					["lvl"] = lvlsquish(20, 20, 10),
				}),
				-- #if ANYCLASSIC
				q(65601, {	-- Love Hurts
					["qg"] = 5909,	-- Cazul
					["coord"] = { 47.2, 46.6, ORGRIMMAR },
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				-- #endif
				q(4494, {	-- March of the Silithid [H]
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
					["qg"] = 7010,	-- Zilzibin Drumlore
				}),
				q(1509, {	-- News of Dogran (1/2)
					["qg"] = 5910,	-- Zankaja
					["sourceQuest"] = 1508,	-- Blind Cazul
					["coord"] = { 37, 59.6, ORGRIMMAR },
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { WARLOCK },
					["races"] = { ORC, UNDEAD },
					["lvl"] = 20,
				}),
				q(2752, {	-- On Iron Pauldrons
					["qg"] = 7790,	-- Orokk Omosh
					["sourceQuest"] = 2751,	-- Barbaric Battlements
					["coords"] = {
						-- #if AFTER CATA
						{ 76.2, 37.4, ORGRIMMAR },
						-- #else
						{ 79.4, 22.4, ORGRIMMAR },
						-- #endif
					},
					["requireSkill"] = BLACKSMITHING,
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 7958, 4 },	-- Bronze Battle Axe
						{ "i", 7956, 4 },	-- Bronze Warhammer
					},
					["lvl"] = lvlsquish(32, 32, 15),
					["groups"] = {
						i(7978, {	-- Plans: Barbaric Iron Shoulders (RECIPE!)
							-- #if ANYCLASSIC
							["description"] = "This item can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths.",
							-- #endif
						}),
					},
				}),
				q(5680, {	-- Shadowguard [Undercity]
					["qgs"] = {
						6018,	-- Ur'kyo <Priest Trainer>
						4606,	-- Aelthalyste
						3044,	-- Miles Welsh <Priest Trainer>
					},
					["coords"] = {
						{ 35.6, 87.6, ORGRIMMAR },
						{ 49.01, 18.32, UNDERCITY },
						{ 26.0, 15.8, THUNDER_BLUFF },
					},
					["altQuests"] = {
						5643,	-- Shadowguard [Undercity]
						5642,	-- Shadowguard [Thunder Bluff]
					},
					["timeline"] = { "removed 3.0.2" },
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["lvl"] = 20,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 18137,	-- Shadowguard (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				q(1943, {	-- Speak with Deino
					["qg"] = 4568,	-- Anastasia Hartwell <Mage Trainer>
					["coord"] = { 85, 10.2, UNDERCITY },
					["timeline"] = { "removed 4.0.3" },
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 26,
				}),
				q(5301, {	-- The Art of the Armorsmith (H)
					["qg"] = 11177,	-- Okothos Ironrager
					["altQuests"] = {
						5283,	-- The Art of the Armorsmith (A)
						5284,	-- The Way of the Weaponsmith (A)
						5302,	-- The Way of the Weaponsmith (H)
					},
					-- #if BEFORE 4.0.3
					["description"] = "Upon finishing this quest, you will become a Armorsmith and be locked out of becoming a Weaponsmith.",
					-- #endif
					["coord"] = { 79.8, 23.8, ORGRIMMAR },
					["timeline"] = { "removed 4.0.3" },
					["requireSkill"] = BLACKSMITHING,
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 7937, 4 },	-- Ornate Mithril Helm
						{ "i", 7936, 2 },	-- Ornate Mithril Boots
						{ "i", 7935, 1 },	-- Ornate Mithril Breastplate
					},
					["lvl"] = 40,
				}),
				-- #if ANYCLASSIC
				q(65604, {	-- The Binding (Incubus) [Orgrimmar]
					["qg"] = 5875,	-- Gan'rul Bloodeye
					["sourceQuest"] = 65610,	-- Wish You Were Here
					["altQuests"] = { 65597 },	-- The Binding (Incubus) [Undercity]
					["coord"] = { 48.2, 45.6, ORGRIMMAR },
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Summoned Incubus slain
							["provider"] = { "n", 185335 },	-- Summoned Incubus
							["cost"] = { { "i", 190187, 1 } },	-- Withered Scarf
						}),
						-- #if BEFORE 4.0.3
						recipe(713),	-- Summon Incubus
						-- #endif
						i(22243, {	-- Small Soul Pouch
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				-- #endif
				q(1513, {	-- The Binding (Succubus) [Orgrimmar]
					["qg"] = 5875,	-- Gan'rul Bloodeye
					["sourceQuest"] = 1512,	-- Love's Gift
					["altQuests"] = { 1474 },	-- The Binding (Succubus) [Undercity]
					["coord"] = { 48.2, 45.6, ORGRIMMAR },
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Summoned Succubus slain
							["provider"] = { "n", 5677 },	-- Summoned Succubus
							["cost"] = { { "i", 6626, 1 } },	-- Dogran's Pendant
						}),
						-- #if BEFORE 4.0.3
						recipe(712),	-- Summon Succubus
						-- #endif
						i(22243, {	-- Small Soul Pouch
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(1504, {	-- The Binding (Voidwalker) [Orgrimmar]
					["qg"] = 5875,	-- Gan'rul Bloodeye
					["sourceQuest"] = 1501,	-- Creature of the Void [Orgrimmar]
					["altQuests"] = { 1471 },	-- The Binding (Voidwalker) [Undercity]
					["coord"] = { 48.2, 45.6, ORGRIMMAR },
					["timeline"] = { "removed 4.0.3" },
					["races"] = { ORC, TROLL, UNDEAD },
					["classes"] = { WARLOCK },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Summoned Voidwalker slain
							["provider"] = { "n", 5676 },	-- Summoned Voidwalker
							["cost"] = { { "i", 7464, 1 } },	-- Glyphs of Summoning
						}),
						-- #if BEFORE 4.0.3
						recipe(697),	-- Summon Voidwalker
						-- #endif
					},
				}),
				q(2756, {	-- The Old Ways
					["qg"] = 7792,	-- Aturk the Anvil
					["coord"] = { 80.6, 23.2, ORGRIMMAR },
					["timeline"] = { "removed 4.0.3" },
					["requireSkill"] = BLACKSMITHING,
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 7963, 4 },	-- Steel Breastplate
						{ "i", 7922, 4 },	-- Steel Plate Helm
					},
					["lvl"] = 40,
					["groups"] = {
						recipe(9957, {	-- Orcish War Leggings
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(1963, {	-- The Shattered Hand (1/2)
					["qg"] = 6446,	-- Therzok
					["sourceQuest"] = 1859,	-- Therzok
					["coord"] = { 42.74, 53.52, ORGRIMMAR },
					["races"] = { ORC, TROLL },
					["classes"] = { ROGUE },
					["maps"] = { THE_BARRENS },
					["cost"] = {
						{ "i", 7209, 1 },	-- Tazan's Satchel
					},
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 7209,	-- Tazan's Satchel
							["questID"] = 1963,	-- The Shattered Hand (1/2)
							["coord"] = { 63.8, 44.6, THE_BARRENS },
							["cr"] = 6494,	-- Tazan
						},
					},
				}),
				q(1858, {	-- The Shattered Hand (2/2)
					["qg"] = 6446,	-- Therzok
					["sourceQuest"] = 1963,	-- The Shattered Hand (1/2)
					["coord"] = { 42.74, 53.52, ORGRIMMAR },
					["timeline"] = { "removed 4.0.3" },
					["races"] = { ORC, TROLL },
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 7295, 1 },	-- Tazan's Logbook
					},
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 7208,	-- Tazan's Key
							["questID"] = 1858,	-- The Shattered Hand (2/2)
							["coord"] = { 54.2, 68.2, ORGRIMMAR },
							["cr"] = 6466,	-- Gamon
						},
						i(7209, {	-- Tazan's Satchel
							["cost"] = {
								{ "i", 7208, 1 },	-- Tazan's Key
							},
							["groups"] = {
								{
									["itemID"] = 7295,	-- Tazan's Logbook
									["questID"] = 1858,	-- The Shattered Hand (2/2)
								},
							},
						}),
						i(7298, {	-- Blade of Cunning
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(2460, {	-- The Shattered Salute
					["lvl"] = 20,
					["qg"] = 3401,	-- Shenthul
					["races"] = { ORC, UNDEAD, TROLL },
					["classes"] = { ROGUE },
				}),
				q(5302, {	-- The Way of the Weaponsmith (H)
					["qg"] = 11178,	-- Borgosh Corebender
					["altQuests"] = {
						5283,	-- The Art of the Armorsmith (A)
						5301,	-- The Art of the Armorsmith (H)
						5284,	-- The Way of the Weaponsmith (A)
					},
					-- #if BEFORE 4.0.3
					["description"] = "Upon finishing this quest, you will become a Weaponsmith and be locked out of becoming an Armorsmith.",
					-- #endif
					["coord"] = { 79.6, 23.6, ORGRIMMAR },
					["timeline"] = { "removed 4.0.3" },
					["requireSkill"] = BLACKSMITHING,
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3853, 4 },	-- Moonsteel Broadsword
						{ "i", 3855, 4 },	-- Massive Iron Axe
						{ "i", 7941, 2 },	-- Heavy Mithril Axe
						{ "i", 7945, 2 },	-- Big Black Mace
					},
					["lvl"] = 40,
				}),
				q(6611, {	-- To Gadgetzan You Go!
					["qg"] = 3399,	-- Zamja
					-- #if AFTER CATA
					["coord"] = { 32.2, 69.4, ORGRIMMAR },
					-- #else
					["coord"] = { 57.4, 53.6, ORGRIMMAR },
					-- #endif
					["requireSkill"] = COOKING,
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(2753, {	-- Trampled Under Foot
					["qg"] = 7790,	-- Orokk Omosh
					["sourceQuest"] = 2752,	-- On Iron Pauldrons
					["coords"] = {
						-- #if AFTER CATA
						{ 76.2, 37.4, ORGRIMMAR },
						-- #else
						{ 79.4, 22.4, ORGRIMMAR },
						-- #endif
					},
					["requireSkill"] = BLACKSMITHING,
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3836, 4 },	-- Green Iron Helm
						{ "i", 3835, 4 },	-- Green Iron Bracers
						{ "i", 3842, 2 },	-- Green Iron Leggings
					},
					["lvl"] = 32,
					["groups"] = {
						i(7981, {	-- Plans: Barbaric Iron Boots (RECIPE!)
							-- #if ANYCLASSIC
							["description"] = "This item can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths.",
							-- #endif
						}),
					},
				}),
				q(1944, {	-- Waters of Xavian
					["qg"] = 5885,	-- Deino <Mage Trainer>
					["sourceQuest"] = 1943,	-- Speak with Deino
					["coord"] = { 38.6, 86.0, ORGRIMMAR },
					["maps"] = { ASHENVALE },
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 7268, 1 },	-- Xavian Water Sample
					},
					["lvl"] = 26,
					["groups"] = {
						{
							["itemID"] = 7269,	-- Deino's Flask
							["coord"] = { 76, 41, ASHENVALE },
							["groups"] = {
								{
									["itemID"] = 7268,	-- Xavian Water Sample
									["questID"] = 1944,	-- Waters of Xavian
								},
							},
						},
					},
				}),
				-- #if ANYCLASSIC
				q(65610, {	-- Wish You Were Here
					["qg"] = 3363,	-- Magar <Tailoring Trainer>
					["sourceQuest"] = 65601,	-- Love Hurts
					["coord"] = { 63.6, 50.0, ORGRIMMAR },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { ASHENVALE },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Withered Scarf
							["provider"] = { "i", 190232 },	-- Withered Scarf
							["crs"] = {
								3782,	-- Shadethicket Stone Mover
								3784,	-- Shadethicket Bark Ripper
								3931,	-- Shadethicket Oracle
							},
						}),
					},
				}),
				-- #endif
				q(7660, {	-- Wolf Swapping - Arctic Wolf
					["qg"] = 3362,	-- Ogunaro Wolfrunner
					-- #if AFTER CATA
					["coord"] = { 61.6, 35.6, ORGRIMMAR },
					-- #else
					["coord"] = { 69.4, 12.4, ORGRIMMAR },
					-- #endif
					["description"] = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
					["timeline"] = { "removed 1.4.0" },
					["cost"] = { { "i", 12351, 1 } },	-- Arctic Wolf
					["sym"] = { { "select", "itemID", 18796, 18798, 18797 } },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["_drop"] = { "g" },
				}),
				q(7661, {	-- Wolf Swapping - Red Wolf
					["qg"] = 3362,	-- Ogunaro Wolfrunner
					-- #if AFTER CATA
					["coord"] = { 61.6, 35.6, ORGRIMMAR },
					-- #else
					["coord"] = { 69.4, 12.4, ORGRIMMAR },
					-- #endif
					["description"] = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
					["timeline"] = { "removed 1.4.0" },
					["cost"] = { { "i", 12330, 1 } },	-- Red Wolf (MOUNT!)
					["sym"] = { { "select", "itemID", 18796, 18798, 18797 } },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["_drop"] = { "g" },
				}),
				q(2382, {	-- Wrenix of Ratchet
					["qg"] = 3402,	-- Zando'zan
					["sourceQuest"] = 2379,	-- Zando'zan
					["coord"] = { 42.8, 53, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 16,
				}),
				q(6608, {	-- You Too Good.
					["qg"] = 3332,	-- Lumak <Fishing Trainer>
					["description"] = "Requires 225 Fishing to start this quest.",
					["coord"] = { 69.8, 29.6, ORGRIMMAR },
					["requireSkill"] = FISHING,
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(2379, {	-- Zando'zan
					["qg"] = 3401,	-- Shenthul
					["sourceQuests"] = {
						2378,	-- Find the Shattered Hand
						2380,	-- To Orgrimmar!
					},
					-- #if AFTER TBC
					["altQuests"] = {
						10372,	-- A Discreet Inquiry
					},
					-- #endif
					["coord"] = { 43, 53.4, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 16,
				}),
			}),
			n(VENDORS, {
				n(3364, {	-- Borya <Tailoring Supplies>
					["coord"] = { 63.0, 51.2, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5772),	-- Pattern: Red Woolen Bag
						i(6270),	-- Pattern: Blue Linen Vest
						i(6274),	-- Pattern: Blue Overalls
						i(10317),	-- Pattern: Pink Mageweave Shirt
						i(10314),	-- Pattern: Lavender Mageweave Shirt
					},
				}),
				n(12793, {	-- Brave Stonehide <Officer Accessories Quartermaster>
					["description"] = "Found within the Champion's Hall in Orgrimmar.",
					["maps"] = { ORGRIMMAR },
					["groups"] = {
						i(18607),	-- Horde Battle Standard
						i(15199),	-- Stone Guard's Herald
						i(18839),	-- Combat Healing Potion
						i(18841),	-- Combat Mana Potion
					},
				}),
				n(3367, {	-- Felika <Trade Supplies>
					["coords"] = {
						{ 46.5, 36.6, ORGRIMMAR },
						{ 50.8, 58.7, ORGRIMMAR },
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(20856, {	-- Design: Heavy Golden Necklace of Battle
							["isLimited"] = true,
						}),
					},
				}),
				n(3316, {	-- Handor <Cloth & Leather Armor Merchant>
					["coord"] = { 62.8, 44.8, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12256),	-- Cindercloth Leggings
					},
				}),
				n(3410, {	-- Jin'sora <Bow Merchant>
					["coord"] = { 77.8, 38.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11303),	-- Fine Shortbow
						i(11306),	-- Sturdy Recurve
						i(11307),	-- Massive Longbow
					},
				}),
				n(3346, {	-- Kithas <Enchanting Supplies>
					["coord"] = { 53.6, 38.0, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						-- #if BEFORE CATA
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						-- #endif
						i(6346),	-- Formula: Enchant Chest - Lesser Mana
						i(6349),	-- Formula: Enchant 2H Weapon - Lesser Intellect
						i(22307),	-- Pattern: Enchanted Mageweave Pouch
					},
				}),
				n(3348, {	-- Kor'geld <Alchemy Supplies>
					["coord"] = { 56.2, 34.2, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5642),	-- Recipe: Free Action Potion
						i(13478),	-- Recipe: Elixir of Superior Defense
					},
				}),
				n(34043, {	-- Lady Palanseer <Jewelcrafting Quartermaster>
					["timeline"] = { "added 3.0.2.8970", "removed 4.0.3" },
					["races"] = HORDE_ONLY,
					["groups"] = pvp({
						-- #if BEFORE 4.0.3
						-- Moves to Tiffany in Dalaran
						i(41563),	-- Design: Durable Huge Citrine [WRATH] / Design: Willful Huge Citrine [CATA+]
						-- #endif
						i(41564, {	-- Design: Empowered Huge Citrine [WRATH] / Design: Lucent Huge Citrine [CATA+]
							["timeline"] = { "removed 4.0.3" },
						}),
						-- #if BEFORE 4.0.3
						-- These move to Tiffany in Dalaran
						i(41565),	-- Design: Lucent Huge Citrine
						i(41575),	-- Design: Mysterious Shadow Crystal
						i(41559),	-- Design: Mystic Sun Crystal
						-- #endif
						i(41573, {	-- Design: Opaque Dark Jade [WRATH] / Design: Turbid Dark Jade [CATA+]
							["timeline"] = { "removed 4.0.3" },
						}),
						-- #if BEFORE 4.0.3
						-- These move to Tiffany in Dalaran
						i(41566),	-- Design: Resplendent Huge Citrine
						i(41569),	-- Design: Shattered Dark Jade
						i(41572),	-- Design: Steady Dark Jade
						i(41560),	-- Design: Stormy Chalcedony
						i(41570),	-- Design: Radiant Dark Jade [CATA+] / Design: Tense Dark Jade [WRATH]
						i(41571),	-- Design: Turbid Dark Jade
						-- #endif
						moh(1, i(28118, {	-- Brilliant Ornate Ruby
							["timeline"] = { "added 2.0.1.6180" },
						})),
						moh(1, i(28119, {	-- Smooth Ornate Dawnstone
							["timeline"] = { "added 2.0.1.6180" },
						})),
						moh(1, i(28120, {	-- Gleaming Ornate Dawnstone
							["timeline"] = { "added 2.0.1.6180", "removed 4.0.1" },
						})),
						moh(1, i(28123, {	-- Potent Ornate Topaz
							["timeline"] = { "added 2.0.1.6180" },
						})),
						moh(1, i(28362, {	-- Delicate Ornate Ruby
							["timeline"] = { "added 2.0.1.6180" },
						})),
						moh(1, i(28363, {	-- Deadly Ornate Topaz
							["timeline"] = { "added 2.0.1.6180" },
						})),
					}),
				}),
				n(12792, {	-- Lady Palanseer <Armor Quartermaster>
					["description"] = "Found within the Champion's Hall in Orgrimmar.",
					["timeline"] = { "removed 3.0.2.8970" },
					["maps"] = { ORGRIMMAR },
					["groups"] = {
						i(22860, {	-- Blood Guard's Silk Walkers (60)
							["classes"] = { MAGE },
						}),
						i(22858, {	-- Blood Guard's Plate Greaves (60)
							["classes"] = { WARRIOR },
						}),
						i(22857, {	-- Blood Guard's Mail Greaves (60)
							["classes"] = { SHAMAN },
						}),
						i(22855, {	-- Blood Guard's Dreadweave Walkers (60)
							["classes"] = { WARLOCK },
						}),
						i(22859, {	-- Blood Guard's Satin Walkers (60)
							["classes"] = { PRIEST },
						}),
						i(22852, {	-- Blood Guard's Dragonhide Treads (60)
							["classes"] = { DRUID },
						}),
						i(22856, {	-- Blood Guard's Leather Walkers (60)
							["classes"] = { ROGUE },
						}),
						i(22843, {	-- Blood Guard's Chain Greaves (60)
							["classes"] = { HUNTER },
						}),
						i(16485, {	-- Blood Guard's Silk Footwraps (58)
							["classes"] = { MAGE },
						}),
						i(17576, {	-- Blood Guard's Dreadweave Boots (58)
							["classes"] = { WARLOCK },
						}),
						i(16509, {	-- Blood Guard's Plate Boots (58)
							["classes"] = { WARRIOR },
						}),
						i(16531, {	-- Blood Guard's Chain Boots (58)
							["classes"] = { HUNTER },
						}),
						i(17616, {	-- Blood Guard's Satin Boots (58)
							["classes"] = { PRIEST },
						}),
						i(16518, {	-- Blood Guard's Mail Walkers (58)
							["classes"] = { SHAMAN },
						}),
						i(16498, {	-- Blood Guard's Leather Treads (58)
							["classes"] = { ROGUE },
						}),
						i(16494, {	-- Blood Guard's Dragonhide Boots (58)
							["classes"] = { DRUID },
						}),
						i(16530, {	-- Blood Guard's Chain Gauntlets
							["classes"] = { HUNTER },
						}),
						i(22862, {	-- Blood Guard's Chain Vices
							["classes"] = { HUNTER },
						}),
						i(16496, {	-- Blood Guard's Dragonhide Gauntlets
							["classes"] = { DRUID },
						}),
						i(22863, {	-- Blood Guard's Dragonhide Grips
							["classes"] = { DRUID },
						}),
						i(17577, {	-- Blood Guard's Dreadweave Gloves
							["classes"] = { WARLOCK },
						}),
						i(22865, {	-- Blood Guard's Dreadweave Handwraps
							["classes"] = { WARLOCK },
						}),
						i(22864, {	-- Blood Guard's Leather Grips
							["classes"] = { ROGUE },
						}),
						i(16499, {	-- Blood Guard's Leather Vices
							["classes"] = { ROGUE },
						}),
						i(16519, {	-- Blood Guard's Mail Grips
							["classes"] = { SHAMAN },
						}),
						i(22867, {	-- Blood Guard's Mail Vices
							["classes"] = { SHAMAN },
						}),
						i(22868, {	-- Blood Guard's Plate Gauntlets
							["classes"] = { WARRIOR },
						}),
						i(16510, {	-- Blood Guard's Plate Gloves
							["classes"] = { WARRIOR },
						}),
						i(17617, {	-- Blood Guard's Satin Gloves
							["classes"] = { PRIEST },
						}),
						i(22869, {	-- Blood Guard's Satin Handwraps
							["classes"] = { PRIEST },
						}),
						i(16487, {	-- Blood Guard's Silk Gloves
							["classes"] = { MAGE },
						}),
						i(22870, {	-- Blood Guard's Silk Handwraps
							["classes"] = { MAGE },
						}),
						i(16525, {	-- Legionnaire's Chain Breastplate
							["classes"] = {HUNTER },
						}),
						i(22874, {	-- Legionnaire's Chain Hauberk
							["classes"] = { HUNTER },
						}),
						i(16504, {	-- Legionnaire's Dragonhide Breastplate
							["classes"] = { DRUID },
						}),
						i(22877, {	-- Legionnaire's Dragonhide Chestpiece
							["classes"] = { DRUID },
						}),
						i(17572, {	-- Legionnaire's Dreadweave Robe
							["classes"] = { WARLOCK },
						}),
						i(22884, {	-- Legionnaire's Dreadweave Tunic
							["classes"] = { WARLOCK },
						}),
						i(22879, {	-- Legionnaire's Leather Chestpiece
							["classes"] = { ROGUE },
						}),
						i(16505, {	-- Legionnaire's Leather Hauberk
							["classes"] = { ROGUE },
						}),
						i(16522, {	-- Legionnaire's Mail Chestpiece
							["classes"] = { SHAMAN },
						}),
						i(22876, {	-- Legionnaire's Mail Hauberk
							["classes"] = { SHAMAN },
						}),
						i(16513, {	-- Legionnaire's Plate Armor
							["classes"] = { WARRIOR },
						}),
						i(22872, {	-- Legionnaire's Plate Hauberk
							["classes"] = { WARRIOR },
						}),
						i(22885, {	-- Legionnaire's Satin Tunic
							["classes"] = { PRIEST },
						}),
						i(17612, {	-- Legionnaire's Satin Vestments
							["classes"] = { PRIEST },
						}),
						i(16491, {	-- Legionnaire's Silk Robes
							["classes"] = { MAGE },
						}),
						i(22886, {	-- Legionnaire's Silk Tunic
							["classes"] = { MAGE },
						}),
						i(16527, {	-- Legionnaire's Chain Leggings
							["classes"] = { HUNTER },
						}),
						i(22875, {	-- Legionnaire's Chain Legguards
							["classes"] = { HUNTER },
						}),
						i(22878, {	-- Legionnaire's Dragonhide Leggings
							["classes"] = { DRUID },
						}),
						i(16502, {	-- Legionnaire's Dragonhide Trousers
							["classes"] = { DRUID },
						}),
						i(17571, {	-- Legionnaire's Dreadweave Leggings
							["classes"] = { WARLOCK },
						}),
						i(22881, {	-- Legionnaire's Dreadweave Legguards
							["classes"] = { WARLOCK },
						}),
						i(16508, {	-- Legionnaire's Leather Leggings
							["classes"] = { ROGUE },
						}),
						i(22880, {	-- Legionnaire's Leather Legguards
							["classes"] = { ROGUE },
						}),
						i(16523, {	-- Legionnaire's Mail Leggings
							["classes"] = { SHAMAN },
						}),
						i(22887, {	-- Legionnaire's Mail Legguards
							["classes"] = { SHAMAN },
						}),
						i(22873, {	-- Legionnaire's Plate Leggings
							["classes"] = { WARRIOR },
						}),
						i(16515, {	-- Legionnaire's Plate Legguards
							["classes"] = { WARRIOR },
						}),
						i(22882, {	-- Legionnaire's Satin Legguards
							["classes"] = { PRIEST },
						}),
						i(17611, {	-- Legionnaire's Satin Trousers
							["classes"] = { PRIEST },
						}),
						i(22883, {	-- Legionnaire's Silk Legguards
							["classes"] = { MAGE },
						}),
						i(16490, {	-- Legionnaire's Silk Pants
							["classes"] = { MAGE },
						}),
						i(16526, {	-- Champion's Chain Headguard
							["classes"] = { HUNTER },
						}),
						i(23251, {	-- Champion's Chain Helm
							["classes"] = { HUNTER },
						}),
						i(23253, {	-- Champion's Dragonhide Headguard
							["classes"] = { DRUID },
						}),
						i(16503, {	-- Champion's Dragonhide Helm
							["classes"] = { DRUID },
						}),
						i(23255, {	-- Champion's Dreadweave Cowl
							["classes"] = { WARLOCK },
						}),
						i(17570, {	-- Champion's Dreadweave Hood
							["classes"] = { WARLOCK },
						}),
						i(16506, {	-- Champion's Leather Headguard
							["classes"] = { ROGUE },
						}),
						i(23257, {	-- Champion's Leather Helm
							["classes"] = { ROGUE },
						}),
						i(23259, {	-- Champion's Mail Headguard
							["classes"] = { SHAMAN },
						}),
						i(16521, {	-- Champion's Mail Helm
							["classes"] = { SHAMAN },
						}),
						i(16514, {	-- Champion's Plate Headguard
							["classes"] = { WARRIOR },
						}),
						i(23244, {	-- Champion's Plate Helm
							["classes"] = { WARRIOR },
						}),
						i(17610, {	-- Champion's Satin Cowl
							["classes"] = { PRIEST },
						}),
						i(23261, {	-- Champion's Satin Hood
							["classes"] = { PRIEST },
						}),
						i(23263, {	-- Champion's Silk Cowl
							["classes"] = { MAGE },
						}),
						i(16489, {	-- Champion's Silk Hood
							["classes"] = { MAGE },
						}),
						i(23264, {	-- Champion's Silk Mantle
							["classes"] = { MAGE },
						}),
						i(23256, {	-- Champion's Dreadweave Spaulders
							["classes"] = { WARLOCK },
						}),
						i(23243, {	-- Champion's Plate Shoulders
							["classes"] = { WARRIOR },
						}),
						i(23258, {	-- Champion's Leather Shoulders
							["classes"] = { ROGUE },
						}),
						i(17573, {	-- Champion's Dreadweave Shoulders
							["classes"] = { WARLOCK },
						}),
						i(16516, {	-- Champion's Plate Pauldrons
							["classes"] = { WARRIOR },
						}),
						i(16492, {	-- Champion's Silk Shoulderpads
							["classes"] = { MAGE },
						}),
						i(23260, {	-- Champion's Mail Pauldrons
							["classes"] = { SHAMAN },
						}),
						i(16528, {	-- Champion's Chain Pauldrons
							["classes"] = { HUNTER },
						}),
						i(23254, {	-- Champion's Dragonhide Shoulders
							["classes"] = { DRUID },
						}),
						i(17613, {	-- Champion's Satin Shoulderpads
							["classes"] = { PRIEST },
						}),
						i(16524, {	-- Champion's Mail Shoulders
							["classes"] = { SHAMAN },
						}),
						i(16507, {	-- Champion's Leather Mantle
							["classes"] = { ROGUE },
						}),
						i(16501, {	-- Champion's Dragonhide Spaulders
							["classes"] = { DRUID },
						}),
						i(23262, {	-- Champion's Satin Mantle
							["classes"] = { PRIEST },
						}),
						i(23252, {	-- Champion's Chain Shoulders
							["classes"] = { HUNTER },
						}),
						i(16571, {	-- General's Chain Gloves
							["classes"] = { HUNTER },
						}),
						i(16555, {	-- General's Dragonhide Gloves
							["classes"] = { DRUID },
						}),
						i(17588, {	-- General's Dreadweave Gloves
							["classes"] = { WARLOCK },
						}),
						i(16560, {	-- General's Leather Mitts
							["classes"] = { ROGUE },
						}),
						i(16574, {	-- General's Mail Gauntlets
							["classes"] = { SHAMAN },
						}),
						i(16548, {	-- General's Plate Gauntlets
							["classes"] = { WARRIOR },
						}),
						i(17620, {	-- General's Satin Gloves
							["classes"] = { PRIEST },
						}),
						i(16540, {	-- General's Silk Handguards
							["classes"] = { MAGE },
						}),
						i(16567, {	-- General's Chain Legguards
							["classes"] = { HUNTER },
						}),
						i(16552, {	-- General's Dragonhide Leggings
							["classes"] = { DRUID },
						}),
						i(17593, {	-- General's Dreadweave Pants
							["classes"] = { WARLOCK },
						}),
						i(16564, {	-- General's Leather Legguards
							["classes"] = { ROGUE },
						}),
						i(16579, {	-- General's Mail Leggings
							["classes"] = { SHAMAN },
						}),
						i(16543, {	-- General's Plate Leggings
							["classes"] = { WARRIOR },
						}),
						i(17625, {	-- General's Satin Leggings
							["classes"] = { PRIEST },
						}),
						i(16534, {	-- General's Silk Trousers
							["classes"] = { MAGE },
						}),
						i(16569, {	-- General's Chain Boots
							["classes"] = { HUNTER },
						}),
						i(16554, {	-- General's Dragonhide Boots
							["classes"] = { DRUID },
						}),
						i(17586, {	-- General's Dreadweave Boots
							["classes"] = { WARLOCK },
						}),
						i(16558, {	-- General's Leather Treads
							["classes"] = { ROGUE },
						}),
						i(16573, {	-- General's Mail Boots
							["classes"] = { SHAMAN },
						}),
						i(16545, {	-- General's Plate Boots
							["classes"] = { WARRIOR },
						}),
						i(17618, {	-- General's Satin Boots
							["classes"] = { PRIEST },
						}),
						i(16539, {	-- General's Silk Boots
							["classes"] = { MAGE },
						}),
						i(16566, {	-- Warlord's Chain Helmet
							["classes"] = { HUNTER },
						}),
						i(16550, {	-- Warlord's Dragonhide Helmet
							["classes"] = { DRUID },
						}),
						i(17591, {	-- Warlord's Dreadweave Hood
							["classes"] = { WARLOCK },
						}),
						i(16561, {	-- Warlord's Leather Helm
							["classes"] = { ROGUE },
						}),
						i(16578, {	-- Warlord's Mail Helm
							["classes"] = { SHAMAN },
						}),
						i(16542, {	-- Warlord's Plate Headpiece
							["classes"] = { WARRIOR },
						}),
						i(17623, {	-- Warlord's Satin Cowl
							["classes"] = { PRIEST },
						}),
						i(16533, {	-- Warlord's Silk Cowl
							["classes"] = { MAGE },
						}),
						i(16565, {	-- Warlord's Chain Chestpiece
							["classes"] = { HUNTER },
						}),
						i(16549, {	-- Warlord's Dragonhide Hauberk
							["classes"] = { DRUID },
						}),
						i(17592, {	-- Warlord's Dreadweave Robe
							["classes"] = { WARLOCK },
						}),
						i(16563, {	-- Warlord's Leather Breastplate
							["classes"] = { ROGUE },
						}),
						i(16577, {	-- Warlord's Mail Armor
							["classes"] = { SHAMAN },
						}),
						i(16541, {	-- Warlord's Plate Armor
							["classes"] = { WARRIOR },
						}),
						i(17624, {	-- Warlord's Satin Robes
							["classes"] = { PRIEST },
						}),
						i(16535, {	-- Warlord's Silk Raiment
							["classes"] = { MAGE },
						}),
						i(16568, {	-- Warlord's Chain Shoulders
							["classes"] = { HUNTER },
						}),
						i(16551, {	-- Warlord's Dragonhide Epaulets
							["classes"] = { DRUID },
						}),
						i(17590, {	-- Warlord's Dreadweave Mantle
							["classes"] = { WARLOCK },
						}),
						i(16562, {	-- Warlord's Leather Spaulders
							["classes"] = { ROGUE },
						}),
						i(16580, {	-- Warlord's Mail Spaulders
							["classes"] = { SHAMAN },
						}),
						i(16544, {	-- Warlord's Plate Shoulders
							["classes"] = { WARRIOR },
						}),
						i(17622, {	-- Warlord's Satin Mantle
							["classes"] = { PRIEST },
						}),
						i(16536, {	-- Warlord's Silk Amice
							["classes"] = { MAGE },
						}),
					},
				}),
				n(3362, {	-- Ogunaro Wolfrunner <Kennel Master>
					-- #if AFTER CATA
					["coord"] = { 61.6, 35.6, ORGRIMMAR },
					-- #else
					["coord"] = { 69.4, 12.4, ORGRIMMAR },
					-- #endif
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(46099, {	-- Black Wolf (MOUNT!)
							["timeline"] = { "added 3.1.0.9684" },
						}),
						i(5668),	-- Brown Wolf (MOUNT!)
						i(5665),	-- Dire Wolf (MOUNT!)
						i(18796),	-- Swift Brown Wolf (MOUNT!)
						i(18797),	-- Swift Timber Wolf (MOUNT!)
						i(18798),	-- Swift Gray Wolf (MOUNT!)
						i(1132),	-- Timber Wolf (MOUNT!)
						i(12351, {	-- Arctic Wolf (MOUNT!)
							["timeline"] = { "removed 1.4.0" },
						}),
						i(12330, {	-- Red Wolf (MOUNT!)
							["timeline"] = { "removed 1.4.0" },
						}),
					},
				}),
				n(12796, {	-- Raider Bork <War Mount Quartermaster> [WRATH+] / Raider Bork <Mount Quartermaster>
					-- #if AFTER WRATH
					["coord"] = { 41.8, 72.6, ORGRIMMAR },
					-- #else
					["description"] = "Found within the Champion's Hall.",
					-- #endif
					["races"] = HORDE_ONLY,
					["groups"] = pvp({
						i(29466, {	-- Black War Kodo (MOUNT!)
							["timeline"] = { "added 2.0.1.6180" },
							["cost"] = PVP_MOUNT_COST,
						}),
						i(18247, {	-- Black War Kodo (MOUNT!)
							["timeline"] = { "removed 2.0.1.6180" },
						}),
						i(29472, {	-- Black War Raptor (MOUNT!)
							["timeline"] = { "added 2.0.1.6180" },
							["cost"] = PVP_MOUNT_COST,
						}),
						i(18246, {	-- Black War Raptor (MOUNT!)
							["timeline"] = { "removed 2.0.1.6180" },
						}),
						i(29469, {	-- Black War Wolf (MOUNT!)
							["timeline"] = { "added 2.0.1.6180" },
							["cost"] = PVP_MOUNT_COST,
						}),
						i(18245, {	-- Black War Wolf (MOUNT!)
							["timeline"] = { "removed 2.0.1.6180" },
						}),
						i(29470, {	-- Red Skeletal Warhorse (MOUNT!)
							["timeline"] = { "added 2.0.1.6180" },
							["cost"] = PVP_MOUNT_COST,
						}),
						i(18248, {	-- Red Skeletal Warhorse (MOUNT!)
							["timeline"] = { "removed 2.0.1.6180" },
						}),
						i(34129, {	-- Swift Warstrider (MOUNT!)
							["timeline"] = { "added 2.3.0.7382" },
							["cost"] = PVP_MOUNT_COST,
						}),
					}),
				}),
				n(12799, {	-- Sergeant Ba'sha <Accessories Quartermaster>
					["coord"] = { 41.6, 68.6, ORGRIMMAR },
					["groups"] = {
						i(15197),	-- Scout's Tabard
						i(18834, {	-- Insignia of the Horde
							["classes"] = { WARRIOR },
						}),
						i(18849, {	-- Insignia of the Horde
							["classes"] = { ROGUE },
						}),
						i(18846, {	-- Insignia of the Horde
							["classes"] = { HUNTER },
						}),
						i(18851, {	-- Insignia of the Horde
							["classes"] = { PRIEST },
						}),
						i(18853, {	-- Insignia of the Horde
							["classes"] = { DRUID },
						}),
						i(18850, {	-- Insignia of the Horde
							["classes"] = { MAGE },
						}),
						i(18852, {	-- Insignia of the Horde
							["classes"] = { WARLOCK },
						}),
						i(18845, {	-- Insignia of the Horde
							["classes"] = { SHAMAN },
						}),
						i(18461),	-- Sergeant's Cloak (58)
						i(16341),	-- Sergeant's Cloak (45)
						i(18427),	-- Sergeant's Cloak (30)
						i(16335),	-- Senior Sergeant's Insignia (58)
						i(18428),	-- Senior Sergeant's Insignia (45)
						i(15200),	-- Senior Sergeant's Insignia (30)
						i(16486, {	-- First Sergeant's Silk Cuffs (58)
							["classes"] = { MAGE, PRIEST, WARLOCK },
						}),
						i(18434, {	-- First Sergeant's Dragonhide Armguards (58)
							["classes"] = { DRUID },
						}),
						i(18429, {	-- First Sergeant's Plate Bracers (58)
							["classes"] = { WARRIOR },
						}),
						i(16532, {	-- First Sergeant's Mail Wristguards (58)
							["classes"] = { HUNTER, SHAMAN },
						}),
						i(16497, {	-- First Sergeant's Leather Armguards (58)
							["classes"] = { ROGUE },
						}),
						i(18437, {	-- First Sergeant's Silk Cuffs (45)
							["classes"] = { MAGE, PRIEST, WARLOCK },
						}),
						i(18430, {	-- First Sergeant's Plate Bracers (45)
							["classes"] = { WARRIOR },
						}),
						i(18432, {	-- First Sergeant's Mail Wristguards (45)
							["classes"] = { HUNTER, SHAMAN },
						}),
						i(18436, {	-- First Sergeant's Dragonhide Armguards (45)
							["classes"] = { DRUID },
						}),
						i(18435, {	-- First Sergeant's Leather Armguards (45)
							["classes"] = { ROGUE },
						}),
					},
				}),
				n(14581, {	-- Sergeant Thunderhorn <Weapons Quartermaster>
					["description"] = "Found within the Champion's Hall in Orgrimmar.",
					["maps"] = { ORGRIMMAR },
					["groups"] = {
						i(18831),	-- High Warlord's Battle Axe
						i(23464),	-- High Warlord's Battle Mace
						i(16345),	-- High Warlord's Blade
						i(18866),	-- High Warlord's Bludgeon
						i(18828),	-- High Warlord's Cleaver
						i(18837),	-- High Warlord's Crossbow
						i(23465),	-- High Warlord's Destroyer
						i(18877),	-- High Warlord's Greatsword
						i(18848),	-- High Warlord's Left Claw
						i(18871),	-- High Warlord's Pig Sticker
						i(18868),	-- High Warlord's Pulverizer
						i(23467),	-- High Warlord's Quickblade
						i(18840),	-- High Warlord's Razor
						i(18835),	-- High Warlord's Recurve
						i(18844),	-- High Warlord's Right Claw
						i(18826),	-- High Warlord's Shield Wall
						i(23466),	-- High Warlord's Spellblade
						i(18860),	-- High Warlord's Street Sweeper
						i(23468),	-- High Warlord's Tome of Destruction
						i(23469),	-- High Warlord's Tome of Mending
						i(18874),	-- High Warlord's War Staff
					},
				}),
				n(3333, {	-- Shankys <Fishing Supplies>
					["coord"] = { 70.0, 29.4, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6368),	-- Recipe: Rainbow Fin Albacore
						i(6369),	-- Recipe: Rockscale Cod
						i(17062),	-- Recipe: Mithril Head Trout
					},
				}),
				n(3413, {	-- Sovik <Engineering Supplies>
					["coord"] = { 75.6, 25.2, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(18647, {	-- Schematic: Red Firework
							["isLimited"] = true,
						}),
						i(16041, {	-- Schematic: Thorium Grenade
							["timeline"] = { "removed 3.0.1" },	-- Now taught by trainer, schematic removed from the game.
							-- #if BEFORE 3.0.1
							["isLimited"] = true,
							-- #endif
						}),
						i(16042, {	-- Schematic: Thorium Widget
							["timeline"] = { "removed 3.0.1" },	-- Now taught by trainer, schematic removed from the game.
							-- #if BEFORE 3.0.1
							["isLimited"] = true,
							-- #endif
						}),
						applyclassicphase(TBC_PHASE_ONE, i(22729, {	-- Schematic: Steam Tonk Controller
							["isLimited"] = true,
						})),
					},
				}),
				n(3356, {	-- Sumi <Blacksmithing Supplier>
					["coord"] = { 82.4, 23.8, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12162),	-- Plans: Hardened Iron Shortsword
					},
				}),
				n(3366, {	-- Tamar <Leatherworking Supplies>
					["coord"] = { 63.0, 45.2, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(18731),	-- Pattern: Heavy Leather Ball
					},
				}),
				n(3315, {	-- Tor'phan <Cloth & Leather Armor Merchant>
					["coord"] = { 62.6, 50.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12255),	-- Pale Leggings
					},
				}),
				n(8404, {	-- Xan'tish <Snake Vendor>
					["coord"] = { 37.6, 75.8, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(10360),	-- Black Kingsnake
						i(10361),	-- Brown Snake
						i(10392),	-- Crimson Snake
					},
				}),
				n(3400, {	-- Xen'to <Cooking Supplier>
					["coord"] = { 57.6, 53.2, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Delight
					},
				}),
			}),
		},
	}),
}));