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
}