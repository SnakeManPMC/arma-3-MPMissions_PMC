
[
	west,
	[
		"t1"
	],
	[
		"You must clear the <marker name='pmc_marker_target1'>Obj1</marker>.",
		"Clear Obj1",
		"pmc_marker_target1"
	],
	(getPosASL pmc_1),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

[
	west,
	[
		"t2"
	],
	[
		"You must clear the <marker name='pmc_marker_target2'>Obj2</marker>.",
		"Clear Obj2",
		"pmc_marker_target2"
	],
	(getPosASL pmc_2),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

[
	west,
	[
		"t3"
	],
	[
		"You must clear the <marker name='pmc_marker_target3'>Obj3</marker>.",
		"Clear Obj3",
		"pmc_marker_target3"
	],
	(getPosASL pmc_3),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

[
	west,
	[
		"t4"
	],
	[
		"You must clear the <marker name='pmc_marker_target4'>Obj4</marker>.",
		"Clear Obj4",
		"pmc_marker_target4"
	],
	(getPosASL pmc_4),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
