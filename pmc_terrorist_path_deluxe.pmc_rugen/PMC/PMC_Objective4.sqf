
PMC_obj4 = true;

"city2" setMarkerColor "ColorGreen";
"city2" setMarkerType "mil_dot";

private _task = ["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
hint "City 2 objective completed, well done!";

pmc_respawn_obj4 setPos (getMarkerPos "city2");
