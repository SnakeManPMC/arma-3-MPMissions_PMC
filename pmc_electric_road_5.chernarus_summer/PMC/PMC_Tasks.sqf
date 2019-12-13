
[
	west,
	[
		"t1"
	],
	[
		"Seize <marker name='markerTask1'>Pulkovo</marker> from insurgents.",
		"Seize Pulkovo",
		"markerTask1"
	],
	(getPosASL pmc_1),
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
		"Clear any insurgents from <marker name='markerTask2'>radio tower</marker> area.",
		"Clear Radio Tower",
		"markerTask2"
	],
	(getPosASL pmc_2),
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
		"Investigate suspected bad guys <marker name='markerTask3'>hideout</marker> in the woods.",
		"Investigate Hideout",
		"markerTask3"
	],
	(getPosASL pmc_3),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
