
[
	west,
	[
		"t1"
	],
	[
		"You must capture the <marker name='markerTaskBLUFOR1'>Berezino</marker>.",
		"Capture Berezino",
		"markerTaskBLUFOR1"
	],
	(getPosASL pmc_blufor_obj1),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

// commie scum EAST
[
	east,
	[
		"t2"
	],
	[
		"You must capture the <marker name='markerTaskOPFOR1'>Berezino</marker>.",
		"Capture Berezino",
		"markerTaskOPFOR1"
	],
	(getPosASL pmc_opfor_obj1),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
