
[
	west,
	[
		"t1"
	],
	[
		"You must clear <marker name='pmc_marker_obj1'>northern sector</marker>.",
		"Clear North",
		"pmc_marker_obj1"
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
		"You must clear <marker name='pmc_marker_obj2'>downtown area</marker>.",
		"Clear Downtown",
		"pmc_marker_obj2"
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
		"You must clear <marker name='pmc_marker_obj3'>southern sector</marker>.",
		"Clear South",
		"pmc_marker_obj3"
	],
	(getPosASL pmc_3),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
