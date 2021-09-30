// 0 = [] execVM "PMC\PMC_Objective4.sqf";

leader group (thislist select 0) sideChat "We have reached the objective 4, Over.";
"target4" setMarkerColor "colorgreen";
["t4", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
