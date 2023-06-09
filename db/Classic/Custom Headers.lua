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
	DROPS = -1000005,
	EXPLORATION = -1000006,
	FACTIONS = -1000007,
	FLIGHT_PATHS = -1000008,
	HOLIDAYS = -1000009,
	QUESTS = -1000012,
	RARES = -1000013,
	REWARDS = -1000014,
	SECRETS = -1000015,
	SPECIAL = -1000016,
	TREASURES = -1000017,
	VENDORS = -1000018,
	WORLD_BOSSES = -1000019,
	WORLD_QUESTS = -1000020,
	ZONE_DROPS = -1000021,
	ZONE_REWARDS = -1000022,
	HONOR_TITLES = -1000024,
	PVP = -1000025,
	TIER_ZERO_POINT_FIVE_SETS = -1000035,
};

local a = L.HEADER_ICONS;
for key,value in pairs({
	[-1000000] = _.asset("Category_Achievements"),
	[-1000001] = "Interface/Icons/Inv_misc_map_01",
	[-1000002] = _.asset("Interface_World_boss"),
	[-1000003] = _.asset("Achievement_Garrison_Horde_PVE"),
	[-1000004] = "Interface/Icons/INV_Misc_Coin_02",
	[-1000005] = _.asset("Category_WorldDrops"),
	[-1000006] = _.asset("INV_Misc_Map02"),
	[-1000007] = _.asset("Category_Factions"),
	[-1000008] = _.asset("Category_FlightPaths"),
	[-1000009] = _.asset("Category_Holidays"),
	[-1000010] = "Interface/Icons/Inv_misc_map02",
	[-1000011] = "Interface/Icons/achievement_reputation_05",
	[-1000012] = _.asset("Interface_Quest_header"),
	[-1000013] = _.asset("Interface_Rare"),
	[-1000014] = _.asset("Interface_Rewards"),
	[-1000015] = _.asset("Category_Secrets"),
	[-1000016] = "Interface/Icons/inv_sword_40",
	[-1000017] = _.asset("Interface_Tchest"),
	[-1000018] = _.asset("Interface_Vendor"),
	[-1000019] = _.asset("Interface_World_boss"),
	[-1000020] = _.asset("Interface_WorldQuest"),
	[-1000021] = _.asset("Interface_Zone_drop"),
	[-1000022] = _.asset("Interface_Rewards"),
	[-1000023] = "Interface/Icons/DiabloAnniversary_HoradricCube",
	[-1000024] = "Interface/Icons/inv_sword_48",
	[-1000025] = _.asset("Category_PvP"),
	[-1000026] = _.asset("achievement_featsofstrength_gladiator_01"),
	[-1000027] = _.asset("achievement_featsofstrength_gladiator_02"),
	[-1000028] = _.asset("achievement_featsofstrength_gladiator_03"),
	[-1000029] = _.asset("achievement_featsofstrength_gladiator_04"),
	[-1000030] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000031] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000032] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000033] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000034] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000035] = "Interface/Icons/INV_Chest_Plate03",
	[-1000036] = "Interface/Icons/inv_jewelry_amulet_03",
}) do a[key] = value; end

local a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000000] = ACHIEVEMENTS,
	[-1000001] = TRACKER_HEADER_BONUS_OBJECTIVES,
	[-1000002] = RAID_BOSSES,
	[-1000003] = BATTLE_PET_BREED_QUALITY2.." "..TRANSMOG_SOURCE_1,
	[-1000004] = "Common Vendor Items",
	[-1000005] = "Drops",
	[-1000006] = "Exploration",
	[-1000007] = FACTION,
	[-1000008] = "Flight Paths",
	[-1000009] = "Holiday",
	[-1000010] = BRAWL_TOOLTIP_MAPS,
	[-1000011] = "Party Sync",
	[-1000012] = TRACKER_HEADER_QUESTS,
	[-1000013] = BATTLE_PET_BREED_QUALITY4,
	[-1000014] = QUEST_REWARDS,
	[-1000015] = "Secrets",
	[-1000016] = SPECIAL,
	[-1000017] = "Treasures",
	[-1000018] = BATTLE_PET_SOURCE_3,
	[-1000019] = WORLD.." "..RAID_BOSSES,
	[-1000020] = TRACKER_HEADER_WORLD_QUESTS,
	[-1000021] = ZONE.." "..BATTLE_PET_SOURCE_1,
	[-1000022] = "Zone Rewards",
	[-1000023] = "Diablo IV",
	[-1000024] = "Honor Titles",
	[-1000025] = BUG_CATEGORY14,
	[-1000026] = "Gladiator: Season 1",
	[-1000027] = "Merciless Gladiator: Season 2",
	[-1000028] = "Vengeful Gladiator: Season 3",
	[-1000029] = "Brutal Gladiator: Season 4",
	[-1000030] = select(2, GetAchievementInfo(3336))..": Season 5",
	[-1000031] = "Hateful Gladiator",
	[-1000032] = select(2, GetAchievementInfo(3436))..": Season 6",
	[-1000033] = select(2, GetAchievementInfo(3758))..": Season 7",
	[-1000034] = select(2, GetAchievementInfo(4599))..": Season 8",
	[-1000035] = "Tier 0.5 Sets",
	[-1000036] = "Spirit of Competition",
}) do a[key] = value; end

local a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000014] = "Contains Things which are rewarded or are available from other content within the containing section.\nThey are consolidated here in an effort to reduce duplication from many possible Sources.",
	[-1000015] = "Naughty secrets...",
	[-1000020] = "World Quests are time-limited Quests available in specific locations with variable rewards.\n\nMake sure to check the ATT World Quests window (/attwq) often to see what time-limited Things you should go collect!",
	[-1000022] = "These items can drop from repeatable treasure chests, wish crickets, world quests or table missions.",
	[-1000036] = "This is a Battlegrounds-based event that coincides with the beginning of the Summer Olympic games. The only time this was celebrated was in 2008 to correspond to the Beijing Olympics, and although there appeared to be the intention to repeat this event, it never returned.",
}) do a[key] = value; end

local a = L.HEADER_LORE;
for key,value in pairs({
	[-1000035] = "The Dungeon Set 2 class sets, commonly referred to as Tier 0.5, are obtained by completing a long quest chain to upgrade the first set available as drops in end game dungeons into stronger versions of themselves. In current WoW, these sets are covetted by Collectors as the quest chain was completely removed from the game with Cataclysm. In WoW Classic, you should finish this quest chain on all of your characters before then!",
}) do a[key] = value; end

if simplifiedLocale == "de" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000003] = "Gemeinsame Bossbeute",
	[-1000015] = "Rätsel",
	[-1000027] = "Erbarmungsloser Gladiator: Season 2",
	[-1000028] = "Rachsüchtiger Gladiator: Season 3",
	[-1000029] = "Brutaler Gladiator: Season 4",
	[-1000031] = "Hasserfüllten Gladiator",
}) do a[key] = value; end
end

if simplifiedLocale == "es" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000026] = "Gladiador: Season 1",
	[-1000027] = "Gladiador despiadado: Season 2",
	[-1000028] = "Gladiador vengativo: Season 3",
	[-1000029] = "Gladiador brutal: Season 4",
	[-1000031] = "Gladiador Odioso",
}) do a[key] = value; end
end

if simplifiedLocale == "fr" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000004] = "Objets communs des vendeurs",
	[-1000022] = "Récompenses de la zone",
	[-1000026] = "Gladiateur: Saison 1",
	[-1000027] = "Gladiateur impitoyable: Saison 2",
	[-1000028] = "Gladiateur vengeur: Saison 3",
	[-1000029] = "Gladiateur brutal: Saison 4",
	[-1000030] = select(2, GetAchievementInfo(3336))..": Saison 5",
	[-1000031] = "Gladiateur Haineux",
	[-1000032] = select(2, GetAchievementInfo(3436))..": Saison 6",
	[-1000033] = select(2, GetAchievementInfo(3758))..": Saison 7",
	[-1000034] = select(2, GetAchievementInfo(4599))..": Saison 8",
	[-1000035] = "Ensembles Tier 0.5",
}) do a[key] = value; end
end

if simplifiedLocale == "it" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000026] = "Gladiatore: Season 1",
	[-1000027] = "Gladiatore Spietato: Season 2",
	[-1000028] = "Gladiatore Vendicativo: Season 3",
	[-1000029] = "Gladiatore Brutale: Season 4",
	[-1000031] = "Gladiatore Perfido",
}) do a[key] = value; end
end

if simplifiedLocale == "ko" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000026] = "검투사: Season 1",
	[-1000027] = "무자비한 검투사: Season 2",
	[-1000028] = "복수심에 불타는 검투사: Season 3",
	[-1000029] = "야만적인 검투사: Season 4",
	[-1000031] = "원한에 검투사",
}) do a[key] = value; end
end

if simplifiedLocale == "pt" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000026] = "Gladiador: Season 1",
	[-1000027] = "Gladiador Impiedoso: Season 2",
	[-1000028] = "Gladiador Vingativo: Season 3",
	[-1000029] = "Gladiador Brutal: Season 4",
	[-1000031] = "Gladiador Odioso",
}) do a[key] = value; end
end

if simplifiedLocale == "ru" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000003] = "Общая добыча с боссов",
	[-1000004] = "Обычные предметы у Торговцев",
	[-1000005] = BATTLE_PET_SOURCE_1,
	[-1000008] = "Точка полета",
	[-1000013] = "Редкие",
	[-1000015] = "Секреты",
	[-1000017] = "Сундук с сокровищами",
	[-1000019] = "Мировые Боссы",
	[-1000021] = "Добыча локации",
	[-1000022] = "Добыча локации",
	[-1000026] = "Гладиатор: Сезон 1",
	[-1000027] = "Безжалостный гладиатор: Сезон 2",
	[-1000028] = "Мстительный гладиатор: Сезон 3",
	[-1000029] = "Жестокий гладиатор: Сезон 4",
	[-1000030] = select(2, GetAchievementInfo(3336))..": Сезон 5",
	[-1000031] = "Злобный гладиатор",
	[-1000032] = select(2, GetAchievementInfo(3436))..": Сезон 6",
	[-1000033] = select(2, GetAchievementInfo(3758))..": Сезон 7",
	[-1000034] = select(2, GetAchievementInfo(4599))..": Сезон 8",
	[-1000035] = "Комплекты T0.5",
}) do a[key] = value; end
end

if simplifiedLocale == "zh" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000004] = "常规商人物品",
	[-1000005] = "掉落",
	[-1000015] = "秘密",
	[-1000022] = "区域奖励",
	[-1000023] = "暗黑破坏神IV",
	[-1000026] = "角斗士：第1赛季",
	[-1000027] = "残酷角斗士：第1赛季",
	[-1000028] = "复仇角斗士：第3赛季",
	[-1000029] = "野蛮角斗士：第3赛季",
	[-1000030] = select(2, GetAchievementInfo(3336)).."：第5赛季",
	[-1000031] = "憎恨角斗士",
	[-1000032] = select(2, GetAchievementInfo(3436)).."：第6赛季",
	[-1000033] = select(2, GetAchievementInfo(3758)).."：第7赛季",
	[-1000034] = select(2, GetAchievementInfo(4599)).."：第8赛季",
	[-1000035] = "等级 0.5 套装",
}) do a[key] = value; end
end

if simplifiedLocale == "cn" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000014] = "包含有奖励或可从包含部分中的其他内容获得的事物。\n在此处合并以减少来自许多可能重复来源。",
	[-1000015] = "淘气的秘密…",
	[-1000020] = "世界任务是有时间限制的任务，可在特定地点进行，奖励不一。\n\n一定要经常查看 ATT 世界任务窗口(/attwq)，看看有什么限时的东西你应该去收藏！",
	[-1000022] = "这些物品可以从可重复的宝箱、祈愿蟋蟀、世界任务或桌面任务中掉落。",
}) do a[key] = value; end
end

if simplifiedLocale == "fr" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000014] = "Contient des objets de récompenses ou disponibles dans d’autres contenus de la section qui les contient.\nIls sont regroupés ici dans le but de réduire la duplication de nombreuses sources possibles.",
	[-1000015] = "Vilains secrets...",
	[-1000020] = "Les quêtes mondiales sont des quêtes limitées dans le temps, disponibles dans des lieux spécifiques avec des récompenses variables.\n\nN’oublie pas de consulter souvent la fenêtre des quêtes mondiales ATT (/attwq) pour voir quelles sont les objets limités dans le temps que tu dois collecter !",
	[-1000022] = "Ces objets peuvent provenir de coffres au trésor répétitifs, Criquet à souhait, de quêtes mondiales ou des missions de la table de commandement.",
}) do a[key] = value; end
end

if simplifiedLocale == "ru" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000014] = "Штучки, которые можно получить в награду с разного контента в родительской секции.\nОни собраны здесь, чтобы уменьшить количество источников, когда Штучка доступна из многих мест.",
	[-1000015] = "Секретики...",
	[-1000020] = "Локальные задания – это ограниченные по времени задания, доступные в определённых местах с переменными наградами.\n\nЧаще проверяйте окно локальных заданий ATT (/attwq), чтобы увидеть какие ограниченные по времени Штучки можно собрать!",
	[-1000022] = "Эти предметы можно получить в награду из повторяемых сокровищ, заветных сверчков, локальных заданий или заданий командирского стола.",
}) do a[key] = value; end
end