-------------------------------------------------------
--   C U S T O M   H E A D E R S   M O D U L E   --
-------------------------------------------------------
local _ = select(2, ...);
local L = _.L;
local simplifiedLocale = string.sub(GetLocale(),1,2);

_.HeaderConstants = {
	ACHIEVEMENTS = -1000000,
	COMMON_BOSS_DROPS = -1000003,
	COMMON_VENDOR_ITEMS = -1000004,
	DISCOVERY = -1000005,
	EXPLORATION = -1000008,
	FACTIONS = -1000009,
	FLIGHT_PATHS = -1000010,
	HOLIDAYS = -1000012,
	PROFESSIONS = -1000015,
	QUESTS = -1000016,
	RARES = -1000017,
	REWARDS = -1000018,
	SPECIAL = -1000020,
	TREASURES = -1000021,
	VENDORS = -1000022,
	WORLD_BOSSES = -1000024,
	ZONE_DROPS = -1000026,
	WEAPONS = -1000041,
	HONOR_TITLES = -1000051,
	PVP = -1000052,
	TIER_ZERO_POINT_FIVE_SETS = -1000062,
};

local a = L.HEADER_ICONS;
for key,value in pairs({
	[-1000000] = _.asset("Category_Achievements"),
	[-1000003] = _.asset("Achievement_Garrison_Horde_PVE"),
	[-1000004] = "Interface/Icons/INV_Misc_Coin_02",
	[-1000005] = "Interface/Icons/inv_misc_book_07",
	[-1000008] = _.asset("INV_Misc_Map02"),
	[-1000009] = _.asset("Category_Factions"),
	[-1000010] = _.asset("Category_FlightPaths"),
	[-1000012] = _.asset("Category_Holidays"),
	[-1000013] = "Interface/Icons/Inv_misc_map02",
	[-1000015] = _.asset("Category_Professions"),
	[-1000016] = _.asset("Interface_Quest_header"),
	[-1000017] = _.asset("Interface_Rare"),
	[-1000018] = _.asset("Interface_Rewards"),
	[-1000020] = "Interface/Icons/inv_sword_40",
	[-1000021] = _.asset("Interface_Tchest"),
	[-1000022] = _.asset("Interface_Vendor"),
	[-1000024] = _.asset("Interface_World_boss"),
	[-1000026] = _.asset("Interface_Zone_drop"),
	[-1000028] = "Interface/Icons/INV_Chest_Plate03",
	[-1000029] = "Interface/Icons/inv_misc_cape_11",
	[-1000031] = "Interface/Icons/inv_boots_09",
	[-1000040] = "Interface/Icons/inv_belt_24",
	[-1000041] = "Interface/Icons/INV_Sword_23",
	[-1000042] = "Interface/Icons/inv_bracer_07",
	[-1000044] = "Interface/FriendsFrame/PlusManz-Alliance",
	[-1000045] = "Interface/FriendsFrame/PlusManz-Horde",
	[-1000046] = "Interface/FriendsFrame/PlusManz-PlusManz",
	[-1000051] = "Interface/Icons/inv_sword_48",
	[-1000052] = _.asset("Category_PvP"),
	[-1000053] = _.asset("achievement_featsofstrength_gladiator_01"),
	[-1000054] = _.asset("achievement_featsofstrength_gladiator_02"),
	[-1000055] = _.asset("achievement_featsofstrength_gladiator_03"),
	[-1000056] = _.asset("achievement_featsofstrength_gladiator_04"),
	[-1000062] = "Interface/Icons/INV_Chest_Plate03",
	[-1000063] = "Interface/Icons/Spell_Shadow_SummonImp",
	[-1000064] = "Interface/Icons/inv_axe_10",
	[-1000065] = "Interface/Icons/INV_Misc_Head_Elf_02",
	[-1000066] = "Interface/Icons/INV_Misc_Token_ScarletCrusade",
	[-1000067] = "Interface/Icons/INV_MISC_KEY_13",
	[-1000068] = "Interface/Icons/inv_jewelry_amulet_03",
}) do a[key] = value; end

local a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000000] = ACHIEVEMENTS,
	[-1000003] = BATTLE_PET_BREED_QUALITY2.." "..TRANSMOG_SOURCE_1,
	[-1000004] = "Common Vendor Items",
	[-1000005] = BATTLE_PET_SOURCE_11,
	[-1000008] = "Exploration",
	[-1000009] = FACTION,
	[-1000010] = "Flight Paths",
	[-1000012] = "Holiday",
	[-1000013] = BRAWL_TOOLTIP_MAPS,
	[-1000015] = TRADE_SKILLS,
	[-1000016] = TRACKER_HEADER_QUESTS,
	[-1000017] = BATTLE_PET_BREED_QUALITY4,
	[-1000018] = QUEST_REWARDS,
	[-1000020] = SPECIAL,
	[-1000021] = "Treasures",
	[-1000022] = BATTLE_PET_SOURCE_3,
	[-1000024] = WORLD.." "..RAID_BOSSES,
	[-1000026] = ZONE.." "..BATTLE_PET_SOURCE_1,
	[-1000028] = ARMOR,
	[-1000029] = INVTYPE_CLOAK,
	[-1000031] = INVTYPE_FEET,
	[-1000040] = INVTYPE_WAIST,
	[-1000041] = AUCTION_CATEGORY_WEAPONS,
	[-1000042] = INVTYPE_WRIST,
	[-1000044] = FACTION_ALLIANCE,
	[-1000045] = FACTION_HORDE,
	[-1000046] = COMBATLOG_FILTER_STRING_NEUTRAL_UNITS,
	[-1000051] = "Honor Titles",
	[-1000052] = BUG_CATEGORY14,
	[-1000053] = "Gladiator: Season 1",
	[-1000054] = "Merciless Gladiator: Season 2",
	[-1000055] = "Vengeful Gladiator: Season 3",
	[-1000056] = "Brutal Gladiator: Season 4",
	[-1000062] = "Tier 0.5 Sets",
	[-1000063] = DUNGEON_FLOOR_DIREMAUL5.." (East)",
	[-1000064] = DUNGEON_FLOOR_DIREMAUL1.." (North)",
	[-1000065] = DUNGEON_FLOOR_DIREMAUL2.." (West)",
	[-1000066] = "Main Gate",
	[-1000067] = "Service Entrance",
	[-1000068] = "Spirit of Competition",
}) do a[key] = value; end

local a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000015] = "This section will only show your current character's professions outside of Account and Debug Mode.",
	[-1000018] = "Contains Things which are rewarded or are available from other content within the containing section.\nThey are consolidated here in an effort to reduce duplication from many possible Sources.",
	[-1000063] = "This part of the instance can be accessed from the eastern-most portal. (right side)",
	[-1000064] = "This part of the instance can be accessed from the northern-most portal.",
	[-1000065] = "This part of the instance can be accessed from the western-most portal. (left side)",
	[-1000066] = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Live\" or \"Scarlet\" side, which the Scarlet Crusade has taken over.",
	[-1000067] = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Dead\" or \"Scourge\" side, which the Scourge has taken over.",
	[-1000068] = "This is a Battlegrounds-based event that coincides with the beginning of the Summer Olympic games. The only time this was celebrated was in 2008 to correspond to the Beijing Olympics, and although there appeared to be the intention to repeat this event, it never returned.",
}) do a[key] = value; end

local a = L.HEADER_LORE;
for key,value in pairs({
	[-1000062] = "The Dungeon Set 2 class sets, commonly referred to as Tier 0.5, are obtained by completing a long quest chain to upgrade the first set available as drops in end game dungeons into stronger versions of themselves. In current WoW, these sets are covetted by Collectors as the quest chain was completely removed from the game with Cataclysm. In WoW Classic, you should finish this quest chain on all of your characters before then!",
}) do a[key] = value; end

if simplifiedLocale == "de" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000003] = "Gemeinsame Bossbeute",
	[-1000008] = "Erkundung",
	[-1000054] = "Erbarmungsloser Gladiator: Season 2",
	[-1000055] = "Rachsüchtiger Gladiator: Season 3",
	[-1000056] = "Brutaler Gladiator: Season 4",
}) do a[key] = value; end
end

if simplifiedLocale == "es" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000053] = "Gladiador: Season 1",
	[-1000054] = "Gladiador despiadado: Season 2",
	[-1000055] = "Gladiador vengativo: Season 3",
	[-1000056] = "Gladiador brutal: Season 4",
}) do a[key] = value; end
end

if simplifiedLocale == "fr" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000004] = "Objets communs des vendeurs",
	[-1000008] = "Exploration",
	[-1000053] = "Gladiateur: Saison 1",
	[-1000054] = "Gladiateur impitoyable: Saison 2",
	[-1000055] = "Gladiateur vengeur: Saison 3",
	[-1000056] = "Gladiateur brutal: Saison 4",
	[-1000062] = "Ensembles Tier 0.5",
	[-1000063] = DUNGEON_FLOOR_DIREMAUL5.." (Est)",
	[-1000064] = DUNGEON_FLOOR_DIREMAUL1.." (Nord)",
	[-1000065] = DUNGEON_FLOOR_DIREMAUL2.." (Ouest)",
}) do a[key] = value; end
end

if simplifiedLocale == "it" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000053] = "Gladiatore: Season 1",
	[-1000054] = "Gladiatore Spietato: Season 2",
	[-1000055] = "Gladiatore Vendicativo: Season 3",
	[-1000056] = "Gladiatore Brutale: Season 4",
}) do a[key] = value; end
end

if simplifiedLocale == "ko" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000053] = "검투사: Season 1",
	[-1000054] = "무자비한 검투사: Season 2",
	[-1000055] = "복수심에 불타는 검투사: Season 3",
	[-1000056] = "야만적인 검투사: Season 4",
}) do a[key] = value; end
end

if simplifiedLocale == "pt" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000053] = "Gladiador: Season 1",
	[-1000054] = "Gladiador Impiedoso: Season 2",
	[-1000055] = "Gladiador Vingativo: Season 3",
	[-1000056] = "Gladiador Brutal: Season 4",
}) do a[key] = value; end
end

if simplifiedLocale == "ru" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000003] = "Общая добыча с боссов",
	[-1000004] = "Обычные предметы у Торговцев",
	[-1000008] = "Исследование",
	[-1000010] = "Точка полета",
	[-1000017] = "Редкие",
	[-1000021] = "Сундук с сокровищами",
	[-1000024] = "Мировые Боссы",
	[-1000026] = "Добыча локации",
	[-1000053] = "Гладиатор: Сезон 1",
	[-1000054] = "Безжалостный гладиатор: Сезон 2",
	[-1000055] = "Мстительный гладиатор: Сезон 3",
	[-1000056] = "Жестокий гладиатор: Сезон 4",
	[-1000062] = "Комплекты T0.5",
	[-1000063] = DUNGEON_FLOOR_DIREMAUL5.." (Восток)",
	[-1000064] = DUNGEON_FLOOR_DIREMAUL1.." (Север)",
	[-1000065] = DUNGEON_FLOOR_DIREMAUL2.." (Запад)",
}) do a[key] = value; end
end

if simplifiedLocale == "zh" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000004] = "常规商人物品",
	[-1000008] = "勘探",
	[-1000053] = "角斗士：第1赛季",
	[-1000054] = "残酷角斗士：第1赛季",
	[-1000055] = "复仇角斗士：第3赛季",
	[-1000056] = "野蛮角斗士：第3赛季",
	[-1000062] = "等级 0.5 套装",
	[-1000063] = DUNGEON_FLOOR_DIREMAUL5.." (东)",
	[-1000064] = DUNGEON_FLOOR_DIREMAUL1.." (北)",
	[-1000065] = DUNGEON_FLOOR_DIREMAUL2.." (西)",
}) do a[key] = value; end
end

if simplifiedLocale == "cn" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000018] = "包含有奖励或可从包含部分中的其他内容获得的事物。\n在此处合并以减少来自许多可能重复来源。",
}) do a[key] = value; end
end

if simplifiedLocale == "fr" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000018] = "Contient des objets de récompenses ou disponibles dans d’autres contenus de la section qui les contient.\nIls sont regroupés ici dans le but de réduire la duplication de nombreuses sources possibles.",
}) do a[key] = value; end
end

if simplifiedLocale == "ru" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000018] = "Штучки, которые можно получить в награду с разного контента в родительской секции.\nОни собраны здесь, чтобы уменьшить количество источников, когда Штучка доступна из многих мест.",
}) do a[key] = value; end
end