
/*

	PMC_Objective_Cleared

Syntax:
[task, marker] execVM "PMC\PMC_Objective_Cleared.sqf";

Example:
["t1", "my_marker"] execVM 'PMC\PMC_Objective_Cleared.sqf';
I think it requires quotes :)

Requires:
-

Returns:
-

*/

private _task = (_this select 0);
private _marker = (_this select 1);

diag_log format["PMC_Objective_Cleared; _task: %1, _marker: %2", _task, _marker];

_marker setMarkerColor "ColorGreen";

hint format["%1 Activated!", _task];

0 = [_marker] execVM "PMC\PMC_killbox_cleared.sqf";

[_task, "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
