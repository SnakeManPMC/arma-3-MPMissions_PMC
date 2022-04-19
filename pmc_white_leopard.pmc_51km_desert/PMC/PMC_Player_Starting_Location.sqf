
private _worldSize = call compile preprocessFileLineNumbers "PMC\PMC_Get_worldSize.sqf";
private _pos = [_worldSize] call compile preprocessFileLineNumbers "PMC\PMC_Get_Random_SafePos_worldSize.sqf";

_pos
