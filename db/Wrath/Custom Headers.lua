﻿-------------------------------------------------------
--   C U S T O M   H E A D E R S   M O D U L E   --
-------------------------------------------------------
local _ = select(2, ...);
local L = _.L;
local simplifiedLocale = string.sub(GetLocale(),1,2);

_.HeaderConstants = {
	ACHIEVEMENTS = -1000000,
	COMMON_BOSS_DROPS = -1000003,
	COMMON_VENDOR_ITEMS = -1000006,
	CRAFTED_ITEMS = -1000007,
	DISCOVERY = -1000008,
	EXPLORATION = -1000011,
	FACTIONS = -1000012,
	FLIGHT_PATHS = -1000013,
	HOLIDAYS = -1000015,
	PROFESSIONS = -1000019,
	QUESTS = -1000020,
	RARES = -1000021,
	REWARDS = -1000022,
	SPECIAL = -1000024,
	TREASURES = -1000025,
	VENDORS = -1000026,
	WORLD_BOSSES = -1000028,
	ZONE_DROPS = -1000030,
	WEAPONS = -1000058,
	BREWFEST_HEADER = -1000071,
	CHILDRENS_WEEK_HEADER = -1000072,
	DAY_OF_THE_DEAD_HEADER = -1000073,
	FEAST_OF_WINTER_VEIL_HEADER = -1000074,
	HALLOWS_END_HEADER = -1000075,
	HARVEST_FESTIVAL_HEADER = -1000076,
	LOVE_IS_IN_THE_AIR_HEADER = -1000077,
	LUNAR_FESTIVAL_HEADER = -1000078,
	MIDSUMMER_FIRE_FESTIVAL_HEADER = -1000079,
	NOBLEGARDEN_HEADER = -1000080,
	PILGRIMS_BOUNTY_HEADER = -1000081,
	PIRATES_DAY_HEADER = -1000082,
	IN_GAME_SHOP = -1000083,
	HONOR_TITLES = -1000109,
	PVP = -1000111,
	TIER_ZERO_POINT_FIVE_SETS = -1000125,
};

local a = L.HEADER_ICONS;
for key,value in pairs({
	[-1000000] = _.asset("Category_Achievements"),
	[-1000002] = _.asset("Interface_World_boss"),
	[-1000003] = _.asset("Achievement_Garrison_Horde_PVE"),
	[-1000006] = "Interface/Icons/INV_Misc_Coin_02",
	[-1000007] = _.asset("Category_Crafting"),
	[-1000008] = "Interface/Icons/inv_misc_book_07",
	[-1000011] = "Interface/Icons/INV_Misc_Map02",
	[-1000012] = _.asset("Category_Factions"),
	[-1000013] = _.asset("Category_FlightPaths"),
	[-1000015] = _.asset("Category_Holidays"),
	[-1000016] = "Interface/Icons/Inv_misc_map02",
	[-1000019] = _.asset("Category_Professions"),
	[-1000020] = _.asset("Interface_Quest_header"),
	[-1000021] = _.asset("Interface_Rare"),
	[-1000022] = _.asset("Interface_Rewards"),
	[-1000024] = "Interface/Icons/inv_sword_40",
	[-1000025] = _.asset("Interface_Tchest"),
	[-1000026] = _.asset("Interface_Vendor"),
	[-1000028] = _.asset("Interface_World_boss"),
	[-1000030] = _.asset("Interface_Zone_drop"),
	[-1000033] = "Interface/Icons/INV_Misc_Head_Dragon_Green",
	[-1000034] = "Interface/Icons/inv_trinket_naxxramas04",
	[-1000035] = "Interface/Icons/ability_rogue_deviouspoisons",
	[-1000036] = "Interface/Icons/spell_deathknight_classicon",
	[-1000037] = "Interface/Icons/inv_misc_cauldron_nature",
	[-1000038] = "Interface/Icons/inv_misc_head_dragon_blue",
	[-1000040] = "Interface/Icons/INV_Misc_Bag_08",
	[-1000041] = "Interface/Icons/INV_Misc_Bag_09",
	[-1000042] = "Interface/Icons/INV_Misc_Bag_10",
	[-1000043] = "Interface/Icons/INV_Misc_Bag_11",
	[-1000044] = "Interface/Icons/INV_Box_01",
	[-1000045] = "Interface/Icons/INV_Chest_Plate03",
	[-1000046] = "Interface/Icons/inv_misc_cape_11",
	[-1000047] = "Interface/Icons/inv_chest_chain",
	[-1000048] = "Interface/Icons/inv_boots_09",
	[-1000050] = "Interface/Icons/Inv_gauntlets_24",
	[-1000051] = "Interface/Icons/inv_helmet_03",
	[-1000052] = "Interface/Icons/inv_pants_09",
	[-1000055] = "Interface/Icons/inv_shoulder_05",
	[-1000057] = "Interface/Icons/inv_belt_24",
	[-1000058] = "Interface/Icons/INV_Sword_23",
	[-1000059] = "Interface/Icons/inv_bracer_07",
	[-1000068] = "Interface/FriendsFrame/PlusManz-Alliance",
	[-1000069] = "Interface/FriendsFrame/PlusManz-Horde",
	[-1000070] = "Interface/FriendsFrame/PlusManz-PlusManz",
	[-1000071] = _.asset("Holiday_brewfest"),
	[-1000072] = _.asset("Holiday_Children"),
	[-1000073] = _.asset("Holiday_Day_of_the_Dead"),
	[-1000074] = _.asset("Holiday_winter_veil"),
	[-1000075] = _.asset("Holiday_hallows_end"),
	[-1000076] = _.asset("Holiday_Harvestfest"),
	[-1000077] = _.asset("Holiday_love"),
	[-1000078] = _.asset("Holiday_Lunar"),
	[-1000079] = _.asset("Holiday_Midsummer"),
	[-1000080] = _.asset("Holiday_noblegarden"),
	[-1000081] = _.asset("Holiday_Pilgrim"),
	[-1000082] = _.asset("Holiday_Pirate"),
	[-1000083] = _.asset("Category_InGameShop"),
	[-1000090] = _.asset("Weapon_Type_Legendary"),
	[-1000101] = _.asset("Expansion_TBC"),
	[-1000109] = "Interface/Icons/inv_sword_48",
	[-1000110] = "Interface/Icons/inv_jewelry_amulet_03",
	[-1000111] = _.asset("Category_PvP"),
	[-1000112] = "Interface/Icons/achievement_featsofstrength_gladiator_01",
	[-1000113] = "Interface/Icons/achievement_featsofstrength_gladiator_02",
	[-1000114] = "Interface/Icons/achievement_featsofstrength_gladiator_03",
	[-1000115] = "Interface/Icons/achievement_featsofstrength_gladiator_04",
	[-1000116] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000117] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000118] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000119] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000120] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000125] = "Interface/Icons/INV_Chest_Plate03",
	[-1000126] = "Interface/Icons/achievement_pvp_h_12",
	[-1000127] = "Interface/Icons/Inv_misc_ahnqirajtrinket_06",
	[-1000128] = "Interface/Icons/Achievement_Zone_Blackrock_01",
	[-1000129] = "Interface/Icons/Achievement_Zone_Blackrock_01",
	[-1000130] = "Interface/Icons/Ability_Warlock_DemonicEmpowerment",
	[-1000131] = "Interface/Icons/Achievement_Reputation_Ogre",
	[-1000132] = "Interface/Icons/INV_Misc_Head_Elf_02",
	[-1000133] = "Interface/Icons/spell_arcane_portalironforge",
	[-1000134] = "Interface/Icons/INV_Misc_Gem_Opal_01",
	[-1000135] = "Interface/Icons/INV_Misc_Gem_Amethyst_02",
	[-1000136] = "Interface/Icons/Inv_misc_bone_humanskull_01",
	[-1000137] = "Interface/Icons/INV_Misc_Book_13",
	[-1000138] = "Interface/Icons/inv_helmet_25",
	[-1000139] = "Interface/Icons/inv_helmet_12",
	[-1000140] = "Interface/Icons/INV_Misc_Token_ScarletCrusade",
	[-1000141] = "Interface/Icons/INV_MISC_KEY_13",
	[-1000142] = "Interface/Icons/achievement_dungeon_icecrown_icecrownentrance",
	[-1000143] = "Interface/Icons/achievement_dungeon_plaguewing",
	[-1000144] = "Interface/Icons/achievement_dungeon_crimsonhall",
	[-1000145] = "Interface/Icons/achievement_dungeon_icecrown_frostwinghalls",
	[-1000146] = "Interface/Icons/inv_fishingpole_03",
	[-1000147] = "Interface/Icons/inv_misc_fish_06",
	[-1000148] = "Interface/Icons/achievement_reputation_argentchampion",
	[-1000149] = "Interface/Icons/inv_jewelry_amulet_03",
}) do a[key] = value; end

local a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000000] = ACHIEVEMENTS,
	[-1000002] = RAID_BOSSES,
	[-1000003] = BATTLE_PET_BREED_QUALITY2.." "..TRANSMOG_SOURCE_1,
	[-1000006] = "Common Vendor Items",
	[-1000007] = LOOT_JOURNAL_LEGENDARIES_SOURCE_CRAFTED_ITEM,
	[-1000008] = BATTLE_PET_SOURCE_11,
	[-1000011] = "Exploration",
	[-1000012] = FACTION,
	[-1000013] = "Flight Paths",
	[-1000015] = "Holiday",
	[-1000016] = BRAWL_TOOLTIP_MAPS,
	[-1000019] = TRADE_SKILLS,
	[-1000020] = TRACKER_HEADER_QUESTS,
	[-1000021] = BATTLE_PET_BREED_QUALITY4,
	[-1000022] = QUEST_REWARDS,
	[-1000024] = SPECIAL,
	[-1000025] = "Treasures",
	[-1000026] = BATTLE_PET_SOURCE_3,
	[-1000028] = WORLD.." "..RAID_BOSSES,
	[-1000030] = ZONE.." "..BATTLE_PET_SOURCE_1,
	[-1000033] = "Dragons of Nightmare",
	[-1000034] = DUNGEON_FLOOR_NAXXRAMAS2,
	[-1000035] = DUNGEON_FLOOR_NAXXRAMAS1,
	[-1000036] = DUNGEON_FLOOR_NAXXRAMAS3,
	[-1000037] = DUNGEON_FLOOR_NAXXRAMAS4,
	[-1000038] = DUNGEON_FLOOR_NAXXRAMAS6,
	[-1000040] = "Timed Event",
	[-1000041] = "First Chest",
	[-1000042] = "Second Chest",
	[-1000043] = "Third Chest",
	[-1000044] = "Final Chest",
	[-1000045] = ARMOR,
	[-1000046] = INVTYPE_CLOAK,
	[-1000047] = INVTYPE_CHEST,
	[-1000048] = INVTYPE_FEET,
	[-1000050] = INVTYPE_HAND,
	[-1000051] = INVTYPE_HEAD,
	[-1000052] = INVTYPE_LEGS,
	[-1000055] = INVTYPE_SHOULDER,
	[-1000057] = INVTYPE_WAIST,
	[-1000058] = AUCTION_CATEGORY_WEAPONS,
	[-1000059] = INVTYPE_WRIST,
	[-1000068] = FACTION_ALLIANCE,
	[-1000069] = FACTION_HORDE,
	[-1000070] = COMBATLOG_FILTER_STRING_NEUTRAL_UNITS,
	[-1000071] = select(1,GetCategoryInfo(162)),
	[-1000072] = select(1,GetCategoryInfo(163)),
	[-1000073] = "Day of the Dead",
	[-1000074] = GetSpellInfo(21953),
	[-1000075] = select(1,GetCategoryInfo(158)),
	[-1000076] = "Harvest Festival",
	[-1000077] = select(1,GetCategoryInfo(187)),
	[-1000078] = select(1,GetCategoryInfo(160)),
	[-1000079] = "Midsummer Fire Festival",
	[-1000080] = select(1,GetCategoryInfo(159)),
	[-1000081] = select(1,GetCategoryInfo(14981)),
	[-1000082] = "Pirates' Day",
	[-1000083] = BATTLE_PET_SOURCE_10,
	[-1000090] = ITEM_QUALITY5_DESC,
	[-1000101] = "Patch 2.x.x",
	[-1000109] = "Honor Titles",
	[-1000110] = HONOR,
	[-1000111] = PVP,
	[-1000112] = select(2, GetAchievementInfo(2091))..": Season 1",
	[-1000113] = select(2, GetAchievementInfo(418))..": Season 2",
	[-1000114] = select(2, GetAchievementInfo(419))..": Season 3",
	[-1000115] = select(2, GetAchievementInfo(420))..": Season 4",
	[-1000116] = select(2, GetAchievementInfo(3336))..": Season 5",
	[-1000117] = "Hateful Gladiator",
	[-1000118] = select(2, GetAchievementInfo(3436))..": Season 6",
	[-1000119] = select(2, GetAchievementInfo(3758))..": Season 7",
	[-1000120] = select(2, GetAchievementInfo(4599))..": Season 8",
	[-1000125] = "Tier 0.5 Sets",
	[-1000126] = "Captains",
	[-1000127] = "Silithid Royalty",
	[-1000128] = DUNGEON_FLOOR_BLACKROCKDEPTHS1,
	[-1000129] = DUNGEON_FLOOR_BLACKROCKDEPTHS2,
	[-1000130] = DUNGEON_FLOOR_DIREMAUL5.." (East)",
	[-1000131] = DUNGEON_FLOOR_DIREMAUL1.." (North)",
	[-1000132] = DUNGEON_FLOOR_DIREMAUL2.." (West)",
	[-1000133] = GetSpellInfo(21127),
	[-1000134] = DUNGEON_FLOOR_DESOLACE22.." (Orange Path)",
	[-1000135] = DUNGEON_FLOOR_DESOLACE21.." (Purple Path)",
	[-1000136] = "Graveyard",
	[-1000137] = "Library",
	[-1000138] = "Armory",
	[-1000139] = "Cathedral",
	[-1000140] = "Main Gate",
	[-1000141] = "Service Entrance",
	[-1000142] = "Storming the Citadel",
	[-1000143] = "The Plagueworks",
	[-1000144] = C_Map.GetAreaInfo(4892),
	[-1000145] = "The Frostwing Halls",
	[-1000146] = "Kalu'ak Fishing Derby",
	[-1000147] = "Stranglethorn Fishing Extravaganza",
	[-1000148] = select(1,GetCategoryInfo(14941)),
	[-1000149] = "Spirit of Competition",
}) do a[key] = value; end

local a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000015] = "A specific holiday may need to be active for you to complete the referenced Things within this section.",
	[-1000019] = "This section will only show your current character's professions outside of Account and Debug Mode.",
	[-1000022] = "Contains Things which are rewarded or are available from other content within the containing section.\nThey are consolidated here in an effort to reduce duplication from many possible Sources.",
	[-1000083] = "This section will show you things that you could buy in the In-Game Shop in Retail.",
	[-1000130] = "This part of the instance can be accessed from the eastern-most portal. (right side)",
	[-1000131] = "This part of the instance can be accessed from the northern-most portal.",
	[-1000132] = "This part of the instance can be accessed from the western-most portal. (left side)",
	[-1000140] = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Live\" or \"Scarlet\" side, which the Scarlet Crusade has taken over.",
	[-1000141] = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Dead\" or \"Scourge\" side, which the Scourge has taken over.",
	[-1000149] = "This is a Battlegrounds-based event that coincides with the beginning of the Summer Olympic games. The only time this was celebrated was in 2008 to correspond to the Beijing Olympics, and although there appeared to be the intention to repeat this event, it never returned.",
}) do a[key] = value; end

local a = L.HEADER_LORE;
for key,value in pairs({
	[-1000033] = "One of these dragons will spawn randomly at the associated coordinates across Azeroth.",
	[-1000125] = "The Dungeon Set 2 class sets, commonly referred to as Tier 0.5, are obtained by completing a long quest chain to upgrade the first set available as drops in end game dungeons into stronger versions of themselves. In current WoW, these sets are covetted by Collectors as the quest chain was completely removed from the game with Cataclysm. In WoW Classic, you should finish this quest chain on all of your characters before then!",
	[-1000126] = "These can be farmed infinitely by resetting the boss.",
}) do a[key] = value; end

if simplifiedLocale == "de" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000003] = "Gemeinsame Bossbeute",
	[-1000011] = "Erkundung",
	[-1000033] = "Drachen des Alptraums",
	[-1000073] = "Tag der Toten",
	[-1000079] = "Sonnenwendfest",
	[-1000082] = "Piratentag",
	[-1000117] = "Hasserfüllten Gladiator",
	[-1000136] = "Friedhof",
	[-1000137] = "Bibliothek",
	[-1000138] = "Waffenkammer",
	[-1000139] = "Kathedrale",
	[-1000142] = "Sturm auf die Zitadelle",
	[-1000143] = "Die Seuchenwerke",
	[-1000145] = "Die Frostschwingenhallen",
	[-1000146] = "Angelwettstreit der Kalu'ak",
	[-1000147] = "Anglerwettbewerb im Schlingendorntal",
}) do a[key] = value; end
end

if simplifiedLocale == "es" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000073] = "Festividad de los Muertos",
	[-1000079] = "Festival del Fuego del Solsticio de Verano",
	[-1000082] = "Día de los Piratas",
	[-1000117] = "Gladiador Odioso",
	[-1000142] = "Asaltar la Ciudadela",
	[-1000143] = "Los Talleres de la Peste",
	[-1000145] = "Las Cámaras de Alaescarcha",
	[-1000146] = "Competición de pesca Kalu'ak",
	[-1000147] = "Gran espectáculo de pesca de Tuercespina",
}) do a[key] = value; end
end

if simplifiedLocale == "fr" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000006] = "Objets communs des vendeurs",
	[-1000011] = "Exploration",
	[-1000033] = "Dragons du Cauchemar",
	[-1000040] = "Événement chronométré",
	[-1000041] = "Premier coffre",
	[-1000042] = "Second coffre",
	[-1000043] = "Troisième coffre",
	[-1000044] = "Coffre final",
	[-1000073] = "Jour des morts",
	[-1000079] = "Fête du Feu du solstice d’été",
	[-1000082] = "Jour des pirates",
	[-1000112] = select(2, GetAchievementInfo(2091))..": Saison 1",
	[-1000113] = select(2, GetAchievementInfo(418))..": Saison 2",
	[-1000114] = select(2, GetAchievementInfo(419))..": Saison 3",
	[-1000115] = select(2, GetAchievementInfo(420))..": Saison 4",
	[-1000116] = select(2, GetAchievementInfo(3336))..": Saison 5",
	[-1000117] = "Gladiateur Haineux",
	[-1000118] = select(2, GetAchievementInfo(3436))..": Saison 6",
	[-1000119] = select(2, GetAchievementInfo(3758))..": Saison 7",
	[-1000120] = select(2, GetAchievementInfo(4599))..": Saison 8",
	[-1000125] = "Ensembles Tier 0.5",
	[-1000126] = "Capitaines",
	[-1000130] = DUNGEON_FLOOR_DIREMAUL5.." (Est)",
	[-1000131] = DUNGEON_FLOOR_DIREMAUL1.." (Nord)",
	[-1000132] = DUNGEON_FLOOR_DIREMAUL2.." (Ouest)",
	[-1000136] = "Cimetière",
	[-1000137] = "Librairie",
	[-1000138] = "Armurerie",
	[-1000139] = "Cathédrale",
	[-1000142] = "La prise de la citadelle",
	[-1000143] = "La Pesterie",
	[-1000145] = "Les salles de l'Aile de givre",
	[-1000146] = "Le tournoi de pêche kalu'ak",
	[-1000147] = "Concours de pêche de Strangleronce",
}) do a[key] = value; end
end

if simplifiedLocale == "it" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000073] = "Giorno dei Morti",
	[-1000079] = "Fuochi di Mezza Estate",
	[-1000082] = "Giorno dei Pirati",
	[-1000117] = "Gladiatore Perfido",
	[-1000142] = "Assalto alla rocca",
	[-1000143] = "Sale della Pestilenza",
	[-1000145] = "Sale delle Ali del Gelo",
	[-1000146] = "La gara di pesca dei Kalu'ak",
	[-1000147] = "Gara di Pesca a Rovotorto",
}) do a[key] = value; end
end

if simplifiedLocale == "ko" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000073] = "망자의 날",
	[-1000079] = "한여름 불꽃축제",
	[-1000082] = "해적의 날",
	[-1000117] = "원한에 검투사",
	[-1000142] = "성채 몰아치기",
	[-1000143] = "역병작업장",
	[-1000145] = "서리날개 전당",
	[-1000146] = "칼루아크 낚시 대회",
	[-1000147] = "가시덤불 골짜기 낚시왕 선발대회",
}) do a[key] = value; end
end

if simplifiedLocale == "pt" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000073] = "Dia dos Mortos",
	[-1000079] = "Festival do Fogo do Solstício",
	[-1000082] = "Dia dos Piratas",
	[-1000117] = "Gladiador Odioso",
	[-1000142] = "Invasão da Cidadela",
	[-1000143] = "Antro da Peste",
	[-1000145] = "Salões da Asa Gélida",
	[-1000146] = "Campeonato de Pesca dos Kalu'ak",
	[-1000147] = "Festerê de Pesca da Selva do Espinhaço",
}) do a[key] = value; end
end

if simplifiedLocale == "ru" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000003] = "Общая добыча с боссов",
	[-1000006] = "Обычные предметы у Торговцев",
	[-1000011] = "Исследование",
	[-1000013] = "Точка полета",
	[-1000021] = "Редкие",
	[-1000025] = "Сундук с сокровищами",
	[-1000028] = "Мировые Боссы",
	[-1000030] = "Добыча локации",
	[-1000033] = "Драконы Кошмара",
	[-1000040] = "Временное Событие",
	[-1000041] = "Первый Сундук",
	[-1000042] = "Второй Сундук",
	[-1000043] = "Третий Сундук",
	[-1000044] = "Последний Сундук",
	[-1000073] = "День мертвых",
	[-1000079] = "Огненный Солнцеворот",
	[-1000082] = "День пирата",
	[-1000112] = select(2, GetAchievementInfo(2091))..": Сезон 1",
	[-1000113] = select(2, GetAchievementInfo(418))..": Сезон 2",
	[-1000114] = select(2, GetAchievementInfo(419))..": Сезон 3",
	[-1000115] = select(2, GetAchievementInfo(420))..": Сезон 4",
	[-1000116] = select(2, GetAchievementInfo(3336))..": Сезон 5",
	[-1000117] = "Злобный гладиатор",
	[-1000118] = select(2, GetAchievementInfo(3436))..": Сезон 6",
	[-1000119] = select(2, GetAchievementInfo(3758))..": Сезон 7",
	[-1000120] = select(2, GetAchievementInfo(4599))..": Сезон 8",
	[-1000125] = "Комплекты T0.5",
	[-1000126] = "Капитаны",
	[-1000130] = DUNGEON_FLOOR_DIREMAUL5.." (Восток)",
	[-1000131] = DUNGEON_FLOOR_DIREMAUL1.." (Север)",
	[-1000132] = DUNGEON_FLOOR_DIREMAUL2.." (Запад)",
	[-1000136] = "Кладбище",
	[-1000137] = "Библиотека",
	[-1000138] = "Оружейная",
	[-1000139] = "Собор",
	[-1000142] = "Штурм цитадели",
	[-1000143] = "Чумодельня",
	[-1000145] = "Залы Ледокрылых",
	[-1000146] = "Калуакское рыбоборье",
	[-1000147] = "Рыбомания Тернистой долины",
}) do a[key] = value; end
end

if simplifiedLocale == "zh" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000006] = "常规商人物品",
	[-1000011] = "勘探",
	[-1000033] = "梦魇之龙",
	[-1000040] = "限时事件",
	[-1000041] = "一箱",
	[-1000042] = "二箱",
	[-1000043] = "三箱",
	[-1000044] = "最终宝箱",
	[-1000073] = "悼念日",
	[-1000079] = "仲夏火焰节",
	[-1000082] = "海盗日",
	[-1000112] = select(2, GetAchievementInfo(2091)).."：第1赛季",
	[-1000113] = select(2, GetAchievementInfo(418)).."：第2赛季",
	[-1000114] = select(2, GetAchievementInfo(419)).."：第3赛季",
	[-1000115] = select(2, GetAchievementInfo(420)).."：第4赛季",
	[-1000116] = select(2, GetAchievementInfo(3336)).."：第5赛季",
	[-1000117] = "憎恨角斗士",
	[-1000118] = select(2, GetAchievementInfo(3436)).."：第6赛季",
	[-1000119] = select(2, GetAchievementInfo(3758)).."：第7赛季",
	[-1000120] = select(2, GetAchievementInfo(4599)).."：第8赛季",
	[-1000125] = "等级 0.5 套装",
	[-1000126] = "船长",
	[-1000130] = DUNGEON_FLOOR_DIREMAUL5.." (东)",
	[-1000131] = DUNGEON_FLOOR_DIREMAUL1.." (北)",
	[-1000132] = DUNGEON_FLOOR_DIREMAUL2.." (西)",
	[-1000136] = "墓地",
	[-1000137] = "图书馆",
	[-1000138] = "武器库",
	[-1000139] = "修道院",
	[-1000142] = "进攻堡垒",
	[-1000143] = "天灾工厂",
	[-1000145] = "霜翼大厅",
	[-1000146] = "卡鲁亚克钓鱼大赛",
	[-1000147] = "荆棘谷钓鱼大赛",
}) do a[key] = value; end
end

if simplifiedLocale == "cn" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000022] = "包含有奖励或可从包含部分中的其他内容获得的事物。\n在此处合并以减少来自许多可能重复来源。",
}) do a[key] = value; end
end

if simplifiedLocale == "fr" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000022] = "Contient des objets de récompenses ou disponibles dans d’autres contenus de la section qui les contient.\nIls sont regroupés ici dans le but de réduire la duplication de nombreuses sources possibles.",
}) do a[key] = value; end
end

if simplifiedLocale == "ru" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000022] = "Штучки, которые можно получить в награду с разного контента в родительской секции.\nОни собраны здесь, чтобы уменьшить количество источников, когда Штучка доступна из многих мест.",
}) do a[key] = value; end
end