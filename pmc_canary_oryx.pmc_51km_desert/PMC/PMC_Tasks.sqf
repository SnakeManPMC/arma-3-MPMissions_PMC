
[
	west,
	[
		"t1"
	],
	[
		"Clear <marker name='target1'>south entrance</marker> of the city.",
		"Clear south entrance",
		"target1"
	],
	(getMarkerPos "target1"),
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
		"Clear <marker name='target2'>north east</marker> of the city.",
		"Clear north east",
		"target2"
	],
	(getMarkerPos "target2"),
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
		"Clear <marker name='target3'>north side</marker> of the city.",
		"Clear north side",
		"target3"
	],
	(getMarkerPos "target3"),
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
		"Clear <marker name='target4'>west side</marker> of the city.",
		"Clear west side",
		"target4"
	],
	(getMarkerPos "target4"),
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
		"Clean rest of the enemy forces in the city.",
		"Clean rest",
		""
	],
	(getMarkerPos "pmc_marker_rest"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
