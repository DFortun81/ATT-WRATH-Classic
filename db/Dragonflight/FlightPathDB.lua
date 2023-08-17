﻿-------------------------------------------------------
--   F L I G H T   P A T H S   D A T A B A S E   M O D U L E   --
-------------------------------------------------------
local appName, _ = ...;
local simplifiedLocale = string.sub(GetLocale(),1,2);

_.FlightPathNames = {
	[1] = "Northshire Abbey",
	[2] = "Stormwind, Elwynn",
	[3] = "Programmer Isle",
	[4] = "Sentinel Hill, Westfall",
	[5] = "Lakeshire, Redridge",
	[6] = "Ironforge, Dun Morogh",
	[7] = "Menethil Harbor, Wetlands",
	[8] = "Thelsamar, Loch Modan",
	[9] = "Booty Bay, Stranglethorn",
	[10] = "The Sepulcher, Silverpine Forest",
	[11] = "Undercity, Tirisfal",
	[12] = "Darkshire, Duskwood",
	[13] = "Tarren Mill, Hillsbrad",
	[14] = "Southshore, Hillsbrad",
	[15] = "Eastern Plaguelands",
	[16] = "Refuge Pointe, Arathi",
	[17] = "Hammerfall, Arathi",
	[18] = "Booty Bay, Stranglethorn",
	[19] = "Booty Bay, Stranglethorn",
	[20] = "Grom'gol, Stranglethorn",
	[21] = "New Kargath, Badlands",
	[22] = "Thunder Bluff, Mulgore",
	[23] = "Orgrimmar, Durotar",
	[24] = "Generic, World Target 002",
	[25] = "The Crossroads, Northern Barrens",
	[26] = "Lor'danel, Darkshore",
	[27] = "Rut'theran Village, Teldrassil",
	[28] = "Astranaar, Ashenvale",
	[29] = "Sun Rock Retreat, Stonetalon Mountains",
	[30] = "Westreach Summit, Thousand Needles",
	[31] = "Shadebough, Feralas",
	[32] = "Theramore, Dustwallow Marsh",
	[33] = "Thal'darah Overlook, Stonetalon Mountains",
	[34] = "Transport, Booty Bay",
	[35] = "Transport, Orgrimmar",
	[36] = "Generic, World Target 001",
	[37] = "Nijel's Point, Desolace",
	[38] = "Shadowprey Village, Desolace",
	[39] = "Gadgetzan, Tanaris",
	[40] = "Gadgetzan, Tanaris",
	[41] = "Feathermoon, Feralas",
	[42] = "Camp Mojache, Feralas",
	[43] = "Aerie Peak, The Hinterlands",
	[44] = "Bilgewater Harbor, Azshara",
	[45] = "Nethergarde Keep, Blasted Lands",
	[46] = "Transport, Southshore",
	[47] = "Transport, Grom'gol",
	[48] = "Bloodvenom Post, Felwood",
	[49] = "Moonglade",
	[50] = "Transport, Menethil Harbor",
	[51] = "Transport, Auberdine",
	[52] = "Everlook, Winterspring",
	[53] = "Everlook, Winterspring",
	[54] = "Transport, Feathermoon",
	[55] = "Brackenwall Village, Dustwallow Marsh",
	[56] = "Stonard, Swamp of Sorrows",
	[57] = "Fishing Village, Teldrassil",
	[58] = "Zoram'gar Outpost, Ashenvale",
	[59] = "Dun Baldar, Alterac Valley",
	[60] = "Frostwolf Keep, Alterac Valley",
	[61] = "Splintertree Post, Ashenvale",
	[62] = "Nighthaven, Moonglade",
	[63] = "Nighthaven, Moonglade",
	[64] = "Talrendis Point, Azshara",
	[65] = "Talonbranch Glade, Felwood",
	[66] = "Chillwind Camp, Western Plaguelands",
	[67] = "Light's Hope Chapel, Eastern Plaguelands",
	[68] = "Light's Hope Chapel, Eastern Plaguelands",
	[69] = "Moonglade",
	[70] = "Flame Crest, Burning Steppes",
	[71] = "Morgan's Vigil, Burning Steppes",
	[72] = "Cenarion Hold, Silithus",
	[73] = "Cenarion Hold, Silithus",
	[74] = "Thorium Point, Searing Gorge",
	[75] = "Thorium Point, Searing Gorge",
	[76] = "Revantusk Village, The Hinterlands",
	[77] = "Vendetta Point, Southern Barrens",
	[78] = "Naxxramas",
	[79] = "Marshal's Stand, Un'Goro Crater",
	[80] = "Ratchet, Northern Barrens",
	[82] = "Silvermoon City",
	[83] = "Tranquillien, Ghostlands",
	[84] = "Plaguewood Tower, Eastern Plaguelands",
	[85] = "Northpass Tower, Eastern Plaguelands",
	[86] = "Eastwall Tower, Eastern Plaguelands",
	[87] = "Crown Guard Tower, Eastern Plaguelands",
	[93] = "Blood Watch, Bloodmyst Isle",
	[94] = "The Exodar",
	[99] = "Thrallmar, Hellfire Peninsula",
	[100] = "Honor Hold, Hellfire Peninsula",
	[101] = "Temple of Telhamat, Hellfire Peninsula",
	[102] = "Falcon Watch, Hellfire Peninsula",
	[117] = "Telredor, Zangarmarsh",
	[118] = "Zabra'jin, Zangarmarsh",
	[119] = "Telaar, Nagrand",
	[120] = "Garadar, Nagrand",
	[121] = "Allerian Stronghold, Terokkar Forest",
	[122] = "Area 52, Netherstorm",
	[123] = "Shadowmoon Village, Shadowmoon Valley",
	[124] = "Wildhammer Stronghold, Shadowmoon Valley",
	[125] = "Sylvanaar, Blade's Edge Mountains",
	[126] = "Thunderlord Stronghold, Blade's Edge Mountains",
	[127] = "Stonebreaker Hold, Terokkar Forest",
	[128] = "Shattrath, Terokkar Forest",
	[129] = "Hellfire Peninsula, The Dark Portal",
	[130] = "Hellfire Peninsula, The Dark Portal",
	[139] = "The Stormspire, Netherstorm",
	[140] = "Altar of Sha'tar, Shadowmoon Valley",
	[141] = "Spinebreaker Ridge, Hellfire Peninsula",
	[150] = "Cosmowrench, Netherstorm",
	[151] = "Swamprat Post, Zangarmarsh",
	[156] = "Toshley's Station, Blade's Edge Mountains",
	[159] = "Sanctum of the Stars, Shadowmoon Valley",
	[160] = "Evergrove, Blade's Edge Mountains",
	[163] = "Mok'Nathal Village, Blade's Edge Mountains",
	[164] = "Orebor Harborage, Zangarmarsh",
	[166] = "Emerald Sanctuary, Felwood",
	[167] = "Forest Song, Ashenvale",
	[168] = "Filming",
	[170] = "Quest - Netherwing Ledge - Mine Cart Ride - South - End",
	[172] = "Ogri'La",
	[173] = "Quest - Yarzill Flight Start",
	[176] = "Quest - Howling Fjord Tauren Canoe (Start)",
	[177] = "Quest - Howling Fjord Tauren Canoe (End)",
	[179] = "Mudsprocket, Dustwallow Marsh",
	[180] = "Quest - Dustwallow - Alcaz Survey Start",
	[181] = "Quest - Dustwallow - Alcaz Survey End",
	[183] = "Valgarde Port, Howling Fjord",
	[184] = "Fort Wildervar, Howling Fjord",
	[185] = "Westguard Keep, Howling Fjord",
	[186] = "Quest - Howling Fjord - Flight to the Windrunner - Start",
	[187] = "Quest - Howling Fjord - Flight to the Windrunner - End",
	[188] = "Quest - Howling Fjord - Test at Sea - Start",
	[190] = "New Agamand, Howling Fjord",
	[191] = "Vengeance Landing, Howling Fjord",
	[192] = "Camp Winterhoof, Howling Fjord",
	[193] = "Quest - Howling Fjord - Mission: Plague This! - End",
	[194] = "Quest - Howling Fjord - Mission: Plague This! - Start",
	[195] = "Rebel Camp, Stranglethorn Vale",
	[199] = "Quest - Howling Fjord - McGoyver Start",
	[200] = "Quest - Howling Fjord - McGoyver End",
	[203] = "Quest - Stars' Rest -> Wintergarde",
	[205] = "Zul'Aman, Ghostlands",
	[210] = "Quest - Sunwell Daily - Dead Scar Bombing - End",
	[213] = "Shattered Sun Staging Area",
	[221] = "Amber Ledge, Borean (To Beryl)",
	[222] = "Beryl Point, Borean",
	[225] = "Amber Ledge, Borean (to Coldarra)",
	[226] = "Transitus Shield, Coldarra",
	[232] = "Borean Tundra - Warsong Hold Wolf Start",
	[234] = "Coldarra Ledge, Coldarra",
	[235] = "Transitus Shield, Coldarra (NOT USED)",
	[236] = "Coldarra, Keristrasza to Malygos",
	[239] = "Borean Tundra - Quest - Dusk Start",
	[240] = "Borean Tundra - Quest - Dusk - End",
	[242] = "Quest - Dragonblight - Spiritual Vision - Begin",
	[244] = "Wintergarde Keep, Dragonblight",
	[245] = "Valiance Keep, Borean Tundra",
	[246] = "Fizzcrank Airstrip, Borean Tundra",
	[247] = "Stars' Rest, Dragonblight",
	[248] = "Apothecary Camp, Howling Fjord",
	[249] = "Camp Oneqwah, Grizzly Hills",
	[250] = "Conquest Hold, Grizzly Hills",
	[251] = "Fordragon Hold, Dragonblight",
	[252] = "Wyrmrest Temple, Dragonblight",
	[253] = "Amberpine Lodge, Grizzly Hills",
	[254] = "Venomspite, Dragonblight",
	[255] = "Westfall Brigade, Grizzly Hills",
	[256] = "Agmar's Hammer, Dragonblight",
	[257] = "Warsong Hold, Borean Tundra",
	[258] = "Taunka'le Village, Borean Tundra",
	[259] = "Bor'gorok Outpost, Borean Tundra",
	[260] = "Kor'kron Vanguard, Dragonblight",
	[261] = "Quest - Stars' Rest to Wintergarde End",
	[262] = "Grizzly Hills, Alliance Log Ride Start 01",
	[267] = "Grizzly Hills, Alliance Log Ride Start",
	[269] = "Quest - Westguard Keep to Wintergarde Keep Begin",
	[270] = "Quest - Westguard Keep to Wintergarde Keep End",
	[271] = "Grizzly Hills, Horde Log Ride Start",
	[273] = "Wyrmrest Temple - bottom to top, Dragonblight - Begin",
	[275] = "Wyrmrest Temple - top to bottom, Dragonblight - Begin",
	[277] = "Wyrmrest Temple - top to middle, Dragonblight - Begin",
	[280] = "Wyrmrest Temple - middle to top, Dragonblight - Begin",
	[282] = "Wyrmrest Temple - middle to bottom, Dragonblight - Begin",
	[284] = "Wyrmrest Temple - bottom to middle, Dragonblight - Begin",
	[285] = "Quest - Wintergarde -> Stars' Rest (Start)",
	[287] = "Quest - Valgarde -> Westguard Keep Start",
	[289] = "Amber Ledge, Borean Tundra",
	[290] = "Argent Stand, Zul'Drak",
	[292] = "Flavor - Stormwind Harbor  - Start",
	[294] = "Moa'ki, Dragonblight",
	[295] = "Kamagua, Howling Fjord",
	[296] = "Unu'pe, Borean Tundra",
	[301] = "Quest - Borean Tundra - Check In With Bixie - Begin",
	[303] = "Valiance Landing Camp, Wintergrasp",
	[304] = "The Argent Stand, Zul'Drak",
	[305] = "Ebon Watch, Zul'Drak",
	[306] = "Light's Breach, Zul'Drak",
	[307] = "Zim'Torga, Zul'Drak",
	[308] = "River's Heart, Sholazar Basin",
	[309] = "Nesingwary Base Camp, Sholazar Basin",
	[310] = "Dalaran",
	[311] = "Camp Onequah, Grizzly Hills (Quest)",
	[313] = "Westfall Brigade, Grizzly Hills (Quest)",
	[314] = "Zim'Torga, Zul'Drak (Quest)",
	[315] = "Acherus: The Ebon Hold",
	[316] = "Ebon Hold - Acherus -> Death's Breach Start",
	[318] = "Ebon Hold - Death's Breach -> Acherus Start",
	[320] = "K3, The Storm Peaks",
	[321] = "Frosthold, The Storm Peaks",
	[322] = "Dun Niffelem, The Storm Peaks",
	[323] = "Grom'arsh Crash-Site, The Storm Peaks",
	[324] = "Camp Tunka'lo, The Storm Peaks",
	[325] = "Death's Rise, Icecrown",
	[326] = "Ulduar, The Storm Peaks",
	[327] = "Bouldercrag's Refuge, The Storm Peaks",
	[331] = "Gundrak, Zul'Drak",
	[332] = "Warsong Camp, Wintergrasp",
	[333] = "The Shadow Vault, Icecrown",
	[334] = "The Argent Vanguard, Icecrown",
	[335] = "Crusaders' Pinnacle, Icecrown",
	[336] = "Windrunner's Overlook, Crystalsong Forest",
	[337] = "Sunreaver's Command, Crystalsong Forest",
	[338] = "Blackfathom Camp, Ashenvale",
	[339] = "Grove of the Ancients, Darkshore",
	[340] = "Argent Tournament Grounds, Icecrown",
	[350] = "Hellscream's Watch, Ashenvale",
	[351] = "Stardust Spire, Ashenvale",
	[354] = "The Mor'Shan Ramparts, Ashenvale",
	[356] = "Silverwind Refuge, Ashenvale",
	[358] = "Quest - Icecrown - North Sea Kraken Bombing - Start",
	[359] = "Quest - Icecrown - North Sea Kraken Bombing - End",
	[360] = "Cliffwalker Post, Stonetalon Mountains",
	[361] = "Windshear Hold, Stonetalon Mountains",
	[362] = "Krom'gar Fortress, Stonetalon Mountains",
	[363] = "Malaka'jin, Stonetalon Mountains",
	[364] = "Northwatch Expedition Base Camp, Stonetalon Mountains",
	[365] = "Farwatcher's Glen, Stonetalon Mountains",
	[366] = "Furien's Post, Desolace",
	[367] = "Thargad's Camp, Desolace",
	[368] = "Karnum's Glade, Desolace",
	[369] = "Thunk's Abode, Desolace",
	[370] = "Ethel Rethor, Desolace",
	[383] = "Thondroril River, Eastern Plaguelands",
	[384] = "The Bulwark, Tirisfal",
	[386] = "Mossy Pile, Un'Goro Crater",
	[387] = "Honor's Stand, Southern Barrens",
	[388] = "Northwatch Hold, Southern Barrens",
	[389] = "Fort Triumph, Southern Barrens",
	[390] = "Hunter's Hill, Southern Barrens",
	[391] = "Desolation Hold, Southern Barrens",
	[392] = "CC Prologue - GT - Quest - Vent Horizon - Start",
	[393] = "CC Prologue - GT - Quest - Vent Horizon - End",
	[394] = "CC Prologue - GT - Battle Flight - Start",
	[402] = "Bloodhoof Village, Mulgore",
	[404] = "Durotar - ET - CC Prologue Spy Frog Start",
	[405] = "Durotar - ET - CC Prologue Spy Frog End",
	[438] = "Durotar - ET - CC Prologue Troll Taxi Bat Start",
	[439] = "Durotar - ET - CC Prologue Troll Recruit End",
	[456] = "Dolanaar, Teldrassil",
	[457] = "Darnassus, Teldrassil",
	[458] = "Nozzlepot's Outpost, Northern Barrens",
	[460] = "Brill, Tirisfal Glades",
	[513] = "Fizzle & Pozzik's Speedbarge, Thousand Needles",
	[521] = "Smuggler's Scar, Vashj'ir",
	[522] = "Silver Tide Hollow, Vashj'ir",
	[523] = "Tranquil Wash, Vashj'ir",
	[524] = "Darkbreak Cove, Vashj'ir",
	[525] = "Legion's Rest, Vashj'ir",
	[526] = "Tenebrous Cavern, Vashj'ir",
	[531] = "Dawnrise Expedition, Tanaris",
	[532] = "Gunstan's Dig, Tanaris",
	[536] = "Sen'jin Village, Durotar",
	[537] = "Razor Hill, Durotar",
	[539] = "Bootlegger Outpost, Tanaris",
	[540] = "The Sludgewerks, Stonetalon Mountains",
	[541] = "Mirkfallon Post, Stonetalon Mountains",
	[551] = "Whelgar's Retreat, Wetlands",
	[552] = "Greenwarden's Grove, Wetlands",
	[553] = "Dun Modr, Wetlands",
	[554] = "Slabchisel's Survey, Wetlands",
	[555] = "Farstrider Lodge, Loch Modan",
	[557] = "Shrine of Aviana, Hyjal",
	[558] = "Grove of Aessina, Hyjal",
	[559] = "Nordrassil, Hyjal",
	[565] = "Dreamer's Rest, Feralas",
	[567] = "Tower of Estulan, Feralas",
	[568] = "Camp Ataya, Feralas",
	[569] = "Stonemaul Hold, Feralas",
	[582] = "Goldshire, Elwynn",
	[583] = "Moonbrook, Westfall",
	[584] = "Furlbrow's Pumpkin Farm, Westfall",
	[589] = "Eastvale Logging Camp, Elwynn",
	[590] = "Fort Livingston, Stranglethorn",
	[591] = "Explorers' League Digsite, Stranglethorn",
	[592] = "Hardwrench Hideaway, Stranglethorn",
	[593] = "Bambala, Stranglethorn",
	[594] = "Whisperwind Grove, Felwood",
	[595] = "Wildheart Point, Felwood",
	[596] = "Shalewind Canyon, Redridge",
	[597] = "Irontree Clearing, Felwood",
	[598] = "Marshtide Watch, Swamp of Sorrows",
	[599] = "Bogpaddle, Swamp of Sorrows",
	[600] = "The Harborage, Swamp of Sorrows",
	[601] = "Galen's Fall, Arathi",
	[602] = "Surwich, Blasted Lands",
	[603] = "Sunveil Excursion, Blasted Lands",
	[604] = "Dreadmaul Hold, Blasted Lands",
	[605] = "Voldrin's Hold, Vashj'ir",
	[606] = "Sandy Beach, Vashj'ir",
	[607] = "Sandy Beach, Vashj'ir",
	[608] = "Sandy Beach, Vashj'ir",
	[609] = "Sandy Beach, Vashj'ir",
	[610] = "Stygian Bounty, Vashj'ir",
	[611] = "Voldrin's Hold, Vashj'ir",
	[612] = "Stygian Bounty, Vashj'ir",
	[613] = "Southern Rocketway, Azshara",
	[614] = "Northern Rocketway, Azshara",
	[615] = "Camp Everstill, Redridge",
	[616] = "Gates of Sothann, Hyjal",
	[617] = "Hiri'watha Research Station, The Hinterlands",
	[618] = "Stormfeather Outpost, The Hinterlands",
	[619] = "Kharanos, Dun Morogh",
	[620] = "Gol'Bolar Quarry, Dun Morogh",
	[622] = "Raven Hill, Duskwood",
	[624] = "Azure Watch, Azuremyst Isle",
	[625] = "Fairbreeze Village, Eversong Woods",
	[630] = "Light's Shield Tower, Eastern Plaguelands",
	[631] = "Falconwing Square, Eversong Woods",
	[632] = "Bloodwatcher Point, Badlands",
	[633] = "Dustwind Dig, Badlands",
	[634] = "Dragon's Mouth, Badlands",
	[635] = "Fuselight, Badlands",
	[645] = "Forsaken High Command, Silverpine Forest",
	[646] = "Forsaken Forward Command, Gilneas",
	[649] = "Andorhal, Western Plaguelands",
	[650] = "Andorhal, Western Plaguelands",
	[651] = "The Menders' Stead, Western Plaguelands",
	[652] = "Ramkahen, Uldum",
	[653] = "Oasis of Vir'sar, Uldum",
	[654] = "The Forsaken Front, Silverpine Forest",
	[656] = "Crushblow, Twilight Highlands",
	[657] = "The Gullet, Twilight Highlands",
	[658] = "Vermillion Redoubt, Twilight Highlands",
	[659] = "Bloodgulch, Twilight Highlands",
	[660] = "The Krazzworks, Twilight Highlands",
	[661] = "Dragonmaw Port, Twilight Highlands",
	[662] = "Highbank, Twilight Highlands",
	[663] = "Victor's Point, Twilight Highlands",
	[664] = "Firebeard's Patrol, Twilight Highlands",
	[665] = "Thundermar, Twilight Highlands",
	[666] = "Kirthaven, Twilight Highlands",
	[667] = "Ruins of Southshore, Hillsbrad",
	[668] = "Southpoint Gate, Hillsbrad",
	[669] = "Eastpoint Tower, Hillsbrad",
	[670] = "Strahnbrad, Alterac Mountains",
	[672] = "Hearthglen, Western Plaguelands",
	[673] = "Iron Summit, Searing Gorge",
	[674] = "Schnottz's Landing, Uldum",
	[675] = "Flamestar Post, Burning Steppes",
	[676] = "Chiselgrip, Burning Steppes",
	[681] = "Forsaken Rear Guard, Silverpine Forest",
	[683] = "Valormok, Azshara",
	[781] = "Sanctuary of Malorne, Hyjal",
	[894] = "Grookin Hill, Jade Forest",
	[895] = "Dawn's Blossom, Jade Forest",
	[966] = "Paw'Don Village, Jade Forest",
	[967] = "The Arboretum, Jade Forest",
	[968] = "Jade Temple Grounds, Jade Forest",
	[969] = "Sri-La Village, Jade Forest",
	[970] = "Emperor's Omen, Jade Forest",
	[971] = "Tian Monastery, Jade Forest",
	[972] = "Pearlfin Village, Jade Forest",
	[973] = "Honeydew Village, Jade Forest",
	[984] = "Pang's Stead, Valley of the Four Winds",
	[985] = "Halfhill, Valley of the Four Winds",
	[986] = "Zhu's Watch, Krasarang Wilds",
	[987] = "Thunder Cleft, Krasarang Wilds",
	[988] = "The Incursion, Krasarang Wilds",
	[989] = "Stoneplow, Valley of the Four Winds",
	[990] = "Dawnchaser Retreat, Krasarang Wilds",
	[991] = "Sentinel Basecamp, Krasarang Wilds",
	[992] = "Cradle of Chi-Ji, Krasarang Wilds",
	[993] = "Marista, Krasarang Wilds",
	[1017] = "Binan Village, Kun-Lai Summit",
	[1018] = "Temple of the White Tiger, Kun-Lai Summit",
	[1019] = "Eastwind Rest, Kun-Lai Summit",
	[1020] = "Westwind Rest, Kun-Lai Summit",
	[1021] = "Zouchin Village, Kun-Lai Summit",
	[1022] = "One Keg, Kun-Lai Summit",
	[1023] = "Kota Basecamp, Kun-Lai Summit",
	[1024] = "Shado-Pan Fallback, Kun-Lai Summit",
	[1025] = "Winter's Blossom, Kun-Lai Summit",
	[1029] = "Tavern in the Mists, The Veiled Stair",
	[1052] = "Grassy Cline, Valley of the Four Winds",
	[1053] = "Longying Outpost, Townlong Steppes",
	[1054] = "Gao-Ran Battlefront, Townlong Steppes",
	[1055] = "Rensai's Watchpost, Townlong Steppes",
	[1056] = "Shado-Pan Garrison, Townlong Steppes",
	[1057] = "Shrine of Seven Stars, Vale of Eternal Blossoms",
	[1058] = "Shrine of Two Moons, Vale of Eternal Blossoms",
	[1070] = "Klaxxi'vess, Dread Wastes",
	[1071] = "Soggy's Gamble, Dread Wastes",
	[1072] = "The Sunset Brewgarden, Dread Wastes",
	[1073] = "Serpent's Spine, Vale of Eternal Blossoms",
	[1080] = "Serpent's Overlook, Jade Forest",
	[1090] = "The Briny Muck, Dread Wastes",
	[1115] = "The Lion's Redoubt, Dread Wastes",
	[1117] = "Serpent's Spine, Kun-Lai Summit",
	[1190] = "Lion's Landing, Krasarang Wilds",
	[1195] = "Domination Point, Krasarang Wilds",
	[1221] = "Beeble's Wreck, Isle Of Giants",
	[1222] = "Bozzle's Wreck, Isle Of Giants",
	[1293] = "Tushui Landing, Timeless Isle",
	[1294] = "Huojin Landing, Timeless Isle",
	[1381] = "Embaari Village, Shadowmoon Valley",
	[1382] = "Twilight Glade, Shadowmoon Valley",
	[1383] = "Path of the Light, Shadowmoon Valley",
	[1384] = "Exile's Rise, Shadowmoon Valley",
	[1386] = "Wor'gol, Frostfire Ridge",
	[1387] = "Bladespire Citadel, Frostfire Ridge",
	[1388] = "Throm'Var, Frostfire Ridge",
	[1389] = "Bloodmaul Slag Mines, Frostfire Ridge",
	[1390] = "Stonefang Outpost, Frostfire Ridge",
	[1395] = "Thunder Pass, Frostfire Ridge",
	[1396] = "Darkspear's Edge, Frostfire Ridge",
	[1408] = "Warspear, Ashran",
	[1420] = "Stormshield (Alliance), Ashran",
	[1432] = "Frostwall Garrison, Frostfire Ridge",
	[1440] = "Zangarra, Talador",
	[1441] = "Frostwolf Overlook, Talador",
	[1442] = "Beastwatch, Gorgrond",
	[1443] = "Vol'jin's Pride, Talador",
	[1445] = "Durotan's Grasp, Talador",
	[1447] = "Fort Wrynn (Alliance), Talador",
	[1448] = "Redemption Rise, Talador",
	[1450] = "Shattrath City, Talador",
	[1451] = "Anchorite's Sojourn, Talador",
	[1452] = "Retribution Point, Talador",
	[1453] = "Exarch's Refuge, Talador",
	[1454] = "Exarch's Refuge, Talador",
	[1462] = "Terokkar Refuge, Talador",
	[1467] = "The Draakorium, Shadowmoon Valley",
	[1468] = "Elodor (Alliance), Shadowmoon Valley",
	[1475] = "Socrethar's Rise, Shadowmoon Valley",
	[1476] = "Lunarfall (Alliance), Shadowmoon Valley",
	[1487] = "Axefall, Spires of Arak",
	[1493] = "Southport, Spires of Arak",
	[1502] = "The Ring of Trials, Nagrand",
	[1503] = "Throne of the Elements, Nagrand",
	[1504] = "Wor'var, Nagrand",
	[1505] = "Riverside Post, Nagrand",
	[1506] = "Telaari Station, Nagrand",
	[1507] = "Yrel's Watch, Nagrand",
	[1508] = "Veil Terokk, Spires of Arak",
	[1509] = "Talon Watch, Spires of Arak",
	[1510] = "Pinchwhistle Gearworks, Spires of Arak",
	[1511] = "Bastion Rise, Gorgrond",
	[1512] = "Bastion Rise, Gorgrond",
	[1513] = "Apexis Excavation, Spires of Arak",
	[1514] = "Evermorn Springs, Gorgrond",
	[1515] = "Crow's Crook, Spires of Arak",
	[1518] = "Wildwood Wash, Gorgrond",
	[1519] = "Highpass, Gorgrond",
	[1520] = "Breaker's Crown, Gorgrond",
	[1523] = "Deeproot, Gorgrond",
	[1524] = "Iron Docks, Gorgrond",
	[1528] = "Iron Siegeworks, Frostfire Ridge",
	[1529] = "Darktide Roost, Shadowmoon Valley",
	[1537] = "Shattered Landing, Blasted Lands",
	[1538] = "Shattered Beachhead, Blasted Lands",
	[1539] = "Skysea Ridge, Gorgrond",
	[1556] = "Tranquil Court, Shadowmoon Valley",
	[1559] = "Wolf's Stand, Frostfire Ridge",
	[1567] = "Temple of Karabor, Shadowmoon Valley",
	[1568] = "Everbloom Wilds, Gorgrond",
	[1569] = "Akeeta's Hovel, Shadowmoon Valley",
	[1572] = "Rilzit's Holdfast, Nagrand",
	[1573] = "Nivek's Overlook, Nagrand",
	[1574] = "Joz's Rylaks, Nagrand",
	[1580] = "Everbloom Overlook, Gorgrond",
	[1613] = "Azurewing Repose, Azsuna",
	[1615] = "Challiane's Terrace, Azsuna",
	[1620] = "Lion's Watch, Tanaan Jungle",
	[1621] = "Vol'mar, Tanaan Jungle",
	[1622] = "Illidari Stand, Azsuna",
	[1633] = "Shackle's Den, Azsuna",
	[1643] = "Aktar's Post, Tanaan Jungle",
	[1644] = "The Iron Front, Tanaan Jungle",
	[1645] = "The Iron Front, Tanaan Jungle",
	[1646] = "Vault of the Earth, Tanaan Jungle",
	[1647] = "Malo's Lookout, Tanaan Jungle",
	[1648] = "Sha'naari Refuge, Tanaan Jungle",
	[1673] = "Lorlathil, Val'sharah",
	[1713] = "Bradensbrook, Val'sharah",
	[1719] = "Thunder Totem, Highmountain",
	[1738] = "Cullen's Post, Stormheim",
	[1739] = "Dreadwake's Landing, Stormheim",
	[1741] = "Forsaken Foothold, Stormheim",
	[1742] = "Valdisdall, Stormheim",
	[1744] = "Greywatch, Stormheim",
	[1745] = "Lorna's Watch, Stormheim",
	[1747] = "Skyfire Triage Camp, Stormheim",
	[1753] = "Skyhorn, Highmountain",
	[1754] = "The Witchwood, Highmountain",
	[1755] = "Felbane Camp, Highmountain",
	[1756] = "Shipwreck Cove, Highmountain",
	[1758] = "Obsidian Overlook, Highmountain",
	[1759] = "Ironhorn Enclave, Highmountain",
	[1760] = "Trueshot Lodge, Highmountain",
	[1761] = "Prepfoot, Highmountain",
	[1764] = "Starsong Refuge, Val'sharah",
	[1766] = "Garden of the Moon, Val'sharah",
	[1767] = "Nesingwary, Highmountain",
	[1774] = "Dalaran",
	[1777] = "Sylvan Falls, Highmountain",
	[1778] = "Stonehoof Watch, Highmountain",
	[1815] = "The Dreamgrove, Val'sharah",
	[1837] = "Wardens' Redoubt, Azsuna",
	[1838] = "Thorim's Peak",
	[1839] = "Nastrondir",
	[1840] = "Eastern Suramar",
	[1841] = "Western Suramar",
	[1845] = "Isle of the Watchers",
	[1846] = "Faronaar",
	[1847] = "The Dreamgrove",
	[1848] = "Trueshot Lodge",
	[1849] = "Dalaran",
	[1850] = "Eastern Highmountain",
	[1855] = "Shield's Rest, Stormheim",
	[1856] = "Vengeance Point, Broken Shore",
	[1857] = "Stormtorn Foothills, Stormheim",
	[1858] = "Meredil, Suramar",
	[1859] = "Felblaze Ingress, Azsuna",
	[1860] = "Watchers' Aerie, Azsuna",
	[1861] = "Illidari Perch, Azsuna",
	[1862] = "Acherus: The Ebon Hold",
	[1863] = "Hafr Fjall, Stormheim",
	[1870] = "Eye of Azshara, Azsuna",
	[1879] = "Crimson Thicket, Suramar",
	[1880] = "Irongrove Retreat, Suramar",
	[1885] = "Gloaming Reef, Val'sharah",
	[1928] = "Krokul Hovel, Krokuun",
	[1941] = "Deliverance Point, Broken Shore",
	[1942] = "Aalgen Point, Broken Shore",
	[1953] = "Zul'jan, Nazmir",
	[1954] = "Zo'bal Ruins, Nazmir",
	[1955] = "Gloom Hollow, Nazmir",
	[1956] = "Forlorn Ruins, Nazmir",
	[1957] = "Port of Zandalar, Zuldazar",
	[1959] = "The Great Seal",
	[1965] = "Nesingwary's Gameland, Zuldazar",
	[1966] = "Warbeast Kraal, Zuldazar",
	[1967] = "Shattered Fields, Krokuun",
	[1974] = "Xibala, Zuldazar",
	[1975] = "Zeb'ahari, Zuldazar",
	[1976] = "Destiny Point, Krokuun",
	[1978] = "Conservatory of the Arcane, Eredath",
	[1981] = "Shadowguard Incursion, Eredath",
	[1982] = "Triumvirate's End, Eredath",
	[1988] = "Hope's Landing, Antoran Wastes",
	[1991] = "Prophet's Reflection, Eredath",
	[1992] = "Light's Purchase, Antoran Wastes",
	[1993] = "The Veiled Den, Antoran Wastes",
	[2003] = "City Center, Eredath",
	[2009] = "Warport Rastari, Zuldazar",
	[2012] = "Xibala, Zuldazar",
	[2023] = "Freehold, Tiragarde Sound",
	[2027] = "Temple of the Prophet, Zuldazar",
	[2033] = "Fallhaven, Drustvar",
	[2034] = "Hangman's Point, Drustvar",
	[2035] = "Fletcher's Hollow, Drustvar",
	[2037] = "Barbthorn Ridge, Drustvar",
	[2042] = "Vigil Hill, Tiragarde Sound",
	[2045] = "Garden of the Loa, Zuldazar",
	[2046] = "Atal'Dazar, Zuldazar",
	[2052] = "Anglepoint Wharf, Tiragarde Sound",
	[2053] = "Old Drust Road, Tiragarde Sound",
	[2054] = "Firebreaker Expedition, Tiragarde Sound",
	[2055] = "Southwind Station, Tiragarde Sound",
	[2056] = "Fallhaven, Drustvar",
	[2057] = "Fletcher's Hollow, Drustvar",
	[2059] = "Southwind Village, Silithus",
	[2060] = "Hatherford, Tiragarde Sound",
	[2061] = "The Sliver, Zuldazar",
	[2062] = "Wolf's Den, Tiragarde Sound",
	[2066] = "Atal'Gral, Zuldazar",
	[2067] = "Timberfell Outpost, Tiragarde Sound",
	[2071] = "Dreadpearl, Zuldazar",
	[2074] = "Bridgeport, Tiragarde Sound",
	[2075] = "Seeker's Outpost, Zuldazar",
	[2076] = "Atal'Gral, Zuldazar",
	[2077] = "Castaway Point, Tiragarde Sound",
	[2078] = "Fort Victory, Nazmir",
	[2079] = "Kennings Lodge, Tiragarde Sound",
	[2080] = "Grimwatt's Crash, Nazmir",
	[2083] = "Tradewinds Market, Tiragarde Sound",
	[2084] = "Norwington Estate, Tiragarde Sound",
	[2085] = "Tidecross, Stormsong Valley",
	[2086] = "Brennadam, Stormsong Valley",
	[2087] = "Outrigger Post, Tiragarde Sound",
	[2088] = "Mildenhall Meadery, Stormsong Valley",
	[2089] = "Seekers Vista, Stormsong Valley",
	[2090] = "Hillcrest Pasture, Stormsong Valley",
	[2091] = "Stonetusk Watch, Stormsong Valley",
	[2092] = "Diretusk Hollow, Stormsong Valley",
	[2093] = "Ironmaul Overlook, Stormsong Valley",
	[2094] = "Warfang Hold, Stormsong Valley",
	[2095] = "Shrine of the Storm, Stormsong Valley",
	[2096] = "Tol Dagor, Tiragarde Sound",
	[2097] = "Deadwash, Stormsong Valley",
	[2101] = "The Amber Waves, Stormsong Valley",
	[2102] = "Roughneck Camp, Tiragarde Sound",
	[2104] = "Eastpoint Station, Tiragarde Sound",
	[2105] = "Tradewinds Market, Tiragarde Sound",
	[2106] = "Arom's Stand, Drustvar",
	[2107] = "Watchman's Rise, Drustvar",
	[2108] = "Falconhurst, Drustvar",
	[2109] = "Whitegrove Chapel, Drustvar",
	[2110] = "Shatterstone Harbor, Vol'dun",
	[2111] = "Vorrik's Sanctum, Vol'dun",
	[2112] = "Vulture's Nest, Vol'dun",
	[2114] = "Deadwood Cove, Vol'dun",
	[2117] = "Vulpera Hideaway, Vol'dun",
	[2118] = "Temple of Akunda, Vol'dun",
	[2119] = "Sanctuary of the Devoted, Vol'dun",
	[2120] = "Tortaka Refuge, Vol'dun",
	[2126] = "Scaletrader Post, Zuldazar",
	[2127] = "Anyport, Drustvar",
	[2133] = "Shrine of the Storm, Stormsong Valley",
	[2135] = "Krazzlefrazz Outpost, Drustvar",
	[2137] = "Millstone Hamlet, Stormsong Valley",
	[2138] = "Fort Daelin, Stormsong Valley",
	[2139] = "Windfall Cavern, Stormsong Valley",
	[2140] = "Plunder Harbor, Tiragarde Sound",
	[2143] = "Scorched Sands Outpost, Vol'dun",
	[2144] = "Goldtusk Inn, Vol'dun",
	[2145] = "Verdant Hollow, Zuldazar",
	[2147] = "Castaway Encampment, Zuldazar",
	[2148] = "Mugamba Overlook, Zuldazar",
	[2153] = "Mistvine Ledge, Zuldazar",
	[2157] = "Veiled Grotto, Zuldazar",
	[2161] = "Redfield's Watch, Nazmir",
	[2162] = "Devoted Sanctuary, Vol'dun",
	[2164] = "Isle of Fangs, Zuldazar",
	[2165] = "Tusk Isle, Zuldazar",
	[2273] = "Waning Glacier, Tiragarde Sound",
	[2274] = "Swiftwind Post, Drustvar",
	[2275] = "Mudfisher Cove, Drustvar",
	[2276] = "Tol Dagor, Tiragarde Sound",
	[2277] = "Proudmoore Keep, Tiragarde Sound",
	[2278] = "Mariner's Row, Tiragarde Sound",
	[2279] = "Stonefist Watch, Tiragarde Sound",
	[2381] = "The Mugambala, Zuldazar",
	[2395] = "Oribos",
	[2398] = "Bleak Redoubt, Maldraxxus",
	[2401] = "Alliance Outpost, Exile's Reach Outpost",
	[2402] = "Ogre Citadel, Exile's Reach Island",
	[2403] = "Kelya's Grave",
	[2404] = "Newhome",
	[2405] = "Zin'Azshari",
	[2406] = "Elun'alor Temple",
	[2407] = "Utama's Stand",
	[2408] = "Mezzamere",
	[2409] = "Wreck of the Old Blanchy",
	[2410] = "Ashen Strand",
	[2411] = "Ashen Strand",
	[2412] = "Wreck of the Hungry Riverbeast",
	[2437] = "Ekka's Hideaway",
	[2441] = "Prospectus Bay, Mechagon",
	[2442] = "Overspark Expedition Camp, Mechagon",
	[2482] = "The Tidal Conflux",
	[2483] = "The Tidal Conflux",
	[2488] = "Darkhaven, Revendreth",
	[2511] = "Sanctuary of the Mad, Revendreth",
	[2512] = "Halls of Atonement, Revendreth",
	[2513] = "Old Gate, Revendreth",
	[2514] = "Pridefall Hamlet, Revendreth",
	[2515] = "Dominance Keep, Revendreth",
	[2517] = "Menagerie of the Master, Revendreth",
	[2518] = "Wanecrypt Hill, Revendreth",
	[2519] = "Aspirant's Rest, Bastion",
	[2520] = "Sagehaven, Bastion",
	[2528] = "Elysian Hold, Bastion",
	[2529] = "Hero's Rest, Bastion",
	[2530] = "Dreamsong Fenn, Ardenweald",
	[2537] = "Charred Ramparts, Revendreth",
	[2544] = "Mistfall Village, Vale of Eternal Blossoms",
	[2548] = "Sinfall, Revendreth",
	[2555] = "The Maw",
	[2558] = "The Spearhead, Maldraxxus",
	[2559] = "Spider's Watch, Maldraxxus",
	[2560] = "Keres' Rest, Maldraxxus",
	[2561] = "Renounced Bastille, Maldraxxus",
	[2564] = "Theater of Pain, Maldraxxus",
	[2565] = "Starlit Overlook, Ardenweald",
	[2569] = "Plague Watch, Maldraxxus",
	[2584] = "Glitterfall Basin, Ardenweald",
	[2585] = "Tirna Vaal, Ardenweald",
	[2586] = "Hibernal Hollow, Ardenweald",
	[2587] = "Heart of the Forest, Ardenweald",
	[2588] = "Root-Home, Ardenweald",
	[2589] = "Claw's Edge, Ardenweald",
	[2590] = "Refugee Camp, Ardenweald",
	[2625] = "Elysian Hold, Bastion",
	[2626] = "Hero's Rest, Bastion",
	[2630] = "Aspirant's Rest, Bastion",
	[2631] = "Xandaria's Vigil, Bastion",
	[2632] = "Sagehaven, Bastion",
	[2633] = "Temple of Purity, Bastion",
	[2634] = "Seat of Eternal Hymns, Bastion",
	[2635] = "Temple of Humility, Bastion",
	[2636] = "Terrace of the Collectors, Bastion",
	[2680] = "Terrace of the Collectors, Bastion",
	[2698] = "Keeper's Respite, Korthia",
	[2700] = "Ve'nari's Refuge, The Maw",
	[2703] = "Tazavesh, the Veiled Market",
	[2773] = "Azure Archives, Azure Span",
	[2774] = "Camp Antonidas, Azure Span",
	[2775] = "Iskaara, Azure Span",
	[2784] = "Camp Nowhere, Azure Span",
	[2786] = "Rhonin's Shield, Azure Span",
	[2787] = "Cobalt Assembly, Azure Span",
	[2788] = "Theron's Watch, Azure Span",
	[2789] = "Three-Falls Lookout, Azure Span",
	[2790] = "Timberstep Outpost, Ohn'ahran Plains",
	[2792] = "Maruukai, Ohn'ahran Plains",
	[2793] = "Forkriver Crossing, Ohn'ahran Plains",
	[2794] = "Teerakai, Ohn'ahran Plains",
	[2795] = "Broadhoof Outpost, Ohn'ahran Plains",
	[2796] = "Shady Sanctuary, Ohn'ahran Plains",
	[2797] = "Emberwatch, Ohn'ahran Plains",
	[2798] = "Pinewood Post, Ohn'ahran Plains",
	[2799] = "Rusza'thar Reach, Ohn'ahran Plains",
	[2800] = "Uktulut Outpost, The Waking Shores",
	[2801] = "Apex Observatory, The Waking Shores",
	[2802] = "Obsidian Throne, The Waking Shores",
	[2803] = "Uktulut Pier, The Waking Shores",
	[2804] = "Uktulut Backwater, The Waking Shores",
	[2808] = "Obsidian Bulwark, The Waking Shores",
	[2809] = "Dragonscale Basecamp, The Waking Shores",
	[2810] = "Valdrakken, Thaldraszus",
	[2811] = "Gelikyr Post, Thaldraszus",
	[2812] = "Temporal Conflux, Thaldraszus",
	[2813] = "Algeth'era, Thaldraszus",
	[2814] = "Veiled Ossuary, Thaldraszus",
	[2815] = "Garden Shrine, Thaldraszus",
	[2816] = "Shifting Sands, Thaldraszus",
	[2818] = "Vault of the Incarnates, Thaldraszus",
	[2825] = "Ohn'iri Springs, Ohn'ahran Plains",
	[2834] = "Eon's Fringe, Thaldraszus",
	[2836] = "Algeth'era, Thaldraszus",
	[2837] = "Vakthros, Azure Span",
	[2838] = "Cobalt Assembly, Azure Span",
	[2839] = "Rusza'thar Reach, Ohn'ahran Plains",
	[2840] = "Shady Sanctuary, Ohn'ahran Plains",
	[2841] = "Skytop Observatory, The Waking Shores",
	[2842] = "Rubyscale Outpost, The Waking Shores",
	[2855] = "Morqut Village, The Forbidden Reach",
	[2862] = "Morqut Islet, Forbidden Reach",
}