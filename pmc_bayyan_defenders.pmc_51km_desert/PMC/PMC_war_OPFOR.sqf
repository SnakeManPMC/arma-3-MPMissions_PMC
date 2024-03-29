/*

	Main createunit script

*/
private ["_targetpoint","_PMC_MakeGuardInfOPFOR","_a","_p","_targetNum","_respawnpoint","_maxOPFORUnits"];

private _skill = ["PMC_EnemySkillLevel", 0] call BIS_fnc_getParamValue;
private _PMC_EnemySkillLevel = [_skill] call compile preProcessFileLineNumbers "PMC\PMC_Get_Skill_Level.sqf";

_PMC_MakeGuardInfOPFOR =
{
        private ["_grp","_respawnpoint","_targetpoint"];

        _respawnpoint = _this select 0;
        _targetpoint = _this select 1;

        _grp = objNull;
	_grp = createGroup east;
	waitUntil {!(isNull _grp)};

	"CUP_O_TK_INS_Soldier_TL" createUnit [_respawnpoint, _grp, "", 0.46, "SERGEANT"];
	"CUP_O_TK_INS_Soldier_MG" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"CUP_O_TK_INS_Soldier_GL" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_O_TK_INS_Soldier_AT" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_O_TK_INS_Soldier" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_O_TK_INS_Soldier_MG" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"CUP_O_TK_INS_Soldier_AR" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"CUP_O_TK_INS_Sniper" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"CUP_O_TK_INS_Soldier_FNFAL" createUnit [_respawnpoint, _grp, "", 0.2, "CORPORAL"];

	{
		_x addEventHandler ["killed", {[_this] execVM "PMC\PMC_killed.sqf"}];
		_x allowFleeing 0;
	} forEach units _grp;

	// set group skills
	[_grp, _PMC_EnemySkillLevel] call PMC_SetAISkill;

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
_targetpoint = getPosASL (missionNamespace getVariable "racsflag");

// choose new digit for the gamelogic "pmc_*"
_a = 1;
_p = missionNamespace getVariable [format ["pmc_%1",_a], objNull];
PMC_targets = [];

// loop until we have no gamelogics left, it then should return 0.
while {!isNull _p && ((getPosASL _p) select 0) != 0} do
{
	// just make array out of the gamelogics
	PMC_targets = PMC_targets + [_p];
	
	// add one digit to our gamelogic name.
	_a = _a + 1;
	_p = missionNamespace getVariable [format ["pmc_%1",_a], objNull];
};

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
