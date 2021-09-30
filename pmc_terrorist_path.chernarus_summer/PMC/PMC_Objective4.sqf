// 0 = [] execVM "PMC\PMC_Objective4.sqf";

"city2" setMarkerColor "colorgreen";
publicVariable "PMC_city2_task";
hint "City 2 objective completed, well done!";
["PMC_city2_task", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
