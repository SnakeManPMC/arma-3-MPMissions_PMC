
[
	west,
	[
		"t1"
	],
	[
		"You must clear <marker name='markerTask1'>Tubbergen</marker> town.",
		"Clear Tubbergen",
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
		"You must clear <marker name='markerTask2'>Hoor</marker> town.",
		"Clear Hoorn",
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
		"You must clear <marker name='markerTask3'>Camerig</marker>.",
		"Clear Camerig",
		"markerTask3"
	],
	(getPosASL pmc_3),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
