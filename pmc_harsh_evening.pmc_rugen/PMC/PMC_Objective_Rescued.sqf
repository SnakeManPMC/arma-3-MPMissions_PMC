
// PMC_Objective_Rescued.sqf

pmc_rescued = true;
//["Rescued", "succeeded"] call SHK.Task.aster_Upd;
["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
