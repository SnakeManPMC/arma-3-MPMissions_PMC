
player sideChat "HOOYAH! We have defeated OPFOR!";

//PMC_objective2 setTaskState "succeeded";
//["PMC_objective2", "succeeded"] call SHK_Taskmaster_Upd;
["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

PMC_objective2_done = true;
publicVariable "PMC_objective2_done";

// debug for log ;)
diag_log format["#### Objective 2 completed! time: %1", time];
