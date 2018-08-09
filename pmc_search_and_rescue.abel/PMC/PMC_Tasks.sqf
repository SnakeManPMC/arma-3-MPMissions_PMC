
[
	west,
	[
		"t1"
	],
	[
		"Search UH60 <marker name = 'Crashsite'>here</marker>.",
		"Seach UH60",
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
		"Extract any survivors.",
		"Extract Survivors",
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
		"t3"
	],
	[
		"Get survivors to medic <marker name = 'homebase'>here</marker>.",
		"Survivors to Medic",
		""
	],
	objNull,
	1,
	2,
	true
] call BIS_fnc_taskCreate;
