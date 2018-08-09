
[
	west,
	[
		"t1"
	],
	[
		"You must clear the <marker name='markerTask1'>Zargabad</marker>.",
		"Clear Zargabad",
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
		"You must clear the <marker name='markerTask2'>Nango</marker>.",
		"Clear Nango",
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
		"You must clear the <marker name='markerTask3'>Shahbaz</marker>.",
		"Clear Shahbaz",
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
		"You must clear the <marker name='markerTask4'>Military Base</marker>.",
		"Clear Military Base",
		"markerTask4"
	],
	(getPosASL pmc_4),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
