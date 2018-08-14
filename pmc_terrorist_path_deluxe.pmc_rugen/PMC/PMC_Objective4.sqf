
PMC_obj4 = true;

"city2" setMarkerColorLocal "ColorGreen";
"city2" setMarkerTypeLocal "mil_dot";

private _task = ["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
hint "City 2 objective completed, well done!";
