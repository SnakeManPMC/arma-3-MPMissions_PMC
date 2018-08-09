
[
	west,
	[
		"t1"
	],
	[
		"You must clear the <marker name='markerTask1'>Obj1</marker>.",
		"Clear Obj1",
		"markerTask1"
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
		"You must clear the <marker name='markerTask2'>Obj2</marker>.",
		"Clear Obj2",
		"markerTask2"
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
		"You must clear the <marker name='markerTask3'>Obj3</marker>.",
		"Clear Obj3",
		"markerTask3"
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
		"You must clear the <marker name='markerTask4'>Obj4</marker>.",
		"Clear Obj4",
		"markerTask4"
	],
	(getPosASL pmc_4),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
