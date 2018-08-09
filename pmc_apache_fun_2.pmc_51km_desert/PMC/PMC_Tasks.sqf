
[
	west,
	[
		"t1"
	],
	[
		"Defend city against <marker name='target1'>enemy attack</marker> from the south east.",
		"Defend City",
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
