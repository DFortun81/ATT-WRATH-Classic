-------------------------------------------------------
--   C U S T O M   H E A D E R S   M O D U L E   --
-------------------------------------------------------
local appName, _ = ...;
local L = _.L;
local simplifiedLocale = string.sub(GetLocale(),1,2);

_.HeaderConstants = {
	ACHIEVEMENTS = -1000004,
	BREWFEST_HEADER = -1000162,
	CHILDRENS_WEEK_HEADER = -1000164,
	COMMON_BOSS_DROPS = -1000009,
	COMMON_VENDOR_ITEMS = -1000012,
	CRAFTED_ITEMS = -1000013,
	DARKMOON_FAIRE_HEADER = -1000221,
	DISCOVERY = -1000015,
	EXPLORATION = -1000018,
	FACTIONS = -1000019,
	FEAST_OF_WINTER_VEIL_HEADER = -1000166,
	FLIGHT_PATHS = -1000020,
	FOLLOWERS = -1000021,
	HALLOWS_END_HEADER = -1000168,
	HARVEST_FESTIVAL_HEADER = -1000169,
	HOLIDAYS = -1000023,
	HONOR_TITLES = -1000130,
	IN_GAME_SHOP = -1000089,
	LOVE_IS_IN_THE_AIR_HEADER = -1000172,
	LUNAR_FESTIVAL_HEADER = -1000173,
	MIDSUMMER_FIRE_FESTIVAL_HEADER = -1000175,
	NOBLEGARDEN_HEADER = -1000176,
	PIRATES_DAY_HEADER = -1000178,
	PROFESSIONS = -1000028,
	PVP = -1000132,
	PVP_GLADIATOR = -1000129,
	QUESTS = -1000029,
	RARES = -1000030,
	REWARDS = -1000031,
	SPECIAL = -1000035,
	TIER_ZERO_POINT_FIVE_SETS = -1000137,
	TREASURES = -1000036,
	VENDORS = -1000037,
	WEAPONS = -1000071,
	WORLD_BOSSES = -1000040,
	ZONE_DROPS = -1000042,
};

local a = L.HEADER_EVENTS;
for key,value in pairs({
	[-1000162] = 372,
	[-1000164] = 201,
	[-1000166] = 141,
	[-1000168] = 324,
	[-1000169] = 321,
	[-1000172] = 423,
	[-1000173] = 327,
	[-1000175] = 341,
	[-1000176] = 181,
	[-1000178] = 398,
	[-1000180] = 301,
	[-1000196] = 1181,
	[-1000221] = 479,
}) do a[key] = value; end

local a = L.EVENT_REMAPPING;
for key,value in pairs({
	[376] = 479,
	[374] = 479,
	[375] = 479,
}) do a[key] = value; end

-- Programmatic Event Scheduling
_.Modules.Events.SetEventInformation(398, {
	_.Modules.Events.CreateSchedule({["hour"]=0,["minute"]=0,["month"]=9,["monthDay"]=19,["weekday"]=2,["year"]=2022},{["hour"]=0,["minute"]=0,["month"]=9,["monthDay"]=20,["weekday"]=3,["year"]=2022}),
	_.Modules.Events.CreateSchedule({["hour"]=0,["minute"]=0,["month"]=9,["monthDay"]=19,["weekday"]=3,["year"]=2023},{["hour"]=0,["minute"]=0,["month"]=9,["monthDay"]=20,["weekday"]=4,["year"]=2023}),
	_.Modules.Events.CreateSchedule({["hour"]=0,["minute"]=0,["month"]=9,["monthDay"]=19,["weekday"]=5,["year"]=2024},{["hour"]=0,["minute"]=0,["month"]=9,["monthDay"]=20,["weekday"]=6,["year"]=2024})
});
_.Modules.Events.SetEventInformation(181, {
	_.Modules.Events.CreateSchedule({["hour"]=0,["minute"]=0,["month"]=4,["monthDay"]=17,["weekday"]=1,["year"]=2022},{["hour"]=0,["minute"]=0,["month"]=4,["monthDay"]=18,["weekday"]=2,["year"]=2022}),
	_.Modules.Events.CreateSchedule({["hour"]=0,["minute"]=0,["month"]=4,["monthDay"]=17,["weekday"]=2,["year"]=2023},{["hour"]=0,["minute"]=0,["month"]=4,["monthDay"]=18,["weekday"]=3,["year"]=2023}),
	_.Modules.Events.CreateSchedule({["hour"]=0,["minute"]=0,["month"]=4,["monthDay"]=17,["weekday"]=4,["year"]=2024},{["hour"]=0,["minute"]=0,["month"]=4,["monthDay"]=18,["weekday"]=5,["year"]=2024})
});
_.Modules.Events.SetEventInformation(341, {
	_.Modules.Events.CreateSchedule({["hour"]=10,["minute"]=0,["month"]=6,["monthDay"]=21,["weekday"]=3,["year"]=2022},{["hour"]=10,["minute"]=0,["month"]=7,["monthDay"]=5,["weekday"]=3,["year"]=2022}),
	_.Modules.Events.CreateSchedule({["hour"]=10,["minute"]=0,["month"]=6,["monthDay"]=21,["weekday"]=4,["year"]=2023},{["hour"]=10,["minute"]=0,["month"]=7,["monthDay"]=5,["weekday"]=4,["year"]=2023}),
	_.Modules.Events.CreateSchedule({["hour"]=10,["minute"]=0,["month"]=6,["monthDay"]=21,["weekday"]=6,["year"]=2024},{["hour"]=10,["minute"]=0,["month"]=7,["monthDay"]=5,["weekday"]=6,["year"]=2024})
});
_.Modules.Events.SetEventInformation(327, {
	_.Modules.Events.CreateSchedule({["hour"]=10,["minute"]=0,["month"]=1,["monthDay"]=20,["weekday"]=5,["year"]=2022},{["hour"]=10,["minute"]=0,["month"]=2,["monthDay"]=3,["weekday"]=5,["year"]=2022}),
	_.Modules.Events.CreateSchedule({["hour"]=10,["minute"]=0,["month"]=1,["monthDay"]=20,["weekday"]=6,["year"]=2023},{["hour"]=10,["minute"]=0,["month"]=2,["monthDay"]=3,["weekday"]=6,["year"]=2023}),
	_.Modules.Events.CreateSchedule({["hour"]=10,["minute"]=0,["month"]=1,["monthDay"]=20,["weekday"]=7,["year"]=2024},{["hour"]=10,["minute"]=0,["month"]=2,["monthDay"]=3,["weekday"]=7,["year"]=2024})
});
_.Modules.Events.SetEventInformation(423, {
	_.Modules.Events.CreateSchedule({["hour"]=10,["minute"]=0,["month"]=2,["monthDay"]=6,["weekday"]=1,["year"]=2022},{["hour"]=10,["minute"]=0,["month"]=2,["monthDay"]=20,["weekday"]=1,["year"]=2022}),
	_.Modules.Events.CreateSchedule({["hour"]=10,["minute"]=0,["month"]=2,["monthDay"]=6,["weekday"]=2,["year"]=2023},{["hour"]=10,["minute"]=0,["month"]=2,["monthDay"]=20,["weekday"]=2,["year"]=2023}),
	_.Modules.Events.CreateSchedule({["hour"]=10,["minute"]=0,["month"]=2,["monthDay"]=6,["weekday"]=3,["year"]=2024},{["hour"]=10,["minute"]=0,["month"]=2,["monthDay"]=20,["weekday"]=3,["year"]=2024})
});
_.Modules.Events.SetEventInformation(321, {
	_.Modules.Events.CreateSchedule({["hour"]=10,["minute"]=0,["month"]=9,["monthDay"]=6,["weekday"]=3,["year"]=2022},{["hour"]=10,["minute"]=0,["month"]=9,["monthDay"]=13,["weekday"]=3,["year"]=2022}),
	_.Modules.Events.CreateSchedule({["hour"]=10,["minute"]=0,["month"]=9,["monthDay"]=6,["weekday"]=4,["year"]=2023},{["hour"]=10,["minute"]=0,["month"]=9,["monthDay"]=13,["weekday"]=4,["year"]=2023}),
	_.Modules.Events.CreateSchedule({["hour"]=10,["minute"]=0,["month"]=9,["monthDay"]=6,["weekday"]=6,["year"]=2024},{["hour"]=10,["minute"]=0,["month"]=9,["monthDay"]=13,["weekday"]=6,["year"]=2024})
});
_.Modules.Events.SetEventInformation(324, {
	_.Modules.Events.CreateSchedule({["hour"]=10,["minute"]=0,["month"]=10,["monthDay"]=18,["weekday"]=3,["year"]=2022},{["hour"]=11,["minute"]=0,["month"]=11,["monthDay"]=1,["weekday"]=3,["year"]=2022}),
	_.Modules.Events.CreateSchedule({["hour"]=10,["minute"]=0,["month"]=10,["monthDay"]=18,["weekday"]=4,["year"]=2023},{["hour"]=11,["minute"]=0,["month"]=11,["monthDay"]=1,["weekday"]=4,["year"]=2023}),
	_.Modules.Events.CreateSchedule({["hour"]=10,["minute"]=0,["month"]=10,["monthDay"]=18,["weekday"]=6,["year"]=2024},{["hour"]=11,["minute"]=0,["month"]=11,["monthDay"]=1,["weekday"]=6,["year"]=2024})
});
_.Modules.Events.SetEventInformation(141, {
	_.Modules.Events.CreateSchedule({["hour"]=10,["minute"]=0,["month"]=12,["monthDay"]=16,["weekday"]=6,["year"]=2022},{["hour"]=6,["minute"]=0,["month"]=1,["monthDay"]=2,["weekday"]=2,["year"]=2023}),
	_.Modules.Events.CreateSchedule({["hour"]=10,["minute"]=0,["month"]=12,["monthDay"]=16,["weekday"]=7,["year"]=2023},{["hour"]=6,["minute"]=0,["month"]=1,["monthDay"]=2,["weekday"]=3,["year"]=2024}),
	_.Modules.Events.CreateSchedule({["hour"]=10,["minute"]=0,["month"]=12,["monthDay"]=16,["weekday"]=2,["year"]=2024},{["hour"]=6,["minute"]=0,["month"]=1,["monthDay"]=2,["weekday"]=5,["year"]=2025})
});
_.Modules.Events.SetEventInformation(201, {
	_.Modules.Events.CreateSchedule({["hour"]=0,["minute"]=0,["month"]=5,["monthDay"]=1,["weekday"]=1,["year"]=2022},{["hour"]=23,["minute"]=59,["month"]=5,["monthDay"]=7,["weekday"]=7,["year"]=2022}),
	_.Modules.Events.CreateSchedule({["hour"]=0,["minute"]=0,["month"]=5,["monthDay"]=1,["weekday"]=2,["year"]=2023},{["hour"]=23,["minute"]=59,["month"]=5,["monthDay"]=7,["weekday"]=1,["year"]=2023}),
	_.Modules.Events.CreateSchedule({["hour"]=0,["minute"]=0,["month"]=5,["monthDay"]=1,["weekday"]=4,["year"]=2024},{["hour"]=23,["minute"]=59,["month"]=5,["monthDay"]=7,["weekday"]=3,["year"]=2024})
});
_.Modules.Events.SetEventInformation(372, {
	_.Modules.Events.CreateSchedule({["hour"]=10,["minute"]=0,["month"]=9,["monthDay"]=20,["weekday"]=3,["year"]=2022},{["hour"]=10,["minute"]=0,["month"]=10,["monthDay"]=4,["weekday"]=3,["year"]=2022}),
	_.Modules.Events.CreateSchedule({["hour"]=10,["minute"]=0,["month"]=9,["monthDay"]=20,["weekday"]=4,["year"]=2023},{["hour"]=10,["minute"]=0,["month"]=10,["monthDay"]=4,["weekday"]=4,["year"]=2023}),
	_.Modules.Events.CreateSchedule({["hour"]=10,["minute"]=0,["month"]=9,["monthDay"]=20,["weekday"]=6,["year"]=2024},{["hour"]=10,["minute"]=0,["month"]=10,["monthDay"]=4,["weekday"]=6,["year"]=2024})
});
_.Modules.Events.SetEventInformation(479, {
	_.Modules.Events.CreateSchedule({["hour"]=0,["minute"]=0,["month"]=6,["monthDay"]=4,["weekday"]=1,["year"]=2023},{["hour"]=0,["minute"]=0,["month"]=6,["monthDay"]=11,["weekday"]=1,["year"]=2023},{["remappedID"]=374}),
	_.Modules.Events.CreateSchedule({["hour"]=0,["minute"]=0,["month"]=7,["monthDay"]=2,["weekday"]=1,["year"]=2023},{["hour"]=0,["minute"]=0,["month"]=7,["monthDay"]=9,["weekday"]=1,["year"]=2023},{["remappedID"]=375}),
	_.Modules.Events.CreateSchedule({["hour"]=0,["minute"]=0,["month"]=8,["monthDay"]=6,["weekday"]=1,["year"]=2023},{["hour"]=0,["minute"]=0,["month"]=8,["monthDay"]=13,["weekday"]=1,["year"]=2023},{["remappedID"]=376}),
	_.Modules.Events.CreateSchedule({["hour"]=0,["minute"]=0,["month"]=9,["monthDay"]=3,["weekday"]=1,["year"]=2023},{["hour"]=0,["minute"]=0,["month"]=9,["monthDay"]=10,["weekday"]=1,["year"]=2023},{["remappedID"]=374}),
	_.Modules.Events.CreateSchedule({["hour"]=0,["minute"]=0,["month"]=10,["monthDay"]=1,["weekday"]=1,["year"]=2023},{["hour"]=0,["minute"]=0,["month"]=10,["monthDay"]=8,["weekday"]=1,["year"]=2023},{["remappedID"]=375}),
	_.Modules.Events.CreateSchedule({["hour"]=0,["minute"]=0,["month"]=11,["monthDay"]=5,["weekday"]=1,["year"]=2023},{["hour"]=0,["minute"]=0,["month"]=11,["monthDay"]=12,["weekday"]=1,["year"]=2023},{["remappedID"]=376}),
	_.Modules.Events.CreateSchedule({["hour"]=0,["minute"]=0,["month"]=12,["monthDay"]=3,["weekday"]=1,["year"]=2023},{["hour"]=0,["minute"]=0,["month"]=12,["monthDay"]=10,["weekday"]=1,["year"]=2023},{["remappedID"]=374}),
	_.Modules.Events.CreateSchedule({["hour"]=0,["minute"]=0,["month"]=1,["monthDay"]=7,["weekday"]=1,["year"]=2024},{["hour"]=0,["minute"]=0,["month"]=1,["monthDay"]=14,["weekday"]=1,["year"]=2024},{["remappedID"]=375}),
	_.Modules.Events.CreateSchedule({["hour"]=0,["minute"]=0,["month"]=2,["monthDay"]=4,["weekday"]=1,["year"]=2024},{["hour"]=0,["minute"]=0,["month"]=2,["monthDay"]=11,["weekday"]=1,["year"]=2024},{["remappedID"]=376}),
	_.Modules.Events.CreateSchedule({["hour"]=0,["minute"]=0,["month"]=3,["monthDay"]=3,["weekday"]=1,["year"]=2024},{["hour"]=0,["minute"]=0,["month"]=3,["monthDay"]=10,["weekday"]=1,["year"]=2024},{["remappedID"]=374}),
	_.Modules.Events.CreateSchedule({["hour"]=0,["minute"]=0,["month"]=4,["monthDay"]=7,["weekday"]=1,["year"]=2024},{["hour"]=0,["minute"]=0,["month"]=4,["monthDay"]=14,["weekday"]=1,["year"]=2024},{["remappedID"]=375})
});

local a = L.HEADER_ICONS;
for key,value in pairs({
	[-1000004] = _.asset("Category_Achievements"),
	[-1000009] = _.asset("Achievement_Garrison_Horde_PVE"),
	[-1000012] = "Interface/Icons/INV_Misc_Coin_02",
	[-1000013] = _.asset("Category_Crafting"),
	[-1000014] = "Interface/Icons/inv_misc_book_06",
	[-1000015] = "Interface/Icons/inv_misc_book_07",
	[-1000018] = _.asset("INV_Misc_Map02"),
	[-1000019] = _.asset("Category_Factions"),
	[-1000020] = _.asset("Category_FlightPaths"),
	[-1000021] = "Interface/Icons/Achievement_GarrisonFollower_LevelUp",
	[-1000023] = _.asset("Category_Holidays"),
	[-1000024] = "Interface/Icons/inv_letter_17",
	[-1000025] = "Interface/Icons/Inv_misc_map02",
	[-1000028] = _.asset("Category_Professions"),
	[-1000029] = _.asset("Interface_Quest_header"),
	[-1000030] = _.asset("Interface_Rare"),
	[-1000031] = _.asset("Interface_Rewards"),
	[-1000034] = "Interface/Icons/achievement_transmog_collections",
	[-1000035] = "Interface/Icons/inv_sword_40",
	[-1000036] = _.asset("Interface_Tchest"),
	[-1000037] = _.asset("Interface_Vendor"),
	[-1000038] = "Interface/Icons/INV_Weapon_Halberd_10",
	[-1000040] = _.asset("Interface_World_boss"),
	[-1000042] = _.asset("Interface_Zone_drop"),
	[-1000046] = "Interface/Icons/INV_Misc_Head_Dragon_Green",
	[-1000047] = "Interface/Icons/inv_trinket_naxxramas04",
	[-1000048] = "Interface/Icons/ability_rogue_deviouspoisons",
	[-1000049] = "Interface/Icons/spell_deathknight_classicon",
	[-1000050] = "Interface/Icons/inv_misc_cauldron_nature",
	[-1000051] = "Interface/Icons/inv_misc_head_dragon_blue",
	[-1000053] = "Interface/Icons/INV_Misc_Bag_08",
	[-1000054] = "Interface/Icons/INV_Misc_Bag_09",
	[-1000055] = "Interface/Icons/INV_Misc_Bag_10",
	[-1000056] = "Interface/Icons/INV_Misc_Bag_11",
	[-1000057] = "Interface/Icons/INV_Box_01",
	[-1000058] = "Interface/Icons/INV_Chest_Plate03",
	[-1000059] = "Interface/Icons/inv_misc_cape_11",
	[-1000061] = "Interface/Icons/inv_boots_09",
	[-1000070] = "Interface/Icons/inv_belt_24",
	[-1000071] = "Interface/Icons/INV_Sword_23",
	[-1000072] = "Interface/Icons/inv_bracer_07",
	[-1000086] = "Interface/FriendsFrame/PlusManz-Alliance",
	[-1000087] = "Interface/FriendsFrame/PlusManz-Horde",
	[-1000088] = "Interface/FriendsFrame/PlusManz-PlusManz",
	[-1000089] = _.asset("Category_InGameShop"),
	[-1000097] = _.asset("Weapon_Type_Legendary"),
	[-1000107] = _.asset("Expansion_CLASSIC"),
	[-1000108] = _.asset("Expansion_TBC"),
	[-1000116] = _.asset("achievement_featsofstrength_gladiator_01"),
	[-1000117] = _.asset("achievement_featsofstrength_gladiator_02"),
	[-1000118] = _.asset("achievement_featsofstrength_gladiator_03"),
	[-1000119] = _.asset("achievement_featsofstrength_gladiator_04"),
	[-1000125] = "Interface/Icons/INV_BannerPVP_03",
	[-1000129] = "Interface/Worldmap/GlowSkull_64Purple",
	[-1000130] = "Interface/Icons/inv_sword_48",
	[-1000131] = "Interface/Icons/inv_jewelry_amulet_03",
	[-1000132] = _.asset("Category_PvP"),
	[-1000137] = "Interface/Icons/INV_Chest_Plate03",
	[-1000138] = "Interface/Icons/achievement_pvp_h_12",
	[-1000139] = "Interface/Icons/Inv_misc_ahnqirajtrinket_06",
	[-1000140] = "Interface/Icons/Ability_mount_undeadhorse",
	[-1000141] = _.asset("Achievement_Zone_Blackrock_01"),
	[-1000142] = _.asset("Achievement_Zone_Blackrock_01"),
	[-1000143] = _.asset("Achievement_Boss_Overlord_Wyrmthalak"),
	[-1000144] = "Interface/Icons/INV_Misc_Head_Dragon_01",
	[-1000145] = "Interface/Icons/Spell_Shadow_SummonImp",
	[-1000146] = "Interface/Icons/inv_axe_10",
	[-1000147] = "Interface/Icons/INV_Misc_Head_Elf_02",
	[-1000148] = "Interface/Icons/spell_arcane_portalironforge",
	[-1000149] = "Interface/Icons/INV_Misc_Gem_Opal_01",
	[-1000150] = "Interface/Icons/INV_Misc_Gem_Amethyst_02",
	[-1000151] = "Interface/Icons/Inv_misc_bone_humanskull_01",
	[-1000152] = "Interface/Icons/INV_Misc_Book_13",
	[-1000153] = "Interface/Icons/inv_helmet_25",
	[-1000154] = "Interface/Icons/inv_helmet_12",
	[-1000155] = "Interface/Icons/INV_Misc_Token_ScarletCrusade",
	[-1000156] = "Interface/Icons/INV_MISC_KEY_13",
	[-1000157] = "Interface/Icons/Inv_misc_head_troll_01",
	[-1000162] = _.asset("Holiday_brewfest"),
	[-1000164] = _.asset("Holiday_Children"),
	[-1000166] = _.asset("Holiday_winter_veil"),
	[-1000168] = _.asset("Holiday_hallows_end"),
	[-1000169] = _.asset("Holiday_Harvestfest"),
	[-1000172] = _.asset("Holiday_love"),
	[-1000173] = _.asset("Holiday_Lunar"),
	[-1000175] = _.asset("Holiday_Midsummer"),
	[-1000176] = _.asset("Holiday_noblegarden"),
	[-1000178] = _.asset("Holiday_Pirate"),
	[-1000180] = "Interface/Icons/inv_misc_fish_06",
	[-1000187] = "Interface/Icons/inv_box_01",
	[-1000188] = "Interface/Icons/achievement_dungeon_outland_dungeonmaster",
	[-1000189] = "Interface/Icons/Inv_hammer_25",
	[-1000190] = "Interface/Icons/inv_stone_02",
	[-1000191] = "Interface/Icons/spell_holiday_tow_spicecloud",
	[-1000196] = _.asset("Promotion_Blizzcon"),
	[-1000197] = _.asset("Promotion_Collector"),
	[-1000198] = "Interface/Icons/achievement_dungeon_outland_dungeonmaster",
	[-1000206] = _.asset("Expansion_TBC"),
	[-1000214] = "Interface/Icons/Inv_drink_10",
	[-1000215] = "Interface/Icons/Spell_Misc_Drink",
	[-1000216] = _.asset("achievement_reputation_08"),
	[-1000218] = "Interface/Icons/inv_jewelry_amulet_03",
	[-1000219] = "Interface/Icons/inv_misc_ticket_tarot_stack_01",
	[-1000221] = _.asset("Event_dmf"),
}) do a[key] = value; end

local a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000004] = ACHIEVEMENTS,
	[-1000009] = BATTLE_PET_BREED_QUALITY2.." "..TRANSMOG_SOURCE_1,
	[-1000012] = "Common Vendor Items",
	[-1000013] = LOOT_JOURNAL_LEGENDARIES_SOURCE_CRAFTED_ITEM,
	[-1000014] = "Demon Trainer",
	[-1000015] = BATTLE_PET_SOURCE_11,
	[-1000018] = "Exploration",
	[-1000019] = FACTION,
	[-1000020] = "Flight Paths",
	[-1000021] = GARRISON_FOLLOWERS,
	[-1000023] = "Holiday",
	[-1000024] = MINIMAP_TRACKING_MAILBOX,
	[-1000025] = BRAWL_TOOLTIP_MAPS,
	[-1000028] = TRADE_SKILLS,
	[-1000029] = TRACKER_HEADER_QUESTS,
	[-1000030] = BATTLE_PET_BREED_QUALITY4,
	[-1000031] = QUEST_REWARDS,
	[-1000034] = WARDROBE_SETS,
	[-1000035] = SPECIAL,
	[-1000036] = "Treasures",
	[-1000037] = BATTLE_PET_SOURCE_3,
	[-1000038] = "Weapon Master",
	[-1000040] = WORLD.." "..RAID_BOSSES,
	[-1000042] = ZONE.." "..BATTLE_PET_SOURCE_1,
	[-1000046] = "Dragons of Nightmare",
	[-1000047] = DUNGEON_FLOOR_NAXXRAMAS2,
	[-1000048] = DUNGEON_FLOOR_NAXXRAMAS1,
	[-1000049] = DUNGEON_FLOOR_NAXXRAMAS3,
	[-1000050] = DUNGEON_FLOOR_NAXXRAMAS4,
	[-1000051] = DUNGEON_FLOOR_NAXXRAMAS6,
	[-1000053] = "Timed Event",
	[-1000054] = "First Chest",
	[-1000055] = "Second Chest",
	[-1000056] = "Third Chest",
	[-1000057] = "Final Chest",
	[-1000058] = ARMOR,
	[-1000059] = INVTYPE_CLOAK,
	[-1000061] = INVTYPE_FEET,
	[-1000070] = INVTYPE_WAIST,
	[-1000071] = AUCTION_CATEGORY_WEAPONS,
	[-1000072] = INVTYPE_WRIST,
	[-1000086] = FACTION_ALLIANCE,
	[-1000087] = FACTION_HORDE,
	[-1000088] = COMBATLOG_FILTER_STRING_NEUTRAL_UNITS,
	[-1000089] = BATTLE_PET_SOURCE_10,
	[-1000097] = ITEM_QUALITY5_DESC,
	[-1000107] = "Patch 1.x.x",
	[-1000108] = "Patch 2.x.x",
	[-1000116] = "Gladiator: Season 1",
	[-1000117] = "Merciless Gladiator: Season 2",
	[-1000118] = "Vengeful Gladiator: Season 3",
	[-1000119] = "Brutal Gladiator: Season 4",
	[-1000125] = BATTLEGROUNDS,
	[-1000129] = "Gladiator Gear",
	[-1000130] = "Honor Titles",
	[-1000131] = HONOR,
	[-1000132] = PVP,
	[-1000137] = "Tier 0.5 Sets",
	[-1000138] = "Captains",
	[-1000139] = "Silithid Royalty",
	[-1000140] = "The Four Horsemen",
	[-1000141] = DUNGEON_FLOOR_BLACKROCKDEPTHS1,
	[-1000142] = DUNGEON_FLOOR_BLACKROCKDEPTHS2,
	[-1000143] = DUNGEON_FLOOR_BLACKROCKSPIRE3,
	[-1000144] = DUNGEON_FLOOR_UPPERBLACKROCKSPIRE1,
	[-1000145] = DUNGEON_FLOOR_DIREMAUL5.." (East)",
	[-1000146] = DUNGEON_FLOOR_DIREMAUL1.." (North)",
	[-1000147] = DUNGEON_FLOOR_DIREMAUL2.." (West)",
	[-1000148] = GetSpellInfo(21127),
	[-1000149] = DUNGEON_FLOOR_DESOLACE22.." (Orange Path)",
	[-1000150] = DUNGEON_FLOOR_DESOLACE21.." (Purple Path)",
	[-1000151] = "Graveyard",
	[-1000152] = "Library",
	[-1000153] = "Armory",
	[-1000154] = "Cathedral",
	[-1000155] = "Main Gate",
	[-1000156] = "Service Entrance",
	[-1000157] = "Atal'ai Defenders",
	[-1000162] = select(1,GetCategoryInfo(162)),
	[-1000164] = select(1,GetCategoryInfo(163)),
	[-1000166] = GetSpellInfo(21953),
	[-1000168] = select(1,GetCategoryInfo(158)),
	[-1000169] = "Harvest Festival",
	[-1000172] = select(1,GetCategoryInfo(187)),
	[-1000173] = select(1,GetCategoryInfo(160)),
	[-1000175] = "Midsummer Fire Festival",
	[-1000176] = select(1,GetCategoryInfo(159)),
	[-1000178] = "Pirates' Day",
	[-1000180] = "Stranglethorn Fishing Extravaganza",
	[-1000187] = "The Ahn'Qiraj War Effort",
	[-1000188] = "The Opening of the Dark Portal",
	[-1000189] = "The Scepter of the Shifting Sands",
	[-1000190] = "The Scourge Invasion",
	[-1000191] = "The Silithyst Must Flow",
	[-1000196] = "BlizzCon",
	[-1000197] = "Collector's Edition",
	[-1000198] = "Dark Portal Pass",
	[-1000206] = "TBC Classic Deluxe Edition",
	[-1000214] = "iCoke",
	[-1000215] =  AUCTION_CATEGORY_MISCELLANEOUS,
	[-1000216] = REFER_A_FRIEND,
	[-1000218] = "Spirit of Competition",
	[-1000219] = BATTLE_PET_SOURCE_9,
	[-1000221] = "Darkmoon Faire",
}) do a[key] = value; end

local a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000014] = "Warlocks can teach their demons new tricks. Some of the higher level grimoires can only be purchased from the Demon Trainer in your faction's capital cities.",
	[-1000023] = "A specific holiday may need to be active for you to complete the referenced Things within this section.",
	[-1000028] = "This section will only show your current character's professions outside of Account and Debug Mode.",
	[-1000031] = "Contains Things which are rewarded or are available from other content within the containing section.\nThey are consolidated here in an effort to reduce duplication from many possible Sources.",
	[-1000038] = "A weapon master is an NPC that offers characters the opportunity to learn specific weapon skills, the availability of which varies from one weapon master to another. All weapon skills can be trained at level 1, except for Polearms which require level 20.\n\nTraining with a weapon master became obsolete in Patch 4.0.1, as all class-appropriate weapon proficiencies are now learned by each class upon creation. Weapon masters were removed from the game shortly after.",
	[-1000089] = "This section will show you things that you could buy in the In-Game Shop in Retail.",
	[-1000143] = "Also known as 'Lower' Blackrock Spire.",
	[-1000144] = "Also known as 'Upper' Blackrock Spire.",
	[-1000145] = "This part of the instance can be accessed from the eastern-most portal. (right side)",
	[-1000146] = "This part of the instance can be accessed from the northern-most portal.",
	[-1000147] = "This part of the instance can be accessed from the western-most portal. (left side)",
	[-1000155] = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Live\" or \"Scarlet\" side, which the Scarlet Crusade has taken over.",
	[-1000156] = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Dead\" or \"Scourge\" side, which the Scourge has taken over.",
	[-1000187] = "The Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj were not be immediately available with the release of Phase 5. Instead, server communities had to undertake a massive war effort to open the raids by gathering supplies to prepare for the war and completing an epic questline that ultimately culminates in the banging of a gong to open the gates and release the horrors within upon the world.\n\nOnce both factions have finished their contribution, there is a 5-day grace period where. Afterwards, there is a server-wide 10 hour event which spans several zones in Kalimdor the moment someone bangs the gong.\n\nHow quickly Ahn'Qiraj opens depends on the server and its faction balance.\n\nWe recommend delaying the War Effort as long as possible to allow for the most number of people to obtain the Scarab Lord mount as everyone that finishes The Scepter of the Shifting Sands quest line will be granted the same rewards!",
	[-1000188] = "The Opening of the Dark Portal was a one-time event that happened between Prepatch and the launch of TBC and subsequentially removed after. The tabard is the only tabard in the game with the Flex emote built into it and is highly covetted by collectors. Highlord Kruul would spawn randomly outside of the major cities and max level zones of the time.",
	[-1000189] = "In addition to all players on a realm working towards completing the War Effort, one player had to create the Scepter of the Shifting Sands - a very difficult task that could only be solved by a server's top guild back when the questline was added. After the war effort was finished and the army of the Alliance and the Horde arrived in Silithus, the Scepter of the Shifting Sands could be used on the Scarab Gong. Doing so resulted in the opening of Ahn'Qiraj. The first player to bang the Scarab Gong on each server would be rewarded with the Scarab Lord title (in Burning Crusade, the title will not be available in Classic!) and the Black Qiraji Resonating Crystal mount. Anyone else who followed them within 10 hours was rewarded with the title as well.\n\nAlthough it is still possible to complete the questline for the Scepter of the Shifting Sands after the gates have been opened on your server, doing so will not reward neither the Black Qiraji Resonating Crystal nor the Scarab Lord title.",
	[-1000190] = "The Scourge Invasion was a world event in Patch 1.11 and again during the Wrath of the Lich King Pre-Patch during 3.0.1 that heralded the opening of Naxxramas, the citadel of the dreaded Kel'Thuzad.\n\nSeveral regions of Azeroth came under attack by Scourge forces. Members of the Argent Dawn organized a worldwide counter to the Scourge invasion, keeping an eye out for any necropolis sightings and passing on their information to all adventurers willing to aid them in their struggle.\n\nWith each victory against the Scourge, the defense grows stronger. As more and more invasion attempts are beaten back by the defenders, the Argent Dawn will be able to bestow increasingly more powerful blessings upon those fighting the invaders. If the mortal races focus on clearing the Scourge camps all over the world that have sprung up beneath each necropolis, perhaps the invasion can effectively be halted or even repelled. Those who wish to take up arms against the undead invaders should speak with a representative of the Argent Dawn to learn what regions need help and how the defense is holding up.",
	[-1000191] = "The Silithyst Must Flow is the name of the world PvP event in Silithus, where players of both factions must try and secure as much Silithyst as possible. Silithyst is a red crystalline dust that reaches the surface through geysers exclusive to the Silithus desert. Both the Alliance and the Horde have taken an interest in this new substance, and researchers on both sides have discovered unique and valuable properties in the dust. The Horde and Alliance camps in the region have both been outfitted with turn-in stations where players can unload the Silithyst they collect.",
	[-1000198] = "These rewards were made available to anyone who purchased a Dark Portal Pass for TBC Classic.\n\nThe act of adding items for real money to the In-Game Shop in Classic has widely been frowned upon.",
	[-1000206] = "These rewards were made available to anyone who purchased a Deluxe Edition of TBC Classic. (not to be confused with the original Burning Crusade Collector's Edition)",
	[-1000214] = "These were only available through the 2006 iCoke Promotion (China Only)",
	[-1000215] = "This section is for miscellaneous promotions that took place in the real world or something to do with account management.",
	[-1000218] = "This is a Battlegrounds-based event that coincides with the beginning of the Summer Olympic games. The only time this was celebrated was in 2008 to correspond to the Beijing Olympics, and although there appeared to be the intention to repeat this event, it never returned.",
}) do a[key] = value; end

local a = L.HEADER_LORE;
for key,value in pairs({
	[-1000046] = "One of these dragons will spawn randomly at the associated coordinates across Azeroth.",
	[-1000137] = "The Dungeon Set 2 class sets, commonly referred to as Tier 0.5, are obtained by completing a long quest chain to upgrade the first set available as drops in end game dungeons into stronger versions of themselves. In current WoW, these sets are covetted by Collectors as the quest chain was completely removed from the game with Cataclysm. In WoW Classic, you should finish this quest chain on all of your characters before then!",
	[-1000138] = "These can be farmed infinitely by resetting the boss.",
}) do a[key] = value; end

if simplifiedLocale == "de" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000009] = "Gemeinsame Bossbeute",
	[-1000014] = "Dämonenausbilderin",
	[-1000018] = "Erkundung",
	[-1000038] = "Waffenmeisterin",
	[-1000046] = "Drachen des Alptraums",
	[-1000117] = "Erbarmungsloser Gladiator: Season 2",
	[-1000118] = "Rachsüchtiger Gladiator: Season 3",
	[-1000119] = "Brutaler Gladiator: Season 4",
	[-1000129] = "Gladiatoren Rüstung",
	[-1000140] = "Die Vier Reiter",
	[-1000151] = "Friedhof",
	[-1000152] = "Bibliothek",
	[-1000153] = "Waffenkammer",
	[-1000154] = "Kathedrale",
	[-1000175] = "Sonnenwendfest",
	[-1000178] = "Piratentag",
	[-1000180] = "Anglerwettbewerb im Schlingendorntal",
	[-1000188] = "Die Öffnung des Dunklen Portals",
	[-1000189] = "Das Szepter der Sandstürme",
	[-1000198] = "Pass zum Dunklen Portal",
}) do a[key] = value; end
end

if simplifiedLocale == "es" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000014] = "Instructor de demonios",
	[-1000038] = "Maestro armero",
	[-1000116] = "Gladiador: Season 1",
	[-1000117] = "Gladiador despiadado: Season 2",
	[-1000118] = "Gladiador vengativo: Season 3",
	[-1000119] = "Gladiador brutal: Season 4",
	[-1000140] = "Los Cuatro Jinetes",
	[-1000175] = "Festival del Fuego del Solsticio de Verano",
	[-1000178] = "Día de los Piratas",
	[-1000180] = "Gran espectáculo de pesca de Tuercespina",
	[-1000188] = "La apertura del Portal Oscuro",
	[-1000189] = "El cetro del Mar de Dunas",
	[-1000198] = "Pase para el Portal Oscuro",
}) do a[key] = value; end
end

if simplifiedLocale == "fr" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000012] = "Objets communs des vendeurs",
	[-1000014] = "Maître des démons",
	[-1000018] = "Exploration",
	[-1000038] = "Maître d'armes",
	[-1000046] = "Dragons du Cauchemar",
	[-1000053] = "Événement chronométré",
	[-1000054] = "Premier coffre",
	[-1000055] = "Second coffre",
	[-1000056] = "Troisième coffre",
	[-1000057] = "Coffre final",
	[-1000116] = "Gladiateur: Saison 1",
	[-1000117] = "Gladiateur impitoyable: Saison 2",
	[-1000118] = "Gladiateur vengeur: Saison 3",
	[-1000119] = "Gladiateur brutal: Saison 4",
	[-1000129] = "Équipement Gladiateur",
	[-1000137] = "Ensembles Tier 0.5",
	[-1000138] = "Capitaines",
	[-1000140] = "Les quatre cavaliers",
	[-1000145] = DUNGEON_FLOOR_DIREMAUL5.." (Est)",
	[-1000146] = DUNGEON_FLOOR_DIREMAUL1.." (Nord)",
	[-1000147] = DUNGEON_FLOOR_DIREMAUL2.." (Ouest)",
	[-1000151] = "Cimetière",
	[-1000152] = "Librairie",
	[-1000153] = "Armurerie",
	[-1000154] = "Cathédrale",
	[-1000157] = "Défenseurs Atal'ai",
	[-1000175] = "Fête du Feu du solstice d’été",
	[-1000178] = "Jour des pirates",
	[-1000180] = "Concours de pêche de Strangleronce",
	[-1000187] = "Effort de guerre d’Ahn'Qiraj",
	[-1000188] = "L'ouverture de la Porte des ténèbres",
	[-1000189] = "Le Sceptre des Sables changeants",
	[-1000197] = "Edition Collector",
	[-1000198] = "Passe Porte des ténèbres",
	[-1000206] = "Édition BC Classic Deluxe",
}) do a[key] = value; end
end

if simplifiedLocale == "it" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000116] = "Gladiatore: Season 1",
	[-1000117] = "Gladiatore Spietato: Season 2",
	[-1000118] = "Gladiatore Vendicativo: Season 3",
	[-1000119] = "Gladiatore Brutale: Season 4",
	[-1000140] = "I Cavalieri dell'Apocalisse",
	[-1000175] = "Fuochi di Mezza Estate",
	[-1000178] = "Giorno dei Pirati",
	[-1000180] = "Gara di Pesca a Rovotorto",
	[-1000188] = "L'apertura del Portale Oscuro",
	[-1000189] = "Scettro delle Sabbie Mutevoli",
}) do a[key] = value; end
end

if simplifiedLocale == "ko" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000014] = "악마 훈련사",
	[-1000038] = "무기 전문가",
	[-1000116] = "검투사: Season 1",
	[-1000117] = "무자비한 검투사: Season 2",
	[-1000118] = "복수심에 불타는 검투사: Season 3",
	[-1000119] = "야만적인 검투사: Season 4",
	[-1000140] = "4인 기사단",
	[-1000175] = "한여름 불꽃축제",
	[-1000178] = "해적의 날",
	[-1000180] = "가시덤불 골짜기 낚시왕 선발대회",
	[-1000188] = "어둠의 문 열기",
	[-1000189] = "흐르는 모래의 홀",
	[-1000198] = "다크 포털 패스",
}) do a[key] = value; end
end

if simplifiedLocale == "pt" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000014] = "Treinamento de Demônios",
	[-1000038] = "Mestre de Armas",
	[-1000116] = "Gladiador: Season 1",
	[-1000117] = "Gladiador Impiedoso: Season 2",
	[-1000118] = "Gladiador Vingativo: Season 3",
	[-1000119] = "Gladiador Brutal: Season 4",
	[-1000140] = "Os Quatro Cavaleiros",
	[-1000175] = "Festival do Fogo do Solstício",
	[-1000178] = "Dia dos Piratas",
	[-1000180] = "Festerê de Pesca da Selva do Espinhaço",
	[-1000188] = "A abertura do Portal Negro",
	[-1000189] = "Cetro das Areias Cambiantes",
	[-1000198] = "Passe do Portal Negro",
}) do a[key] = value; end
end

if simplifiedLocale == "ru" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000009] = "Общая добыча с боссов",
	[-1000012] = "Обычные предметы у Торговцев",
	[-1000014] = "Наставник демонов",
	[-1000018] = "Исследование",
	[-1000020] = "Точка полета",
	[-1000030] = "Редкие",
	[-1000036] = "Сундук с сокровищами",
	[-1000038] = "Эксперт по оружию",
	[-1000040] = "Мировые Боссы",
	[-1000042] = "Добыча локации",
	[-1000046] = "Драконы Кошмара",
	[-1000053] = "Временное Событие",
	[-1000054] = "Первый Сундук",
	[-1000055] = "Второй Сундук",
	[-1000056] = "Третий Сундук",
	[-1000057] = "Последний Сундук",
	[-1000116] = "Гладиатор: Сезон 1",
	[-1000117] = "Безжалостный гладиатор: Сезон 2",
	[-1000118] = "Мстительный гладиатор: Сезон 3",
	[-1000119] = "Жестокий гладиатор: Сезон 4",
	[-1000129] = "Доспехи Гладиатора",
	[-1000137] = "Комплекты T0.5",
	[-1000138] = "Капитаны",
	[-1000140] = "Четыре Всадника",
	[-1000145] = DUNGEON_FLOOR_DIREMAUL5.." (Восток)",
	[-1000146] = DUNGEON_FLOOR_DIREMAUL1.." (Север)",
	[-1000147] = DUNGEON_FLOOR_DIREMAUL2.." (Запад)",
	[-1000151] = "Кладбище",
	[-1000152] = "Библиотека",
	[-1000153] = "Оружейная",
	[-1000154] = "Собор",
	[-1000157] = "Защитники Атал'ай",
	[-1000175] = "Огненный Солнцеворот",
	[-1000178] = "День пирата",
	[-1000180] = "Рыбомания Тернистой долины",
	[-1000187] = "Война в Ан'Кираже",
	[-1000188] = "Открытие Темного портала",
	[-1000189] = "Скипетр Зыбучих песков",
	[-1000190] = "Вторжение Плети",
	[-1000197] = "Коллекционное издание",
	[-1000198] = "Пропуск Темного портала",
}) do a[key] = value; end
end

if simplifiedLocale == "zh" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000012] = "常规商人物品",
	[-1000014] = "恶魔训练师",
	[-1000018] = "勘探",
	[-1000038] = "武器大师",
	[-1000046] = "梦魇之龙",
	[-1000053] = "限时事件",
	[-1000054] = "一箱",
	[-1000055] = "二箱",
	[-1000056] = "三箱",
	[-1000057] = "最终宝箱",
	[-1000116] = "角斗士：第1赛季",
	[-1000117] = "残酷角斗士：第1赛季",
	[-1000118] = "复仇角斗士：第3赛季",
	[-1000119] = "野蛮角斗士：第3赛季",
	[-1000129] = "角斗士套装",
	[-1000137] = "等级 0.5 套装",
	[-1000138] = "船长",
	[-1000140] = "四骑士",
	[-1000145] = DUNGEON_FLOOR_DIREMAUL5.." (东)",
	[-1000146] = DUNGEON_FLOOR_DIREMAUL1.." (北)",
	[-1000147] = DUNGEON_FLOOR_DIREMAUL2.." (西)",
	[-1000151] = "墓地",
	[-1000152] = "图书馆",
	[-1000153] = "武器库",
	[-1000154] = "修道院",
	[-1000157] = "阿塔莱防御者",
	[-1000175] = "仲夏火焰节",
	[-1000178] = "海盗日",
	[-1000180] = "荆棘谷钓鱼大赛",
	[-1000187] = "安其拉之战捐献",
	[-1000188] = "开启黑暗之门",
	[-1000189] = "流沙节杖",
	[-1000190] = "天灾入侵",
	[-1000191] = "希利苏斯流沙",
	[-1000196] = "暴雪嘉年华",
	[-1000197] = "典藏版",
	[-1000198] = "穿过黑暗之门",
	[-1000206] = "燃烧的远征经典怀旧服典藏包",
	[-1000214] = "可口可乐活动",
}) do a[key] = value; end
end

if simplifiedLocale == "cn" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000023] = "你可能需要在特定的节日活动中才能完成本节中的事物。",
	[-1000031] = "包含有奖励或可从包含部分中的其他内容获得的事物。\n在此处合并以减少来自许多可能重复来源。",
	[-1000038] = "武器大师是一个 NPC，为角色提供学习特定武器技能的机会，不同武器大师的可用性各不相同。所有武器技能都可以在 1 级进行训练，长柄武器除外，需要 20 级。\n\n在补丁 4.0.1 中，武器大师的训练已经过时，因为现在每个班级在创建时都会学习所有适合班级的武器熟练程度。不久之后，武器大师就被从游戏中删除了。",
}) do a[key] = value; end
end

if simplifiedLocale == "de" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000023] = "Es muss möglicherweise ein bestimmter Feiertag aktiv sein, um hier genannte Dinge abschließen zu können.",
	[-1000038] = "Ein Waffenmeister ist ein NPC, der Charakteren die Möglichkeit bietet, bestimmte Waffenfertigkeiten zu erlernen, deren Verfügbarkeit von Waffenmeister zu Waffenmeister unterschiedlich ist. Alle Waffenfähigkeiten können auf Stufe 1 trainiert werden, mit Ausnahme von Stangenwaffen, für die Stufe 20 erforderlich ist.\n\nDas Training mit einem Waffenmeister wurde in Patch 4.0.1 obsolet, da nun alle klassengerechten Waffenfertigkeiten von jeder Klasse bei der Erstellung erlernt werden. Waffenmeister wurden kurz darauf aus dem Spiel entfernt.",
}) do a[key] = value; end
end

if simplifiedLocale == "es" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000038] = "Un maestro de armas es un PNJ que ofrece a los personajes la oportunidad de aprender habilidades específicas con armas, cuya disponibilidad varía de un maestro de armas a otro. Todas las habilidades con armas se pueden entrenar en el nivel 1, excepto las armas de asta que requieren el nivel 20.\n\nEl entrenamiento con un maestro de armas quedó obsoleto en el parche 4.0.1, ya que cada clase ahora aprende todas las competencias de armas apropiadas para la clase en el momento de la creación. Los maestros de armas se eliminaron del juego poco después.",
}) do a[key] = value; end
end

if simplifiedLocale == "fr" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000031] = "Contient des objets de récompenses ou disponibles dans d’autres contenus de la section qui les contient.\nIls sont regroupés ici dans le but de réduire la duplication de nombreuses sources possibles.",
	[-1000038] = "Un maître d'armes est un PNJ qui offre aux personnages la possibilité d'apprendre des compétences d'armes spécifiques, dont la disponibilité varie d'un maître d'armes à l'autre. Toutes les compétences d'armes peuvent être entraînées au niveau 1, à l'exception des armes d'hast qui nécessitent le niveau 20.\n\nL'entraînement avec un maître d'armes est devenu obsolète dans le patch 4.0.1, car toutes les compétences d'armes appropriées à la classe sont désormais apprises par chaque classe lors de sa création. Les maîtres d'armes ont été retirés du jeu peu de temps après.",
}) do a[key] = value; end
end

if simplifiedLocale == "ko" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000038] = "웨폰 마스터는 캐릭터에게 특정 무기 기술을 배울 수 있는 기회를 제공하는 NPC로, 사용 가능 여부는 웨폰 마스터마다 다릅니다. 모든 무기 기술은 레벨 20이 필요한 폴암을 제외하고 레벨 1에서 훈련할 수 있습니다.\n\n4.0.1 패치에서는 각 병과가 생성 시 모든 병과에 적합한 무기 숙련도를 배우게 되므로 무기 전문가와의 훈련은 더 이상 필요하지 않게 되었습니다. 무기 마스터는 곧 게임에서 제거되었습니다.",
}) do a[key] = value; end
end

if simplifiedLocale == "pt" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000038] = "Um mestre de armas é um NPC que oferece aos personagens a oportunidade de aprender habilidades específicas com armas, cuja disponibilidade varia de um mestre de armas para outro. Todas as habilidades com armas podem ser treinadas no nível 1, exceto as armas de haste, que exigem nível 20.\n\nO treinamento com um mestre de armas tornou-se obsoleto no Patch 4.0.1, já que todas as proficiências de armas apropriadas à classe agora são aprendidas por cada classe após a criação. Os mestres de armas foram removidos do jogo logo depois.",
}) do a[key] = value; end
end

if simplifiedLocale == "ru" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000023] = "Чтобы выполнить упомянутые в данной секции Штучки, может быть нужен какой-то праздник.",
	[-1000031] = "Штучки, которые можно получить в награду с разного контента в родительской секции.\nОни собраны здесь, чтобы уменьшить количество источников, когда Штучка доступна из многих мест.",
	[-1000038] = "Мастер оружия - это NPC, который предлагает персонажам возможность изучить определенные навыки обращения с оружием, доступность которых варьируется от одного мастера к другому. Все навыки обращения с оружием можно изучить на уровне 1, кроме древкового оружия, для которого требуется уровень 20.\n\nОбучение с мастером оружия стало устаревшим в патче 4.0.1, так как все соответствующие классу навыки владения оружием теперь изучаются каждым классом при создании. Вскоре после этого из игры были удалены мастера оружия.",
}) do a[key] = value; end
end