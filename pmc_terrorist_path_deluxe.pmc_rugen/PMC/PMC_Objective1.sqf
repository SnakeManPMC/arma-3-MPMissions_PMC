
PMC_obj1 = true;

"pmc_military_base" setMarkerColorLocal "ColorGreen";
"pmc_military_base" setMarkerTypeLocal "mil_dot";

private _task = ["t4", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
hint "Military base objective accomplished, great work!";
