
[
	west,
	[
		"t1"
	],
	[
		"Ambush incoming <marker name='target1'>trucks</marker> in the narrow road.",
		"Ambush Trucks",
		"target1"
	],
	objNull,
	1,
	2,
	true
] call BIS_fnc_taskCreate;

/*
	reference

for opfor dead trigger add:
["PMC_objective1", "succeeded"] call SHK_Taskmaster_Upd;

*/
