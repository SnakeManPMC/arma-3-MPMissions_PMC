
[
	west,
	[
		"t1"
	],
	[
		"Clear <marker name='markerTask1'>road block</marker>.",
		"Clear Road Block",
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
		"Capture <marker name='markerTask2'>Kozlovka</marker> town.",
		"Capture Kozlovka",
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
		"Clear <marker name='markerTask3'>building</marker> near town.",
		"Clear Building",
		"markerTask3"
	],
	(getPosASL pmc_3),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
