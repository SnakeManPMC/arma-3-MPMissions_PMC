
player sideChat "HOOYAH! We have defeated OPFOR!";

["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

PMC_objective2_done = true;
publicVariable "PMC_objective2_done";

// debug for log ;)
diag_log format["#### Objective 2 completed! time: %1", time];
