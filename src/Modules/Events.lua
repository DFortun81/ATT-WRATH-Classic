do
-- CRIEVE NOTE: This file is currently identical in both Retail and Classic.
-- DO NOT TOUCH IT.
local app = select(2, ...);
local L = app.L;

-- Event Variables
local ActiveEvents, EventInformation, NextEventSchedule = {}, {}, {};
local UpcomingEventLeeway = 604800;	-- 604800 is a week. 86400 is a day.
local RemappedEventToMapID = {
	[374] = 1429,	-- Elwynn Forest
	[375] = 1412,	-- Mulgore
	[376] = 1952,	-- Terrokar Forest
};

-- Event Cache
-- Determine if the Calendary is implemented or not.
local isCalendarAvailable = C_Calendar and GetCategoryInfo and GetCategoryInfo(92) ~= "";
local function CreateTimeStamp(t)
	return time({
		year=t.year,
		month=t.month,
		day=t.monthDay,
		hour=t.hour,
		minute=t.minute,
	});
end
local function CreateSchedule(startTime, endTime, t)
	if t then
		t.startTime = startTime;
		t.endTime = endTime;
		t.start = CreateTimeStamp(startTime);
		t["end"] = CreateTimeStamp(endTime);
		return t;
	end
	return {
		["start"] = CreateTimeStamp(startTime),
		["end"] = CreateTimeStamp(endTime),
		["startTime"] = startTime,
		["endTime"] = endTime,
	};
end
local function GetEventCache()
	local now = C_DateAndTime.GetServerTimeLocal();
	local cache = AllTheThingsSavedVariables.EventCache;
	if cache and (cache.lease or 0) > now then
		-- If our cache is still leased, then simply return it.
		return cache;
	end
	
	-- Create a new cache with a week long lease.
	cache = {};
	cache.lease = now + 604800;
	if isCalendarAvailable then
		-- Go back 6 months and then forward to the next year
		local date = C_DateAndTime.GetCurrentCalendarTime();
		C_Calendar.SetAbsMonth(date.month, date.year);
		C_Calendar.SetMonth(-6);
		
		local anyEvents = false;
		for offset=-6,12,1 do
			local monthInfo = C_Calendar.GetMonthInfo(0);
			for day=1,monthInfo.numDays,1 do
				local numEvents = C_Calendar.GetNumDayEvents(0, day);
				if numEvents > 0 then
					for index=1,numEvents,1 do
						local event = C_Calendar.GetDayEvent(0, day, index);
						if event then -- If this is nil, then attempting to index it on the same line will toss an error.
							if event.calendarType == "HOLIDAY" and (not event.sequenceType or event.sequenceType == "" or event.sequenceType == "START") then
								local eventID = event.eventID;
								local remappedID = L.EVENT_REMAPPING[eventID] or eventID;
								if remappedID then
									local t = cache[remappedID];
									if not t then
										t = {
											["name"] = event.title,
											["icon"] = event.iconTexture,
											["times"] = {},
										};
										cache[remappedID] = t;
										anyEvents = true;
									end
									local schedule = CreateSchedule(event.startTime, event.endTime);
									if remappedID ~= eventID then
										schedule.remappedID = eventID;
									end
									tinsert(t.times, schedule);
								end
							end
						end
					end
				end
			end
			C_Calendar.SetMonth(1);
		end
		
		-- Reset Calendar back to last date.
		C_Calendar.SetAbsMonth(date.month, date.year);
		
		-- If there wereany events, let's wipe the active cache tables.
		if anyEvents then
			wipe(NextEventSchedule);
			wipe(ActiveEvents);
		else
			-- If there weren't any events, let's set a short lease.
			cache.lease = now + 5;	-- Wait 5 seconds
		end
	end
	
	-- Save the cache to SavedVariables.
	AllTheThingsSavedVariables.EventCache = cache;
	return cache;
end

-- Event Helpers
setmetatable(EventInformation, { __index = function(t, id)
	local info = GetEventCache()[id];
	if info and info.times then
		t[id] = info;
		return info;
	elseif id == 1271 then	-- EVENTS.TIMEWALKING
		local times = {};
		for i,eventID in ipairs({ 559,562,587,643,1056,1263 }) do
			local subinfo = EventInformation[eventID];
			if subinfo and subinfo.times then
				for j,schedule in ipairs(subinfo.times) do
					schedule.subEventID = eventID;
					tinsert(times, schedule);
				end
			end
		end
		if #times > 0 then
			table.sort(times, function(a, b)
				return a.start < b.start;
			end);
			info = { name = times[1].name, icon = times[1].icon, times = times };
			t[id] = info;
			return info;
		end
	end
	return {};
end });
setmetatable(NextEventSchedule, { __index = function(t, id)
	local info = EventInformation[id];
	if info then
		local times = info.times;
		if times and #times > 0 then
			local now = C_DateAndTime.GetServerTimeLocal();
			local schedule;
			for i,data in ipairs(times) do
				schedule = data;
				if now < data["end"] then
					-- If the event is within the leeway, mark it active
					if now > (data["start"] - UpcomingEventLeeway) then
						ActiveEvents[id] = true;
					end
					break;
				end
			end
			t[id] = schedule;
			return schedule;
		elseif id == 424 then -- EVENTS.KALUAK_FISHING_DERBY
			local startTime = C_DateAndTime.GetCurrentCalendarTime();
			local weekDay = date("*t").wday;
			if weekDay < 7 then
				startTime = C_DateAndTime.AdjustTimeByDays(startTime, 7 - weekDay);
			end
			local schedule = CreateSchedule({
				year=startTime.year,
				month=startTime.month,
				monthDay=startTime.monthDay,
				day=0,
				weekday=7,
				hour=14,
				minute=0,
				second=0,
			},
			{
				year=startTime.year,
				month=startTime.month,
				monthDay=startTime.monthDay,
				day=0,
				weekday=7,
				hour=15,
				minute=0,
				second=0,
			});
			t[id] = schedule;
			return schedule;
		elseif id == 301 then -- EVENTS.STRANGLETHORN_FISHING_EXTRAVAGANZA
			local startTime = C_DateAndTime.GetCurrentCalendarTime();
			local weekDay = date("*t").wday;
			if weekDay > 1 then
				startTime = C_DateAndTime.AdjustTimeByDays(startTime, 8 - weekDay);
			end
			local schedule = CreateSchedule({
				year=startTime.year,
				month=startTime.month,
				monthDay=startTime.monthDay,
				day=0,
				weekday=1,
				hour=14,
				minute=0,
				second=0,
			},
			{
				year=startTime.year,
				month=startTime.month,
				monthDay=startTime.monthDay,
				day=0,
				weekday=1,
				hour=16,
				minute=0,
				second=0,
			});
			t[id] = schedule;
			return schedule;
		end
	end
end });
setmetatable(ActiveEvents, { __index = function(t, id)
	local nextEvent = NextEventSchedule[id];
	if nextEvent and nextEvent.start then
		-- If the event is within the leeway, mark it active
		local now = C_DateAndTime.GetServerTimeLocal();
		if now < nextEvent["end"] and now > (nextEvent["start"] - UpcomingEventLeeway) then
			t[id] = true;
			return true;
		end
	end
	t[id] = false;
	return false;
end });

-- Event Functions & Filters
local function FilterIsEventActive(group)
	if group.e and not ActiveEvents[group.e] then
		return false;
	else
		return true;
	end
end
local function GetEventName(e)
	local info = EventInformation[e];
	if info then
		local name = info.name;
		if not name then
			local headerID;
			name = "Event #" .. e;
			for id,eventID in pairs(L.HEADER_EVENTS) do
				if e == eventID then
					name = L.HEADER_NAMES[id];
					break;
				end
			end
			info.name = name;
		end
		return name;
	end
	return "Event #" .. e;
end
local function GetEventTooltipNoteForGroup(group)
	return L["EVENT_TOOLTIPS"][group.e] or ("|CFF00FFDE" .. L["REQUIRES"] .. "|r`|CFF00FFDE" .. GetEventName(group.e) .. "|r");
end
local function GetEventTimeString(d)
	if d then
		if d.weekday then
			return format("%s, %s %02d, %d at %02d:%02d", 
				CALENDAR_WEEKDAY_NAMES[d.weekday],
				CALENDAR_FULLDATE_MONTH_NAMES[d.month],
				d.monthDay, d.year, d.hour, d.minute );
		else
			return format("%s %02d, %d at %02d:%02d",
				CALENDAR_FULLDATE_MONTH_NAMES[d.month],
				d.monthDay, d.year, d.hour, d.minute );
		end
	end
	return "??";
end
local function GetEventTimeStrings(nextEvent)
	if nextEvent then
		local schedule = {};
		if nextEvent.endTime then
			tinsert(schedule, "Start:`" .. GetEventTimeString(nextEvent.startTime));
			tinsert(schedule, "End:`" .. GetEventTimeString(nextEvent.endTime));
		else
			tinsert(schedule, "Active:`" .. GetEventTimeString(nextEvent.startTime));
		end
		if nextEvent.remappedID then
			local mapID = RemappedEventToMapID[nextEvent.remappedID];
			local info = C_Map.GetMapInfo(mapID);
			tinsert(schedule, "Where:`" .. (info.name or ("Map ID #" .. mapID)));
		end
		return schedule;
	end
end

-- Event API Implementation
-- Access via AllTheThings.Modules.Events
local events = {};
app.Modules.Events = events;
events.CreateSchedule = CreateSchedule;
events.FilterIsEventActive = FilterIsEventActive;
events.GetEventActive = function(eventID)
	return ActiveEvents[eventID];
end;
events.GetEventCache = GetEventCache;	-- This should be executed before GetDataCache, or at the start of GetDataCache.
events.GetEventName = GetEventName;
events.GetEventTimeStrings = GetEventTimeStrings;
events.GetEventTooltipNoteForGroup = GetEventTooltipNoteForGroup;
events.GetEventInformation = function(eventID)
	return EventInformation[eventID];
end;
events.SetEventInformation = function(eventID, info)
	rawset(EventInformation, eventID, info.times and info or { times = info });
end;
events.GetEventNextSchedule = function(eventID)
	return NextEventSchedule[eventID];
end;
events.SetEventNextSchedule = function(eventID, nextEvent)
	rawset(NextEventSchedule, eventID, nextEvent);
end;
events.GetUpcomingEventLeeway = function()
	return UpcomingEventLeeway;
end;
events.SetUpcomingEventLeeway = function(leeway)
	UpcomingEventLeeway = leeway;
	wipe(ActiveEvents);
end;

-- Event Fields (Designed to be used with headers!)
local texcoordForEvents = { 0.0, 0.7109375, 0.0, 0.7109375 };
local fields = {};
fields.name = function(t)
	return L["HEADER_NAMES"][t.headerID] or t.eventInfo.name;
end;
fields.icon = function(t)
	return L["HEADER_ICONS"][t.headerID] or t.eventInfo.icon;
end;
fields.texcoord = function(t)
	if t.icon == t.eventInfo.icon then
		return texcoordForEvents;
	end
end;
fields.eventID = function(t)
	local eventID = L.HEADER_EVENTS[t.headerID];
	if eventID then
		t.eventID = eventID;
		return eventID;
	end
end;
fields.eventInfo = function(t)
	return EventInformation[t.eventID];
end;
fields.nextEvent = function(t)
	return NextEventSchedule[t.eventID];
end;
events.Fields = fields;
end