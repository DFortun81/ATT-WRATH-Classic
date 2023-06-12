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
	HONOR_TITLES = -1000086,
	PVP = -1000088,
	TIER_ZERO_POINT_FIVE_SETS = -1000102,
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
	[-1000067] = "Interface/FriendsFrame/PlusManz-Alliance",
	[-1000068] = "Interface/FriendsFrame/PlusManz-Horde",
	[-1000069] = "Interface/FriendsFrame/PlusManz-PlusManz",
	[-1000086] = "Interface/Icons/inv_sword_48",
	[-1000088] = _.asset("Category_PvP"),
	[-1000102] = "Interface/Icons/INV_Chest_Plate03",
	[-1000103] = "Interface/Icons/achievement_pvp_h_12",
	[-1000104] = "Interface/Icons/Inv_misc_ahnqirajtrinket_06",
	[-1000105] = _.asset("Achievement_Zone_Blackrock_01"),
	[-1000106] = _.asset("Achievement_Zone_Blackrock_01"),
	[-1000107] = "Interface/Icons/Spell_Shadow_SummonImp",
	[-1000108] = "Interface/Icons/inv_axe_10",
	[-1000109] = "Interface/Icons/INV_Misc_Head_Elf_02",
	[-1000110] = "Interface/Icons/spell_arcane_portalironforge",
	[-1000111] = "Interface/Icons/INV_Misc_Gem_Opal_01",
	[-1000112] = "Interface/Icons/INV_Misc_Gem_Amethyst_02",
	[-1000113] = "Interface/Icons/Inv_misc_bone_humanskull_01",
	[-1000114] = "Interface/Icons/INV_Misc_Book_13",
	[-1000115] = "Interface/Icons/inv_helmet_25",
	[-1000116] = "Interface/Icons/inv_helmet_12",
	[-1000117] = "Interface/Icons/INV_Misc_Token_ScarletCrusade",
	[-1000118] = "Interface/Icons/INV_MISC_KEY_13",
	[-1000123] = "Interface/Icons/inv_misc_fish_06",
	[-1000126] = "Interface/Icons/inv_jewelry_amulet_03",
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
	[-1000067] = FACTION_ALLIANCE,
	[-1000068] = FACTION_HORDE,
	[-1000069] = COMBATLOG_FILTER_STRING_NEUTRAL_UNITS,
	[-1000086] = "Honor Titles",
	[-1000088] = PVP,
	[-1000102] = "Tier 0.5 Sets",
	[-1000103] = "Captains",
	[-1000104] = "Silithid Royalty",
	[-1000105] = DUNGEON_FLOOR_BLACKROCKDEPTHS1,
	[-1000106] = DUNGEON_FLOOR_BLACKROCKDEPTHS2,
	[-1000107] = DUNGEON_FLOOR_DIREMAUL5.." (East)",
	[-1000108] = DUNGEON_FLOOR_DIREMAUL1.." (North)",
	[-1000109] = DUNGEON_FLOOR_DIREMAUL2.." (West)",
	[-1000110] = GetSpellInfo(21127),
	[-1000111] = DUNGEON_FLOOR_DESOLACE22.." (Orange Path)",
	[-1000112] = DUNGEON_FLOOR_DESOLACE21.." (Purple Path)",
	[-1000113] = "Graveyard",
	[-1000114] = "Library",
	[-1000115] = "Armory",
	[-1000116] = "Cathedral",
	[-1000117] = "Main Gate",
	[-1000118] = "Service Entrance",
	[-1000123] = "Stranglethorn Fishing Extravaganza",
	[-1000126] = "Spirit of Competition",
}) do a[key] = value; end

local a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000015] = "A specific holiday may need to be active for you to complete the referenced Things within this section.",
	[-1000019] = "This section will only show your current character's professions outside of Account and Debug Mode.",
	[-1000022] = "Contains Things which are rewarded or are available from other content within the containing section.\nThey are consolidated here in an effort to reduce duplication from many possible Sources.",
	[-1000107] = "This part of the instance can be accessed from the eastern-most portal. (right side)",
	[-1000108] = "This part of the instance can be accessed from the northern-most portal.",
	[-1000109] = "This part of the instance can be accessed from the western-most portal. (left side)",
	[-1000117] = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Live\" or \"Scarlet\" side, which the Scarlet Crusade has taken over.",
	[-1000118] = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Dead\" or \"Scourge\" side, which the Scourge has taken over.",
	[-1000126] = "This is a Battlegrounds-based event that coincides with the beginning of the Summer Olympic games. The only time this was celebrated was in 2008 to correspond to the Beijing Olympics, and although there appeared to be the intention to repeat this event, it never returned.",
}) do a[key] = value; end

local a = L.HEADER_LORE;
for key,value in pairs({
	[-1000033] = "One of these dragons will spawn randomly at the associated coordinates across Azeroth.",
	[-1000102] = "The Dungeon Set 2 class sets, commonly referred to as Tier 0.5, are obtained by completing a long quest chain to upgrade the first set available as drops in end game dungeons into stronger versions of themselves. In current WoW, these sets are covetted by Collectors as the quest chain was completely removed from the game with Cataclysm. In WoW Classic, you should finish this quest chain on all of your characters before then!",
	[-1000103] = "These can be farmed infinitely by resetting the boss.",
}) do a[key] = value; end

if simplifiedLocale == "de" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000003] = "Gemeinsame Bossbeute",
	[-1000011] = "Erkundung",
	[-1000033] = "Drachen des Alptraums",
	[-1000113] = "Friedhof",
	[-1000114] = "Bibliothek",
	[-1000115] = "Waffenkammer",
	[-1000116] = "Kathedrale",
	[-1000123] = "Anglerwettbewerb im Schlingendorntal",
}) do a[key] = value; end
end

if simplifiedLocale == "es" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000123] = "Gran espectáculo de pesca de Tuercespina",
}) do a[key] = value; end
end

if simplifiedLocale == "fr" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000006] = "Objets communs des vendeurs",
	[-1000011] = "Exploration",
	[-1000033] = "Dragons du Cauchemar",
	[-1000102] = "Ensembles Tier 0.5",
	[-1000103] = "Capitaines",
	[-1000107] = DUNGEON_FLOOR_DIREMAUL5.." (Est)",
	[-1000108] = DUNGEON_FLOOR_DIREMAUL1.." (Nord)",
	[-1000109] = DUNGEON_FLOOR_DIREMAUL2.." (Ouest)",
	[-1000113] = "Cimetière",
	[-1000114] = "Librairie",
	[-1000115] = "Armurerie",
	[-1000116] = "Cathédrale",
	[-1000123] = "Concours de pêche de Strangleronce",
}) do a[key] = value; end
end

if simplifiedLocale == "it" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000123] = "Gara di Pesca a Rovotorto",
}) do a[key] = value; end
end

if simplifiedLocale == "ko" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000123] = "가시덤불 골짜기 낚시왕 선발대회",
}) do a[key] = value; end
end

if simplifiedLocale == "pt" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000123] = "Festerê de Pesca da Selva do Espinhaço",
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
	[-1000102] = "Комплекты T0.5",
	[-1000103] = "Капитаны",
	[-1000107] = DUNGEON_FLOOR_DIREMAUL5.." (Восток)",
	[-1000108] = DUNGEON_FLOOR_DIREMAUL1.." (Север)",
	[-1000109] = DUNGEON_FLOOR_DIREMAUL2.." (Запад)",
	[-1000113] = "Кладбище",
	[-1000114] = "Библиотека",
	[-1000115] = "Оружейная",
	[-1000116] = "Собор",
	[-1000123] = "Рыбомания Тернистой долины",
}) do a[key] = value; end
end

if simplifiedLocale == "zh" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000006] = "常规商人物品",
	[-1000011] = "勘探",
	[-1000033] = "梦魇之龙",
	[-1000102] = "等级 0.5 套装",
	[-1000103] = "船长",
	[-1000107] = DUNGEON_FLOOR_DIREMAUL5.." (东)",
	[-1000108] = DUNGEON_FLOOR_DIREMAUL1.." (北)",
	[-1000109] = DUNGEON_FLOOR_DIREMAUL2.." (西)",
	[-1000113] = "墓地",
	[-1000114] = "图书馆",
	[-1000115] = "武器库",
	[-1000116] = "修道院",
	[-1000123] = "荆棘谷钓鱼大赛",
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