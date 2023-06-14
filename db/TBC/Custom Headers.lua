-------------------------------------------------------
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
	IN_GAME_SHOP = -1000072,
	HONOR_TITLES = -1000098,
	PVP = -1000100,
	DARKMOON_FAIRE_HEADER = -1000114,
	TIER_ZERO_POINT_FIVE_SETS = -1000115,
	LUNAR_FESTIVAL_HEADER = -1000136,
	LOVE_IS_IN_THE_AIR_HEADER = -1000137,
	NOBLEGARDEN_HEADER = -1000138,
	CHILDRENS_WEEK_HEADER = -1000139,
	MIDSUMMER_FIRE_FESTIVAL_HEADER = -1000140,
	PIRATES_DAY_HEADER = -1000141,
	BREWFEST_HEADER = -1000142,
	HARVEST_FESTIVAL_HEADER = -1000143,
	HALLOWS_END_HEADER = -1000144,
	FEAST_OF_WINTER_VEIL_HEADER = -1000147,
};

local a = L.HEADER_EVENTS;
for key,value in pairs({
	[-1000114] = 479,
	[-1000136] = 327,
	[-1000137] = 423,
	[-1000138] = 181,
	[-1000139] = 201,
	[-1000140] = 341,
	[-1000141] = 398,
	[-1000142] = 372,
	[-1000143] = 321,
	[-1000144] = 324,
	[-1000147] = 141,
	[-1000149] = 301,
}) do a[key] = value; end

local a = L.EVENT_REMAPPING;
for key,value in pairs({
	[374] = 479,
	[375] = 479,
	[376] = 479,
}) do a[key] = value; end

local a = L.HEADER_ICONS;
for key,value in pairs({
	[-1000000] = _.asset("Category_Achievements"),
	[-1000003] = _.asset("Achievement_Garrison_Horde_PVE"),
	[-1000006] = "Interface/Icons/INV_Misc_Coin_02",
	[-1000007] = _.asset("Category_Crafting"),
	[-1000008] = "Interface/Icons/inv_misc_book_07",
	[-1000011] = _.asset("INV_Misc_Map02"),
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
	[-1000048] = "Interface/Icons/inv_boots_09",
	[-1000057] = "Interface/Icons/inv_belt_24",
	[-1000058] = "Interface/Icons/INV_Sword_23",
	[-1000059] = "Interface/Icons/inv_bracer_07",
	[-1000069] = "Interface/FriendsFrame/PlusManz-Alliance",
	[-1000070] = "Interface/FriendsFrame/PlusManz-Horde",
	[-1000071] = "Interface/FriendsFrame/PlusManz-PlusManz",
	[-1000072] = _.asset("Category_InGameShop"),
	[-1000079] = _.asset("Weapon_Type_Legendary"),
	[-1000090] = _.asset("Expansion_TBC"),
	[-1000098] = "Interface/Icons/inv_sword_48",
	[-1000099] = "Interface/Icons/inv_jewelry_amulet_03",
	[-1000100] = _.asset("Category_PvP"),
	[-1000101] = _.asset("achievement_featsofstrength_gladiator_01"),
	[-1000102] = _.asset("achievement_featsofstrength_gladiator_02"),
	[-1000103] = _.asset("achievement_featsofstrength_gladiator_03"),
	[-1000104] = _.asset("achievement_featsofstrength_gladiator_04"),
	[-1000114] = _.asset("Event_dmf"),
	[-1000115] = "Interface/Icons/INV_Chest_Plate03",
	[-1000116] = "Interface/Icons/achievement_pvp_h_12",
	[-1000117] = "Interface/Icons/Inv_misc_ahnqirajtrinket_06",
	[-1000118] = _.asset("Achievement_Zone_Blackrock_01"),
	[-1000119] = _.asset("Achievement_Zone_Blackrock_01"),
	[-1000120] = "Interface/Icons/Spell_Shadow_SummonImp",
	[-1000121] = "Interface/Icons/inv_axe_10",
	[-1000122] = "Interface/Icons/INV_Misc_Head_Elf_02",
	[-1000123] = "Interface/Icons/spell_arcane_portalironforge",
	[-1000124] = "Interface/Icons/INV_Misc_Gem_Opal_01",
	[-1000125] = "Interface/Icons/INV_Misc_Gem_Amethyst_02",
	[-1000126] = "Interface/Icons/Inv_misc_bone_humanskull_01",
	[-1000127] = "Interface/Icons/INV_Misc_Book_13",
	[-1000128] = "Interface/Icons/inv_helmet_25",
	[-1000129] = "Interface/Icons/inv_helmet_12",
	[-1000130] = "Interface/Icons/INV_Misc_Token_ScarletCrusade",
	[-1000131] = "Interface/Icons/INV_MISC_KEY_13",
	[-1000136] = _.asset("Holiday_Lunar"),
	[-1000137] = _.asset("Holiday_love"),
	[-1000138] = _.asset("Holiday_noblegarden"),
	[-1000139] = _.asset("Holiday_Children"),
	[-1000140] = _.asset("Holiday_Midsummer"),
	[-1000141] = _.asset("Holiday_Pirate"),
	[-1000142] = _.asset("Holiday_brewfest"),
	[-1000143] = _.asset("Holiday_Harvestfest"),
	[-1000144] = _.asset("Holiday_hallows_end"),
	[-1000147] = _.asset("Holiday_winter_veil"),
	[-1000149] = "Interface/Icons/inv_misc_fish_06",
	[-1000151] = "Interface/Icons/inv_jewelry_amulet_03",
}) do a[key] = value; end

local a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000000] = ACHIEVEMENTS,
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
	[-1000048] = INVTYPE_FEET,
	[-1000057] = INVTYPE_WAIST,
	[-1000058] = AUCTION_CATEGORY_WEAPONS,
	[-1000059] = INVTYPE_WRIST,
	[-1000069] = FACTION_ALLIANCE,
	[-1000070] = FACTION_HORDE,
	[-1000071] = COMBATLOG_FILTER_STRING_NEUTRAL_UNITS,
	[-1000072] = BATTLE_PET_SOURCE_10,
	[-1000079] = ITEM_QUALITY5_DESC,
	[-1000090] = "Patch 2.x.x",
	[-1000098] = "Honor Titles",
	[-1000099] = HONOR,
	[-1000100] = PVP,
	[-1000101] = "Gladiator: Season 1",
	[-1000102] = "Merciless Gladiator: Season 2",
	[-1000103] = "Vengeful Gladiator: Season 3",
	[-1000104] = "Brutal Gladiator: Season 4",
	[-1000114] = "Darkmoon Faire",
	[-1000115] = "Tier 0.5 Sets",
	[-1000116] = "Captains",
	[-1000117] = "Silithid Royalty",
	[-1000118] = DUNGEON_FLOOR_BLACKROCKDEPTHS1,
	[-1000119] = DUNGEON_FLOOR_BLACKROCKDEPTHS2,
	[-1000120] = DUNGEON_FLOOR_DIREMAUL5.." (East)",
	[-1000121] = DUNGEON_FLOOR_DIREMAUL1.." (North)",
	[-1000122] = DUNGEON_FLOOR_DIREMAUL2.." (West)",
	[-1000123] = GetSpellInfo(21127),
	[-1000124] = DUNGEON_FLOOR_DESOLACE22.." (Orange Path)",
	[-1000125] = DUNGEON_FLOOR_DESOLACE21.." (Purple Path)",
	[-1000126] = "Graveyard",
	[-1000127] = "Library",
	[-1000128] = "Armory",
	[-1000129] = "Cathedral",
	[-1000130] = "Main Gate",
	[-1000131] = "Service Entrance",
	[-1000136] = select(1,GetCategoryInfo(160)),
	[-1000137] = select(1,GetCategoryInfo(187)),
	[-1000138] = select(1,GetCategoryInfo(159)),
	[-1000139] = select(1,GetCategoryInfo(163)),
	[-1000140] = "Midsummer Fire Festival",
	[-1000141] = "Pirates' Day",
	[-1000142] = select(1,GetCategoryInfo(162)),
	[-1000143] = "Harvest Festival",
	[-1000144] = select(1,GetCategoryInfo(158)),
	[-1000147] = GetSpellInfo(21953),
	[-1000149] = "Stranglethorn Fishing Extravaganza",
	[-1000151] = "Spirit of Competition",
}) do a[key] = value; end

local a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000015] = "A specific holiday may need to be active for you to complete the referenced Things within this section.",
	[-1000019] = "This section will only show your current character's professions outside of Account and Debug Mode.",
	[-1000022] = "Contains Things which are rewarded or are available from other content within the containing section.\nThey are consolidated here in an effort to reduce duplication from many possible Sources.",
	[-1000072] = "This section will show you things that you could buy in the In-Game Shop in Retail.",
	[-1000120] = "This part of the instance can be accessed from the eastern-most portal. (right side)",
	[-1000121] = "This part of the instance can be accessed from the northern-most portal.",
	[-1000122] = "This part of the instance can be accessed from the western-most portal. (left side)",
	[-1000130] = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Live\" or \"Scarlet\" side, which the Scarlet Crusade has taken over.",
	[-1000131] = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Dead\" or \"Scourge\" side, which the Scourge has taken over.",
	[-1000151] = "This is a Battlegrounds-based event that coincides with the beginning of the Summer Olympic games. The only time this was celebrated was in 2008 to correspond to the Beijing Olympics, and although there appeared to be the intention to repeat this event, it never returned.",
}) do a[key] = value; end

local a = L.HEADER_LORE;
for key,value in pairs({
	[-1000033] = "One of these dragons will spawn randomly at the associated coordinates across Azeroth.",
	[-1000115] = "The Dungeon Set 2 class sets, commonly referred to as Tier 0.5, are obtained by completing a long quest chain to upgrade the first set available as drops in end game dungeons into stronger versions of themselves. In current WoW, these sets are covetted by Collectors as the quest chain was completely removed from the game with Cataclysm. In WoW Classic, you should finish this quest chain on all of your characters before then!",
	[-1000116] = "These can be farmed infinitely by resetting the boss.",
}) do a[key] = value; end

if simplifiedLocale == "de" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000003] = "Gemeinsame Bossbeute",
	[-1000011] = "Erkundung",
	[-1000033] = "Drachen des Alptraums",
	[-1000102] = "Erbarmungsloser Gladiator: Season 2",
	[-1000103] = "Rachsüchtiger Gladiator: Season 3",
	[-1000104] = "Brutaler Gladiator: Season 4",
	[-1000126] = "Friedhof",
	[-1000127] = "Bibliothek",
	[-1000128] = "Waffenkammer",
	[-1000129] = "Kathedrale",
	[-1000140] = "Sonnenwendfest",
	[-1000141] = "Piratentag",
	[-1000149] = "Anglerwettbewerb im Schlingendorntal",
}) do a[key] = value; end
end

if simplifiedLocale == "es" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000101] = "Gladiador: Season 1",
	[-1000102] = "Gladiador despiadado: Season 2",
	[-1000103] = "Gladiador vengativo: Season 3",
	[-1000104] = "Gladiador brutal: Season 4",
	[-1000140] = "Festival del Fuego del Solsticio de Verano",
	[-1000141] = "Día de los Piratas",
	[-1000149] = "Gran espectáculo de pesca de Tuercespina",
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
	[-1000101] = "Gladiateur: Saison 1",
	[-1000102] = "Gladiateur impitoyable: Saison 2",
	[-1000103] = "Gladiateur vengeur: Saison 3",
	[-1000104] = "Gladiateur brutal: Saison 4",
	[-1000115] = "Ensembles Tier 0.5",
	[-1000116] = "Capitaines",
	[-1000120] = DUNGEON_FLOOR_DIREMAUL5.." (Est)",
	[-1000121] = DUNGEON_FLOOR_DIREMAUL1.." (Nord)",
	[-1000122] = DUNGEON_FLOOR_DIREMAUL2.." (Ouest)",
	[-1000126] = "Cimetière",
	[-1000127] = "Librairie",
	[-1000128] = "Armurerie",
	[-1000129] = "Cathédrale",
	[-1000140] = "Fête du Feu du solstice d’été",
	[-1000141] = "Jour des pirates",
	[-1000149] = "Concours de pêche de Strangleronce",
}) do a[key] = value; end
end

if simplifiedLocale == "it" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000101] = "Gladiatore: Season 1",
	[-1000102] = "Gladiatore Spietato: Season 2",
	[-1000103] = "Gladiatore Vendicativo: Season 3",
	[-1000104] = "Gladiatore Brutale: Season 4",
	[-1000140] = "Fuochi di Mezza Estate",
	[-1000141] = "Giorno dei Pirati",
	[-1000149] = "Gara di Pesca a Rovotorto",
}) do a[key] = value; end
end

if simplifiedLocale == "ko" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000101] = "검투사: Season 1",
	[-1000102] = "무자비한 검투사: Season 2",
	[-1000103] = "복수심에 불타는 검투사: Season 3",
	[-1000104] = "야만적인 검투사: Season 4",
	[-1000140] = "한여름 불꽃축제",
	[-1000141] = "해적의 날",
	[-1000149] = "가시덤불 골짜기 낚시왕 선발대회",
}) do a[key] = value; end
end

if simplifiedLocale == "pt" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000101] = "Gladiador: Season 1",
	[-1000102] = "Gladiador Impiedoso: Season 2",
	[-1000103] = "Gladiador Vingativo: Season 3",
	[-1000104] = "Gladiador Brutal: Season 4",
	[-1000140] = "Festival do Fogo do Solstício",
	[-1000141] = "Dia dos Piratas",
	[-1000149] = "Festerê de Pesca da Selva do Espinhaço",
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
	[-1000101] = "Гладиатор: Сезон 1",
	[-1000102] = "Безжалостный гладиатор: Сезон 2",
	[-1000103] = "Мстительный гладиатор: Сезон 3",
	[-1000104] = "Жестокий гладиатор: Сезон 4",
	[-1000115] = "Комплекты T0.5",
	[-1000116] = "Капитаны",
	[-1000120] = DUNGEON_FLOOR_DIREMAUL5.." (Восток)",
	[-1000121] = DUNGEON_FLOOR_DIREMAUL1.." (Север)",
	[-1000122] = DUNGEON_FLOOR_DIREMAUL2.." (Запад)",
	[-1000126] = "Кладбище",
	[-1000127] = "Библиотека",
	[-1000128] = "Оружейная",
	[-1000129] = "Собор",
	[-1000140] = "Огненный Солнцеворот",
	[-1000141] = "День пирата",
	[-1000149] = "Рыбомания Тернистой долины",
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
	[-1000101] = "角斗士：第1赛季",
	[-1000102] = "残酷角斗士：第1赛季",
	[-1000103] = "复仇角斗士：第3赛季",
	[-1000104] = "野蛮角斗士：第3赛季",
	[-1000115] = "等级 0.5 套装",
	[-1000116] = "船长",
	[-1000120] = DUNGEON_FLOOR_DIREMAUL5.." (东)",
	[-1000121] = DUNGEON_FLOOR_DIREMAUL1.." (北)",
	[-1000122] = DUNGEON_FLOOR_DIREMAUL2.." (西)",
	[-1000126] = "墓地",
	[-1000127] = "图书馆",
	[-1000128] = "武器库",
	[-1000129] = "修道院",
	[-1000140] = "仲夏火焰节",
	[-1000141] = "海盗日",
	[-1000149] = "荆棘谷钓鱼大赛",
}) do a[key] = value; end
end

if simplifiedLocale == "cn" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000015] = "你可能需要在特定的节日活动中才能完成本节中的事物。",
	[-1000022] = "包含有奖励或可从包含部分中的其他内容获得的事物。\n在此处合并以减少来自许多可能重复来源。",
}) do a[key] = value; end
end

if simplifiedLocale == "de" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000015] = "Es muss möglicherweise ein bestimmter Feiertag aktiv sein, um hier genannte Dinge abschließen zu können.",
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
	[-1000015] = "Чтобы выполнить упомянутые в данной секции Штучки, может быть нужен какой-то праздник.",
	[-1000022] = "Штучки, которые можно получить в награду с разного контента в родительской секции.\nОни собраны здесь, чтобы уменьшить количество источников, когда Штучка доступна из многих мест.",
}) do a[key] = value; end
end