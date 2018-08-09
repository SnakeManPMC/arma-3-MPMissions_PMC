
[
	west,
	[
		"t1"
	],
	[
		"<marker name='pmc_target1'>Obj1</marker>",
		"Obj1",
		"pmc_target1"
	],
	[
		PMC_starting_position select 0, PMC_starting_position select 1, 0
	],
	1,
	2,
	true
] call BIS_fnc_taskCreate;
