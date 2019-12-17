
[] execVM "PMC\PMC_Set_Mission_Time.sqf";
[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";

private ["_tmp"];

PMC_debug = true;
publicVariable "PMC_debug";

// players starting location
PMC_hq = call compile preprocessFileLineNumbers "PMC\PMC_Player_Starting_Location.sqf";
if (PMC_debug) then { player sidechat format["pmc_init_server.sqf, PMC_hq: %1", PMC_hq]; };

publicVariable "PMC_hq";
if (PMC_debug) then { player sidechat format["pmc_init_server.sqf, publicVariable PMC_hq: %1", PMC_hq]; };

// setup mobile respawn initial spot
PMC_mobile_respawn_spot = [PMC_hq select 0, PMC_hq select 1, 0];
publicVariable "PMC_mobile_respawn_spot";

[] execVM "PMC\PMC_Mobile_Respawn.sqf";

// Create location array from all class names entries (few in pmc 51km desert hehe)
PMC_loc = call compile preprocessFileLineNumbers "PMC\PMC_locationFinder.sqf";

// the actual sides (except west as our mission editor placed player is west guy).
[] execVM "PMC\Create_Sides.sqf";

// create trigger for each side
// pmc_all_units - anybody
[] execVM "PMC\Triggers_For_Sides.sqf";

// create gamelogic's for our stupid old script use ;)
[] execVM "PMC\Gamelogics_For_Old_Scripts.sqf";

[] execVM "PMC\PMC_targets.sqf";
// corpse removal script
PMC_corpses = [];
// players are included in pmc_killed.sqf and get undefined error if this is not set
publicVariable "PMC_corpses";
PMC_killedNum = 0;
publicVariable "PMC_killedNum";
[100] execVM "PMC\PMC_corpses.sqf";

// number for created groups.
PMC_grp_blufor = 0;
PMC_grp_opfor = 0;
PMC_grpNum = 0;
PMC_blufor = 0;
PMC_opfor = 0;
PMC_war_blufor = true;

// for infantry transport
PMC_InfTransport = 0;
PMC_InfTransportUsed = 0;

// player respawns
PMC_PlayerRespawns = 0;
publicVariable "PMC_PlayerRespawns";

// waypoint creation
call compile preProcessFileLineNumbers "PMC\PMC_Patrol_Inf_Waypoints.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_Guard_Inf_Waypoints.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_Guard_Vehicle_Waypoints.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_Sentry_Inf_Waypoints.sqf";

// BLUFOR
call compile preProcessFileLineNumbers "PMC\PMC_Create_US_Army.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_Create_US_Army_Sniper.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_Create_US_Army_Support.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_Create_US_ArmyWeapons.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_Create_US_DeltaForce.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_ACR_Squad.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_ACR_SpecialForcesTeam.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_GER_Infantry_KSKTeam.sqf";

// OPFOR
call compile preProcessFileLineNumbers "PMC\PMC_Create_Takistani_Army.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_Create_Takistani_Army_Sniper.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_Create_Takistani_Army_Support.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_Create_Takistani_Militia.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_Create_Takistani_Army_Special_Purpose.sqf";

// counting groups per side
PMC_countGroups = compile preProcessFileLineNumbers "PMC\PMC_countGroups.sqf";

[] execVM "PMC\PMC_Tasks.sqf";

// initial unit creation already in place all over the terrain (not just starting looper from the edges).
_tmp = [] execVM "PMC\Initial_Unit_Creation.sqf";
waitUntil { scriptDone _tmp; };

// debug
diag_log format["PMC_init_server; Initial_Unit_Creation done at %1", diag_tickTime];

// small wait...
sleep 1;

// log shit to RPT file ;)
[] execVM "PMC\PMC_Server_RPT_Logger.sqf";

// war unit creation system
[] execVM "PMC\War_BLUFOR.sqf";
// so that our stupid scripts wont conflict ;)
sleep 2;
// opfor start hardcoded [9944, 49088, 0];
[] execVM "PMC\War_OPFOR.sqf";

[20, 20] execVM "PMC\War_Vehicles_BLUFOR.sqf";
[80, 20] execVM "PMC\War_Vehicles_OPFOR.sqf";

sleep 1;
[[-1000,-1000,200]] execVM "PMC\PMC_Aircraft_BLUFOR_MODIFIED.sqf";
[[10000,-1000,200]] execVM "PMC\PMC_Aircraft_OPFOR_MODIFIED.sqf";

sleep 1;
[[-1000,-1000,200]] execVM "PMC\PMC_HeloBLUFOR_MODIFIED.sqf";
[[10000,-1000,200]] execVM "PMC\PMC_HeloOPFOR_MODIFIED.sqf";

sleep 1;
[[1854, 2448, 0]] execVM "PMC\PMC_Create_Convoy_BLUFOR.sqf";
sleep 1;
[[9944, 49088, 0]] execVM "PMC\PMC_Create_Convoy_OPFOR.sqf";

// new experimental airforce HQ thing :)
sleep 1;
[[1854, 2448, 0]] execVM "PMC\PMC_Airforce_HQ.sqf";

if (PMC_debug) then { diag_log format["PMC_init_server; complete: %1", diag_tickTime]; };
