
// move the crash_team to downed helo
{
	_x setPos [(PMC_crash_site_location select 0) + 20, (PMC_crash_site_location select 1) + 20, 0];
} forEach units crash_team;

[] execVM "PMC\PMC_Briefing.sqf";
