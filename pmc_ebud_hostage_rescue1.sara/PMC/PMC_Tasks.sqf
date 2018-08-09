
[
	west,
	[
		"t1"
	],
	[
		"Find <marker name = 'target1'>hostage</marker> and rescue him.",
		"Rescue Hostage",
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
		"Escort hostage into the <marker name = 'target2'>hummer</marker>.",
		"Escort Hostage",
		"target2"
	],
	objNull,
	1,
	2,
	true
] call BIS_fnc_taskCreate;
