
// PMC_Objective2.sqf

pmc_inddead2 = true;
player sideChat "Objective 2 complete.";
["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
