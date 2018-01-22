/*
	PMC Create VIP
	
Syntax:
[position] execVM "PMC\PMC_Create_VIP.sqf";

Example:
[_pos] execVM "PMC\PMC_Create_VIP.sqf";

Requires:
PMC\PMC_killed.sqf

Returns:
-

*/

private ["_respawnpoint","_grp","_unit"];

_respawnpoint = _this select 0;

_grp = createGroup east;
waitUntil {!(isNull _grp)};

// our VIP
_unit = _grp createUnit ["CUP_O_TK_Story_Aziz", _respawnpoint, [], 1, "FORM"];
_unit setRank "COLONEL";

// add crazy good skillz for them
// except, is aimingspeed 0 or 1 good? :)
{
	_unit setSkill [_x, 1];
} forEach
[
	"aimingAccuracy",
	"aimingShake",
	"aimingSpeed",
	"endurance",
	"spotDistance",
	"spotTime",
	"courage",
	"reloadSpeed",
	"commanding",
	"general"
];

// add golden gangsta revolver
removeAllWeapons _unit;
_unit addMagazine "CUP_6Rnd_45ACP_M";
_unit addMagazine "CUP_6Rnd_45ACP_M";
_unit addWeapon "CUP_Revolver_gold_EP1";

// his bodyguards
"CUP_O_TK_SpecOps_TL" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
"CUP_O_TK_SpecOps" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
"CUP_O_TK_SpecOps" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
"CUP_O_TK_SpecOps" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
"CUP_O_TK_SpecOps_MG" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
"CUP_O_TK_SpecOps_MG" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];

{
	_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
} forEach units _grp;
[_grp] execVM "PMC\PMC_groupRecycle.sqf";

_grp addWaypoint [_respawnpoint, 0];
[_grp, 1] setWaypointBehaviour "SAFE";
[_grp, 1] setWaypointCombatMode "YELLOW";
[_grp, 1] setWaypointSpeed "LIMITED";
[_grp, 1] setWaypointFormation "DIAMOND";
[_grp, 1] setWaypointType "SENTRY";

// add this group to the vips array
PMC_vips = PMC_vips + [leader _grp];
