// 0 = [] execVM "PMC\PMC_Objective4.sqf";

"target4" setMarkerColor "colorgreen";
opfordead4 = true;
player sidechat "Minaret 1 has been checked and cleared. Over.";
["t4", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
