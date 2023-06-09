-------------------------------------------------------
--   C U S T O M   H E A D E R S   M O D U L E   --
-------------------------------------------------------
local _ = select(2, ...);
local L = _.L;
local simplifiedLocale = string.sub(GetLocale(),1,2);

_.HeaderConstants = {
	ACHIEVEMENTS = -1000000,
	BONUS_OBJECTIVES = -1000001,
	COMMON_BOSS_DROPS = -1000003,
	COMMON_VENDOR_ITEMS = -1000004,
	DISCOVERY = -1000005,
	DROPS = -1000006,
	EXPLORATION = -1000007,
	FACTIONS = -1000008,
	FLIGHT_PATHS = -1000009,
	HOLIDAYS = -1000010,
	PROFESSIONS = -1000013,
	QUESTS = -1000014,
	RARES = -1000015,
	REWARDS = -1000016,
	SECRETS = -1000017,
	SPECIAL = -1000018,
	TREASURES = -1000019,
	VENDORS = -1000020,
	WORLD_BOSSES = -1000021,
	WORLD_QUESTS = -1000022,
	ZONE_DROPS = -1000023,
	ZONE_REWARDS = -1000024,
	HONOR_TITLES = -1000026,
	PVP = -1000027,
	TIER_ZERO_POINT_FIVE_SETS = -1000037,
};

local a = L.HEADER_ICONS;
for key,value in pairs({
	[-1000000] = _.asset("Category_Achievements"),
	[-1000001] = "Interface/Icons/Inv_misc_map_01",
	[-1000002] = _.asset("Interface_World_boss"),
	[-1000003] = _.asset("Achievement_Garrison_Horde_PVE"),
	[-1000004] = "Interface/Icons/INV_Misc_Coin_02",
	[-1000005] = "Interface/Icons/inv_misc_book_07",
	[-1000006] = _.asset("Category_WorldDrops"),
	[-1000007] = _.asset("INV_Misc_Map02"),
	[-1000008] = _.asset("Category_Factions"),
	[-1000009] = _.asset("Category_FlightPaths"),
	[-1000010] = _.asset("Category_Holidays"),
	[-1000011] = "Interface/Icons/Inv_misc_map02",
	[-1000012] = "Interface/Icons/achievement_reputation_05",
	[-1000013] = _.asset("Category_Professions"),
	[-1000014] = _.asset("Interface_Quest_header"),
	[-1000015] = _.asset("Interface_Rare"),
	[-1000016] = _.asset("Interface_Rewards"),
	[-1000017] = _.asset("Category_Secrets"),
	[-1000018] = "Interface/Icons/inv_sword_40",
	[-1000019] = _.asset("Interface_Tchest"),
	[-1000020] = _.asset("Interface_Vendor"),
	[-1000021] = _.asset("Interface_World_boss"),
	[-1000022] = _.asset("Interface_WorldQuest"),
	[-1000023] = _.asset("Interface_Zone_drop"),
	[-1000024] = _.asset("Interface_Rewards"),
	[-1000025] = "Interface/Icons/DiabloAnniversary_HoradricCube",
	[-1000026] = "Interface/Icons/inv_sword_48",
	[-1000027] = _.asset("Category_PvP"),
	[-1000028] = "Interface/Icons/achievement_featsofstrength_gladiator_01",
	[-1000029] = "Interface/Icons/achievement_featsofstrength_gladiator_02",
	[-1000030] = "Interface/Icons/achievement_featsofstrength_gladiator_03",
	[-1000031] = "Interface/Icons/achievement_featsofstrength_gladiator_04",
	[-1000032] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000033] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000034] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000035] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000036] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000037] = "Interface/Icons/INV_Chest_Plate03",
	[-1000038] = "Interface/Icons/INV_Misc_Token_ScarletCrusade",
	[-1000039] = "Interface/Icons/INV_MISC_KEY_13",
	[-1000040] = "Interface/Icons/inv_jewelry_amulet_03",
}) do a[key] = value; end

local a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000000] = ACHIEVEMENTS,
	[-1000001] = TRACKER_HEADER_BONUS_OBJECTIVES,
	[-1000002] = RAID_BOSSES,
	[-1000003] = BATTLE_PET_BREED_QUALITY2.." "..TRANSMOG_SOURCE_1,
	[-1000004] = "Common Vendor Items",
	[-1000005] = BATTLE_PET_SOURCE_11,
	[-1000006] = "Drops",
	[-1000007] = "Exploration",
	[-1000008] = FACTION,
	[-1000009] = "Flight Paths",
	[-1000010] = "Holiday",
	[-1000011] = BRAWL_TOOLTIP_MAPS,
	[-1000012] = "Party Sync",
	[-1000013] = TRADE_SKILLS,
	[-1000014] = TRACKER_HEADER_QUESTS,
	[-1000015] = BATTLE_PET_BREED_QUALITY4,
	[-1000016] = QUEST_REWARDS,
	[-1000017] = "Secrets",
	[-1000018] = SPECIAL,
	[-1000019] = "Treasures",
	[-1000020] = BATTLE_PET_SOURCE_3,
	[-1000021] = WORLD.." "..RAID_BOSSES,
	[-1000022] = TRACKER_HEADER_WORLD_QUESTS,
	[-1000023] = ZONE.." "..BATTLE_PET_SOURCE_1,
	[-1000024] = "Zone Rewards",
	[-1000025] = "Diablo IV",
	[-1000026] = "Honor Titles",
	[-1000027] = BUG_CATEGORY14,
	[-1000028] = select(2, GetAchievementInfo(2091))..": Season 1",
	[-1000029] = select(2, GetAchievementInfo(418))..": Season 2",
	[-1000030] = select(2, GetAchievementInfo(419))..": Season 3",
	[-1000031] = select(2, GetAchievementInfo(420))..": Season 4",
	[-1000032] = select(2, GetAchievementInfo(3336))..": Season 5",
	[-1000033] = "Hateful Gladiator",
	[-1000034] = select(2, GetAchievementInfo(3436))..": Season 6",
	[-1000035] = select(2, GetAchievementInfo(3758))..": Season 7",
	[-1000036] = select(2, GetAchievementInfo(4599))..": Season 8",
	[-1000037] = "Tier 0.5 Sets",
	[-1000038] = "Main Gate",
	[-1000039] = "Service Entrance",
	[-1000040] = "Spirit of Competition",
}) do a[key] = value; end

local a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000013] = "This section will only show your current character's professions outside of Account and Debug Mode.",
	[-1000016] = "Contains Things which are rewarded or are available from other content within the containing section.\nThey are consolidated here in an effort to reduce duplication from many possible Sources.",
	[-1000017] = "Naughty secrets...",
	[-1000022] = "World Quests are time-limited Quests available in specific locations with variable rewards.\n\nMake sure to check the ATT World Quests window (/attwq) often to see what time-limited Things you should go collect!",
	[-1000024] = "These items can drop from repeatable treasure chests, wish crickets, world quests or table missions.",
	[-1000038] = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Live\" or \"Scarlet\" side, which the Scarlet Crusade has taken over.",
	[-1000039] = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Dead\" or \"Scourge\" side, which the Scourge has taken over.",
	[-1000040] = "This is a Battlegrounds-based event that coincides with the beginning of the Summer Olympic games. The only time this was celebrated was in 2008 to correspond to the Beijing Olympics, and although there appeared to be the intention to repeat this event, it never returned.",
}) do a[key] = value; end

local a = L.HEADER_LORE;
for key,value in pairs({
	[-1000037] = "The Dungeon Set 2 class sets, commonly referred to as Tier 0.5, are obtained by completing a long quest chain to upgrade the first set available as drops in end game dungeons into stronger versions of themselves. In current WoW, these sets are covetted by Collectors as the quest chain was completely removed from the game with Cataclysm. In WoW Classic, you should finish this quest chain on all of your characters before then!",
}) do a[key] = value; end

if simplifiedLocale == "de" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000003] = "Gemeinsame Bossbeute",
	[-1000017] = "Rätsel",
	[-1000033] = "Hasserfüllten Gladiator",
}) do a[key] = value; end
end

if simplifiedLocale == "es" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000033] = "Gladiador Odioso",
}) do a[key] = value; end
end

if simplifiedLocale == "fr" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000004] = "Objets communs des vendeurs",
	[-1000024] = "Récompenses de la zone",
	[-1000028] = select(2, GetAchievementInfo(2091))..": Saison 1",
	[-1000029] = select(2, GetAchievementInfo(418))..": Saison 2",
	[-1000030] = select(2, GetAchievementInfo(419))..": Saison 3",
	[-1000031] = select(2, GetAchievementInfo(420))..": Saison 4",
	[-1000032] = select(2, GetAchievementInfo(3336))..": Saison 5",
	[-1000033] = "Gladiateur Haineux",
	[-1000034] = select(2, GetAchievementInfo(3436))..": Saison 6",
	[-1000035] = select(2, GetAchievementInfo(3758))..": Saison 7",
	[-1000036] = select(2, GetAchievementInfo(4599))..": Saison 8",
	[-1000037] = "Ensembles Tier 0.5",
}) do a[key] = value; end
end

if simplifiedLocale == "it" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000033] = "Gladiatore Perfido",
}) do a[key] = value; end
end

if simplifiedLocale == "ko" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000033] = "원한에 검투사",
}) do a[key] = value; end
end

if simplifiedLocale == "pt" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000033] = "Gladiador Odioso",
}) do a[key] = value; end
end

if simplifiedLocale == "ru" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000003] = "Общая добыча с боссов",
	[-1000004] = "Обычные предметы у Торговцев",
	[-1000006] = BATTLE_PET_SOURCE_1,
	[-1000009] = "Точка полета",
	[-1000015] = "Редкие",
	[-1000017] = "Секреты",
	[-1000019] = "Сундук с сокровищами",
	[-1000021] = "Мировые Боссы",
	[-1000023] = "Добыча локации",
	[-1000024] = "Добыча локации",
	[-1000028] = select(2, GetAchievementInfo(2091))..": Сезон 1",
	[-1000029] = select(2, GetAchievementInfo(418))..": Сезон 2",
	[-1000030] = select(2, GetAchievementInfo(419))..": Сезон 3",
	[-1000031] = select(2, GetAchievementInfo(420))..": Сезон 4",
	[-1000032] = select(2, GetAchievementInfo(3336))..": Сезон 5",
	[-1000033] = "Злобный гладиатор",
	[-1000034] = select(2, GetAchievementInfo(3436))..": Сезон 6",
	[-1000035] = select(2, GetAchievementInfo(3758))..": Сезон 7",
	[-1000036] = select(2, GetAchievementInfo(4599))..": Сезон 8",
	[-1000037] = "Комплекты T0.5",
}) do a[key] = value; end
end

if simplifiedLocale == "zh" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000004] = "常规商人物品",
	[-1000006] = "掉落",
	[-1000017] = "秘密",
	[-1000024] = "区域奖励",
	[-1000025] = "暗黑破坏神IV",
	[-1000028] = select(2, GetAchievementInfo(2091)).."：第1赛季",
	[-1000029] = select(2, GetAchievementInfo(418)).."：第2赛季",
	[-1000030] = select(2, GetAchievementInfo(419)).."：第3赛季",
	[-1000031] = select(2, GetAchievementInfo(420)).."：第4赛季",
	[-1000032] = select(2, GetAchievementInfo(3336)).."：第5赛季",
	[-1000033] = "憎恨角斗士",
	[-1000034] = select(2, GetAchievementInfo(3436)).."：第6赛季",
	[-1000035] = select(2, GetAchievementInfo(3758)).."：第7赛季",
	[-1000036] = select(2, GetAchievementInfo(4599)).."：第8赛季",
	[-1000037] = "等级 0.5 套装",
}) do a[key] = value; end
end

if simplifiedLocale == "cn" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000016] = "包含有奖励或可从包含部分中的其他内容获得的事物。\n在此处合并以减少来自许多可能重复来源。",
	[-1000017] = "淘气的秘密…",
	[-1000022] = "世界任务是有时间限制的任务，可在特定地点进行，奖励不一。\n\n一定要经常查看 ATT 世界任务窗口(/attwq)，看看有什么限时的东西你应该去收藏！",
	[-1000024] = "这些物品可以从可重复的宝箱、祈愿蟋蟀、世界任务或桌面任务中掉落。",
}) do a[key] = value; end
end

if simplifiedLocale == "fr" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000016] = "Contient des objets de récompenses ou disponibles dans d’autres contenus de la section qui les contient.\nIls sont regroupés ici dans le but de réduire la duplication de nombreuses sources possibles.",
	[-1000017] = "Vilains secrets...",
	[-1000022] = "Les quêtes mondiales sont des quêtes limitées dans le temps, disponibles dans des lieux spécifiques avec des récompenses variables.\n\nN’oublie pas de consulter souvent la fenêtre des quêtes mondiales ATT (/attwq) pour voir quelles sont les objets limités dans le temps que tu dois collecter !",
	[-1000024] = "Ces objets peuvent provenir de coffres au trésor répétitifs, Criquet à souhait, de quêtes mondiales ou des missions de la table de commandement.",
}) do a[key] = value; end
end

if simplifiedLocale == "ru" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000016] = "Штучки, которые можно получить в награду с разного контента в родительской секции.\nОни собраны здесь, чтобы уменьшить количество источников, когда Штучка доступна из многих мест.",
	[-1000017] = "Секретики...",
	[-1000022] = "Локальные задания – это ограниченные по времени задания, доступные в определённых местах с переменными наградами.\n\nЧаще проверяйте окно локальных заданий ATT (/attwq), чтобы увидеть какие ограниченные по времени Штучки можно собрать!",
	[-1000024] = "Эти предметы можно получить в награду из повторяемых сокровищ, заветных сверчков, локальных заданий или заданий командирского стола.",
}) do a[key] = value; end
end