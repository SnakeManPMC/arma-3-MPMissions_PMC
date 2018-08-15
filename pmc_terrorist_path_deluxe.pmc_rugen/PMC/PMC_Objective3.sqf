
PMC_obj3 = true;

"city1" setMarkerColor "ColorGreen";
"city1" setMarkerType "mil_dot";

private _task = ["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
hint "City 1 objective secured, excellent work!";

pmc_respawn_obj3 setPos (getMarkerPos "city1");
