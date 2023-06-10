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
	[-1000002] = _.asset("Interface_World_boss"),
	[-1000003] = _.asset("Achievement_Garrison_Horde_PVE"),
	[-1000004] = "Interface/Icons/INV_Misc_Coin_02",
	[-1000005] = "Interface/Icons/inv_misc_book_07",
	[-1000008] = "Interface/Icons/INV_Misc_Map02",
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
	[-1000030] = "Interface/Icons/inv_chest_chain",
	[-1000031] = "Interface/Icons/inv_boots_09",
	[-1000033] = "Interface/Icons/Inv_gauntlets_24",
	[-1000034] = "Interface/Icons/inv_helmet_03",
	[-1000035] = "Interface/Icons/inv_pants_09",
	[-1000038] = "Interface/Icons/inv_shoulder_05",
	[-1000040] = "Interface/Icons/inv_belt_24",
	[-1000041] = "Interface/Icons/INV_Sword_23",
	[-1000042] = "Interface/Icons/inv_bracer_07",
	[-1000044] = "Interface/FriendsFrame/PlusManz-Alliance",
	[-1000045] = "Interface/FriendsFrame/PlusManz-Horde",
	[-1000046] = "Interface/FriendsFrame/PlusManz-PlusManz",
	[-1000051] = "Interface/Icons/inv_sword_48",
	[-1000052] = _.asset("Category_PvP"),
	[-1000053] = "Interface/Icons/achievement_featsofstrength_gladiator_01",
	[-1000054] = "Interface/Icons/achievement_featsofstrength_gladiator_02",
	[-1000055] = "Interface/Icons/achievement_featsofstrength_gladiator_03",
	[-1000056] = "Interface/Icons/achievement_featsofstrength_gladiator_04",
	[-1000057] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000058] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000059] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000060] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000061] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000062] = "Interface/Icons/INV_Chest_Plate03",
	[-1000063] = "Interface/Icons/Ability_Warlock_DemonicEmpowerment",
	[-1000064] = "Interface/Icons/Achievement_Reputation_Ogre",
	[-1000065] = "Interface/Icons/INV_Misc_Head_Elf_02",
	[-1000066] = "Interface/Icons/INV_Misc_Token_ScarletCrusade",
	[-1000067] = "Interface/Icons/INV_MISC_KEY_13",
	[-1000068] = "Interface/Icons/inv_jewelry_amulet_03",
}) do a[key] = value; end

local a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000000] = ACHIEVEMENTS,
	[-1000002] = RAID_BOSSES,
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
	[-1000030] = INVTYPE_CHEST,
	[-1000031] = INVTYPE_FEET,
	[-1000033] = INVTYPE_HAND,
	[-1000034] = INVTYPE_HEAD,
	[-1000035] = INVTYPE_LEGS,
	[-1000038] = INVTYPE_SHOULDER,
	[-1000040] = INVTYPE_WAIST,
	[-1000041] = AUCTION_CATEGORY_WEAPONS,
	[-1000042] = INVTYPE_WRIST,
	[-1000044] = FACTION_ALLIANCE,
	[-1000045] = FACTION_HORDE,
	[-1000046] = COMBATLOG_FILTER_STRING_NEUTRAL_UNITS,
	[-1000051] = "Honor Titles",
	[-1000052] = BUG_CATEGORY14,
	[-1000053] = select(2, GetAchievementInfo(2091))..": Season 1",
	[-1000054] = select(2, GetAchievementInfo(418))..": Season 2",
	[-1000055] = select(2, GetAchievementInfo(419))..": Season 3",
	[-1000056] = select(2, GetAchievementInfo(420))..": Season 4",
	[-1000057] = select(2, GetAchievementInfo(3336))..": Season 5",
	[-1000058] = "Hateful Gladiator",
	[-1000059] = select(2, GetAchievementInfo(3436))..": Season 6",
	[-1000060] = select(2, GetAchievementInfo(3758))..": Season 7",
	[-1000061] = select(2, GetAchievementInfo(4599))..": Season 8",
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
	[-1000058] = "Hasserfüllten Gladiator",
}) do a[key] = value; end
end

if simplifiedLocale == "es" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000058] = "Gladiador Odioso",
}) do a[key] = value; end
end

if simplifiedLocale == "fr" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000004] = "Objets communs des vendeurs",
	[-1000008] = "Exploration",
	[-1000053] = select(2, GetAchievementInfo(2091))..": Saison 1",
	[-1000054] = select(2, GetAchievementInfo(418))..": Saison 2",
	[-1000055] = select(2, GetAchievementInfo(419))..": Saison 3",
	[-1000056] = select(2, GetAchievementInfo(420))..": Saison 4",
	[-1000057] = select(2, GetAchievementInfo(3336))..": Saison 5",
	[-1000058] = "Gladiateur Haineux",
	[-1000059] = select(2, GetAchievementInfo(3436))..": Saison 6",
	[-1000060] = select(2, GetAchievementInfo(3758))..": Saison 7",
	[-1000061] = select(2, GetAchievementInfo(4599))..": Saison 8",
	[-1000062] = "Ensembles Tier 0.5",
	[-1000063] = DUNGEON_FLOOR_DIREMAUL5.." (Est)",
	[-1000064] = DUNGEON_FLOOR_DIREMAUL1.." (Nord)",
	[-1000065] = DUNGEON_FLOOR_DIREMAUL2.." (Ouest)",
}) do a[key] = value; end
end

if simplifiedLocale == "it" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000058] = "Gladiatore Perfido",
}) do a[key] = value; end
end

if simplifiedLocale == "ko" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000058] = "원한에 검투사",
}) do a[key] = value; end
end

if simplifiedLocale == "pt" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000058] = "Gladiador Odioso",
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
	[-1000053] = select(2, GetAchievementInfo(2091))..": Сезон 1",
	[-1000054] = select(2, GetAchievementInfo(418))..": Сезон 2",
	[-1000055] = select(2, GetAchievementInfo(419))..": Сезон 3",
	[-1000056] = select(2, GetAchievementInfo(420))..": Сезон 4",
	[-1000057] = select(2, GetAchievementInfo(3336))..": Сезон 5",
	[-1000058] = "Злобный гладиатор",
	[-1000059] = select(2, GetAchievementInfo(3436))..": Сезон 6",
	[-1000060] = select(2, GetAchievementInfo(3758))..": Сезон 7",
	[-1000061] = select(2, GetAchievementInfo(4599))..": Сезон 8",
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
	[-1000053] = select(2, GetAchievementInfo(2091)).."：第1赛季",
	[-1000054] = select(2, GetAchievementInfo(418)).."：第2赛季",
	[-1000055] = select(2, GetAchievementInfo(419)).."：第3赛季",
	[-1000056] = select(2, GetAchievementInfo(420)).."：第4赛季",
	[-1000057] = select(2, GetAchievementInfo(3336)).."：第5赛季",
	[-1000058] = "憎恨角斗士",
	[-1000059] = select(2, GetAchievementInfo(3436)).."：第6赛季",
	[-1000060] = select(2, GetAchievementInfo(3758)).."：第7赛季",
	[-1000061] = select(2, GetAchievementInfo(4599)).."：第8赛季",
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