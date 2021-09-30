// 0 = [] execVM "PMC\PMC_Objective1.sqf";

mcomplete = true;
player sidechat "All enemy troops have been killed. Mission accomplished. Over.";
["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
