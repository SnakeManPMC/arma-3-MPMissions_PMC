// 0 execVM "PMC\PMC_Objective3.sqf";

if (leader captives distance usa < 100) then
{
	["t3", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
}
else
{
	["t3", "FAILED", true] spawn BIS_fnc_taskSetState;
};
