
private _mapSize = call compile preprocessFileLineNumbers "PMC\PMC_Get_Map_Size.sqf";
private _pos = [_mapSize] call compile preprocessFileLineNumbers "PMC\PMC_Get_Random_SafePos_MapSize.sqf";

_pos
