// 0 = [] execVM "PMC\PMC_Objective1.sqf";

leader group (thislist select 0) sideChat "We have reached the objective 1, Over.";
"target1" setMarkerColor "colorgreen";
["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
