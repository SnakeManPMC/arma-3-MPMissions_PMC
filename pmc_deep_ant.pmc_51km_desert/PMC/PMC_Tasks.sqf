
[
	west,
	[
		"t1"
	],
	[
		"You need to capture <marker name='target1'>city entrance</marker> from enemy hands.",
		"Capture city entrance",
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
		"t1"
	],
	[
		"You need to clean <marker name='target2'>north side</marker> of the city.",
		"Clean north side",
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
		"t1"
	],
	[
		"Clear <marker name='target3'>north side</marker> of the city.",
		"Clear east side",
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
		"t1"
	],
	[
		"Clear <marker name='target4'>west side</marker> of the city.",
		"Clear west side",
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
		"t1"
	],
	[
		"Clean rest of the enemy forces in the city.",
		"Clean rest",
		""
	],
	objNull,
	1,
	2,
	true
] call BIS_fnc_taskCreate;
