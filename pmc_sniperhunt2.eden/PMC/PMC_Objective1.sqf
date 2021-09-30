// 0 = [] execVM "PMC\PMC_Objective1.sqf";

leader snipas1 globalchat "Take that you amerikan pigs!";
["t1", "FAILED", true] spawn BIS_fnc_taskSetState;
sleep 3;
["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
mcomplete = true;
