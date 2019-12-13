
// PMC_Objective2.sqf

"target2" setMarkerColorLocal "ColorGreen";
player sideChat "We have captured objective 2.";
pmc_obj2 = true;
["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
