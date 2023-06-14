﻿-------------------------------------------------------
--   C U S T O M   H E A D E R S   M O D U L E   --
-------------------------------------------------------
local _ = select(2, ...);
local L = _.L;
local simplifiedLocale = string.sub(GetLocale(),1,2);

_.HeaderConstants = {
	ACHIEVEMENTS = -1000004,
	COMMON_BOSS_DROPS = -1000007,
	COMMON_VENDOR_ITEMS = -1000010,
	CRAFTED_ITEMS = -1000011,
	DISCOVERY = -1000012,
	EXPLORATION = -1000015,
	FACTIONS = -1000016,
	FLIGHT_PATHS = -1000017,
	HOLIDAYS = -1000019,
	PROFESSIONS = -1000023,
	QUESTS = -1000024,
	RARES = -1000025,
	REWARDS = -1000026,
	SPECIAL = -1000028,
	TREASURES = -1000029,
	VENDORS = -1000030,
	WORLD_BOSSES = -1000032,
	ZONE_DROPS = -1000034,
	WEAPONS = -1000062,
	IN_GAME_SHOP = -1000077,
	HONOR_TITLES = -1000103,
	PVP = -1000105,
	DARKMOON_FAIRE_HEADER = -1000119,
	TIER_ZERO_POINT_FIVE_SETS = -1000120,
	LUNAR_FESTIVAL_HEADER = -1000141,
	LOVE_IS_IN_THE_AIR_HEADER = -1000142,
	NOBLEGARDEN_HEADER = -1000143,
	CHILDRENS_WEEK_HEADER = -1000144,
	MIDSUMMER_FIRE_FESTIVAL_HEADER = -1000145,
	PIRATES_DAY_HEADER = -1000146,
	BREWFEST_HEADER = -1000147,
	HARVEST_FESTIVAL_HEADER = -1000148,
	HALLOWS_END_HEADER = -1000149,
	DAY_OF_THE_DEAD_HEADER = -1000150,
	PILGRIMS_BOUNTY_HEADER = -1000151,
	FEAST_OF_WINTER_VEIL_HEADER = -1000152,
};

local a = L.HEADER_EVENTS;
for key,value in pairs({
	[-1000119] = 479,
	[-1000141] = 327,
	[-1000142] = 423,
	[-1000143] = 181,
	[-1000144] = 201,
	[-1000145] = 341,
	[-1000146] = 398,
	[-1000147] = 372,
	[-1000148] = 321,
	[-1000149] = 324,
	[-1000150] = 409,
	[-1000151] = 404,
	[-1000152] = 141,
	[-1000153] = 424,
	[-1000154] = 301,
}) do a[key] = value; end

local a = L.EVENT_REMAPPING;
for key,value in pairs({
	[374] = 479,
	[375] = 479,
	[376] = 479,
}) do a[key] = value; end

local a = L.HEADER_ICONS;
for key,value in pairs({
	[-1000004] = _.asset("Category_Achievements"),
	[-1000006] = _.asset("Interface_World_boss"),
	[-1000007] = _.asset("Achievement_Garrison_Horde_PVE"),
	[-1000010] = "Interface/Icons/INV_Misc_Coin_02",
	[-1000011] = _.asset("Category_Crafting"),
	[-1000012] = "Interface/Icons/inv_misc_book_07",
	[-1000015] = "Interface/Icons/INV_Misc_Map02",
	[-1000016] = _.asset("Category_Factions"),
	[-1000017] = _.asset("Category_FlightPaths"),
	[-1000019] = _.asset("Category_Holidays"),
	[-1000020] = "Interface/Icons/Inv_misc_map02",
	[-1000023] = _.asset("Category_Professions"),
	[-1000024] = _.asset("Interface_Quest_header"),
	[-1000025] = _.asset("Interface_Rare"),
	[-1000026] = _.asset("Interface_Rewards"),
	[-1000028] = "Interface/Icons/inv_sword_40",
	[-1000029] = _.asset("Interface_Tchest"),
	[-1000030] = _.asset("Interface_Vendor"),
	[-1000032] = _.asset("Interface_World_boss"),
	[-1000034] = _.asset("Interface_Zone_drop"),
	[-1000037] = "Interface/Icons/INV_Misc_Head_Dragon_Green",
	[-1000038] = "Interface/Icons/inv_trinket_naxxramas04",
	[-1000039] = "Interface/Icons/ability_rogue_deviouspoisons",
	[-1000040] = "Interface/Icons/spell_deathknight_classicon",
	[-1000041] = "Interface/Icons/inv_misc_cauldron_nature",
	[-1000042] = "Interface/Icons/inv_misc_head_dragon_blue",
	[-1000044] = "Interface/Icons/INV_Misc_Bag_08",
	[-1000045] = "Interface/Icons/INV_Misc_Bag_09",
	[-1000046] = "Interface/Icons/INV_Misc_Bag_10",
	[-1000047] = "Interface/Icons/INV_Misc_Bag_11",
	[-1000048] = "Interface/Icons/INV_Box_01",
	[-1000049] = "Interface/Icons/INV_Chest_Plate03",
	[-1000050] = "Interface/Icons/inv_misc_cape_11",
	[-1000051] = "Interface/Icons/inv_chest_chain",
	[-1000052] = "Interface/Icons/inv_boots_09",
	[-1000054] = "Interface/Icons/Inv_gauntlets_24",
	[-1000055] = "Interface/Icons/inv_helmet_03",
	[-1000056] = "Interface/Icons/inv_pants_09",
	[-1000059] = "Interface/Icons/inv_shoulder_05",
	[-1000061] = "Interface/Icons/inv_belt_24",
	[-1000062] = "Interface/Icons/INV_Sword_23",
	[-1000063] = "Interface/Icons/inv_bracer_07",
	[-1000074] = "Interface/FriendsFrame/PlusManz-Alliance",
	[-1000075] = "Interface/FriendsFrame/PlusManz-Horde",
	[-1000076] = "Interface/FriendsFrame/PlusManz-PlusManz",
	[-1000077] = _.asset("Category_InGameShop"),
	[-1000084] = _.asset("Weapon_Type_Legendary"),
	[-1000095] = _.asset("Expansion_TBC"),
	[-1000103] = "Interface/Icons/inv_sword_48",
	[-1000104] = "Interface/Icons/inv_jewelry_amulet_03",
	[-1000105] = _.asset("Category_PvP"),
	[-1000106] = "Interface/Icons/achievement_featsofstrength_gladiator_01",
	[-1000107] = "Interface/Icons/achievement_featsofstrength_gladiator_02",
	[-1000108] = "Interface/Icons/achievement_featsofstrength_gladiator_03",
	[-1000109] = "Interface/Icons/achievement_featsofstrength_gladiator_04",
	[-1000110] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000111] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000112] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000113] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000114] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000119] = _.asset("Event_dmf"),
	[-1000120] = "Interface/Icons/INV_Chest_Plate03",
	[-1000121] = "Interface/Icons/achievement_pvp_h_12",
	[-1000122] = "Interface/Icons/Inv_misc_ahnqirajtrinket_06",
	[-1000123] = "Interface/Icons/Achievement_Zone_Blackrock_01",
	[-1000124] = "Interface/Icons/Achievement_Zone_Blackrock_01",
	[-1000125] = "Interface/Icons/Ability_Warlock_DemonicEmpowerment",
	[-1000126] = "Interface/Icons/Achievement_Reputation_Ogre",
	[-1000127] = "Interface/Icons/INV_Misc_Head_Elf_02",
	[-1000128] = "Interface/Icons/spell_arcane_portalironforge",
	[-1000129] = "Interface/Icons/INV_Misc_Gem_Opal_01",
	[-1000130] = "Interface/Icons/INV_Misc_Gem_Amethyst_02",
	[-1000131] = "Interface/Icons/Inv_misc_bone_humanskull_01",
	[-1000132] = "Interface/Icons/INV_Misc_Book_13",
	[-1000133] = "Interface/Icons/inv_helmet_25",
	[-1000134] = "Interface/Icons/inv_helmet_12",
	[-1000135] = "Interface/Icons/INV_Misc_Token_ScarletCrusade",
	[-1000136] = "Interface/Icons/INV_MISC_KEY_13",
	[-1000137] = "Interface/Icons/achievement_dungeon_icecrown_icecrownentrance",
	[-1000138] = "Interface/Icons/achievement_dungeon_plaguewing",
	[-1000139] = "Interface/Icons/achievement_dungeon_crimsonhall",
	[-1000140] = "Interface/Icons/achievement_dungeon_icecrown_frostwinghalls",
	[-1000141] = _.asset("Holiday_Lunar"),
	[-1000142] = _.asset("Holiday_love"),
	[-1000143] = _.asset("Holiday_noblegarden"),
	[-1000144] = _.asset("Holiday_Children"),
	[-1000145] = _.asset("Holiday_Midsummer"),
	[-1000146] = _.asset("Holiday_Pirate"),
	[-1000147] = _.asset("Holiday_brewfest"),
	[-1000148] = _.asset("Holiday_Harvestfest"),
	[-1000149] = _.asset("Holiday_hallows_end"),
	[-1000150] = _.asset("Holiday_Day_of_the_Dead"),
	[-1000151] = _.asset("Holiday_Pilgrim"),
	[-1000152] = _.asset("Holiday_winter_veil"),
	[-1000153] = "Interface/Icons/inv_fishingpole_03",
	[-1000154] = "Interface/Icons/inv_misc_fish_06",
	[-1000155] = "Interface/Icons/achievement_reputation_argentchampion",
	[-1000156] = "Interface/Icons/inv_misc_celebrationcake_01",
	[-1000157] = "Interface/Icons/inv_misc_celebrationcake_01",
	[-1000161] = "Interface/Icons/inv_jewelry_amulet_03",
}) do a[key] = value; end

local a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000004] = ACHIEVEMENTS,
	[-1000006] = RAID_BOSSES,
	[-1000007] = BATTLE_PET_BREED_QUALITY2.." "..TRANSMOG_SOURCE_1,
	[-1000010] = "Common Vendor Items",
	[-1000011] = LOOT_JOURNAL_LEGENDARIES_SOURCE_CRAFTED_ITEM,
	[-1000012] = BATTLE_PET_SOURCE_11,
	[-1000015] = "Exploration",
	[-1000016] = FACTION,
	[-1000017] = "Flight Paths",
	[-1000019] = "Holiday",
	[-1000020] = BRAWL_TOOLTIP_MAPS,
	[-1000023] = TRADE_SKILLS,
	[-1000024] = TRACKER_HEADER_QUESTS,
	[-1000025] = BATTLE_PET_BREED_QUALITY4,
	[-1000026] = QUEST_REWARDS,
	[-1000028] = SPECIAL,
	[-1000029] = "Treasures",
	[-1000030] = BATTLE_PET_SOURCE_3,
	[-1000032] = WORLD.." "..RAID_BOSSES,
	[-1000034] = ZONE.." "..BATTLE_PET_SOURCE_1,
	[-1000037] = "Dragons of Nightmare",
	[-1000038] = DUNGEON_FLOOR_NAXXRAMAS2,
	[-1000039] = DUNGEON_FLOOR_NAXXRAMAS1,
	[-1000040] = DUNGEON_FLOOR_NAXXRAMAS3,
	[-1000041] = DUNGEON_FLOOR_NAXXRAMAS4,
	[-1000042] = DUNGEON_FLOOR_NAXXRAMAS6,
	[-1000044] = "Timed Event",
	[-1000045] = "First Chest",
	[-1000046] = "Second Chest",
	[-1000047] = "Third Chest",
	[-1000048] = "Final Chest",
	[-1000049] = ARMOR,
	[-1000050] = INVTYPE_CLOAK,
	[-1000051] = INVTYPE_CHEST,
	[-1000052] = INVTYPE_FEET,
	[-1000054] = INVTYPE_HAND,
	[-1000055] = INVTYPE_HEAD,
	[-1000056] = INVTYPE_LEGS,
	[-1000059] = INVTYPE_SHOULDER,
	[-1000061] = INVTYPE_WAIST,
	[-1000062] = AUCTION_CATEGORY_WEAPONS,
	[-1000063] = INVTYPE_WRIST,
	[-1000074] = FACTION_ALLIANCE,
	[-1000075] = FACTION_HORDE,
	[-1000076] = COMBATLOG_FILTER_STRING_NEUTRAL_UNITS,
	[-1000077] = BATTLE_PET_SOURCE_10,
	[-1000084] = ITEM_QUALITY5_DESC,
	[-1000095] = "Patch 2.x.x",
	[-1000103] = "Honor Titles",
	[-1000104] = HONOR,
	[-1000105] = PVP,
	[-1000106] = select(2, GetAchievementInfo(2091))..": Season 1",
	[-1000107] = select(2, GetAchievementInfo(418))..": Season 2",
	[-1000108] = select(2, GetAchievementInfo(419))..": Season 3",
	[-1000109] = select(2, GetAchievementInfo(420))..": Season 4",
	[-1000110] = select(2, GetAchievementInfo(3336))..": Season 5",
	[-1000111] = "Hateful Gladiator",
	[-1000112] = select(2, GetAchievementInfo(3436))..": Season 6",
	[-1000113] = select(2, GetAchievementInfo(3758))..": Season 7",
	[-1000114] = select(2, GetAchievementInfo(4599))..": Season 8",
	[-1000119] = "Darkmoon Faire",
	[-1000120] = "Tier 0.5 Sets",
	[-1000121] = "Captains",
	[-1000122] = "Silithid Royalty",
	[-1000123] = DUNGEON_FLOOR_BLACKROCKDEPTHS1,
	[-1000124] = DUNGEON_FLOOR_BLACKROCKDEPTHS2,
	[-1000125] = DUNGEON_FLOOR_DIREMAUL5.." (East)",
	[-1000126] = DUNGEON_FLOOR_DIREMAUL1.." (North)",
	[-1000127] = DUNGEON_FLOOR_DIREMAUL2.." (West)",
	[-1000128] = GetSpellInfo(21127),
	[-1000129] = DUNGEON_FLOOR_DESOLACE22.." (Orange Path)",
	[-1000130] = DUNGEON_FLOOR_DESOLACE21.." (Purple Path)",
	[-1000131] = "Graveyard",
	[-1000132] = "Library",
	[-1000133] = "Armory",
	[-1000134] = "Cathedral",
	[-1000135] = "Main Gate",
	[-1000136] = "Service Entrance",
	[-1000137] = "Storming the Citadel",
	[-1000138] = "The Plagueworks",
	[-1000139] = C_Map.GetAreaInfo(4892),
	[-1000140] = "The Frostwing Halls",
	[-1000141] = select(1,GetCategoryInfo(160)),
	[-1000142] = select(1,GetCategoryInfo(187)),
	[-1000143] = select(1,GetCategoryInfo(159)),
	[-1000144] = select(1,GetCategoryInfo(163)),
	[-1000145] = "Midsummer Fire Festival",
	[-1000146] = "Pirates' Day",
	[-1000147] = select(1,GetCategoryInfo(162)),
	[-1000148] = "Harvest Festival",
	[-1000149] = select(1,GetCategoryInfo(158)),
	[-1000150] = "Day of the Dead",
	[-1000151] = select(1,GetCategoryInfo(14981)),
	[-1000152] = GetSpellInfo(21953),
	[-1000153] = "Kalu'ak Fishing Derby",
	[-1000154] = "Stranglethorn Fishing Extravaganza",
	[-1000155] = select(1,GetCategoryInfo(14941)),
	[-1000156] = select(2,GetAchievementInfo(2398)),
	[-1000157] = select(2,GetAchievementInfo(4400)),
	[-1000161] = "Spirit of Competition",
}) do a[key] = value; end

local a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000019] = "A specific holiday may need to be active for you to complete the referenced Things within this section.",
	[-1000023] = "This section will only show your current character's professions outside of Account and Debug Mode.",
	[-1000026] = "Contains Things which are rewarded or are available from other content within the containing section.\nThey are consolidated here in an effort to reduce duplication from many possible Sources.",
	[-1000077] = "This section will show you things that you could buy in the In-Game Shop in Retail.",
	[-1000125] = "This part of the instance can be accessed from the eastern-most portal. (right side)",
	[-1000126] = "This part of the instance can be accessed from the northern-most portal.",
	[-1000127] = "This part of the instance can be accessed from the western-most portal. (left side)",
	[-1000135] = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Live\" or \"Scarlet\" side, which the Scarlet Crusade has taken over.",
	[-1000136] = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Dead\" or \"Scourge\" side, which the Scourge has taken over.",
	[-1000161] = "This is a Battlegrounds-based event that coincides with the beginning of the Summer Olympic games. The only time this was celebrated was in 2008 to correspond to the Beijing Olympics, and although there appeared to be the intention to repeat this event, it never returned.",
}) do a[key] = value; end

local a = L.HEADER_LORE;
for key,value in pairs({
	[-1000037] = "One of these dragons will spawn randomly at the associated coordinates across Azeroth.",
	[-1000120] = "The Dungeon Set 2 class sets, commonly referred to as Tier 0.5, are obtained by completing a long quest chain to upgrade the first set available as drops in end game dungeons into stronger versions of themselves. In current WoW, these sets are covetted by Collectors as the quest chain was completely removed from the game with Cataclysm. In WoW Classic, you should finish this quest chain on all of your characters before then!",
	[-1000121] = "These can be farmed infinitely by resetting the boss.",
}) do a[key] = value; end

if simplifiedLocale == "de" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000007] = "Gemeinsame Bossbeute",
	[-1000015] = "Erkundung",
	[-1000037] = "Drachen des Alptraums",
	[-1000111] = "Hasserfüllten Gladiator",
	[-1000131] = "Friedhof",
	[-1000132] = "Bibliothek",
	[-1000133] = "Waffenkammer",
	[-1000134] = "Kathedrale",
	[-1000137] = "Sturm auf die Zitadelle",
	[-1000138] = "Die Seuchenwerke",
	[-1000140] = "Die Frostschwingenhallen",
	[-1000145] = "Sonnenwendfest",
	[-1000146] = "Piratentag",
	[-1000150] = "Tag der Toten",
	[-1000153] = "Angelwettstreit der Kalu'ak",
	[-1000154] = "Anglerwettbewerb im Schlingendorntal",
}) do a[key] = value; end
end

if simplifiedLocale == "es" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000111] = "Gladiador Odioso",
	[-1000137] = "Asaltar la Ciudadela",
	[-1000138] = "Los Talleres de la Peste",
	[-1000140] = "Las Cámaras de Alaescarcha",
	[-1000145] = "Festival del Fuego del Solsticio de Verano",
	[-1000146] = "Día de los Piratas",
	[-1000150] = "Festividad de los Muertos",
	[-1000153] = "Competición de pesca Kalu'ak",
	[-1000154] = "Gran espectáculo de pesca de Tuercespina",
}) do a[key] = value; end
end

if simplifiedLocale == "fr" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000010] = "Objets communs des vendeurs",
	[-1000015] = "Exploration",
	[-1000037] = "Dragons du Cauchemar",
	[-1000044] = "Événement chronométré",
	[-1000045] = "Premier coffre",
	[-1000046] = "Second coffre",
	[-1000047] = "Troisième coffre",
	[-1000048] = "Coffre final",
	[-1000106] = select(2, GetAchievementInfo(2091))..": Saison 1",
	[-1000107] = select(2, GetAchievementInfo(418))..": Saison 2",
	[-1000108] = select(2, GetAchievementInfo(419))..": Saison 3",
	[-1000109] = select(2, GetAchievementInfo(420))..": Saison 4",
	[-1000110] = select(2, GetAchievementInfo(3336))..": Saison 5",
	[-1000111] = "Gladiateur Haineux",
	[-1000112] = select(2, GetAchievementInfo(3436))..": Saison 6",
	[-1000113] = select(2, GetAchievementInfo(3758))..": Saison 7",
	[-1000114] = select(2, GetAchievementInfo(4599))..": Saison 8",
	[-1000120] = "Ensembles Tier 0.5",
	[-1000121] = "Capitaines",
	[-1000125] = DUNGEON_FLOOR_DIREMAUL5.." (Est)",
	[-1000126] = DUNGEON_FLOOR_DIREMAUL1.." (Nord)",
	[-1000127] = DUNGEON_FLOOR_DIREMAUL2.." (Ouest)",
	[-1000131] = "Cimetière",
	[-1000132] = "Librairie",
	[-1000133] = "Armurerie",
	[-1000134] = "Cathédrale",
	[-1000137] = "La prise de la citadelle",
	[-1000138] = "La Pesterie",
	[-1000140] = "Les salles de l'Aile de givre",
	[-1000145] = "Fête du Feu du solstice d’été",
	[-1000146] = "Jour des pirates",
	[-1000150] = "Jour des morts",
	[-1000153] = "Le tournoi de pêche kalu'ak",
	[-1000154] = "Concours de pêche de Strangleronce",
}) do a[key] = value; end
end

if simplifiedLocale == "it" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000111] = "Gladiatore Perfido",
	[-1000137] = "Assalto alla rocca",
	[-1000138] = "Sale della Pestilenza",
	[-1000140] = "Sale delle Ali del Gelo",
	[-1000145] = "Fuochi di Mezza Estate",
	[-1000146] = "Giorno dei Pirati",
	[-1000150] = "Giorno dei Morti",
	[-1000153] = "La gara di pesca dei Kalu'ak",
	[-1000154] = "Gara di Pesca a Rovotorto",
}) do a[key] = value; end
end

if simplifiedLocale == "ko" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000111] = "원한에 검투사",
	[-1000137] = "성채 몰아치기",
	[-1000138] = "역병작업장",
	[-1000140] = "서리날개 전당",
	[-1000145] = "한여름 불꽃축제",
	[-1000146] = "해적의 날",
	[-1000150] = "망자의 날",
	[-1000153] = "칼루아크 낚시 대회",
	[-1000154] = "가시덤불 골짜기 낚시왕 선발대회",
}) do a[key] = value; end
end

if simplifiedLocale == "pt" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000111] = "Gladiador Odioso",
	[-1000137] = "Invasão da Cidadela",
	[-1000138] = "Antro da Peste",
	[-1000140] = "Salões da Asa Gélida",
	[-1000145] = "Festival do Fogo do Solstício",
	[-1000146] = "Dia dos Piratas",
	[-1000150] = "Dia dos Mortos",
	[-1000153] = "Campeonato de Pesca dos Kalu'ak",
	[-1000154] = "Festerê de Pesca da Selva do Espinhaço",
}) do a[key] = value; end
end

if simplifiedLocale == "ru" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000007] = "Общая добыча с боссов",
	[-1000010] = "Обычные предметы у Торговцев",
	[-1000015] = "Исследование",
	[-1000017] = "Точка полета",
	[-1000025] = "Редкие",
	[-1000029] = "Сундук с сокровищами",
	[-1000032] = "Мировые Боссы",
	[-1000034] = "Добыча локации",
	[-1000037] = "Драконы Кошмара",
	[-1000044] = "Временное Событие",
	[-1000045] = "Первый Сундук",
	[-1000046] = "Второй Сундук",
	[-1000047] = "Третий Сундук",
	[-1000048] = "Последний Сундук",
	[-1000106] = select(2, GetAchievementInfo(2091))..": Сезон 1",
	[-1000107] = select(2, GetAchievementInfo(418))..": Сезон 2",
	[-1000108] = select(2, GetAchievementInfo(419))..": Сезон 3",
	[-1000109] = select(2, GetAchievementInfo(420))..": Сезон 4",
	[-1000110] = select(2, GetAchievementInfo(3336))..": Сезон 5",
	[-1000111] = "Злобный гладиатор",
	[-1000112] = select(2, GetAchievementInfo(3436))..": Сезон 6",
	[-1000113] = select(2, GetAchievementInfo(3758))..": Сезон 7",
	[-1000114] = select(2, GetAchievementInfo(4599))..": Сезон 8",
	[-1000120] = "Комплекты T0.5",
	[-1000121] = "Капитаны",
	[-1000125] = DUNGEON_FLOOR_DIREMAUL5.." (Восток)",
	[-1000126] = DUNGEON_FLOOR_DIREMAUL1.." (Север)",
	[-1000127] = DUNGEON_FLOOR_DIREMAUL2.." (Запад)",
	[-1000131] = "Кладбище",
	[-1000132] = "Библиотека",
	[-1000133] = "Оружейная",
	[-1000134] = "Собор",
	[-1000137] = "Штурм цитадели",
	[-1000138] = "Чумодельня",
	[-1000140] = "Залы Ледокрылых",
	[-1000145] = "Огненный Солнцеворот",
	[-1000146] = "День пирата",
	[-1000150] = "День мертвых",
	[-1000153] = "Калуакское рыбоборье",
	[-1000154] = "Рыбомания Тернистой долины",
}) do a[key] = value; end
end

if simplifiedLocale == "zh" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000010] = "常规商人物品",
	[-1000015] = "勘探",
	[-1000037] = "梦魇之龙",
	[-1000044] = "限时事件",
	[-1000045] = "一箱",
	[-1000046] = "二箱",
	[-1000047] = "三箱",
	[-1000048] = "最终宝箱",
	[-1000106] = select(2, GetAchievementInfo(2091)).."：第1赛季",
	[-1000107] = select(2, GetAchievementInfo(418)).."：第2赛季",
	[-1000108] = select(2, GetAchievementInfo(419)).."：第3赛季",
	[-1000109] = select(2, GetAchievementInfo(420)).."：第4赛季",
	[-1000110] = select(2, GetAchievementInfo(3336)).."：第5赛季",
	[-1000111] = "憎恨角斗士",
	[-1000112] = select(2, GetAchievementInfo(3436)).."：第6赛季",
	[-1000113] = select(2, GetAchievementInfo(3758)).."：第7赛季",
	[-1000114] = select(2, GetAchievementInfo(4599)).."：第8赛季",
	[-1000120] = "等级 0.5 套装",
	[-1000121] = "船长",
	[-1000125] = DUNGEON_FLOOR_DIREMAUL5.." (东)",
	[-1000126] = DUNGEON_FLOOR_DIREMAUL1.." (北)",
	[-1000127] = DUNGEON_FLOOR_DIREMAUL2.." (西)",
	[-1000131] = "墓地",
	[-1000132] = "图书馆",
	[-1000133] = "武器库",
	[-1000134] = "修道院",
	[-1000137] = "进攻堡垒",
	[-1000138] = "天灾工厂",
	[-1000140] = "霜翼大厅",
	[-1000145] = "仲夏火焰节",
	[-1000146] = "海盗日",
	[-1000150] = "悼念日",
	[-1000153] = "卡鲁亚克钓鱼大赛",
	[-1000154] = "荆棘谷钓鱼大赛",
}) do a[key] = value; end
end

if simplifiedLocale == "cn" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000019] = "你可能需要在特定的节日活动中才能完成本节中的事物。",
	[-1000026] = "包含有奖励或可从包含部分中的其他内容获得的事物。\n在此处合并以减少来自许多可能重复来源。",
}) do a[key] = value; end
end

if simplifiedLocale == "de" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000019] = "Es muss möglicherweise ein bestimmter Feiertag aktiv sein, um hier genannte Dinge abschließen zu können.",
}) do a[key] = value; end
end

if simplifiedLocale == "fr" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000026] = "Contient des objets de récompenses ou disponibles dans d’autres contenus de la section qui les contient.\nIls sont regroupés ici dans le but de réduire la duplication de nombreuses sources possibles.",
}) do a[key] = value; end
end

if simplifiedLocale == "ru" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000019] = "Чтобы выполнить упомянутые в данной секции Штучки, может быть нужен какой-то праздник.",
	[-1000026] = "Штучки, которые можно получить в награду с разного контента в родительской секции.\nОни собраны здесь, чтобы уменьшить количество источников, когда Штучка доступна из многих мест.",
}) do a[key] = value; end
end