
[
	west,
	[
		"t1"
	],
	[
		"Find the downed helo, take survivors into your squad. Aircraft <marker name='crash_site'>crashed</marker>. Search the area for survivors and bring them back to base.",
		"Find Crashed Helo",
		"crash_site"
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
