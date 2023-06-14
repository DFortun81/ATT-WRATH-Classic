-------------------------------------------------------
--   C U S T O M   H E A D E R S   M O D U L E   --
-------------------------------------------------------
local _ = select(2, ...);
local L = _.L;
local simplifiedLocale = string.sub(GetLocale(),1,2);

_.HeaderConstants = {
	ACHIEVEMENTS = -1000004,
	COMMON_BOSS_DROPS = -1000009,
	COMMON_VENDOR_ITEMS = -1000012,
	CRAFTED_ITEMS = -1000013,
	EXPLORATION = -1000017,
	FACTIONS = -1000018,
	FLIGHT_PATHS = -1000019,
	FOLLOWERS = -1000020,
	HOLIDAYS = -1000022,
	PROFESSIONS = -1000027,
	QUESTS = -1000028,
	RARES = -1000029,
	REWARDS = -1000030,
	SPECIAL = -1000033,
	TREASURES = -1000034,
	VENDORS = -1000035,
	WORLD_BOSSES = -1000037,
	ZONE_DROPS = -1000039,
	WEAPONS = -1000067,
	HONOR_TITLES = -1000108,
	PVP = -1000110,
	DARKMOON_FAIRE_HEADER = -1000128,
	TIER_ZERO_POINT_FIVE_SETS = -1000129,
	LUNAR_FESTIVAL_HEADER = -1000152,
	LOVE_IS_IN_THE_AIR_HEADER = -1000153,
	NOBLEGARDEN_HEADER = -1000154,
	CHILDRENS_WEEK_HEADER = -1000155,
	MIDSUMMER_FIRE_FESTIVAL_HEADER = -1000156,
	HARVEST_FESTIVAL_HEADER = -1000158,
	HALLOWS_END_HEADER = -1000159,
	FEAST_OF_WINTER_VEIL_HEADER = -1000162,
};

local a = L.HEADER_EVENTS;
for key,value in pairs({
	[-1000128] = 479,
	[-1000152] = 327,
	[-1000153] = 423,
	[-1000154] = 181,
	[-1000155] = 201,
	[-1000156] = 341,
	[-1000158] = 321,
	[-1000159] = 324,
	[-1000162] = 141,
	[-1000164] = 301,
	[-1000182] = 1181,
}) do a[key] = value; end

local a = L.EVENT_REMAPPING;
for key,value in pairs({
	[374] = 479,
	[375] = 479,
	[376] = 479,
}) do a[key] = value; end

local a = L.HEADER_ICONS;
for key,value in pairs({
	[-1000004] = _.asset("Category_Achievements"),
	[-1000008] = "Interface/MINIMAP/TRACKING/Class",
	[-1000009] = _.asset("Achievement_Garrison_Horde_PVE"),
	[-1000012] = "Interface/Icons/INV_Misc_Coin_02",
	[-1000013] = _.asset("Category_Crafting"),
	[-1000017] = _.asset("INV_Misc_Map02"),
	[-1000018] = _.asset("Category_Factions"),
	[-1000019] = _.asset("Category_FlightPaths"),
	[-1000020] = "Interface/Icons/Achievement_GarrisonFollower_LevelUp",
	[-1000022] = _.asset("Category_Holidays"),
	[-1000023] = "Interface/Icons/inv_letter_17",
	[-1000024] = "Interface/Icons/Inv_misc_map02",
	[-1000027] = _.asset("Category_Professions"),
	[-1000028] = _.asset("Interface_Quest_header"),
	[-1000029] = _.asset("Interface_Rare"),
	[-1000030] = _.asset("Interface_Rewards"),
	[-1000032] = "Interface/Icons/achievement_transmog_collections",
	[-1000033] = "Interface/Icons/inv_sword_40",
	[-1000034] = _.asset("Interface_Tchest"),
	[-1000035] = _.asset("Interface_Vendor"),
	[-1000037] = _.asset("Interface_World_boss"),
	[-1000039] = _.asset("Interface_Zone_drop"),
	[-1000042] = "Interface/Icons/INV_Misc_Head_Dragon_Green",
	[-1000043] = "Interface/Icons/inv_trinket_naxxramas04",
	[-1000044] = "Interface/Icons/ability_rogue_deviouspoisons",
	[-1000045] = "Interface/Icons/spell_deathknight_classicon",
	[-1000046] = "Interface/Icons/inv_misc_cauldron_nature",
	[-1000047] = "Interface/Icons/inv_misc_head_dragon_blue",
	[-1000054] = "Interface/Icons/INV_Chest_Plate03",
	[-1000067] = "Interface/Icons/INV_Sword_23",
	[-1000079] = "Interface/FriendsFrame/PlusManz-Alliance",
	[-1000080] = "Interface/FriendsFrame/PlusManz-Horde",
	[-1000081] = "Interface/FriendsFrame/PlusManz-PlusManz",
	[-1000089] = _.asset("Weapon_Type_Legendary"),
	[-1000107] = "Interface/Icons/INV_BannerPVP_02",
	[-1000108] = "Interface/Icons/inv_sword_48",
	[-1000110] = _.asset("Category_PvP"),
	[-1000128] = _.asset("Event_dmf"),
	[-1000129] = "Interface/Icons/INV_Chest_Plate03",
	[-1000130] = "Interface/Icons/achievement_pvp_h_12",
	[-1000131] = "Interface/Icons/Inv_misc_ahnqirajtrinket_06",
	[-1000132] = "Interface/Icons/Ability_mount_undeadhorse",
	[-1000133] = _.asset("Achievement_Zone_Blackrock_01"),
	[-1000134] = _.asset("Achievement_Zone_Blackrock_01"),
	[-1000135] = "Interface/Icons/Spell_Shadow_SummonImp",
	[-1000136] = "Interface/Icons/inv_axe_10",
	[-1000137] = "Interface/Icons/INV_Misc_Head_Elf_02",
	[-1000138] = "Interface/Icons/spell_arcane_portalironforge",
	[-1000139] = "Interface/Icons/INV_Misc_Gem_Opal_01",
	[-1000140] = "Interface/Icons/INV_Misc_Gem_Amethyst_02",
	[-1000141] = "Interface/Icons/Inv_misc_bone_humanskull_01",
	[-1000142] = "Interface/Icons/INV_Misc_Book_13",
	[-1000143] = "Interface/Icons/inv_helmet_25",
	[-1000144] = "Interface/Icons/inv_helmet_12",
	[-1000145] = "Interface/Icons/INV_Misc_Token_ScarletCrusade",
	[-1000146] = "Interface/Icons/INV_MISC_KEY_13",
	[-1000147] = "Interface/Icons/Inv_misc_head_troll_01",
	[-1000152] = _.asset("Holiday_Lunar"),
	[-1000153] = _.asset("Holiday_love"),
	[-1000154] = _.asset("Holiday_noblegarden"),
	[-1000155] = _.asset("Holiday_Children"),
	[-1000156] = _.asset("Holiday_Midsummer"),
	[-1000158] = _.asset("Holiday_Harvestfest"),
	[-1000159] = _.asset("Holiday_hallows_end"),
	[-1000162] = _.asset("Holiday_winter_veil"),
	[-1000164] = "Interface/Icons/inv_misc_fish_06",
	[-1000168] = "Interface/Icons/inv_box_01",
	[-1000170] = "Interface/Icons/Inv_hammer_25",
	[-1000171] = "Interface/Icons/inv_stone_02",
	[-1000172] = "Interface/Icons/spell_holiday_tow_spicecloud",
	[-1000182] = _.asset("Promotion_Blizzcon"),
	[-1000183] = _.asset("Promotion_Collector"),
	[-1000200] = "Interface/Icons/Inv_drink_10",
	[-1000201] = "Interface/Icons/Spell_Misc_Drink",
}) do a[key] = value; end

local a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000004] = ACHIEVEMENTS,
	[-1000008] = CLASS,
	[-1000009] = BATTLE_PET_BREED_QUALITY2.." "..TRANSMOG_SOURCE_1,
	[-1000012] = "Common Vendor Items",
	[-1000013] = LOOT_JOURNAL_LEGENDARIES_SOURCE_CRAFTED_ITEM,
	[-1000017] = "Exploration",
	[-1000018] = FACTION,
	[-1000019] = "Flight Paths",
	[-1000020] = GARRISON_FOLLOWERS,
	[-1000022] = "Holiday",
	[-1000023] = MINIMAP_TRACKING_MAILBOX,
	[-1000024] = BRAWL_TOOLTIP_MAPS,
	[-1000027] = TRADE_SKILLS,
	[-1000028] = TRACKER_HEADER_QUESTS,
	[-1000029] = BATTLE_PET_BREED_QUALITY4,
	[-1000030] = QUEST_REWARDS,
	[-1000032] = WARDROBE_SETS,
	[-1000033] = SPECIAL,
	[-1000034] = "Treasures",
	[-1000035] = BATTLE_PET_SOURCE_3,
	[-1000037] = WORLD.." "..RAID_BOSSES,
	[-1000039] = ZONE.." "..BATTLE_PET_SOURCE_1,
	[-1000042] = "Dragons of Nightmare",
	[-1000043] = DUNGEON_FLOOR_NAXXRAMAS2,
	[-1000044] = DUNGEON_FLOOR_NAXXRAMAS1,
	[-1000045] = DUNGEON_FLOOR_NAXXRAMAS3,
	[-1000046] = DUNGEON_FLOOR_NAXXRAMAS4,
	[-1000047] = DUNGEON_FLOOR_NAXXRAMAS6,
	[-1000054] = ARMOR,
	[-1000067] = AUCTION_CATEGORY_WEAPONS,
	[-1000079] = FACTION_ALLIANCE,
	[-1000080] = FACTION_HORDE,
	[-1000081] = COMBATLOG_FILTER_STRING_NEUTRAL_UNITS,
	[-1000089] = ITEM_QUALITY5_DESC,
	[-1000107] = BATTLEGROUNDS,
	[-1000108] = "Honor Titles",
	[-1000110] = PVP,
	[-1000128] = "Darkmoon Faire",
	[-1000129] = "Tier 0.5 Sets",
	[-1000130] = "Captains",
	[-1000131] = "Silithid Royalty",
	[-1000132] = "The Four Horsemen",
	[-1000133] = DUNGEON_FLOOR_BLACKROCKDEPTHS1,
	[-1000134] = DUNGEON_FLOOR_BLACKROCKDEPTHS2,
	[-1000135] = DUNGEON_FLOOR_DIREMAUL5.." (East)",
	[-1000136] = DUNGEON_FLOOR_DIREMAUL1.." (North)",
	[-1000137] = DUNGEON_FLOOR_DIREMAUL2.." (West)",
	[-1000138] = GetSpellInfo(21127),
	[-1000139] = DUNGEON_FLOOR_DESOLACE22.." (Orange Path)",
	[-1000140] = DUNGEON_FLOOR_DESOLACE21.." (Purple Path)",
	[-1000141] = "Graveyard",
	[-1000142] = "Library",
	[-1000143] = "Armory",
	[-1000144] = "Cathedral",
	[-1000145] = "Main Gate",
	[-1000146] = "Service Entrance",
	[-1000147] = "Atal'ai Defenders",
	[-1000152] = "Lunar Festival",
	[-1000153] = "Love is in the Air",
	[-1000154] = "Noblegarden",
	[-1000155] = "Children's Week",
	[-1000156] = "Midsummer Fire Festival",
	[-1000158] = "Harvest Festival",
	[-1000159] = "Hallow's End",
	[-1000162] = GetSpellInfo(21953),
	[-1000164] = "Stranglethorn Fishing Extravaganza",
	[-1000168] = "The Ahn'Qiraj War Effort",
	[-1000170] = "The Scepter of the Shifting Sands",
	[-1000171] = "The Scourge Invasion",
	[-1000172] = "The Silithyst Must Flow",
	[-1000182] = "BlizzCon",
	[-1000183] = "Collector's Edition",
	[-1000200] = "iCoke",
	[-1000201] =  AUCTION_CATEGORY_MISCELLANEOUS,
}) do a[key] = value; end

local a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000022] = "A specific holiday may need to be active for you to complete the referenced Things within this section.",
	[-1000027] = "This section will only show your current character's professions outside of Account and Debug Mode.",
	[-1000030] = "Contains Things which are rewarded or are available from other content within the containing section.\nThey are consolidated here in an effort to reduce duplication from many possible Sources.",
	[-1000135] = "This part of the instance can be accessed from the eastern-most portal. (right side)",
	[-1000136] = "This part of the instance can be accessed from the northern-most portal.",
	[-1000137] = "This part of the instance can be accessed from the western-most portal. (left side)",
	[-1000145] = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Live\" or \"Scarlet\" side, which the Scarlet Crusade has taken over.",
	[-1000146] = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Dead\" or \"Scourge\" side, which the Scourge has taken over.",
	[-1000168] = "When Phase 5 is eventually released, the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj will not be immediately available. Instead, server communities will have to undertake a massive war effort to open the raids by gathering supplies to prepare for the war and completing an epic questline that ultimately culminates in the banging of a gong to open the gates and release the horrors within upon the world.\n\nOnce both factions have finished their contribution, there is a 5-day grace period where. Afterwards, there is a server-wide 10 hour event which spans several zones in Kalimdor the moment someone bangs the gong.\n\nHow quickly Ahn'Qiraj opens depends on the server and its faction balance.\n\nWe recommend delaying the War Effort as long as possible to allow for the most number of people to obtain the Scarab Lord mount as everyone that finishes The Scepter of the Shifting Sands quest line will be granted the same rewards!",
	[-1000170] = "In addition to all players on a realm working towards completing the War Effort, one player had to create the Scepter of the Shifting Sands - a very difficult task that could only be solved by a server's top guild back when the questline was added. After the war effort was finished and the army of the Alliance and the Horde arrived in Silithus, the Scepter of the Shifting Sands could be used on the Scarab Gong. Doing so resulted in the opening of Ahn'Qiraj. The first player to bang the Scarab Gong on each server would be rewarded with the Scarab Lord title (in Burning Crusade, the title will not be available in Classic!) and the Black Qiraji Resonating Crystal mount. Anyone else who followed them within 10 hours was rewarded with the title as well.\n\nAlthough it is still possible to complete the questline for the Scepter of the Shifting Sands after the gates have been opened on your server, doing so will not reward neither the Black Qiraji Resonating Crystal nor the Scarab Lord title.",
	[-1000171] = "The Scourge Invasion was a world event in Patch 1.11 and again during the Wrath of the Lich King Pre-Patch during 3.0.1 that heralded the opening of Naxxramas, the citadel of the dreaded Kel'Thuzad.\n\nSeveral regions of Azeroth came under attack by Scourge forces. Members of the Argent Dawn organized a worldwide counter to the Scourge invasion, keeping an eye out for any necropolis sightings and passing on their information to all adventurers willing to aid them in their struggle.\n\nWith each victory against the Scourge, the defense grows stronger. As more and more invasion attempts are beaten back by the defenders, the Argent Dawn will be able to bestow increasingly more powerful blessings upon those fighting the invaders. If the mortal races focus on clearing the Scourge camps all over the world that have sprung up beneath each necropolis, perhaps the invasion can effectively be halted or even repelled. Those who wish to take up arms against the undead invaders should speak with a representative of the Argent Dawn to learn what regions need help and how the defense is holding up.",
	[-1000172] = "The Silithyst Must Flow is the name of the world PvP event in Silithus, where players of both factions must try and secure as much Silithyst as possible. Silithyst is a red crystalline dust that reaches the surface through geysers exclusive to the Silithus desert. Both the Alliance and the Horde have taken an interest in this new substance, and researchers on both sides have discovered unique and valuable properties in the dust. The Horde and Alliance camps in the region have both been outfitted with turn-in stations where players can unload the Silithyst they collect.",
	[-1000200] = "These were only available through the 2006 iCoke Promotion (China Only)",
	[-1000201] = "This section is for miscellaneous promotions that took place in the real world or something to do with account management.",
}) do a[key] = value; end

local a = L.HEADER_LORE;
for key,value in pairs({
	[-1000042] = "One of these dragons will spawn randomly at the associated coordinates across Azeroth.",
	[-1000129] = "The Dungeon Set 2 class sets, commonly referred to as Tier 0.5, are obtained by completing a long quest chain to upgrade the first set available as drops in end game dungeons into stronger versions of themselves. In current WoW, these sets are covetted by Collectors as the quest chain was completely removed from the game with Cataclysm. In WoW Classic, you should finish this quest chain on all of your characters before then!",
	[-1000130] = "These can be farmed infinitely by resetting the boss.",
}) do a[key] = value; end

if simplifiedLocale == "de" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000009] = "Gemeinsame Bossbeute",
	[-1000017] = "Erkundung",
	[-1000042] = "Drachen des Alptraums",
	[-1000132] = "Die Vier Reiter",
	[-1000141] = "Friedhof",
	[-1000142] = "Bibliothek",
	[-1000143] = "Waffenkammer",
	[-1000144] = "Kathedrale",
	[-1000156] = "Sonnenwendfest",
	[-1000164] = "Anglerwettbewerb im Schlingendorntal",
	[-1000170] = "Das Szepter der Sandstürme",
}) do a[key] = value; end
end

if simplifiedLocale == "es" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000132] = "Los Cuatro Jinetes",
	[-1000156] = "Festival del Fuego del Solsticio de Verano",
	[-1000164] = "Gran espectáculo de pesca de Tuercespina",
	[-1000170] = "El cetro del Mar de Dunas",
}) do a[key] = value; end
end

if simplifiedLocale == "fr" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000012] = "Objets communs des vendeurs",
	[-1000017] = "Exploration",
	[-1000042] = "Dragons du Cauchemar",
	[-1000129] = "Ensembles Tier 0.5",
	[-1000130] = "Capitaines",
	[-1000132] = "Les quatre cavaliers",
	[-1000135] = DUNGEON_FLOOR_DIREMAUL5.." (Est)",
	[-1000136] = DUNGEON_FLOOR_DIREMAUL1.." (Nord)",
	[-1000137] = DUNGEON_FLOOR_DIREMAUL2.." (Ouest)",
	[-1000141] = "Cimetière",
	[-1000142] = "Librairie",
	[-1000143] = "Armurerie",
	[-1000144] = "Cathédrale",
	[-1000147] = "Défenseurs Atal'ai",
	[-1000156] = "Fête du Feu du solstice d’été",
	[-1000164] = "Concours de pêche de Strangleronce",
	[-1000168] = "Effort de guerre d’Ahn'Qiraj",
	[-1000170] = "Le Sceptre des Sables changeants",
	[-1000183] = "Edition Collector",
}) do a[key] = value; end
end

if simplifiedLocale == "it" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000132] = "I Cavalieri dell'Apocalisse",
	[-1000156] = "Fuochi di Mezza Estate",
	[-1000164] = "Gara di Pesca a Rovotorto",
	[-1000170] = "Scettro delle Sabbie Mutevoli",
}) do a[key] = value; end
end

if simplifiedLocale == "ko" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000132] = "4인 기사단",
	[-1000156] = "한여름 불꽃축제",
	[-1000164] = "가시덤불 골짜기 낚시왕 선발대회",
	[-1000170] = "흐르는 모래의 홀",
}) do a[key] = value; end
end

if simplifiedLocale == "pt" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000132] = "Os Quatro Cavaleiros",
	[-1000156] = "Festival do Fogo do Solstício",
	[-1000164] = "Festerê de Pesca da Selva do Espinhaço",
	[-1000170] = "Cetro das Areias Cambiantes",
}) do a[key] = value; end
end

if simplifiedLocale == "ru" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000009] = "Общая добыча с боссов",
	[-1000012] = "Обычные предметы у Торговцев",
	[-1000017] = "Исследование",
	[-1000019] = "Точка полета",
	[-1000029] = "Редкие",
	[-1000034] = "Сундук с сокровищами",
	[-1000037] = "Мировые Боссы",
	[-1000039] = "Добыча локации",
	[-1000042] = "Драконы Кошмара",
	[-1000129] = "Комплекты T0.5",
	[-1000130] = "Капитаны",
	[-1000132] = "Четыре Всадника",
	[-1000135] = DUNGEON_FLOOR_DIREMAUL5.." (Восток)",
	[-1000136] = DUNGEON_FLOOR_DIREMAUL1.." (Север)",
	[-1000137] = DUNGEON_FLOOR_DIREMAUL2.." (Запад)",
	[-1000141] = "Кладбище",
	[-1000142] = "Библиотека",
	[-1000143] = "Оружейная",
	[-1000144] = "Собор",
	[-1000147] = "Защитники Атал'ай",
	[-1000156] = "Огненный Солнцеворот",
	[-1000164] = "Рыбомания Тернистой долины",
	[-1000168] = "Война в Ан'Кираже",
	[-1000170] = "Скипетр Зыбучих песков",
	[-1000171] = "Вторжение Плети",
	[-1000183] = "Коллекционное издание",
}) do a[key] = value; end
end

if simplifiedLocale == "zh" then
a = L.HEADER_NAMES;
for key,value in pairs({
	[-1000012] = "常规商人物品",
	[-1000017] = "勘探",
	[-1000042] = "梦魇之龙",
	[-1000129] = "等级 0.5 套装",
	[-1000130] = "船长",
	[-1000132] = "四骑士",
	[-1000135] = DUNGEON_FLOOR_DIREMAUL5.." (东)",
	[-1000136] = DUNGEON_FLOOR_DIREMAUL1.." (北)",
	[-1000137] = DUNGEON_FLOOR_DIREMAUL2.." (西)",
	[-1000141] = "墓地",
	[-1000142] = "图书馆",
	[-1000143] = "武器库",
	[-1000144] = "修道院",
	[-1000147] = "阿塔莱防御者",
	[-1000156] = "仲夏火焰节",
	[-1000164] = "荆棘谷钓鱼大赛",
	[-1000168] = "安其拉之战捐献",
	[-1000170] = "流沙节杖",
	[-1000171] = "天灾入侵",
	[-1000172] = "希利苏斯流沙",
	[-1000182] = "暴雪嘉年华",
	[-1000183] = "典藏版",
	[-1000200] = "可口可乐活动",
}) do a[key] = value; end
end

if simplifiedLocale == "cn" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000022] = "你可能需要在特定的节日活动中才能完成本节中的事物。",
	[-1000030] = "包含有奖励或可从包含部分中的其他内容获得的事物。\n在此处合并以减少来自许多可能重复来源。",
}) do a[key] = value; end
end

if simplifiedLocale == "de" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000022] = "Es muss möglicherweise ein bestimmter Feiertag aktiv sein, um hier genannte Dinge abschließen zu können.",
}) do a[key] = value; end
end

if simplifiedLocale == "fr" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000030] = "Contient des objets de récompenses ou disponibles dans d’autres contenus de la section qui les contient.\nIls sont regroupés ici dans le but de réduire la duplication de nombreuses sources possibles.",
}) do a[key] = value; end
end

if simplifiedLocale == "ru" then
a = L.HEADER_DESCRIPTIONS;
for key,value in pairs({
	[-1000022] = "Чтобы выполнить упомянутые в данной секции Штучки, может быть нужен какой-то праздник.",
	[-1000030] = "Штучки, которые можно получить в награду с разного контента в родительской секции.\nОни собраны здесь, чтобы уменьшить количество источников, когда Штучка доступна из многих мест.",
}) do a[key] = value; end
end