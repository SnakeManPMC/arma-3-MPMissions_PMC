
PMC_obj1 = true;

"pmc_military_base" setMarkerColor "ColorGreen";
"pmc_military_base" setMarkerType "mil_dot";

private _task = ["t4", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
hint "Military base objective accomplished, great work!";

pmc_respawn_obj1 setPos (getMarkerPos "pmc_military_base");
