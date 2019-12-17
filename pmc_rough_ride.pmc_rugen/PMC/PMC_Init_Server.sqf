
[] execVM "PMC\PMC_Tasks.sqf";

skiptime (((paramsarray select 0) - daytime + 24) % 24);

[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";

// create city centers array
PMC_CityCenters = call compile preprocessFileLineNumbers "PMC\PMC_locationFinder.sqf";

diag_log format["PMC_Init_Server; PMC_CityCenters: %1", PMC_CityCenters];

// doesnt work in MP
//[] execVM "PMC\PMC_Place_Editor_Units.sqf";

// choose location for players
[] execVM "PMC\PMC_setup_player_HQ.sqf";

// this creates target list for our mission objectives
PMC_MissionObjectives = [5] call compile preprocessFileLineNumbers "PMC\PMC_Create_Mission_Targets.sqf";

// triggers and markers
[PMC_MissionObjectives, 500, 60] execVM "PMC\PMC_objectives.sqf";

// broadcast to clients so they can create their tasks
publicVariable "PMC_MissionObjectives";

[PMC_MissionObjectives] execVM "PMC\PMC_Tasks.sqf";

// create enemies to the targets
[PMC_MissionObjectives] execVM "PMC\PMC_Create_OPFOR_Defenses.sqf";

// create task was here peviously

// vehicles for player
[] execVM "PMC\PMC_player_vehicles.sqf";
