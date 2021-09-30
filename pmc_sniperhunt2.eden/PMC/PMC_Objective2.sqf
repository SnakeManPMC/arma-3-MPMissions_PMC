// 0 = [] execVM "PMC\PMC_Objective2.sqf";

assault1 globalchat "Die you soviet commie scum!"; 
["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
sleep 3;
["t2", "FAILED", true] spawn BIS_fnc_taskSetState;
mcomplete = true;
