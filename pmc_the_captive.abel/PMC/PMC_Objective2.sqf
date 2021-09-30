// 0 = [] execVM "PMC\PMC_Objective2.sqf";

leader seals sideradio "Robjclear";
{
	_x setfuel 1;
} forEach units cobras;
called = true;
["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
