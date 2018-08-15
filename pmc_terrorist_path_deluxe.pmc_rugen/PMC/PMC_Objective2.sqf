
PMC_obj2 = true;

"airstrip" setMarkerColor "ColorGreen";
"airstrip" setMarkerType "mil_dot";

private _task = ["t3", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
hint "Airstrip objective secured, good job!";

pmc_respawn_obj2 setPos (getMarkerPos "airstrip");
