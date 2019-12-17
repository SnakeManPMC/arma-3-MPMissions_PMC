
skiptime (((paramsarray select 0) - daytime + 24) % 24);

[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";

[] execVM "PMC\PMC_Tasks.sqf";

PMC_debug = false;
publicVariable "PMC_debug";

// setup victory condition server parameter
[] execVM "PMC\PMC_VictoryCondition.sqf";

// server parameter; disable friendly ground forces
[] execVM "PMC\PMC_Disable_Friendly_AI.sqf";

// server parameter; disable friendly aircrafts
[] execVM "PMC\PMC_Disable_Friendly_Aircrafts.sqf";

// mission end variable
PMC_mcomplete = false;
publicVariable "PMC_mcomplete";

// how many groups?
PMC_grp_blufor = 0;
PMC_grp_opfor = 0;
publicVariable "PMC_grp_blufor";
publicVariable "PMC_grp_opfor";

// initialized variables and settings
PMC_killedNum = 0;
publicVariable "PMC_killedNum";

// corpse removal script
PMC_corpses = [];
[75] execVM "PMC\PMC_corpses.sqf";
publicVariable "PMC_corpses";

// count for opfor
PMC_opfor = 0;
publicVariable "PMC_opfor";

// count for blufor
PMC_blufor = 0;
publicVariable "PMC_blufor";

// collect targets from pmc_? gamelogics
private _tmp = [] execVM "PMC\PMC_targets.sqf";
// lets make sure our target array is fully done.
waitUntil
{
	scriptDone _tmp;
};

// PMC_SelectStartPosit starting position selecting function
call compile preProcessFileLineNumbers "PMC\PMC_SelectStartPosit.sqf";

// PMC_Select_Target
call compile preProcessFileLineNumbers "PMC\PMC_Select_Target.sqf";

// PMC_Patrol_Inf_Waypoints
call compile preProcessFileLineNumbers "PMC\PMC_Patrol_Inf_Waypoints.sqf";

// PMC_Guard_Inf_Waypoints
call compile preProcessFileLineNumbers "PMC\PMC_Guard_Inf_Waypoints.sqf";

// PMC_Patrol_Inf_Targets_Waypoints
call compile preProcessFileLineNumbers "PMC\PMC_Patrol_Inf_Targets_Waypoints.sqf";

// NVA war
[] execVM "PMC\PMC_war_opfor.sqf";

// US war
if (!PMC_Disable_Friendly_AI) then
{
	[] execVM "PMC\PMC_war_blufor.sqf";
};

// mission editor placed guys:
sleep 3;
{
	_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
} foreach units pmc_ins1;

// run random helo patrol :)
if (!PMC_Disable_Friendly_Aircrafts) then
{
	[] execVM "PMC\PMC_HeloBLUFOR.sqf";
};

if (PMC_debug) then
{
	diag_log format["PMC_Init_Server; PMC_VictoryCondition: %1", PMC_VictoryCondition];
};
