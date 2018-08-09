
[
	west,
	[
		"t1"
	],
	[
		"You must capture the <marker name='markerTaskBLUFOR1'>road</marker> between Vybor and Pushtoska.",
		"Capture Road",
		"markerTaskBLUFOR1"
	],
	(getPosASL pmc_blufor_obj1),
	1,
	2,
	true
] call BIS_fnc_taskCreate;

// commie bastards EAST team, not sure if I should use same task name or not, I believe not
[
	east,
	[
		"t2"
	],
	[
		"You must capture the <marker name='markerTaskOPFOR1'>road</marker> between Vybor and Pushtoska.",
		"Capture Road",
		"markerTaskOPFOR1"
	],
	(getPosASL pmc_opfor_obj1),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
