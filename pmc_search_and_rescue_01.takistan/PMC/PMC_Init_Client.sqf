
// move the crash_team to downed helo
{
	_x setPos PMC_crash_site_location;
} forEach units crash_team;

// set debug marker in the downed helo
"crash_site" setMarkerPos PMC_crash_site_location;

[] execVM "PMC\PMC_Briefing.sqf";
