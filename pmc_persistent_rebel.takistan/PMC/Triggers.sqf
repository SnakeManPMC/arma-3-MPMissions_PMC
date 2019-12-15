
// global ending trigger for whole mission, this is it, KAPUT!

private
[
	"_z"
];

// BLUFOR list of units
pmc_bluforunits = createTrigger ["EmptyDetector", [6500, 6500, 0]];
pmc_bluforunits setTriggerActivation ["WEST", "PRESENT", true];
pmc_bluforunits setTriggerArea [6500, 6500, 0, true];
pmc_bluforunits setTriggerTimeout [0, 0, 0, true];

// OPFOR list of units
pmc_opforunits = createTrigger ["EmptyDetector", [6500, 6500, 0]];
pmc_opforunits setTriggerActivation ["EAST", "PRESENT", true];
pmc_opforunits setTriggerArea [6500, 6500, 0, true];
pmc_opforunits setTriggerTimeout [0, 0, 0, true];
