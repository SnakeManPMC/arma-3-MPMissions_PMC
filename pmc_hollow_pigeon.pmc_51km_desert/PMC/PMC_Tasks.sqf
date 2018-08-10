
[
	west,
	[
		"t1"
	],
	[
		"Find the <marker name='crash_site'>downed helo</marker>, take survivors into your squad.",
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
		"Bring back any survivors to <marker name='start'>US base</marker>, alive.",
		"Survivors to Base",
		"start"
	],
	objNull,
	1,
	2,
	true
] call BIS_fnc_taskCreate;
