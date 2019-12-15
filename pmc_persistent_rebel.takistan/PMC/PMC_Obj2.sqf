
player sideChat "HOOYAH! We have defeated OPFOR!";

["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

PMC_objective2_done = true;
publicVariable "PMC_objective2_done";

diag_log format["PMC_Obj2, Objective 2 completed! time: %1", time];
