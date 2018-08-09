
[
	west,
	[
		"t1"
	],
	[
		"Clear <marker name='target1'>city</marker> of enemy forces.",
		"Clear City",
		"markerTask1"
	],
	(getPosASL target1),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
