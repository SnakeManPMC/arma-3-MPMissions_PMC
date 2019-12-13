
[
	west,
	[
		"t1"
	],
	[
		"You must clear the north end of airfield buildings.",
		"Clear North End",
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
		"You must clear the center of airfield buildings.",
		"Clear Center",
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
		"You must clear the south end of airfield, the small group of buildings.",
		"Clear South End",
		"markerTask3"
	],
	(getPosASL pmc_3),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
