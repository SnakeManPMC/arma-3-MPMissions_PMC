
// objective 1 completed!
"PMC_target1" setMarkerColorLocal "ColorGreen";
"PMC_target1" setMarkerTypeLocal "dot";
PMC_target1 = true;
publicVariable "PMC_target1";
["PMC_objective1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
