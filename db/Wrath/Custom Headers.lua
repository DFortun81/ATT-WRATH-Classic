﻿-------------------------------------------------------
--   C U S T O M   H E A D E R S   M O D U L E   --
-------------------------------------------------------
local _ = select(2, ...);
local L = _.L;
local simplifiedLocale = string.sub(GetLocale(),1,2);

_.HeaderConstants = {
	ACHIEVEMENTS = -1000000,
	COMMON_BOSS_DROPS = -1000001,
	COMMON_VENDOR_ITEMS = -1000002,
	EXPLORATION = -1000003,
	FACTIONS = -1000004,
	FLIGHT_PATHS = -1000005,
	HOLIDAYS = -1000006,
	QUESTS = -1000007,
	RARES = -1000008,
	REWARDS = -1000009,
	VENDORS = -1000010,
	WORLD_BOSSES = -1000011,
	ZONE_DROPS = -1000012,
	HONOR_TITLES = -1000013,
	PVP = -1000014,
	TIER_ZERO_POINT_FIVE_SETS = -1000016,
};

local a = L.HEADER_ICONS;
for key,value in pairs({
	[-1000000] = _.asset("Category_Achievements"),
	[-1000001] = _.asset("Achievement_Garrison_Horde_PVE"),
	[-1000002] = "Interface/Icons/INV_Misc_Coin_02",
	[-1000003] = _.asset("INV_Misc_Map02"),
	[-1000004] = _.asset("Category_Factions"),
	[-1000005] = _.asset("Category_FlightPaths"),
	[-1000006] = _.asset("Category_Holidays"),
	[-1000007] = _.asset("Interface_Quest_header"),
	[-1000008] = _.asset("Interface_Rare"),
	[-1000009] = _.asset("Interface_Rewards"),
	[-1000010] = _.asset("Interface_Vendor"),
	[-1000011] = _.asset("Interface_World_boss"),
	[-1000012] = _.asset("Interface_Zone_drop"),
	[-1000013] = "Interface/Icons/inv_sword_48",
	[-1000014] = _.asset("Category_PvP"),
	[-1000015] = "Interface/Icons/achievement_featsofstrength_gladiator_01",
	[-1000016] = "Interface/Icons/INV_Chest_Plate03",
	[-1000017] = "Interface/Icons/inv_jewelry_amulet_03",
}) do a[key] = value; end

local a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000000] = ACHIEVEMENTS,
	[-1000001] = BATTLE_PET_BREED_QUALITY2.." "..TRANSMOG_SOURCE_1,
	[-1000002] = "Common Vendor Items",
	[-1000003] = "Exploration",
	[-1000004] = FACTION,
	[-1000005] = "Flight Paths",
	[-1000006] = "Holiday",
	[-1000007] = TRACKER_HEADER_QUESTS,
	[-1000008] = BATTLE_PET_BREED_QUALITY4,
	[-1000009] = QUEST_REWARDS,
	[-1000010] = BATTLE_PET_SOURCE_3,
	[-1000011] = WORLD.." "..RAID_BOSSES,
	[-1000012] = ZONE.." "..BATTLE_PET_SOURCE_1,
	[-1000013] = "Honor Titles",
	[-1000014] = BUG_CATEGORY14,
	[-1000015] = select(2, GetAchievementInfo(2091))..": Season 1",
	[-1000016] = "Tier 0.5 Sets",
	[-1000017] = "Spirit of Competition",
}) do a[key] = value; end

local a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000009] = "Contains Things which are rewarded or are available from other content within the containing section.\nThey are consolidated here in an effort to reduce duplication from many possible Sources.",
	[-1000017] = "This is a Battlegrounds-based event that coincides with the beginning of the Summer Olympic games. The only time this was celebrated was in 2008 to correspond to the Beijing Olympics, and although there appeared to be the intention to repeat this event, it never returned.",
}) do a[key] = value; end

local a = L.HEADER_LORE;
for key,value in pairs({
	[-1000016] = "The Dungeon Set 2 class sets, commonly referred to as Tier 0.5, are obtained by completing a long quest chain to upgrade the first set available as drops in end game dungeons into stronger versions of themselves. In current WoW, these sets are covetted by Collectors as the quest chain was completely removed from the game with Cataclysm. In WoW Classic, you should finish this quest chain on all of your characters before then!",
}) do a[key] = value; end

if simplifiedLocale == "de" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000001] = "Gemeinsame Bossbeute",
}) do a[key] = value; end
end

if simplifiedLocale == "fr" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000002] = "Objets communs des vendeurs",
	[-1000015] = select(2, GetAchievementInfo(2091))..": Saison 1",
	[-1000016] = "Ensembles Tier 0.5",
}) do a[key] = value; end
end

if simplifiedLocale == "ru" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000001] = "Общая добыча с боссов",
	[-1000002] = "Обычные предметы у Торговцев",
	[-1000005] = "Точка полета",
	[-1000008] = "Редкие",
	[-1000011] = "Мировые Боссы",
	[-1000012] = "Добыча локации",
	[-1000015] = select(2, GetAchievementInfo(2091))..": Сезон 1",
	[-1000016] = "Комплекты T0.5",
}) do a[key] = value; end
end

if simplifiedLocale == "zh" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000002] = "常规商人物品",
	[-1000015] = select(2, GetAchievementInfo(2091)).."：第1赛季",
	[-1000016] = "等级 0.5 套装",
}) do a[key] = value; end
end

if simplifiedLocale == "cn" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000009] = "包含有奖励或可从包含部分中的其他内容获得的事物。\n在此处合并以减少来自许多可能重复来源。",
}) do a[key] = value; end
end

if simplifiedLocale == "fr" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000009] = "Contient des objets de récompenses ou disponibles dans d’autres contenus de la section qui les contient.\nIls sont regroupés ici dans le but de réduire la duplication de nombreuses sources possibles.",
}) do a[key] = value; end
end

if simplifiedLocale == "ru" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000009] = "Штучки, которые можно получить в награду с разного контента в родительской секции.\nОни собраны здесь, чтобы уменьшить количество источников, когда Штучка доступна из многих мест.",
}) do a[key] = value; end
end