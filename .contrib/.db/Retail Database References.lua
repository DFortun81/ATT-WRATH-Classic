-- Dungeons & Raids
-- #IMPORT: 01 - Dungeons Raids\\01 - Classic\\
-- #IMPORT: 01 - Dungeons Raids\\02 - Burning Crusade\\
-- #IMPORT: 01 - Dungeons Raids\\03 - Wrath of the Lich King\\

-- Outdoor Zones
-- Kalimdor
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\0 - Metadata.lua
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\03 The Exodar\\The Exodar.lua
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\Azuremyst Isle\\Azuremyst Isle.lua
-- #IMPORT: 02 - Outdoor Zones\\01 Kalimdor\\Bloodmyst Isle\\Bloodmyst Isle.lua
root("Zones", m(KALIMDOR, {
	["OnUpdate"] = [[function(t) table.sort(t.g, function (a, b) return string.lower(a.isRaid and (" " .. a.text) or a.text) < string.lower(b.isRaid and (" " .. b.text) or b.text) end)  end]],
}));

-- Eastern Kingdoms
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\0 - Metadata.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\1 - Ironforge.lua
-- #IMPORT: 02 - Outdoor Zones\\02 Eastern Kingdoms\\1 - Silvermoon City.lua
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
-- #IMPORT: 21 - Holidays\\07 - Brewfest\\Brewfest.lua
-- #IMPORT: 21 - Holidays\\04 - Children's Week\\Children's Week.lua
-- #IMPORT: 21 - Holidays\\10 - Day of the Dead\\Day of the Dead.lua
-- #IMPORT: 21 - Holidays\\12 - Feast of Winter Veil\\Feast of Winter Veil.lua
-- #IMPORT: 21 - Holidays\\09 - Hallow's End\\Hallow's End.lua
-- #IMPORT: 21 - Holidays\\08 - Harvest Festival\\Harvest Festival.lua
-- #IMPORT: 21 - Holidays\\02 - Love is in the Air\\Love is in the Air.lua
-- #IMPORT: 21 - Holidays\\01 - Lunar Festival\\Lunar Festival.lua
-- #IMPORT: 21 - Holidays\\05 - Midsummer Fire Festival\\Midsummer Fire Festival.lua
-- #IMPORT: 21 - Holidays\\03 - Noblegarden\\Noblegarden.lua
-- #IMPORT: 21 - Holidays\\11 - Pilgrim's Bounty\\Pilgrim's Bounty.lua
-- #IMPORT: 21 - Holidays\\06 Pirates' Day.lua
-- #IMPORT: 21 - Holidays\\00b - Stranglethorn Fishing Extravaganza\\Stranglethorn Fishing Extravaganza.lua

-- Expansion Features
-- #IMPORT: 06 - Expansion Features\\02 Wrath of the Lich King\\Argent Tournament.lua

-- World Events
-- #IMPORT: 07 - Events\\The Ahn'Qiraj War Effort\\The Ahn'Qiraj War Effort.lua
-- #IMPORT: 07 - Events\\The Opening of the Dark Portal\\The Opening of the Dark Portal.lua
-- #IMPORT: 07 - Events\\The Scepter of the Shifting Sands\\The Scepter of the Shifting Sands.lua
-- #IMPORT: 07 - Events\\The Scourge Invasion\\The Scourge Invasion.lua
-- #IMPORT: 07 - Events\\The Silithyst Must Flow\\The Silithyst Must Flow.lua
-- #IMPORT: 07 - Events\\WoW Anniversary\\04th Anniversary.lua
-- #IMPORT: 07 - Events\\WoW Anniversary\\05th Anniversary.lua
-- #IMPORT: 07 - Events\\WoW Anniversary\\06th Anniversary.lua
-- #IMPORT: 07 - Events\\WoW Anniversary\\07th Anniversary.lua
-- #IMPORT: 07 - Events\\WoW Anniversary\\08th Anniversary.lua

-- Craftables
-- #IMPORT: 10 - Craftables\\01 - Classic.lua
-- #IMPORT: 10 - Craftables\\02 - Burning Crusade.lua
-- #IMPORT: 10 - Craftables\\03 - Wrath of the Lich King.lua

-- Professions
-- #IMPORT: 11 - Professions\\Beast Training\\Beast Training.lua
-- #IMPORT: 11 - Professions\\Cooking\\Cooking.lua
-- #IMPORT: 11 - Professions\\First Aid\\First Aid.lua
-- #IMPORT: 11 - Professions\\Fishing\\Fishing.lua
-- #IMPORT: 11 - Professions\\Herbalism\\Herbalism.lua
-- #IMPORT: 11 - Professions\\Inscription\\Inscription.lua
-- #IMPORT: 11 - Professions\\Jewelcrafting\\Jewelcrafting.lua
-- #IMPORT: 11 - Professions\\Lockpicking\\Lockpicking.lua
-- #IMPORT: 11 - Professions\\Mining\\Mining.lua
-- #IMPORT: 11 - Professions\\Poisons\\Poisons.lua
-- #IMPORT: 11 - Professions\\Runeforging\\Runeforging.lua
-- #IMPORT: 11 - Professions\\Skinning\\Skinning.lua

-- Promotions
-- #IMPORT: 12 - Promotions\\BlizzCon.lua
-- #IMPORT: 12 - Promotions\\Collector's Editions.lua
-- #IMPORT: 12 - Promotions\\Diablo 20th Anniversary.lua
-- #IMPORT: 12 - Promotions\\Hearthstone.lua
-- #IMPORT: 12 - Promotions\\Heroes of the Storm.lua
-- #IMPORT: 12 - Promotions\\iCoke.lua
-- #IMPORT: 12 - Promotions\\Miscellaneous.lua
-- #IMPORT: 12 - Promotions\\Recruit A Friend.lua
-- #IMPORT: 12 - Promotions\\Scroll of Resurrection.lua
-- #IMPORT: 12 - Promotions\\Spirit of Competition.lua
-- #IMPORT: 12 - Promotions\\Trading Card Game.lua
-- #IMPORT: 12 - Promotions\\Warcraft Movie.lua

-- #IMPORT: 13 - In-Game Shop\\

-- PvP
root("PVP", n(-32, {	-- Honor Titles
	["timeline"] = {
		"added 1.11.1.6692",
		"removed 2.0.0.13287"
	},
	["groups"] = {
		pvprank(1),		-- Private / Scout
		pvprank(2),		-- Corporal / Grunt
		pvprank(3),		-- Sergeant / Sergeant
		pvprank(4),		-- Master Sergeant / Senior Sergeant
		pvprank(5),		-- Sergeant Major / First Sergeant
		pvprank(6),		-- Knight / Stone Guard
		pvprank(7),		-- Knight-Lieutenant / Blood Guard
		pvprank(8),		-- Knight-Captain / Legionnaire
		pvprank(9),		-- Knight-Champion / Centurion
		pvprank(10),	-- Lieutenant Commander / Champion
		pvprank(11),	-- Commander / Lieutenant General
		pvprank(12),	-- Marshal / General
		pvprank(13),	-- Field Marshal / Warlord
		pvprank(14),	-- Grand Marshal / High Warlord
	},
}));
-- #IMPORT: 09 - PvP\\Battlegrounds\\03 Alterac Valley.lua
-- #IMPORT: 09 - PvP\\Battlegrounds\\02 Arathi Basin.lua
-- #IMPORT: 09 - PvP\\Battlegrounds\\04 Eye of the Storm.lua
-- #IMPORT: 09 - PvP\\Battlegrounds\\01 Warsong Gulch.lua
-- #IMPORT: 09 - PvP\\Battlegrounds\\07 Strand of the Ancients.lua
-- #IMPORT: 09 - PvP\\02 The Burning Crusade PvP Seasons.lua
-- #IMPORT: 09 - PvP\\03 Wrath of the Lich King PvP Seasons.lua

-- NYI
-- #IMPORT: 17 - NYI\\NYI Mounts.lua
-- #IMPORT: 17 - NYI\\NYI Recipes.lua
