// 0 = [] execVM "PMC\PMC_Objective2.sqf";

["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
leader group (thislist select 0) sideChat "We have reached the objective 2, Over.";
"target2" setMarkerColor "colorgreen";
