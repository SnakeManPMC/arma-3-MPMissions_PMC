// 0 = [] execVM "PMC\PMC_Objective1.sqf";

survivor1 sideradio "Rcontact";
survivor1 fire ["throw","SmokeShellGreen","SmokeShellGreen"]; // PMCTODO class names for sure wont match CUP ...
["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
