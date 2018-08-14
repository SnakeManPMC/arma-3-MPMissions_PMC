
PMC_obj2 = true;

"airstrip" setMarkerColorLocal "ColorGreen";
"airstrip" setMarkerTypeLocal "mil_dot";

private _task = ["t3", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
hint "Airstrip objective secured, good job!";
