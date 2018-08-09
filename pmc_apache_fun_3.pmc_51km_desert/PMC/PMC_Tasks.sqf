
[
	west,
	[
		"t1"
	],
	[
		"Defend city downtown against <marker name='target1'>enemy attack</marker> from the south.",
		"Defend City Downtown",
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
