// 0 = [] execVM "PMC\PMC_Objective3.sqf";

"target3" setMarkerColor "colorgreen";
opfordead3 = true;
player sidechat "Minaret 2 has been checked and cleared. Over.";
["t3", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
