// 0 = [] execVM "PMC\PMC_Objective2.sqf";

[survivor1,survivor2] join rteam;
survivor1 assignascargo evac;
survivor2 assignascargo evac;
survivor1 sideradio "Rtakeushome";
["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
