
[
	west,
	[
		"t1"
	],
	[
		"Clear <marker name='markerTask1'>houses</marker>.",
		"Clear Houses",
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
		"Clear <marker name='markerTask2'>houses</marker>.",
		"Clear Houses",
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
		"Capture <marker name='markerTask3'>electric area</marker>.",
		"Capture Electric Area",
		"markerTask3"
	],
	(getPosASL pmc_3),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
