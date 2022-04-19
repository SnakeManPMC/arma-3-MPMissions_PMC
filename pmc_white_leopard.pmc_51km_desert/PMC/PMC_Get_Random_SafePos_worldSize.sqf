/*

	PMC Get Random SafePos TerrainSize

Syntax:
[TerrainSize] call compile preprocessFileLineNumbers "PMC\PMC_Get_Random_SafePos_TerrainSize.sqf";

Example:
_pos = [_TerrainSize] call compile preprocessFileLineNumbers "PMC\PMC_Get_Random_SafePos_TerrainSize.sqf";

Requires:
terrain size in meters as parameter

Returns:
position

*/

private["_newPos", "_pos", "_TerrainSize"];

// get TerrainSize as parameter
_TerrainSize = _this select 0;

// choose random location
_newPos = [(random _TerrainSize),(random _TerrainSize),0];
_pos = [_newPos, 0, 100, 10, 0, 20, 0] call BIS_fnc_findSafePos;

_pos
