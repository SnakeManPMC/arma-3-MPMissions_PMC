// 0 = [] execVM "PMC\PMC_Objective3.sqf";

leader seals sideradio "Rsecured";
called2 = true;
{
	_x setfuel 1;
} forEach units blackhawks;
["t3", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
