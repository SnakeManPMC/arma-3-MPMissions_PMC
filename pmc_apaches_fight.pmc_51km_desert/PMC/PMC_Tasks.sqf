
[
	west,
	[
		"t1"
	],
	[
		"Defend city of <marker name='defend'>Samir</marker> against enemy armored assault at all costs.",
		"Defend Samir",
		""
	],
	(getMarkerPos "defend"),
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
		"Annihilate every single russian attacking you.",
		"Kill All Commies",
		""
	],
	(getMarkerPos "defend"),
	1,
	2,
	true
] call BIS_fnc_taskCreate;
