
player sideChat "HOOYAH! We have defeated BLUFOR!";

["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

PMC_objective1_done = true;
publicVariable "PMC_objective1_done";

// debug for log ;)
diag_log format["#### Objective 1 completed! time: %1", time];
