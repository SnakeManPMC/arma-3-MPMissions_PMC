// 0 = [] execVM "PMC\PMC_Objective2.sqf";

"airstrip" setMarkerColorLocal "colorgreen";
publicVariable "PMC_airstrip_task";
hint "Airstrip objective secured, good job!";
["PMC_airstrip_task", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
