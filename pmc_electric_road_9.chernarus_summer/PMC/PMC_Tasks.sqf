
[
	west,
	[
		"t1"
	],
	[
		"Seize <marker name='markerTask1'>factory area</marker>.",
		"Seize Factory Area",
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
		"Seize <marker name='markerTask2'>downtown Chernogorsk</marker>.",
		"Seize Downtown Chernogorsk",
		"markerTask2"
	],
	(getPosASL pmc_2),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
