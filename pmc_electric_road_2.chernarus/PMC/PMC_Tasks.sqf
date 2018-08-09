
[
	west,
	[
		"t1"
	],
	[
		"This <marker name='markerTask1'>building</marker> is housing some insurgents, clear it.",
		"Clear Building",
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
		"Clear this <marker name='markerTask2'>factory</marker> area.",
		"Clear Factory",
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
		"Assault and capture <marker name='markerTask3'>Vybor</marker> town.",
		"Capture Vybor",
		"markerTask3"
	],
	(getPosASL pmc_3),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
