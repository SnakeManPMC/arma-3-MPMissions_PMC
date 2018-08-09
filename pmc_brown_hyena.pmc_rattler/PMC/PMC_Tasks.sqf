
[
	west,
	[
		"t1"
	],
	[
		"You must clear the <marker name='markerTask1'>north end</marker> of enemy FARP.",
		"Clear north end",
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
		"You must clear the <marker name='markerTask2'>center</marker> of enemy FARP.",
		"Clear center",
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
		"You must clear the <marker name='markerTask3'>south end</marker> of enemy FARP.",
		"Clear south end",
		"markerTask3"
	],
	(getPosASL pmc_3),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
