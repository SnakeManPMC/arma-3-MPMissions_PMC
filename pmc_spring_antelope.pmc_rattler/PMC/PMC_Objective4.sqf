
// PMC_Objective4.sqf

"target4" setMarkerColorLocal "ColorGreen";
player sideChat "We have captured objective 4.";
pmc_obj4 = true;
["t4", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
