
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
