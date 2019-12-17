
[] execVM "PMC\PMC_Briefing.sqf";

/*
diag_log format["PMC_Init_Client; Going into init.sqf waituntil! PMC_crash_site_location: %1", PMC_crash_site_location];
player sideChat format["Going into init.sqf waituntil! PMC_crash_site_location: %1", PMC_crash_site_location];

// wait until we have the crash site variable from server
waitUntil
{
	(!isNil "PMC_crash_site_location");
};

diag_log format["PMC_Init_Client; Returned from waituntil! PMC_crash_site_location: %1", PMC_crash_site_location];
player sideChat format["Returned from waituntil! PMC_crash_site_location: %1", PMC_crash_site_location];

diag_log format["PMC_Init_Client; %1", units crash_team];
player sideChat format["%1", units crash_team];
*/

/*
for some unknown reason when this code works OK in chernarus, it doesnt in PMC 51km Desert. The only way
it works is to add that stupid sleep delay at mission start.
sleep 0.5;
*/

// move the downed pilots to downed helo
if (!isNil "pmc_downed_pilot_1") then
{
	pmc_downed_pilot_1 setPos [(PMC_crash_site_location select 0) + 20, (PMC_crash_site_location select 1) + 20, 0];
};

if (!isNil "pmc_downed_pilot_2") then
{
	pmc_downed_pilot_2 setPos [(PMC_crash_site_location select 0) + 20, (PMC_crash_site_location select 1) + 20, 0];
};

if (!isNil "pmc_downed_pilot_3") then
{
	pmc_downed_pilot_3 setPos [(PMC_crash_site_location select 0) + 20, (PMC_crash_site_location select 1) + 20, 0];
};

if (!isNil "pmc_downed_pilot_4") then
{
	pmc_downed_pilot_4 setPos [(PMC_crash_site_location select 0) + 20, (PMC_crash_site_location select 1) + 20, 0];
};

//	diag_log format["PMC_Init_Client; _x pos is: %1", getPosASL _x];
//	player sideChat format["_x pos is: %1", getPosASL _x];

//diag_log format["PMC_Init_Client; Executed setPos for crash_team. position is %1 and isServer: %2", PMC_crash_site_location, isServer];
//player sideChat format["Executed setPos for crash_team. position is %1 and isServer: %2", PMC_crash_site_location, isServer];
