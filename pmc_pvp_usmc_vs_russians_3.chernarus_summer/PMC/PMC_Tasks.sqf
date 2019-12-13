
[
	west,
	[
		"t1"
	],
	[
		"You must keep the <marker name='markerTaskBLUFOR1'>aircrafts</marker> unharmed in the airfield.",
		"Defend aircrafts",
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
		"You must destroy <marker name='markerTaskOPFOR1'>aircrafts</marker> in the US occupied airfield.",
		"Destroy aircrafts",
		"markerTaskOPFOR1"
	],
	(getPosASL pmc_opfor_obj1),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
