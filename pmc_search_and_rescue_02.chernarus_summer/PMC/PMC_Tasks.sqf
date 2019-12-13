
[
	west,
	[
		"t1"
	],
	[
		"Find the downed helo, take survivors into your squad.",
		"Find Crashed Helo",
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
		"Bring back any survivors to base.",
		"Survivors to Base",
		""
	],
	objNull,
	1,
	2,
	true
] call BIS_fnc_taskCreate;
