
PAPABEAR = [West,"HQ"];

// debug on
PMC_debug = true;
publicVariable "PMC_debug";

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

// count for opfor
PMC_opfor = 0;
pmc_grp_opfor = 0;

// count for blufor
PMC_blufor = 0;
pmc_grp_blufor = 0;
pmc_inftransport = 0;

// PMC_Select_Target
call compile preProcessFileLineNumbers "PMC\PMC_Select_Target.sqf";

// PMC_Patrol_Inf_Waypoints
call compile preProcessFileLineNumbers "PMC\PMC_Patrol_Inf_Waypoints.sqf";

// PMC_Guard_Inf_Waypoints
call compile preProcessFileLineNumbers "PMC\PMC_Guard_Inf_Waypoints.sqf";

// PMC_Sentry_Inf_Waypoints
call compile preProcessFileLineNumbers "PMC\PMC_Sentry_Inf_Waypoints.sqf";

// insert all locations into an array
PMC_Locations = [];
PMC_Locations = call compile preprocessFileLineNumbers "PMC\PMC_locationFinder.sqf";

// start war loop script here
sleep 2;
[] execVM "PMC\PMC_war_blufor.sqf";
[] execVM "PMC\PMC_war_opfor.sqf";

sleep 10;
[] execVM "PMC\PMC_Create_Soft_Vehicles.sqf";

sleep 10;
// this is falsely named opfor, this creates blufor and opfor ;)
[] execVM "PMC\PMC_Create_Tank_Platoon_OPFOR_T72.sqf";
