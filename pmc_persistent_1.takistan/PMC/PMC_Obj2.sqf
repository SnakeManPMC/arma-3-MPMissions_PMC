
// objective 1 completed!
"PMC_target2" setMarkerColorLocal "ColorGreen";
"PMC_target2" setMarkerTypeLocal "dot";
PMC_target2 = true;
publicVariable "PMC_target2";
PMC_objective2 setTaskState "succeeded";

// nice hint of it
[objNull, ObjNull, pmc_objective2, "SUCCEEDED"] execVM "CA\Modules\MP\data\scriptCommands\taskHint.sqf";
