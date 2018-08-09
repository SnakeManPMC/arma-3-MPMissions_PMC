
skiptime (((paramsarray select 0) - daytime + 24) % 24);

[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";

[] execVM "PMC\PMC_Tasks.sqf";

PMC_debug = false;
publicVariable "PMC_debug";

// number of created groups
PMC_grpNum = 0;
publicVariable "PMC_grpNum";

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

// create objectives on server
_tmp = [] execVM "PMC\PMC_Create_Objectives.sqf";
// lets make sure our objectives have been done.
waitUntil
{
	scriptDone _tmp;
};

// NVA war
[] execVM "PMC\PMC_war_opfor.sqf";

// US war
[] execVM "PMC\PMC_war_blufor.sqf";

// mission editor placed guys:
sleep 3;
{
	_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
} foreach units pmc_ins1;

// run random helo patrol :)
[] execVM "PMC\PMC_HeloBLUFOR.sqf";
