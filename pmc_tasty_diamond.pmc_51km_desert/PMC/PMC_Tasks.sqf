
[
	west,
	[
		"t1"
	],
	[
		"You must find and kill enemy <marker name='markerTask1'>high value target</marker> located somewhere in Zalman downtown.",
		"Kill HVT",
		"markerTask1"
	],
	(getPosASL pmc_1),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
