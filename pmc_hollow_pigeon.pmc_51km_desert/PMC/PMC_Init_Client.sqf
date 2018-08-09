
[] execVM "PMC\PMC_Briefing.sqf";

/*
diag_log format["Going into init.sqf waituntil! PMC_crash_site_location: %1", PMC_crash_site_location];
player sideChat format["Going into init.sqf waituntil! PMC_crash_site_location: %1", PMC_crash_site_location];

// wait until we have the crash site variable from server
waitUntil
{
	(!isNil "PMC_crash_site_location");
};

diag_log format["Returned from waituntil! PMC_crash_site_location: %1", PMC_crash_site_location];
player sideChat format["Returned from waituntil! PMC_crash_site_location: %1", PMC_crash_site_location];

diag_log format["%1", units crash_team];
player sideChat format["%1", units crash_team];
*/

/*
for some unknown reason when this code works OK in chernarus, it doesnt in PMC 51km Desert. The only way
it works is to add that stupid sleep delay at mission start.
*/
sleep 0.5;

// move the crash_team to downed helo
{
	_x setPos [(PMC_crash_site_location select 0) + 20, (PMC_crash_site_location select 1) + 20, 0];
//	diag_log format["_x pos is: %1", getPosASL _x];
//	player sideChat format["_x pos is: %1", getPosASL _x];
} forEach units crash_team;

//diag_log format["Executed setPos for crash_team. position is %1 and isServer: %2", PMC_crash_site_location, isServer];
//player sideChat format["Executed setPos for crash_team. position is %1 and isServer: %2", PMC_crash_site_location, isServer];
