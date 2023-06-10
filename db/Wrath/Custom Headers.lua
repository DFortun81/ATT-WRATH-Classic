﻿-------------------------------------------------------
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
	WEAPONS = -1000047,
	HONOR_TITLES = -1000069,
	PVP = -1000070,
	TIER_ZERO_POINT_FIVE_SETS = -1000084,
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
	[-1000028] = "Interface/Icons/INV_Misc_Head_Dragon_Green",
	[-1000029] = "Interface/Icons/INV_Misc_Bag_08",
	[-1000030] = "Interface/Icons/INV_Misc_Bag_09",
	[-1000031] = "Interface/Icons/INV_Misc_Bag_10",
	[-1000032] = "Interface/Icons/INV_Misc_Bag_11",
	[-1000033] = "Interface/Icons/INV_Box_01",
	[-1000034] = "Interface/Icons/INV_Chest_Plate03",
	[-1000035] = "Interface/Icons/inv_misc_cape_11",
	[-1000036] = "Interface/Icons/inv_chest_chain",
	[-1000037] = "Interface/Icons/inv_boots_09",
	[-1000039] = "Interface/Icons/Inv_gauntlets_24",
	[-1000040] = "Interface/Icons/inv_helmet_03",
	[-1000041] = "Interface/Icons/inv_pants_09",
	[-1000044] = "Interface/Icons/inv_shoulder_05",
	[-1000046] = "Interface/Icons/inv_belt_24",
	[-1000047] = "Interface/Icons/INV_Sword_23",
	[-1000048] = "Interface/Icons/inv_bracer_07",
	[-1000051] = "Interface/FriendsFrame/PlusManz-Alliance",
	[-1000052] = "Interface/FriendsFrame/PlusManz-Horde",
	[-1000053] = "Interface/FriendsFrame/PlusManz-PlusManz",
	[-1000069] = "Interface/Icons/inv_sword_48",
	[-1000070] = _.asset("Category_PvP"),
	[-1000071] = "Interface/Icons/achievement_featsofstrength_gladiator_01",
	[-1000072] = "Interface/Icons/achievement_featsofstrength_gladiator_02",
	[-1000073] = "Interface/Icons/achievement_featsofstrength_gladiator_03",
	[-1000074] = "Interface/Icons/achievement_featsofstrength_gladiator_04",
	[-1000075] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000076] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000077] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000078] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000079] = "Interface/Icons/ability_mount_redfrostwyrm_01",
	[-1000084] = "Interface/Icons/INV_Chest_Plate03",
	[-1000085] = "Interface/Icons/achievement_pvp_h_12",
	[-1000086] = "Interface/Icons/Inv_misc_ahnqirajtrinket_06",
	[-1000087] = "Interface/Icons/Achievement_Zone_Blackrock_01",
	[-1000088] = "Interface/Icons/Achievement_Zone_Blackrock_01",
	[-1000089] = "Interface/Icons/Ability_Warlock_DemonicEmpowerment",
	[-1000090] = "Interface/Icons/Achievement_Reputation_Ogre",
	[-1000091] = "Interface/Icons/INV_Misc_Head_Elf_02",
	[-1000092] = "Interface/Icons/spell_arcane_portalironforge",
	[-1000093] = "Interface/Icons/INV_Misc_Gem_Opal_01",
	[-1000094] = "Interface/Icons/INV_Misc_Gem_Amethyst_02",
	[-1000095] = "Interface/Icons/INV_Misc_Token_ScarletCrusade",
	[-1000096] = "Interface/Icons/INV_MISC_KEY_13",
	[-1000097] = "Interface/Icons/inv_misc_fish_06",
	[-1000098] = "Interface/Icons/inv_fishingpole_03",
	[-1000099] = "Interface/Icons/inv_jewelry_amulet_03",
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
	[-1000028] = "Dragons of Nightmare",
	[-1000029] = "Timed Event",
	[-1000030] = "First Chest",
	[-1000031] = "Second Chest",
	[-1000032] = "Third Chest",
	[-1000033] = "Final Chest",
	[-1000034] = ARMOR,
	[-1000035] = INVTYPE_CLOAK,
	[-1000036] = INVTYPE_CHEST,
	[-1000037] = INVTYPE_FEET,
	[-1000039] = INVTYPE_HAND,
	[-1000040] = INVTYPE_HEAD,
	[-1000041] = INVTYPE_LEGS,
	[-1000044] = INVTYPE_SHOULDER,
	[-1000046] = INVTYPE_WAIST,
	[-1000047] = AUCTION_CATEGORY_WEAPONS,
	[-1000048] = INVTYPE_WRIST,
	[-1000051] = FACTION_ALLIANCE,
	[-1000052] = FACTION_HORDE,
	[-1000053] = COMBATLOG_FILTER_STRING_NEUTRAL_UNITS,
	[-1000069] = "Honor Titles",
	[-1000070] = BUG_CATEGORY14,
	[-1000071] = select(2, GetAchievementInfo(2091))..": Season 1",
	[-1000072] = select(2, GetAchievementInfo(418))..": Season 2",
	[-1000073] = select(2, GetAchievementInfo(419))..": Season 3",
	[-1000074] = select(2, GetAchievementInfo(420))..": Season 4",
	[-1000075] = select(2, GetAchievementInfo(3336))..": Season 5",
	[-1000076] = "Hateful Gladiator",
	[-1000077] = select(2, GetAchievementInfo(3436))..": Season 6",
	[-1000078] = select(2, GetAchievementInfo(3758))..": Season 7",
	[-1000079] = select(2, GetAchievementInfo(4599))..": Season 8",
	[-1000084] = "Tier 0.5 Sets",
	[-1000085] = "Captains",
	[-1000086] = "Silithid Royalty",
	[-1000087] = DUNGEON_FLOOR_BLACKROCKDEPTHS1,
	[-1000088] = DUNGEON_FLOOR_BLACKROCKDEPTHS2,
	[-1000089] = DUNGEON_FLOOR_DIREMAUL5.." (East)",
	[-1000090] = DUNGEON_FLOOR_DIREMAUL1.." (North)",
	[-1000091] = DUNGEON_FLOOR_DIREMAUL2.." (West)",
	[-1000092] = GetSpellInfo(21127),
	[-1000093] = DUNGEON_FLOOR_DESOLACE22.." (Orange Path)",
	[-1000094] = DUNGEON_FLOOR_DESOLACE21.." (Purple Path)",
	[-1000095] = "Main Gate",
	[-1000096] = "Service Entrance",
	[-1000097] = "Stranglethorn Fishing Extravaganza",
	[-1000098] = "Kalu'ak Fishing Derby",
	[-1000099] = "Spirit of Competition",
}) do a[key] = value; end

local a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000012] = "A specific holiday may need to be active for you to complete the referenced Things within this section.",
	[-1000015] = "This section will only show your current character's professions outside of Account and Debug Mode.",
	[-1000018] = "Contains Things which are rewarded or are available from other content within the containing section.\nThey are consolidated here in an effort to reduce duplication from many possible Sources.",
	[-1000089] = "This part of the instance can be accessed from the eastern-most portal. (right side)",
	[-1000090] = "This part of the instance can be accessed from the northern-most portal.",
	[-1000091] = "This part of the instance can be accessed from the western-most portal. (left side)",
	[-1000095] = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Live\" or \"Scarlet\" side, which the Scarlet Crusade has taken over.",
	[-1000096] = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Dead\" or \"Scourge\" side, which the Scourge has taken over.",
	[-1000099] = "This is a Battlegrounds-based event that coincides with the beginning of the Summer Olympic games. The only time this was celebrated was in 2008 to correspond to the Beijing Olympics, and although there appeared to be the intention to repeat this event, it never returned.",
}) do a[key] = value; end

local a = L.HEADER_LORE;
for key,value in pairs({
	[-1000028] = "One of these dragons will spawn randomly at the associated coordinates across Azeroth.",
	[-1000084] = "The Dungeon Set 2 class sets, commonly referred to as Tier 0.5, are obtained by completing a long quest chain to upgrade the first set available as drops in end game dungeons into stronger versions of themselves. In current WoW, these sets are covetted by Collectors as the quest chain was completely removed from the game with Cataclysm. In WoW Classic, you should finish this quest chain on all of your characters before then!",
	[-1000085] = "These can be farmed infinitely by resetting the boss.",
}) do a[key] = value; end

if simplifiedLocale == "de" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000003] = "Gemeinsame Bossbeute",
	[-1000008] = "Erkundung",
	[-1000028] = "Drachen des Alptraums",
	[-1000076] = "Hasserfüllten Gladiator",
	[-1000097] = "Anglerwettbewerb im Schlingendorntal",
	[-1000098] = "Angelwettstreit der Kalu'ak",
}) do a[key] = value; end
end

if simplifiedLocale == "es" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000076] = "Gladiador Odioso",
	[-1000097] = "Gran espectáculo de pesca de Tuercespina",
	[-1000098] = "Competición de pesca Kalu'ak",
}) do a[key] = value; end
end

if simplifiedLocale == "fr" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000004] = "Objets communs des vendeurs",
	[-1000008] = "Exploration",
	[-1000028] = "Dragons du Cauchemar",
	[-1000029] = "Événement chronométré",
	[-1000030] = "Premier coffre",
	[-1000031] = "Second coffre",
	[-1000032] = "Troisième coffre",
	[-1000033] = "Coffre final",
	[-1000071] = select(2, GetAchievementInfo(2091))..": Saison 1",
	[-1000072] = select(2, GetAchievementInfo(418))..": Saison 2",
	[-1000073] = select(2, GetAchievementInfo(419))..": Saison 3",
	[-1000074] = select(2, GetAchievementInfo(420))..": Saison 4",
	[-1000075] = select(2, GetAchievementInfo(3336))..": Saison 5",
	[-1000076] = "Gladiateur Haineux",
	[-1000077] = select(2, GetAchievementInfo(3436))..": Saison 6",
	[-1000078] = select(2, GetAchievementInfo(3758))..": Saison 7",
	[-1000079] = select(2, GetAchievementInfo(4599))..": Saison 8",
	[-1000084] = "Ensembles Tier 0.5",
	[-1000085] = "Capitaines",
	[-1000089] = DUNGEON_FLOOR_DIREMAUL5.." (Est)",
	[-1000090] = DUNGEON_FLOOR_DIREMAUL1.." (Nord)",
	[-1000091] = DUNGEON_FLOOR_DIREMAUL2.." (Ouest)",
	[-1000097] = "Concours de pêche de Strangleronce",
	[-1000098] = "Le tournoi de pêche kalu'ak",
}) do a[key] = value; end
end

if simplifiedLocale == "it" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000076] = "Gladiatore Perfido",
	[-1000097] = "Gara di Pesca a Rovotorto",
	[-1000098] = "La gara di pesca dei Kalu'ak",
}) do a[key] = value; end
end

if simplifiedLocale == "ko" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000076] = "원한에 검투사",
	[-1000097] = "가시덤불 골짜기 낚시왕 선발대회",
	[-1000098] = "칼루아크 낚시 대회",
}) do a[key] = value; end
end

if simplifiedLocale == "pt" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000076] = "Gladiador Odioso",
	[-1000097] = "Festerê de Pesca da Selva do Espinhaço",
	[-1000098] = "Campeonato de Pesca dos Kalu'ak",
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
	[-1000028] = "Драконы Кошмара",
	[-1000029] = "Временное Событие",
	[-1000030] = "Первый Сундук",
	[-1000031] = "Второй Сундук",
	[-1000032] = "Третий Сундук",
	[-1000033] = "Последний Сундук",
	[-1000071] = select(2, GetAchievementInfo(2091))..": Сезон 1",
	[-1000072] = select(2, GetAchievementInfo(418))..": Сезон 2",
	[-1000073] = select(2, GetAchievementInfo(419))..": Сезон 3",
	[-1000074] = select(2, GetAchievementInfo(420))..": Сезон 4",
	[-1000075] = select(2, GetAchievementInfo(3336))..": Сезон 5",
	[-1000076] = "Злобный гладиатор",
	[-1000077] = select(2, GetAchievementInfo(3436))..": Сезон 6",
	[-1000078] = select(2, GetAchievementInfo(3758))..": Сезон 7",
	[-1000079] = select(2, GetAchievementInfo(4599))..": Сезон 8",
	[-1000084] = "Комплекты T0.5",
	[-1000085] = "Капитаны",
	[-1000089] = DUNGEON_FLOOR_DIREMAUL5.." (Восток)",
	[-1000090] = DUNGEON_FLOOR_DIREMAUL1.." (Север)",
	[-1000091] = DUNGEON_FLOOR_DIREMAUL2.." (Запад)",
	[-1000097] = "Рыбомания Тернистой долины",
	[-1000098] = "Калуакское рыбоборье",
}) do a[key] = value; end
end

if simplifiedLocale == "zh" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000004] = "常规商人物品",
	[-1000008] = "勘探",
	[-1000028] = "梦魇之龙",
	[-1000029] = "限时事件",
	[-1000030] = "一箱",
	[-1000031] = "二箱",
	[-1000032] = "三箱",
	[-1000033] = "最终宝箱",
	[-1000071] = select(2, GetAchievementInfo(2091)).."：第1赛季",
	[-1000072] = select(2, GetAchievementInfo(418)).."：第2赛季",
	[-1000073] = select(2, GetAchievementInfo(419)).."：第3赛季",
	[-1000074] = select(2, GetAchievementInfo(420)).."：第4赛季",
	[-1000075] = select(2, GetAchievementInfo(3336)).."：第5赛季",
	[-1000076] = "憎恨角斗士",
	[-1000077] = select(2, GetAchievementInfo(3436)).."：第6赛季",
	[-1000078] = select(2, GetAchievementInfo(3758)).."：第7赛季",
	[-1000079] = select(2, GetAchievementInfo(4599)).."：第8赛季",
	[-1000084] = "等级 0.5 套装",
	[-1000085] = "船长",
	[-1000089] = DUNGEON_FLOOR_DIREMAUL5.." (东)",
	[-1000090] = DUNGEON_FLOOR_DIREMAUL1.." (北)",
	[-1000091] = DUNGEON_FLOOR_DIREMAUL2.." (西)",
	[-1000097] = "荆棘谷钓鱼大赛",
	[-1000098] = "卡鲁亚克钓鱼大赛",
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