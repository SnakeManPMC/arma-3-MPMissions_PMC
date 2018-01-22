
private
[
	"_targetpoint",
	"_triggerArea"
];

// center of the map
_targetpoint = [25600, 25600, 0];
_triggerArea = 25600;

// BLUFOR
pmc_blufor_list = createTrigger ["EmptyDetector", _targetpoint];
pmc_blufor_list setTriggerActivation ["WEST", "PRESENT", true];
pmc_blufor_list setTriggerArea [_triggerArea, _triggerArea, 0, true];
pmc_blufor_list setTriggerTimeout [0, 0, 0, false];
pmc_blufor_list setTriggerStatements ["this", "", ""];

// OPFOR
pmc_opfor_list = createTrigger ["EmptyDetector", _targetpoint];
pmc_opfor_list setTriggerActivation ["EAST", "PRESENT", true];
pmc_opfor_list setTriggerArea [_triggerArea, _triggerArea, 0, true];
pmc_opfor_list setTriggerTimeout [0, 0, 0, false];
pmc_opfor_list setTriggerStatements ["this", "", ""];

// Anybody, DEBUG!
pmc_list = createTrigger ["EmptyDetector", _targetpoint];
pmc_list setTriggerActivation ["ANY", "PRESENT", true];
pmc_list setTriggerArea [_triggerArea, _triggerArea, 0, true];
pmc_list setTriggerTimeout [0, 0, 0, false];
pmc_list setTriggerStatements ["this", "", ""];
