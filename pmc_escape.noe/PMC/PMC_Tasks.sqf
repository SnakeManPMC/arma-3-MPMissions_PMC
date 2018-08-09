
[
	west,
	[
		"t1"
	],
	[
		"Stay alive?",
		"Stay alive?",
		""
	],
	objNull,
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
		"Take command of the survivors and get them into Nogova <marker name = 'airbase'>Airbase</marker> area.",
		"Escape",
		"airbase"
	],
	objNull,
	1,
	2,
	true
] call BIS_fnc_taskCreate;
