
/*

	PMC_Create_Killbox_Triggers

	used in desert hell to create objective killboxes, to destroy all enemy vehicles in

Syntax:
[[coordinates array], name/number?, marker, radius, timeout] execVM "PMC\PMC_Create_Killbox_Triggers.sqf";

Example:
[[_posmarker_x,_posmarker_y], _a, _marker, _divider, 3] execVM "PMC\PMC_Create_Killbox_Triggers.sqf";

Requires:
PMC\PMC_Objective_Cleared.sqf

Returns:
-

*/

private _myActivation = format["0 = ['t%1', '%2'] execVM 'PMC\PMC_Objective_Cleared.sqf';", (_this select 1), (_this select 2)];
diag_log format["PMC_Create_Killbox_Triggers; _myActivation: %1", _myActivation];
private _radius = (_this select 3);
private _triggerTimeout = (_this select 4);

private _z = createTrigger ["EmptyDetector", (_this select 0)];
_z setTriggerActivation ["WEST SEIZED", "PRESENT", false];
_z setTriggerArea [_radius, _radius, 0, true];
_z setTriggerTimeout [_triggerTimeout, _triggerTimeout, _triggerTimeout, false];
_z setTriggerStatements ["this", _myActivation, ""];
