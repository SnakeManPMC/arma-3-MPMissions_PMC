
// PMC_Objective1.sqf

pmc_inddead1 = true;
player sideChat "Objective 1 complete.";
["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
