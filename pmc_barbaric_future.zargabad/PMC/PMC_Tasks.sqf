
[
	west,
	[
		"t1"
	],
	[
		"You must clear the <marker name='markerTask1'>Shahbaz</marker>.",
		"Clear Shahbaz",
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
		"You must clear the <marker name='markerTask2'>Yarum</marker>.",
		"Clear Yarum",
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
		"You must clear the <marker name='markerTask3'>Zargabad</marker>.",
		"Clear Zargabad",
		"markerTask3"
	],
	(getPosASL pmc_3),
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
		"You must clear the <marker name='markerTask4'>Nango</marker>.",
		"Clear Nango",
		"markerTask4"
	],
	(getPosASL pmc_4),
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
		"You must clear the <marker name='markerTask5'>Hazar Bagh</marker>.",
		"Clear Hazar Bagh",
		"markerTask5"
	],
	(getPosASL pmc_5),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

[
	west,
	[
		"t6"
	],
	[
		"You must clear the <marker name='markerTask6'>Military Base</marker>.",
		"Clear Military Base",
		"markerTask6"
	],
	(getPosASL pmc_6),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

/*
	reference

for opfor dead trigger add:
["PMC_objective1", "succeeded"] call SHK_Taskmaster_Upd;

*/
