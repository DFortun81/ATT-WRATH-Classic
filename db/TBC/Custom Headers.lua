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
	HOLIDAYS = -1000003,
	PVP = -1000004,
	QUESTS = -1000005,
	RARES = -1000006,
	REWARDS = -1000007,
	VENDORS = -1000008,
	WORLD_BOSSES = -1000009,
	ZONE_DROPS = -1000010,
};

local a = L.HEADER_ICONS;
for key,value in pairs({
	[-1000000] = _.asset("Category_Achievements"),
	[-1000001] = _.asset("Achievement_Garrison_Horde_PVE"),
	[-1000002] = "Interface/Icons/INV_Misc_Coin_02",
	[-1000003] = _.asset("Category_Holidays"),
	[-1000004] = _.asset("Category_PvP"),
	[-1000005] = _.asset("Interface_Quest_header"),
	[-1000006] = _.asset("Interface_Rare"),
	[-1000007] = _.asset("Interface_Rewards"),
	[-1000008] = _.asset("Interface_Vendor"),
	[-1000009] = _.asset("Interface_World_boss"),
	[-1000010] = _.asset("Interface_Zone_drop"),
	[-1000011] = "Interface/Icons/inv_jewelry_amulet_03",
}) do a[key] = value; end

local a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000000] = ACHIEVEMENTS,
	[-1000001] = BATTLE_PET_BREED_QUALITY2.." "..TRANSMOG_SOURCE_1,
	[-1000002] = "Common Vendor Items",
	[-1000003] = "Holiday",
	[-1000004] = BUG_CATEGORY14,
	[-1000005] = TRACKER_HEADER_QUESTS,
	[-1000006] = BATTLE_PET_BREED_QUALITY4,
	[-1000007] = QUEST_REWARDS,
	[-1000008] = BATTLE_PET_SOURCE_3,
	[-1000009] = WORLD.." "..RAID_BOSSES,
	[-1000010] = ZONE.." "..BATTLE_PET_SOURCE_1,
	[-1000011] = "Spirit of Competition",
}) do a[key] = value; end

local a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000007] = "Contains Things which are rewarded or are available from other content within the containing section.\nThey are consolidated here in an effort to reduce duplication from many possible Sources.",
	[-1000011] = "This is a Battlegrounds-based event that coincides with the beginning of the Summer Olympic games. The only time this was celebrated was in 2008 to correspond to the Beijing Olympics, and although there appeared to be the intention to repeat this event, it never returned.",
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
}) do a[key] = value; end
end

if simplifiedLocale == "ru" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000001] = "Общая добыча с боссов",
	[-1000002] = "Обычные предметы у Торговцев",
	[-1000006] = "Редкие",
	[-1000009] = "Мировые Боссы",
	[-1000010] = "Добыча локации",
}) do a[key] = value; end
end

if simplifiedLocale == "zh" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000002] = "常规商人物品",
}) do a[key] = value; end
end

if simplifiedLocale == "cn" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000007] = "包含有奖励或可从包含部分中的其他内容获得的事物。\n在此处合并以减少来自许多可能重复来源。",
}) do a[key] = value; end
end

if simplifiedLocale == "fr" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000007] = "Contient des objets de récompenses ou disponibles dans d’autres contenus de la section qui les contient.\nIls sont regroupés ici dans le but de réduire la duplication de nombreuses sources possibles.",
}) do a[key] = value; end
end

if simplifiedLocale == "ru" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000007] = "Штучки, которые можно получить в награду с разного контента в родительской секции.\nОни собраны здесь, чтобы уменьшить количество источников, когда Штучка доступна из многих мест.",
}) do a[key] = value; end
end