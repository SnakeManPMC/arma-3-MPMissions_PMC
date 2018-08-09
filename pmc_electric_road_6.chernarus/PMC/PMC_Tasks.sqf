
[
	west,
	[
		"t1"
	],
	[
		"Capture <marker name='markerTask1'>north side</marker> of Zelenogorsk.",
		"Capture North Side",
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
		"Capture <marker name='markerTask2'>center</marker> area of Zelenogorsk.",
		"Capture Center",
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
		"Clear <marker name='markerTask3'>power station</marker> objective.",
		"Clear Power Station",
		"markerTask3"
	],
	(getPosASL pmc_3),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
