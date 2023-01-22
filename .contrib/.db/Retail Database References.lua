-- Dungeons & Raids
-- #IMPORT: 01 - Dungeons Raids\\01 - Classic\\
-- #IMPORT: 01 - Dungeons Raids\\02 - Burning Crusade\\
-- #IMPORT: 01 - Dungeons Raids\\03 - Wrath of the Lich King\\

-- Outdoor Zones
-- Kalimdor
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\0 - Metadata.lua
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\1 - Darnassus.lua
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\3 - The Exodar.lua
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\4 - Thunder Bluff.lua
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\Ashenvale.lua
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\Azshara.lua
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\Azuremyst Isle.lua
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\Bloodmyst Isle.lua
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\Caverns of Time.lua
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\Darkshore.lua
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\Desolace.lua
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\Durotar.lua
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\Dustwallow Marsh.lua
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\Felwood.lua
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\Feralas.lua
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\Moonglade.lua
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\Mulgore.lua
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\Stonetalon Mountains.lua
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\Teldrassil.lua
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\Thousand Needles.lua
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\Winterspring.lua
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\Un'goro Crater.lua
root("Zones", m(KALIMDOR, {
	["OnUpdate"] = [[function(t) table.sort(t.g, function (a, b) return string.lower(a.isRaid and (" " .. a.text) or a.text) < string.lower(b.isRaid and (" " .. b.text) or b.text) end)  end]],
}));

-- Eastern Kingdoms
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\0 - Metadata.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\1 - Ironforge.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\1 - Silvermoon City.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\1 - Stormwind City.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\1 - Undercity.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Alterac Mountains.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Arathi Highlands.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Badlands.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Blackrock Mountain.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Blasted Lands.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Burning Steppes.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Deadwind Pass.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Deeprun Tram.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Dun Morogh.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Duskwood.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Eastern Plaguelands.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Elwynn Forest.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Eversong Woods.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Ghostlands.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Hillsbrad Foothills.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Isle of Quel'Danas.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Loch Modan.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Northern Stranglethorn.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Redridge Mountains.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Searing Gorge.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Silverpine Forest.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Stranglethorn Vale.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Swamp of Sorrows.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\The Cape of Stranglethorn.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\The Hinterlands.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Tirisfal Glades.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Western Plaguelands.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Westfall.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\Wetlands.lua
root("Zones", m(EASTERN_KINGDOMS, {
	["OnUpdate"] = [[function(t) table.sort(t.g, function (a, b) return string.lower(a.isRaid and (" " .. a.text) or a.text) < string.lower(b.isRaid and (" " .. b.text) or b.text) end)  end]],
}));

-- Outland & Northrend
-- #IMPORT: 02 - Outdoor Zones\\03 Outland\\
-- #IMPORT: 02 - Outdoor Zones\\04 Northrend\\

-- World Drops
-- #IMPORT: 03 - World Drops\\01 Rooted\\

-- Holidays
-- #IMPORT: 21 - Holidays\\07 - Brewfest\\
-- #IMPORT: 21 - Holidays\\04 - Children's Week\\
-- #IMPORT: 21 - Holidays\\10 - Day of the Dead\\
-- #IMPORT: 21 - Holidays\\12 - Feast of Winter Veil\\
-- #IMPORT: 21 - Holidays\\09 - Hallow's End\\
-- #IMPORT: 21 - Holidays\\08 - Harvest Festival\\
-- #IMPORT: 21 - Holidays\\02 - Love is in the Air\\
-- #IMPORT: 21 - Holidays\\01 - Lunar Festival\\
-- #IMPORT: 21 - Holidays\\05 - Midsummer Fire Festival\\
-- #IMPORT: 21 - Holidays\\03 - Noblegarden\\
-- #IMPORT: 21 - Holidays\\11 - Pilgrim's Bounty\\
-- #IMPORT: 21 - Holidays\\06 Pirates' Day.lua
-- #IMPORT: 21 - Holidays\\00b - Stranglethorn Fishing Extravaganza\\
-- #IMPORT: 21 - Holidays\\Kalu'ak Fishing Derby.lua

-- Expansion Features
-- #IMPORT: 06 - Expansion Features\\01 Burning Crusade\\Achievements.lua
-- #IMPORT: 06 - Expansion Features\\02 Wrath of the Lich King\\Achievements.lua
-- #IMPORT: 06 - Expansion Features\\02 Wrath of the Lich King\\Argent Tournament.lua

-- World Events
-- #IMPORT: 07 - Events\\Elemental Unrest\\
-- #IMPORT: 07 - Events\\Operation Gnomeregan\\
-- #IMPORT: 07 - Events\\The Ahn'Qiraj War Effort\\
-- #IMPORT: 07 - Events\\The Opening of the Dark Portal\\
-- #IMPORT: 07 - Events\\The Scepter of the Shifting Sands\\
-- #IMPORT: 07 - Events\\The Scourge Invasion\\
-- #IMPORT: 07 - Events\\The Silithyst Must Flow\\
-- #IMPORT: 07 - Events\\WoW Anniversary\\04th Anniversary.lua
-- #IMPORT: 07 - Events\\WoW Anniversary\\05th Anniversary.lua
-- #IMPORT: 07 - Events\\WoW Anniversary\\06th Anniversary.lua
-- #IMPORT: 07 - Events\\WoW Anniversary\\07th Anniversary.lua
-- #IMPORT: 07 - Events\\WoW Anniversary\\08th Anniversary.lua
-- #IMPORT: 07 - Events\\Zalazane's Fall\\

-- Craftables
-- #IMPORT: 10 - Craftables\\01 - Classic.lua
-- #IMPORT: 10 - Craftables\\02 - Burning Crusade.lua
-- #IMPORT: 10 - Craftables\\03 - Wrath of the Lich King.lua

-- Professions
-- #IMPORT: 11 - Professions\\

-- Promotions & In-Game Shop
-- #IMPORT: 12 - Promotions\\
-- #IMPORT: 13 - In-Game Shop\\

-- PvP
-- #IMPORT: 09 - PvP\\00 Achievements.lua
-- #IMPORT: 09 - PvP\\Battlegrounds\\
-- #IMPORT: 09 - PvP\\01 Classic PvP.lua
-- #IMPORT: 09 - PvP\\02 The Burning Crusade PvP Seasons.lua
-- #IMPORT: 09 - PvP\\03 Wrath of the Lich King PvP Seasons.lua

-- NYI
-- #IMPORT: 17 - NYI\\NYI Mounts.lua
-- #IMPORT: 17 - NYI\\NYI Recipes.lua
