
[] execVM "PMC\PMC_Set_Mission_Time.sqf";
[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";

[] execVM "PMC\PMC_Tasks.sqf";

PMC_debug = true;
publicVariable "PMC_debug";

// how many times difference sides detected enemies in their territory.
PMC_blufor_detected = 0;
PMC_opfor_detected = 0;
publicVariable "PMC_blufor_detected";
publicVariable "PMC_opfor_detected";
PMC_PlayerRespawns = 0;
publicVariable "PMC_PlayerRespawns";
PMC_InfTransportUsed = 0;
publicVariable "PMC_InfTransportUsed";

waitUntil
{
	(count list pmc_opfor_list > 0);
};

PMC_initial_lists =
[
	count list pmc_opfor_list,
	west countSide list pmc_opfor_list,
	east countSide list pmc_opfor_list,
	('tank' countType list pmc_opfor_list),
	('car' countType list pmc_opfor_list),
	('air' countType list pmc_opfor_list),
	('man' countType list pmc_opfor_list)
];
publicVariable "PMC_initial_lists";

// number of created groups
PMC_grpNum = 0;
publicVariable "PMC_grpNum";

// initialized variables and settings
PMC_killedNum = 0;
publicVariable "PMC_killedNum";

// corpse removal script
PMC_corpses = [];
publicVariable "PMC_corpses";
[150] execVM "PMC\PMC_corpses.sqf";

// add killed script to each of the mission editor placed units
{
	_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
} forEach list pmc_opfor_list;
{
	_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
} forEach list pmc_blufor_list;

// count for opfor
PMC_opfor = 0;
pmc_grp_opfor = 0;

// count for blufor
PMC_blufor = 0;
pmc_grp_blufor = 0;
pmc_inftransport = 0;

call compile preProcessFileLineNumbers "PMC\PMC_Select_Target.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_Patrol_Inf_Waypoints.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_Guard_Inf_Waypoints.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_Sentry_Inf_Waypoints.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_Time_Used_Update.sqf";

// insert all locations into an array
PMC_Locations = [];
PMC_Locations = call compile preprocessFileLineNumbers "PMC\PMC_locationFinder.sqf";
publicVariable "PMC_Locations";

[] execVM "PMC\PMC_Create_Civilian_Empty_Vehicles.sqf";

// here is where our war starts
// check if either side has detected each other, then proceed.
waitUntil
{
	sleep 2;
	((PMC_blufor_detected > 0) || (PMC_opfor_detected > 0) );
};

diag_log format["PMC Terrorist Path WAR HAS STARTED AT %1", diag_tickTime];

[] execVM "PMC\PMC_war_blufor.sqf";
// blufor_airlift_start
// opfor_airlift_start
// blufor_land_start
// opfor_land_start

[] execVM "PMC\PMC_war_opfor.sqf";

// crazy tank thing :)
// disabled for debugging. we use soft_vehicles script now.
//[] execVM "PMC\PMC_Create_Tank_Platoon_OPFOR_T72.sqf";

// delay so we dont stack
//sleep 60;

PMC_CreatingVehiclesBLUFOR = true;
PMC_CreatingVehiclesOPFOR = true;
[] execVM "PMC\PMC_Create_Vehicles_BLUFOR.sqf";
[] execVM "PMC\PMC_Create_Vehicles_OPFOR.sqf";

// helicopter patrols
[] execVM "PMC\PMC_Helo_Chernarus_BLUFOR.sqf";
[] execVM "PMC\PMC_Helo_Chernarus_OPFOR.sqf";
