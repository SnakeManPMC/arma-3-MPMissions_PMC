
[
	west,
	[
		"t1"
	],
	[
		"You need to capture <marker name='target1'>intersection 1</marker> from enemy hands.",
		"Capture Intersection 1",
		"target1"
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
		"You need to capture <marker name='target2'>intersection 2</marker> from enemy hands.",
		"Capture Intersection 2",
		"target2"
	],
	objNull,
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
		"Clear <marker name='target3'>north side</marker> of the city.",
		"Clear North Side",
		"target3"
	],
	objNull,
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
		"Clear <marker name='target4'>west side</marker> of the city.",
		"Clear West Side",
		"target4"
	],
	objNull,
	1,
	2,
	true
] call BIS_fnc_taskCreate;

[
	west,
	[
		"t5"
	],
	[
		"Clean rest of the enemy forces in the city.",
		"Clean Rest",
		""
	],
	objNull,
	1,
	2,
	true
] call BIS_fnc_taskCreate;
