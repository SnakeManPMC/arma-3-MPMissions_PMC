
[
	west,
	[
		"t1"
	],
	[
		"You must clear <marker name='markerTask1'>northern sector</marker>.",
		"Clear North",
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
		"You must clear <marker name='markerTask2'>downtown area</marker>.",
		"Clear Downtown",
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
		"You must clear <marker name='markerTask3'>southern sector</marker>.",
		"Clear South",
		"markerTask3"
	],
	(getPosASL pmc_3),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
