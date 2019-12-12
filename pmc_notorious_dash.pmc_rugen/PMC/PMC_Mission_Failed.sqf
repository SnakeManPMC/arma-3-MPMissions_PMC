
// PMC_Mission_Failed.sqf

pmc_mfailed = true;
hint "Special truck was destroyed!\n\nMission FAILED!";
["t7", "FAILED", true] spawn BIS_fnc_taskSetState;
