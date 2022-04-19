
setDate [2010, 1, 1, 0, 0];
[] execVM "PMC\PMC_Set_Mission_Time.sqf";
[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";
[] execVM "PMC\PMC_Tasks.sqf";

// initialized variables and settings
PMC_debug = 0;
publicVariable "PMC_debug";
PMC_blufor = 0;
PMC_killedNum = 0;
publicVariable "PMC_killedNum";

call compile preprocessFileLineNumbers "PMC\PMC_CreateConvoyVehicles.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_CreateOPFORVehicles.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_MakeSpecOpsBLUFOR.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_SelectStartPosit.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_SelectStartPositOPFOR.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_SetAISkill.sqf";

PMC_corpses = [];
[50] execVM "PMC\PMC_corpses.sqf";

// start the war
[] execVM "PMC\PMC_war_OPFOR.sqf";
[] execVM "PMC\PMC_OPFOR_Vehicles.sqf";
[] execVM "PMC\PMC_war_BLUFOR.sqf";
[] execVM "PMC\PMC_BLUFOR_Vehicles.sqf";
