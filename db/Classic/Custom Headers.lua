-------------------------------------------------------
--   C U S T O M   H E A D E R S   M O D U L E   --
-------------------------------------------------------
local _ = select(2, ...);
local L = _.L;
local simplifiedLocale = string.sub(GetLocale(),1,2);

_.HeaderConstants = {
	ACHIEVEMENTS = -1000004,
	COMMON_BOSS_DROPS = -1000009,
	COMMON_VENDOR_ITEMS = -1000012,
	CRAFTED_ITEMS = -1000013,
	EXPLORATION = -1000017,
	FACTIONS = -1000018,
	FLIGHT_PATHS = -1000019,
	FOLLOWERS = -1000020,
	HOLIDAYS = -1000022,
	PROFESSIONS = -1000026,
	QUESTS = -1000027,
	RARES = -1000028,
	REWARDS = -1000029,
	SPECIAL = -1000032,
	TREASURES = -1000033,
	VENDORS = -1000034,
	WORLD_BOSSES = -1000036,
	ZONE_DROPS = -1000038,
	WEAPONS = -1000066,
	HONOR_TITLES = -1000106,
	PVP = -1000108,
	DARKMOON_FAIRE_HEADER = -1000122,
	TIER_ZERO_POINT_FIVE_SETS = -1000123,
	LUNAR_FESTIVAL_HEADER = -1000144,
	LOVE_IS_IN_THE_AIR_HEADER = -1000145,
	NOBLEGARDEN_HEADER = -1000146,
	CHILDRENS_WEEK_HEADER = -1000147,
	MIDSUMMER_FIRE_FESTIVAL_HEADER = -1000148,
	BREWFEST_HEADER = -1000150,
	HARVEST_FESTIVAL_HEADER = -1000151,
	HALLOWS_END_HEADER = -1000152,
	FEAST_OF_WINTER_VEIL_HEADER = -1000155,
};

local a = L.HEADER_EVENTS;
for key,value in pairs({
	[-1000122] = 479,
	[-1000144] = 327,
	[-1000145] = 423,
	[-1000146] = 181,
	[-1000147] = 201,
	[-1000148] = 341,
	[-1000150] = 372,
	[-1000151] = 321,
	[-1000152] = 324,
	[-1000155] = 141,
	[-1000157] = 301,
	[-1000167] = 1181,
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
	[-1000008] = "Interface/MINIMAP/TRACKING/Class",
	[-1000009] = _.asset("Achievement_Garrison_Horde_PVE"),
	[-1000012] = "Interface/Icons/INV_Misc_Coin_02",
	[-1000013] = _.asset("Category_Crafting"),
	[-1000017] = _.asset("INV_Misc_Map02"),
	[-1000018] = _.asset("Category_Factions"),
	[-1000019] = _.asset("Category_FlightPaths"),
	[-1000020] = "Interface/Icons/Achievement_GarrisonFollower_LevelUp",
	[-1000022] = _.asset("Category_Holidays"),
	[-1000023] = "Interface/Icons/Inv_misc_map02",
	[-1000026] = _.asset("Category_Professions"),
	[-1000027] = _.asset("Interface_Quest_header"),
	[-1000028] = _.asset("Interface_Rare"),
	[-1000029] = _.asset("Interface_Rewards"),
	[-1000031] = "Interface/Icons/achievement_transmog_collections",
	[-1000032] = "Interface/Icons/inv_sword_40",
	[-1000033] = _.asset("Interface_Tchest"),
	[-1000034] = _.asset("Interface_Vendor"),
	[-1000036] = _.asset("Interface_World_boss"),
	[-1000038] = _.asset("Interface_Zone_drop"),
	[-1000041] = "Interface/Icons/INV_Misc_Head_Dragon_Green",
	[-1000042] = "Interface/Icons/inv_trinket_naxxramas04",
	[-1000043] = "Interface/Icons/ability_rogue_deviouspoisons",
	[-1000044] = "Interface/Icons/spell_deathknight_classicon",
	[-1000045] = "Interface/Icons/inv_misc_cauldron_nature",
	[-1000046] = "Interface/Icons/inv_misc_head_dragon_blue",
	[-1000053] = "Interface/Icons/INV_Chest_Plate03",
	[-1000066] = "Interface/Icons/INV_Sword_23",
	[-1000078] = "Interface/FriendsFrame/PlusManz-Alliance",
	[-1000079] = "Interface/FriendsFrame/PlusManz-Horde",
	[-1000080] = "Interface/FriendsFrame/PlusManz-PlusManz",
	[-1000088] = _.asset("Weapon_Type_Legendary"),
	[-1000106] = "Interface/Icons/inv_sword_48",
	[-1000108] = _.asset("Category_PvP"),
	[-1000122] = _.asset("Event_dmf"),
	[-1000123] = "Interface/Icons/INV_Chest_Plate03",
	[-1000124] = "Interface/Icons/achievement_pvp_h_12",
	[-1000125] = "Interface/Icons/Inv_misc_ahnqirajtrinket_06",
	[-1000126] = _.asset("Achievement_Zone_Blackrock_01"),
	[-1000127] = _.asset("Achievement_Zone_Blackrock_01"),
	[-1000128] = "Interface/Icons/Spell_Shadow_SummonImp",
	[-1000129] = "Interface/Icons/inv_axe_10",
	[-1000130] = "Interface/Icons/INV_Misc_Head_Elf_02",
	[-1000131] = "Interface/Icons/spell_arcane_portalironforge",
	[-1000132] = "Interface/Icons/INV_Misc_Gem_Opal_01",
	[-1000133] = "Interface/Icons/INV_Misc_Gem_Amethyst_02",
	[-1000134] = "Interface/Icons/Inv_misc_bone_humanskull_01",
	[-1000135] = "Interface/Icons/INV_Misc_Book_13",
	[-1000136] = "Interface/Icons/inv_helmet_25",
	[-1000137] = "Interface/Icons/inv_helmet_12",
	[-1000138] = "Interface/Icons/INV_Misc_Token_ScarletCrusade",
	[-1000139] = "Interface/Icons/INV_MISC_KEY_13",
	[-1000144] = _.asset("Holiday_Lunar"),
	[-1000145] = _.asset("Holiday_love"),
	[-1000146] = _.asset("Holiday_noblegarden"),
	[-1000147] = _.asset("Holiday_Children"),
	[-1000148] = _.asset("Holiday_Midsummer"),
	[-1000150] = _.asset("Holiday_brewfest"),
	[-1000151] = _.asset("Holiday_Harvestfest"),
	[-1000152] = _.asset("Holiday_hallows_end"),
	[-1000155] = _.asset("Holiday_winter_veil"),
	[-1000157] = "Interface/Icons/inv_misc_fish_06",
	[-1000167] = _.asset("Promotion_Blizzcon"),
	[-1000168] = _.asset("Promotion_Collector"),
	[-1000185] = "Interface/Icons/Inv_drink_10",
	[-1000186] = "Interface/Icons/Spell_Misc_Drink",
	[-1000187] = _.asset("achievement_reputation_08"),
	[-1000189] = "Interface/Icons/inv_jewelry_amulet_03",
	[-1000190] = "Interface/Icons/inv_misc_ticket_tarot_stack_01",
}) do a[key] = value; end

local a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000004] = ACHIEVEMENTS,
	[-1000008] = CLASS,
	[-1000009] = BATTLE_PET_BREED_QUALITY2.." "..TRANSMOG_SOURCE_1,
	[-1000012] = "Common Vendor Items",
	[-1000013] = LOOT_JOURNAL_LEGENDARIES_SOURCE_CRAFTED_ITEM,
	[-1000017] = "Exploration",
	[-1000018] = FACTION,
	[-1000019] = "Flight Paths",
	[-1000020] = GARRISON_FOLLOWERS,
	[-1000022] = "Holiday",
	[-1000023] = BRAWL_TOOLTIP_MAPS,
	[-1000026] = TRADE_SKILLS,
	[-1000027] = TRACKER_HEADER_QUESTS,
	[-1000028] = BATTLE_PET_BREED_QUALITY4,
	[-1000029] = QUEST_REWARDS,
	[-1000031] = WARDROBE_SETS,
	[-1000032] = SPECIAL,
	[-1000033] = "Treasures",
	[-1000034] = BATTLE_PET_SOURCE_3,
	[-1000036] = WORLD.." "..RAID_BOSSES,
	[-1000038] = ZONE.." "..BATTLE_PET_SOURCE_1,
	[-1000041] = "Dragons of Nightmare",
	[-1000042] = DUNGEON_FLOOR_NAXXRAMAS2,
	[-1000043] = DUNGEON_FLOOR_NAXXRAMAS1,
	[-1000044] = DUNGEON_FLOOR_NAXXRAMAS3,
	[-1000045] = DUNGEON_FLOOR_NAXXRAMAS4,
	[-1000046] = DUNGEON_FLOOR_NAXXRAMAS6,
	[-1000053] = ARMOR,
	[-1000066] = AUCTION_CATEGORY_WEAPONS,
	[-1000078] = FACTION_ALLIANCE,
	[-1000079] = FACTION_HORDE,
	[-1000080] = COMBATLOG_FILTER_STRING_NEUTRAL_UNITS,
	[-1000088] = ITEM_QUALITY5_DESC,
	[-1000106] = "Honor Titles",
	[-1000108] = PVP,
	[-1000122] = "Darkmoon Faire",
	[-1000123] = "Tier 0.5 Sets",
	[-1000124] = "Captains",
	[-1000125] = "Silithid Royalty",
	[-1000126] = DUNGEON_FLOOR_BLACKROCKDEPTHS1,
	[-1000127] = DUNGEON_FLOOR_BLACKROCKDEPTHS2,
	[-1000128] = DUNGEON_FLOOR_DIREMAUL5.." (East)",
	[-1000129] = DUNGEON_FLOOR_DIREMAUL1.." (North)",
	[-1000130] = DUNGEON_FLOOR_DIREMAUL2.." (West)",
	[-1000131] = GetSpellInfo(21127),
	[-1000132] = DUNGEON_FLOOR_DESOLACE22.." (Orange Path)",
	[-1000133] = DUNGEON_FLOOR_DESOLACE21.." (Purple Path)",
	[-1000134] = "Graveyard",
	[-1000135] = "Library",
	[-1000136] = "Armory",
	[-1000137] = "Cathedral",
	[-1000138] = "Main Gate",
	[-1000139] = "Service Entrance",
	[-1000144] = select(1,GetCategoryInfo(160)),
	[-1000145] = select(1,GetCategoryInfo(187)),
	[-1000146] = select(1,GetCategoryInfo(159)),
	[-1000147] = select(1,GetCategoryInfo(163)),
	[-1000148] = "Midsummer Fire Festival",
	[-1000150] = select(1,GetCategoryInfo(162)),
	[-1000151] = "Harvest Festival",
	[-1000152] = select(1,GetCategoryInfo(158)),
	[-1000155] = GetSpellInfo(21953),
	[-1000157] = "Stranglethorn Fishing Extravaganza",
	[-1000167] = "BlizzCon",
	[-1000168] = "Collector's Edition",
	[-1000185] = "iCoke",
	[-1000186] =  AUCTION_CATEGORY_MISCELLANEOUS,
	[-1000187] = REFER_A_FRIEND,
	[-1000189] = "Spirit of Competition",
	[-1000190] = BATTLE_PET_SOURCE_9,
}) do a[key] = value; end

local a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000022] = "A specific holiday may need to be active for you to complete the referenced Things within this section.",
	[-1000026] = "This section will only show your current character's professions outside of Account and Debug Mode.",
	[-1000029] = "Contains Things which are rewarded or are available from other content within the containing section.\nThey are consolidated here in an effort to reduce duplication from many possible Sources.",
	[-1000128] = "This part of the instance can be accessed from the eastern-most portal. (right side)",
	[-1000129] = "This part of the instance can be accessed from the northern-most portal.",
	[-1000130] = "This part of the instance can be accessed from the western-most portal. (left side)",
	[-1000138] = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Live\" or \"Scarlet\" side, which the Scarlet Crusade has taken over.",
	[-1000139] = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Dead\" or \"Scourge\" side, which the Scourge has taken over.",
	[-1000185] = "These were only available through the 2006 iCoke Promotion (China Only)",
	[-1000186] = "This section is for miscellaneous promotions that took place in the real world or something to do with account management.",
	[-1000189] = "This is a Battlegrounds-based event that coincides with the beginning of the Summer Olympic games. The only time this was celebrated was in 2008 to correspond to the Beijing Olympics, and although there appeared to be the intention to repeat this event, it never returned.",
}) do a[key] = value; end

local a = L.HEADER_LORE;
for key,value in pairs({
	[-1000041] = "One of these dragons will spawn randomly at the associated coordinates across Azeroth.",
	[-1000123] = "The Dungeon Set 2 class sets, commonly referred to as Tier 0.5, are obtained by completing a long quest chain to upgrade the first set available as drops in end game dungeons into stronger versions of themselves. In current WoW, these sets are covetted by Collectors as the quest chain was completely removed from the game with Cataclysm. In WoW Classic, you should finish this quest chain on all of your characters before then!",
	[-1000124] = "These can be farmed infinitely by resetting the boss.",
}) do a[key] = value; end

if simplifiedLocale == "de" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000009] = "Gemeinsame Bossbeute",
	[-1000017] = "Erkundung",
	[-1000041] = "Drachen des Alptraums",
	[-1000134] = "Friedhof",
	[-1000135] = "Bibliothek",
	[-1000136] = "Waffenkammer",
	[-1000137] = "Kathedrale",
	[-1000148] = "Sonnenwendfest",
	[-1000157] = "Anglerwettbewerb im Schlingendorntal",
}) do a[key] = value; end
end

if simplifiedLocale == "es" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000148] = "Festival del Fuego del Solsticio de Verano",
	[-1000157] = "Gran espectáculo de pesca de Tuercespina",
}) do a[key] = value; end
end

if simplifiedLocale == "fr" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000012] = "Objets communs des vendeurs",
	[-1000017] = "Exploration",
	[-1000041] = "Dragons du Cauchemar",
	[-1000123] = "Ensembles Tier 0.5",
	[-1000124] = "Capitaines",
	[-1000128] = DUNGEON_FLOOR_DIREMAUL5.." (Est)",
	[-1000129] = DUNGEON_FLOOR_DIREMAUL1.." (Nord)",
	[-1000130] = DUNGEON_FLOOR_DIREMAUL2.." (Ouest)",
	[-1000134] = "Cimetière",
	[-1000135] = "Librairie",
	[-1000136] = "Armurerie",
	[-1000137] = "Cathédrale",
	[-1000148] = "Fête du Feu du solstice d’été",
	[-1000157] = "Concours de pêche de Strangleronce",
	[-1000168] = "Edition Collector",
}) do a[key] = value; end
end

if simplifiedLocale == "it" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000148] = "Fuochi di Mezza Estate",
	[-1000157] = "Gara di Pesca a Rovotorto",
}) do a[key] = value; end
end

if simplifiedLocale == "ko" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000148] = "한여름 불꽃축제",
	[-1000157] = "가시덤불 골짜기 낚시왕 선발대회",
}) do a[key] = value; end
end

if simplifiedLocale == "pt" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000148] = "Festival do Fogo do Solstício",
	[-1000157] = "Festerê de Pesca da Selva do Espinhaço",
}) do a[key] = value; end
end

if simplifiedLocale == "ru" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000009] = "Общая добыча с боссов",
	[-1000012] = "Обычные предметы у Торговцев",
	[-1000017] = "Исследование",
	[-1000019] = "Точка полета",
	[-1000028] = "Редкие",
	[-1000033] = "Сундук с сокровищами",
	[-1000036] = "Мировые Боссы",
	[-1000038] = "Добыча локации",
	[-1000041] = "Драконы Кошмара",
	[-1000123] = "Комплекты T0.5",
	[-1000124] = "Капитаны",
	[-1000128] = DUNGEON_FLOOR_DIREMAUL5.." (Восток)",
	[-1000129] = DUNGEON_FLOOR_DIREMAUL1.." (Север)",
	[-1000130] = DUNGEON_FLOOR_DIREMAUL2.." (Запад)",
	[-1000134] = "Кладбище",
	[-1000135] = "Библиотека",
	[-1000136] = "Оружейная",
	[-1000137] = "Собор",
	[-1000148] = "Огненный Солнцеворот",
	[-1000157] = "Рыбомания Тернистой долины",
	[-1000168] = "Коллекционное издание",
}) do a[key] = value; end
end

if simplifiedLocale == "zh" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000012] = "常规商人物品",
	[-1000017] = "勘探",
	[-1000041] = "梦魇之龙",
	[-1000123] = "等级 0.5 套装",
	[-1000124] = "船长",
	[-1000128] = DUNGEON_FLOOR_DIREMAUL5.." (东)",
	[-1000129] = DUNGEON_FLOOR_DIREMAUL1.." (北)",
	[-1000130] = DUNGEON_FLOOR_DIREMAUL2.." (西)",
	[-1000134] = "墓地",
	[-1000135] = "图书馆",
	[-1000136] = "武器库",
	[-1000137] = "修道院",
	[-1000148] = "仲夏火焰节",
	[-1000157] = "荆棘谷钓鱼大赛",
	[-1000167] = "暴雪嘉年华",
	[-1000168] = "典藏版",
	[-1000185] = "可口可乐活动",
}) do a[key] = value; end
end

if simplifiedLocale == "cn" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000022] = "你可能需要在特定的节日活动中才能完成本节中的事物。",
	[-1000029] = "包含有奖励或可从包含部分中的其他内容获得的事物。\n在此处合并以减少来自许多可能重复来源。",
}) do a[key] = value; end
end

if simplifiedLocale == "de" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000022] = "Es muss möglicherweise ein bestimmter Feiertag aktiv sein, um hier genannte Dinge abschließen zu können.",
}) do a[key] = value; end
end

if simplifiedLocale == "fr" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000029] = "Contient des objets de récompenses ou disponibles dans d’autres contenus de la section qui les contient.\nIls sont regroupés ici dans le but de réduire la duplication de nombreuses sources possibles.",
}) do a[key] = value; end
end

if simplifiedLocale == "ru" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000022] = "Чтобы выполнить упомянутые в данной секции Штучки, может быть нужен какой-то праздник.",
	[-1000029] = "Штучки, которые можно получить в награду с разного контента в родительской секции.\nОни собраны здесь, чтобы уменьшить количество источников, когда Штучка доступна из многих мест.",
}) do a[key] = value; end
end