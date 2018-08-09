
[
	west,
	[
		"t1"
	],
	[
		"You must clear highway <marker name='markerTask1'>waypoint one</marker>.",
		"Clear highway WP#1",
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
		"You must clear highway <marker name='markerTask2'>waypoint two</marker>.",
		"Clear highway WP#2",
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
		"You must clear highway <marker name='markerTask3'>waypoint three</marker>.",
		"Clear highway WP#3",
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
		"You must clear highway <marker name='markerTask4'>waypoint four</marker>.",
		"Clear highway WP#4",
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
		"You must clear <marker name='markerTask5'>Ahanu airbase</marker> from any enemy forces.",
		"Clear Ahanu airbase",
		"markerTask5"
	],
	(getPosASL pmc_5),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
