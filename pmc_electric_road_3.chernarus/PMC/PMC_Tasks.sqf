
[
	west,
	[
		"t1"
	],
	[
		"This small group of <marker name='markerTask1'>buildings</marker> is needs to be cleared.",
		"Clear Buildings",
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
		"Clear suspected <marker name='markerTask2'>insurgent house</marker> before you assault main objective.",
		"Clear House",
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
		"Seize <marker name='markerTask3'>Pushtoska</marker> from insurgents.",
		"Capture Pushtoska",
		"markerTask3"
	],
	(getPosASL pmc_3),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
