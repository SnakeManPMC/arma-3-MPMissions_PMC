
// PMC_Objective1.sqf

"target1" setMarkerColorLocal "ColorGreen";
player sideChat "We have captured objective 1.";
pmc_obj1 = true;
["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
