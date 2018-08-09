
[
	west,
	[
		"t1"
	],
	[
		"Repel enemy <marker name='target1'>attack</marker> coming from north-east.",
		"Repel Enemy Attack",
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
