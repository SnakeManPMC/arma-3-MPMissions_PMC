
// objective 1 completed!
"PMC_target2" setMarkerColorLocal "ColorGreen";
"PMC_target2" setMarkerTypeLocal "dot";
PMC_target2 = true;
publicVariable "PMC_target2";
PMC_objective2 setTaskState "succeeded";

["pmc_objective2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
