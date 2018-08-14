
PMC_obj3 = true;

"city1" setMarkerColorLocal "ColorGreen";
"city1" setMarkerTypeLocal "mil_dot";

private _task = ["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
hint "City 1 objective secured, excellent work!";
