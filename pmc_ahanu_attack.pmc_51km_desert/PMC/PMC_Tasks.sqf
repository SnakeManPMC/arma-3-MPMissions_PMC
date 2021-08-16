
[
	west,
	[
		"t1"
	],
	[
		"Attack <marker name='target1'>Ahanu Airbase</marker> and remove all enemy forces.",
		"Ahanu Airbase",
		""
	],
	(getMarkerPos "target1"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
