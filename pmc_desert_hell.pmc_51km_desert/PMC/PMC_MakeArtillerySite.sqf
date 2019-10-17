/*

	Artillery site 4 D-30 guns

*/

private ["_respawnpoint","_myVec","_vcl","_grp","_newPos"];

_respawnpoint = _this select 0;

_newPos = [_respawnpoint, 0, 500, 30, 0, 20, 0] call BIS_fnc_findSafePos;

_myVec = "CUP_O_D30_RU";
_vcl = _myVec createVehicle _newPos;
_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
_grp = objNull;
_grp = createGroup east;
waitUntil {!(isNull _grp)};

// first vehicle
"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "LIEUTENANT"];
(units _grp select 0) moveInGunner _vcl;

// second vehicle
_vcl = objNull;
_vcl = _myVec createVehicle [(_newPos select 0),(_newPos select 1)+50,0];
_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
(units _grp select 1) moveInGunner _vcl;

// third vehicle
_vcl = objNull;
_vcl = _myVec createVehicle [(_newPos select 0),(_newPos select 1)-50,0];
_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
(units _grp select 2) moveInGunner _vcl;

// fourth vehicle
_vcl = objNull;
_vcl = _myVec createVehicle [(_newPos select 0),(_newPos select 1)+100,0];
_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
(units _grp select 3) moveInGunner _vcl;

// increment the created units count
PMC_opfor = PMC_opfor + 4;
publicVariable "PMC_opfor";

// these to function somehow nicely, please :(
{
	_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
} forEach units _grp;

_grp setBehaviour "AWARE";
_grp setCombatMode "RED";
