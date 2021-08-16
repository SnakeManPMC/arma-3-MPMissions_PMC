
[
	west,
	[
		"t1"
	],
	[
		"Clear <marker name='target1'>Ahanu Airbase</marker> from enemy presence.",
		"Clear Ahanu Airbase",
		"target1"
	],
	(getMarkerPos "target1"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
