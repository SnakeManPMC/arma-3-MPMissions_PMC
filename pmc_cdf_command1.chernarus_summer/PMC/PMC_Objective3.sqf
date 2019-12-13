
// PMC_Objective3.sqf

"target3" setMarkerColorLocal "ColorGreen";
player sideChat "We have captured objective 3.";
pmc_obj3 = true;
["t3", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
