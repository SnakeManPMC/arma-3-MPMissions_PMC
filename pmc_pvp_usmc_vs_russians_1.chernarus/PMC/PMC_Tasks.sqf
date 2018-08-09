
[
	west,
	[
		"t1"
	],
	[
		"You must capture the <marker name='markerTaskBLUFOR1'>Green Mountain</marker> objective. Don't let Russians get there.",
		"Capture Green Mountain",
		"markerTaskBLUFOR1"
	],
	(getPosASL pmc_blufor_obj1),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

[
	east,
	[
		"t2"
	],
	[
		"You must capture the <marker name='markerTaskOPFOR1'>Green Mountain</marker> objective. Don't let Armericans get there.",
		"Capture Green Mountain",
		"markerTaskOPFOR1"
	],
	(getPosASL pmc_opfor_obj1),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
