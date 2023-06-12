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
	FEAST_OF_WINTER_VEIL_HEADER = -1000074,
	HALLOWS_END_HEADER = -1000075,
	HARVEST_FESTIVAL_HEADER = -1000076,
	LOVE_IS_IN_THE_AIR_HEADER = -1000077,
	LUNAR_FESTIVAL_HEADER = -1000078,
	MIDSUMMER_FIRE_FESTIVAL_HEADER = -1000079,
	NOBLEGARDEN_HEADER = -1000080,
	HONOR_TITLES = -1000109,
	PVP = -1000111,
	TIER_ZERO_POINT_FIVE_SETS = -1000125,
};

local a = L.HEADER_ICONS;
for key,value in pairs({
	[-1000000] = _.asset("Category_Achievements"),
	[-1000003] = _.asset("Achievement_Garrison_Horde_PVE"),
	[-1000006] = "Interface/Icons/INV_Misc_Coin_02",
	[-1000007] = _.asset("Category_Crafting"),
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
	[-1000045] = "Interface/Icons/INV_Chest_Plate03",
	[-1000058] = "Interface/Icons/INV_Sword_23",
	[-1000068] = "Interface/FriendsFrame/PlusManz-Alliance",
	[-1000069] = "Interface/FriendsFrame/PlusManz-Horde",
	[-1000070] = "Interface/FriendsFrame/PlusManz-PlusManz",
	[-1000071] = _.asset("Holiday_brewfest"),
	[-1000072] = _.asset("Holiday_Children"),
	[-1000074] = _.asset("Holiday_winter_veil"),
	[-1000075] = _.asset("Holiday_hallows_end"),
	[-1000076] = _.asset("Holiday_Harvestfest"),
	[-1000077] = _.asset("Holiday_love"),
	[-1000078] = _.asset("Holiday_Lunar"),
	[-1000079] = _.asset("Holiday_Midsummer"),
	[-1000080] = _.asset("Holiday_noblegarden"),
	[-1000090] = _.asset("Weapon_Type_Legendary"),
	[-1000109] = "Interface/Icons/inv_sword_48",
	[-1000111] = _.asset("Category_PvP"),
	[-1000125] = "Interface/Icons/INV_Chest_Plate03",
	[-1000126] = "Interface/Icons/achievement_pvp_h_12",
	[-1000127] = "Interface/Icons/Inv_misc_ahnqirajtrinket_06",
	[-1000128] = _.asset("Achievement_Zone_Blackrock_01"),
	[-1000129] = _.asset("Achievement_Zone_Blackrock_01"),
	[-1000130] = "Interface/Icons/Spell_Shadow_SummonImp",
	[-1000131] = "Interface/Icons/inv_axe_10",
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
	[-1000147] = "Interface/Icons/inv_misc_fish_06",
	[-1000149] = "Interface/Icons/inv_jewelry_amulet_03",
}) do a[key] = value; end

local a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000000] = ACHIEVEMENTS,
	[-1000003] = BATTLE_PET_BREED_QUALITY2.." "..TRANSMOG_SOURCE_1,
	[-1000006] = "Common Vendor Items",
	[-1000007] = LOOT_JOURNAL_LEGENDARIES_SOURCE_CRAFTED_ITEM,
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
	[-1000045] = ARMOR,
	[-1000058] = AUCTION_CATEGORY_WEAPONS,
	[-1000068] = FACTION_ALLIANCE,
	[-1000069] = FACTION_HORDE,
	[-1000070] = COMBATLOG_FILTER_STRING_NEUTRAL_UNITS,
	[-1000071] = select(1,GetCategoryInfo(162)),
	[-1000072] = select(1,GetCategoryInfo(163)),
	[-1000074] = GetSpellInfo(21953),
	[-1000075] = select(1,GetCategoryInfo(158)),
	[-1000076] = "Harvest Festival",
	[-1000077] = select(1,GetCategoryInfo(187)),
	[-1000078] = select(1,GetCategoryInfo(160)),
	[-1000079] = "Midsummer Fire Festival",
	[-1000080] = select(1,GetCategoryInfo(159)),
	[-1000090] = ITEM_QUALITY5_DESC,
	[-1000109] = "Honor Titles",
	[-1000111] = PVP,
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
	[-1000147] = "Stranglethorn Fishing Extravaganza",
	[-1000149] = "Spirit of Competition",
}) do a[key] = value; end

local a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000015] = "A specific holiday may need to be active for you to complete the referenced Things within this section.",
	[-1000019] = "This section will only show your current character's professions outside of Account and Debug Mode.",
	[-1000022] = "Contains Things which are rewarded or are available from other content within the containing section.\nThey are consolidated here in an effort to reduce duplication from many possible Sources.",
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
	[-1000079] = "Sonnenwendfest",
	[-1000136] = "Friedhof",
	[-1000137] = "Bibliothek",
	[-1000138] = "Waffenkammer",
	[-1000139] = "Kathedrale",
	[-1000147] = "Anglerwettbewerb im Schlingendorntal",
}) do a[key] = value; end
end

if simplifiedLocale == "es" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000079] = "Festival del Fuego del Solsticio de Verano",
	[-1000147] = "Gran espectáculo de pesca de Tuercespina",
}) do a[key] = value; end
end

if simplifiedLocale == "fr" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000006] = "Objets communs des vendeurs",
	[-1000011] = "Exploration",
	[-1000033] = "Dragons du Cauchemar",
	[-1000079] = "Fête du Feu du solstice d’été",
	[-1000125] = "Ensembles Tier 0.5",
	[-1000126] = "Capitaines",
	[-1000130] = DUNGEON_FLOOR_DIREMAUL5.." (Est)",
	[-1000131] = DUNGEON_FLOOR_DIREMAUL1.." (Nord)",
	[-1000132] = DUNGEON_FLOOR_DIREMAUL2.." (Ouest)",
	[-1000136] = "Cimetière",
	[-1000137] = "Librairie",
	[-1000138] = "Armurerie",
	[-1000139] = "Cathédrale",
	[-1000147] = "Concours de pêche de Strangleronce",
}) do a[key] = value; end
end

if simplifiedLocale == "it" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000079] = "Fuochi di Mezza Estate",
	[-1000147] = "Gara di Pesca a Rovotorto",
}) do a[key] = value; end
end

if simplifiedLocale == "ko" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000079] = "한여름 불꽃축제",
	[-1000147] = "가시덤불 골짜기 낚시왕 선발대회",
}) do a[key] = value; end
end

if simplifiedLocale == "pt" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000079] = "Festival do Fogo do Solstício",
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
	[-1000079] = "Огненный Солнцеворот",
	[-1000125] = "Комплекты T0.5",
	[-1000126] = "Капитаны",
	[-1000130] = DUNGEON_FLOOR_DIREMAUL5.." (Восток)",
	[-1000131] = DUNGEON_FLOOR_DIREMAUL1.." (Север)",
	[-1000132] = DUNGEON_FLOOR_DIREMAUL2.." (Запад)",
	[-1000136] = "Кладбище",
	[-1000137] = "Библиотека",
	[-1000138] = "Оружейная",
	[-1000139] = "Собор",
	[-1000147] = "Рыбомания Тернистой долины",
}) do a[key] = value; end
end

if simplifiedLocale == "zh" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000006] = "常规商人物品",
	[-1000011] = "勘探",
	[-1000033] = "梦魇之龙",
	[-1000079] = "仲夏火焰节",
	[-1000125] = "等级 0.5 套装",
	[-1000126] = "船长",
	[-1000130] = DUNGEON_FLOOR_DIREMAUL5.." (东)",
	[-1000131] = DUNGEON_FLOOR_DIREMAUL1.." (北)",
	[-1000132] = DUNGEON_FLOOR_DIREMAUL2.." (西)",
	[-1000136] = "墓地",
	[-1000137] = "图书馆",
	[-1000138] = "武器库",
	[-1000139] = "修道院",
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