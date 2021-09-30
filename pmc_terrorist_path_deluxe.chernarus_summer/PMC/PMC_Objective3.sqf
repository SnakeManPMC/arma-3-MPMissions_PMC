// 0 = [] execVM "PMC\PMC_Objective3.sqf";

"city1" setMarkerColor "colorgreen";
publicVariable "PMC_city1_task";
hint "City 1 objective secured, excellent work!";
["PMC_city1_task", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
