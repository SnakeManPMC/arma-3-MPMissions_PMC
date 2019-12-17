/*

	Setup FARP in cleared killbox.

Syntax:
0 = [marker] execVM "PMC\PMC_killbox_cleared.sqf";
is launched from the triggers activation line.

Requires:
functions PMC_Create_BLUFOR_Equipment_HQ, PMC_Create_FARP_Marker and variable PMC_FARP_Count

Returns:
-

*/

private ["_killboxname", "_targetpoint", "_m"];

_killboxname = _this select 0;
_targetpoint = getMarkerPos _killboxname;

if (isServer) then
{
	[_targetpoint] call PMC_Create_BLUFOR_Equipment_HQ;

	PMC_FARP_Count = PMC_FARP_Count + 1;
	publicVariable "PMC_FARP_Count";
}
else
{
	sleep 1;
	_m = format ["PMC_FARP_%1", PMC_FARP_Count];
	[_targetpoint, _m] call PMC_Create_FARP_Marker;
};
