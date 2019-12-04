
skiptime (((paramsarray select 0) - daytime + 24) % 24);

[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";

[] execVM "PMC\PMC_Tasks.sqf";

PMC_debug = true;
publicVariable "PMC_debug";
PMC_corpses = [];
[150] execVM "PMC\PMC_corpses.sqf";
PMC_killedNum = 0;
publicVariable "PMC_killedNum";
PMC_grpNum = 0;

[] execVM "PMC\PMC_targets.sqf";

// unit creating
call compile preprocessFileLineNumbers "PMC\PMC_Create_Guerrilla_Takistan.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Guerrilla_Takistan_Weapons.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Takistani_Insurgents_Technicals.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Takistani_Militia.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Takistani_Militia_AA_Site.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Takistani_Militia_Statics.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Takistani_Militia_Support.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Takistani_Militia_Technicals.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_patrol_vehicle_opfor.sqf";

// waypoint setups
call compile preprocessFileLineNumbers "PMC\PMC_Guard_Inf_Waypoints.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Patrol_Inf_Waypoints.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Sentry_Inf_Waypoints.sqf";

// lower the insurgent muslim SCUM skills
call compile preprocessFileLineNumbers "PMC\PMC_setAISkill.sqf";

waitUntil { !isnil "bis_fnc_init" };

// create VIP hunt target groups
[5, 50, 45000] execVM "PMC\PMC_vip_placement.sqf";

// create SCUD vehicles
[5, 500, 45000] execVM "PMC\PMC_scud_placement.sqf";

// publicvariable VIP and SCUD arrays, so we can access them from PMC_init_client.sqf for additional shit
waitUntil
{
	sleep 1;
	(count PMC_vips == 5) && (count PMC_scuds == 5)
};
publicVariable "PMC_vips";
publicVariable "PMC_scuds";

// creates the OPFOR units at mission start.
[] execVM "PMC\PMC_war_opfor.sqf";

// convoy for opfor bastards
[] execVM "PMC\PMC_Convoy_OPFOR.sqf";

// mission objectives
[] execVM "PMC\PMC_mission_objectives.sqf";

[] execVM "PMC\PMC_public_eventhandlers.sqf";

// mission editor placed guys
// pmc_insurgents1
// pmc_militia1
{
	_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
} foreach units pmc_insurgents1 + units pmc_militia1;
