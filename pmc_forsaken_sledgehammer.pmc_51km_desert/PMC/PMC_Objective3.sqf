// 0 = [] execVM "PMC\PMC_Objective3.sqf";

leader group (thislist select 0) sideChat "We have reached the objective 3, Over.";
"target3" setMarkerColor "colorgreen";
["t3", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
