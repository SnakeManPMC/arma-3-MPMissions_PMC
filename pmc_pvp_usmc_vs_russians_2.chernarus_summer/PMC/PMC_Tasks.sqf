
[
	west,
	[
		"t1"
	],
	[
		"You must capture the <marker name='markerTaskBLUFOR1'>Gvozdno</marker> town. Don't let Russians get there.",
		"Capture Gvozdno",
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
		"You must capture the <marker name='markerTaskOPFOR1'>Gvozdno</marker> town. Don't let Armericans get there.",
		"Capture Gvozdno",
		"markerTaskOPFOR1"
	],
	(getPosASL pmc_opfor_obj1),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
