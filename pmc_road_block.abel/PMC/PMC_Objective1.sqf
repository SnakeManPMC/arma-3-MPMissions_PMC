// 0 = [] execVM "PMC\PMC_Objective1.sqf";

["t1", "FAILED", true] spawn BIS_fnc_taskSetState;
sleep 3;
["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
