
player sideChat "HOOYAH! We have defeated BLUFOR!";

["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

PMC_objective1_done = true;
publicVariable "PMC_objective1_done";

diag_log format["PMC_Obj1, Objective 1 completed! time: %1", time];
