
[
	west,
	[
		"t1"
	],
	[
		"You must clear road <marker name='markerTask1'>waypoint one</marker> at the intersection.",
		"Clear Road WP#1",
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
		"You must clear <marker name='markerTask2'>Camerig</marker> town.",
		"Clear Camerig",
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
		"You must clear <marker name='markerTask3'>Hoorn</marker> town.",
		"Clear Hoorn",
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
		"You must clear <marker name='markerTask4'>Airfield</marker>.",
		"Clear Airfield",
		"markerTask4"
	],
	(getPosASL pmc_4),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

[
	west,
	[
		"t5"
	],
	[
		"You must clear <marker name='markerTask5'>Alverna</marker> town.",
		"Clear Alverna",
		"markerTask5"
	],
	(getPosASL pmc_5),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

[
	west,
	[
		"t6"
	],
	[
		"You must clear <marker name='markerTask6'>airstrip</marker> from any enemy forces.",
		"Clear Airstrip",
		"markerTask6"
	],
	(getPosASL pmc_6),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
