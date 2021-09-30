// 0 = [] execVM "PMC\PMC_Objective2.sqf";

"target2" setMarkerColor "colorgreen";
opfordead2 = true;
player sidechat "District A has been cleared. Over.";
["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
