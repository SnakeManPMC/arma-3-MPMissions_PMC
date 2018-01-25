/*

	Main createunit script

*/
private ["_targetpoint","_PMC_MakeGuardInfOPFOR","_a","_p","_targetNum","_respawnpoint","_maxOPFORUnits"];

_PMC_MakeGuardInfOPFOR =
{
        private ["_grp","_respawnpoint","_targetpoint"];

        _respawnpoint = _this select 0;
        _targetpoint = _this select 1;

        _grp = objNull;
	_grp = createGroup east;
	waitUntil {!(isNull _grp)};

	"CUP_O_RU_Soldier_SL" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	"CUP_O_RU_Soldier_TL" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	"CUP_O_RU_Soldier_GL" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	"CUP_O_RU_Soldier_MG" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"CUP_O_RU_Soldier_AT" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"CUP_O_RU_Soldier_TL" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"CUP_O_RU_Soldier_GL" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"CUP_O_RU_Soldier_MG" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"CUP_O_RU_Sniper" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];

	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} foreach units _grp;

	_grp setBehaviour "AWARE";
	_grp setCombatMode "RED";
	_grp setSpeedMode "FULL";
	_grp setFormation "WEDGE";

	_grp addWaypoint [_targetpoint, 25];
	[_grp, 1] setWaypointBehaviour "AWARE";
	[_grp, 1] setWaypointCombatMode "RED";
	[_grp, 1] setWaypointSpeed "FULL";
	[_grp, 1] setWaypointFormation "WEDGE";
	[_grp, 1] setWaypointType "SENTRY";
};

// maximum number of enemies to create
_maxOPFORUnits = 200;
// counter
PMC_opfor = 0;
publicVariable "PMC_opfor";
// destination, ie attack point for enemies.
_targetpoint = getPosASL racsflag;

[] execVM "PMC\PMC_targets.sqf";
sleep 1;

_targetNum = count PMC_targets;

// create units
while {PMC_opfor < _maxOPFORUnits} do
{
	_respawnpoint = getPosASL (PMC_targets select round random (_targetNum - 1));
	waitUntil
	{
		sleep 2;
		(count opforunits < 25);
	};
	[_respawnpoint, _targetpoint] call _PMC_MakeGuardInfOPFOR;
	PMC_opfor = PMC_opfor + 9;
	publicVariable "PMC_opfor";
	sleep 10;
};
