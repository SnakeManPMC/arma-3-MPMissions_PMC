
[
	west,
	[
		"t1"
	],
	[
		"Insurgents have setup a <marker name='markerTask1'>road block</marker> and you need to clear it.",
		"Clear Road Block",
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
		"Attack and seize <marker name='markerTask2'>Rogovo</marker> objective.",
		"Seize Rogovo",
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
		"Capture <marker name='markerTask3'>Pogorevka</marker> objective.",
		"Capture Pogorevka",
		"markerTask3"
	],
	(getPosASL pmc_3),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
