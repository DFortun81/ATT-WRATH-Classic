do
local appName, app = ...;
local DESCRIPTION_SEPARATOR = "`";

-- Performance Cache
local ipairs, tinsert, pairs, rawset, rawget
	= ipairs, tinsert, pairs, rawset, rawget;
local classIndex, raceIndex, factionID = app.ClassIndex, app.RaceIndex, app.FactionID;

-- Helper Functions
local contains = app.contains;

-- Local Variables
local fieldCache, _cache = {};
local currentMaps = {};
local fieldCache_g,fieldCache_f;
local function CacheField(group, field, value)
	fieldCache_g = fieldCache[field];
	fieldCache_f = fieldCache_g[value];
	if fieldCache_f then
		tinsert(fieldCache_f, group);
	else
		fieldCache_g[value] = {group};
	end
end

-- These are the fields we store.
for w,f in ipairs({
	"achievementID",
	"creatureID",
	"currencyID",
	"currencyIDAsCost",
	"explorationID",
	"factionID",
	"flightPathID",
	"headerID",
	"illusionID",
	"itemID",
	"itemIDAsCost",
	"mapID",
	"objectID",
	"questID",
	"requireSkill",
	"sourceQuestID",
	"speciesID",
	"spellID",
	"tierID",
	"titleID",
	"toyID"
}) do
	fieldCache[f] = {};
end
fieldCache["npcID"] = fieldCache.creatureID;
local cacheCreatureID = function(group, value)
	if value > 0 then
		CacheField(group, "creatureID", value);
	end
end;
local cacheMapID = function(group, mapID)
	local count = currentMaps[mapID] or 0;
	if count == 0 then
		currentMaps[mapID] = 1;
		CacheField(group, "mapID", mapID);
	else
		currentMaps[mapID] = count + 1;
	end
	return true;
end;
local cacheObjectID = function(group, value)
	-- WARNING: DEV ONLY START
	if not app.ObjectNames[value] then
		print("Object Missing Name ", value);
		app.ObjectNames[value] = "Object #" .. value;
	end
	-- WARNING: DEV ONLY END
	CacheField(group, "objectID", value);
end;
local uncacheMap = function(group, mapID, field)
	local count = currentMaps[mapID] or 0;
	if count > 0 then
		currentMaps[mapID] = count - 1;
	end
end;
local mapKeyConverters = {
	["mapID"] = uncacheMap,
	["maps"] = function(group, maps)
		for _,mapID in ipairs(maps) do
			uncacheMap(group, mapID);
		end
	end,
	["coord"] = function(group, coord)
		if coord[3] and not (group.instanceID or group.mapID or group.objectiveID) then
			uncacheMap(group, coord[3]);
		end
	end,
	["coords"] = function(group, coords)
		if not (group.instanceID or group.mapID or group.objectiveID) then
			for i,coord in ipairs(coords) do
				if coord[3] then uncacheMap(group, coord[3]); end
			end
		end
	end,
};
local fieldConverters = {
	-- Simple Converters
	["achievementID"] = function(group, value)
		CacheField(group, "achievementID", value);
	end,
	["achID"] = function(group, value)
		CacheField(group, "achievementID", value);
	end,
	["altAchID"] = function(group, value)
		CacheField(group, "achievementID", value);
	end,
	["creatureID"] = cacheCreatureID,
	["currencyID"] = function(group, value)
		CacheField(group, "currencyID", value);
	end,
	["explorationID"] = function(group, value)
		CacheField(group, "explorationID", value);
	end,
	["factionID"] = function(group, value)
		CacheField(group, "factionID", value);
	end,
	["flightPathID"] = function(group, value)
		CacheField(group, "flightPathID", value);
	end,
	["headerID"] = function(group, value)
		CacheField(group, "headerID", value);
	end,
	["illusionID"] = function(group, value)
		CacheField(group, "illusionID", value);
	end,
	["itemID"] = function(group, value)
		if group.isToy then CacheField(group, "toyID", value); end
		CacheField(group, "itemID", value);
	end,
	["mapID"] = cacheMapID,
	["npcID"] = cacheCreatureID,
	["objectID"] = cacheObjectID,
	["questID"] = function(group, value)
		CacheField(group, "questID", value);
	end,
	["requireSkill"] = function(group, value)
		CacheField(group, "requireSkill", value);
	end,
	["speciesID"] = function(group, value)
		CacheField(group, "speciesID", value);
	end,
	["spellID"] = function(group, value)
		CacheField(group, "spellID", value);
	end,
	["tierID"] = function(group, value)
		CacheField(group, "tierID", value);
	end,
	["titleID"] = function(group, value)
		CacheField(group, "titleID", value);
	end,
	
	-- Complex Converters
	["altQuests"] = function(group, value)
		for i=1,#value,1 do
			CacheField(group, "questID", value[i]);
		end
	end,
	["crs"] = function(group, value)
		for i=1,#value,1 do
			cacheCreatureID(group, value[i]);
		end
	end,
	["qgs"] = function(group, value)
		for i=1,#value,1 do
			cacheCreatureID(group, value[i]);
		end
	end,
	["titleIDs"] = function(group, value)
		for i=1,#value,1 do
			CacheField(group, "titleID", value[i]);
		end
	end,
	["providers"] = function(group, value)
		for i=1,#value,1 do
			local v = value[i];
			if v[2] > 0 then
				if v[1] == "n" then
					cacheCreatureID(group, v[2]);
				elseif v[1] == "i" then
					CacheField(group, "itemIDAsCost", v[2]);
				elseif v[1] == "o" then
					cacheObjectID(group, v[2]);
				end
			end
		end
	end,
	["maps"] = function(group, value)
		for i=1,#value,1 do
			cacheMapID(group, value[i]);
		end
		return true;
	end,
	["coord"] = function(group, coord)
		if coord[3] and not (group.instanceID or group.mapID or group.objectiveID) then
			cacheMapID(group, coord[3]);
			return true;
		end
	end,
	["coords"] = function(group, coords)
		if not (group.instanceID or group.mapID or group.objectiveID) then
			for i,coord in ipairs(coords) do
				if coord[3] then cacheMapID(group, coord[3]); end
			end
			return true;
		end
	end,
	["cost"] = function(group, value)
		if type(value) == "number" then
			return;
		else
			for i=1,#value,1 do
				local v = value[i];
				if v[2] > 0 then
					if v[1] == "i" then
						CacheField(group, "itemIDAsCost", v[2]);
					elseif v[1] == "o" then
						cacheObjectID(group, v[2]);
					elseif v[1] == "c" then
						CacheField(group, "currencyIDAsCost", v[2]);
					end
				end
			end
		end
	end,
	["c"] = function(group, value)
		if not contains(value, classIndex) then
			group.nmc = true; -- "Not My Class"
		end
	end,
	["r"] = function(group, value)
		if value ~= factionID then
			group.nmr = true;	-- "Not My Race"
		end
	end,
	["races"] = function(group, value)
		if not contains(value, raceIndex) then
			group.nmr = true;	-- "Not My Race"
		end
	end,
	["sourceQuests"] = function(group, value)
		for i=1,#value,1 do
			CacheField(group, "sourceQuestID", value[i]);
		end
	end,
};

local function _CacheFields(group)
	local n = 0;
	local clone, mapKeys, key, value, hasG = {};
	for key,value in pairs(group) do
		if key == "g" then
			hasG = true;
		else
			n = n + 1
			clone[n] = key;
		end
	end
	for i=1,n,1 do
		key = clone[i];
		_cache = fieldConverters[key];
		if _cache then
			value = group[key];
			if _cache(group, value) then
				if not mapKeys then mapKeys = {}; end
				mapKeys[key] = value;
			end
		end
	end
	if hasG then
		for i,subgroup in ipairs(group.g) do
			_CacheFields(subgroup);
		end
	end
	if mapKeys then
		for key,value in pairs(mapKeys) do
			mapKeyConverters[key](group, value);
		end
	end
end
local function CacheFields(group)
	wipe(currentMaps);
	_CacheFields(group);
	wipe(currentMaps);
	return group;
end


-- This data type requires additional processing.
fieldConverters.otherQuestData = function(group, value)
	_CacheFields(value);
end

-- Local Functions
local function SearchForFieldRecursively(group, field, value)
	if group.g then
		-- Go through the sub groups and determine if any of them have a response.
		local first = nil;
		for i, subgroup in ipairs(group.g) do
			local g = SearchForFieldRecursively(subgroup, field, value);
			if g then
				if first then
					-- Merge!
					for j,data in ipairs(g) do
						tinsert(first, data);
					end
				else
					-- Cool! (This should be the most common occurance)
					first = g;
				end
			end
		end
		if group[field] == value then
			-- OH BOY, WE FOUND IT!
			if first then
				return tinsert(first, group);
			else
				return { group };
			end
		end
		return first;
	elseif group[field] == value then
		-- OH BOY, WE FOUND IT!
		return { group };
	end
end
local function SearchForFieldContainer(field)
	if field then return fieldCache[field]; end
end
local function SearchForField(field, id)
	_cache = SearchForFieldContainer(field);
	if _cache and id then return _cache[id], field, id; end
end

-- External API Functions
app.CacheField = CacheField;
app.CacheFields = CacheFields;
app.SearchForFieldRecursively = SearchForFieldRecursively;
app.SearchForFieldContainer = SearchForFieldContainer;
app.SearchForField = SearchForField;
end