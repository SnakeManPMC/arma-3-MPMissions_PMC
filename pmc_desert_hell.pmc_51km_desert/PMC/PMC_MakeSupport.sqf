
private ["_tmp","_respawnpoint","_targetpoint","_waypointRanPosit","_grp","_myVec","_vcl","_wp"];

_tmp =
[
	"CUP_O_Ural_Reammo_CHDKZ",
	"CUP_O_Ural_Refuel_CHDKZ",
	"CUP_O_Ural_Repair_CHDKZ"
];

_respawnpoint = _this select 0;
_targetpoint = _this select 1;
_waypointRanPosit = _this select 2;

_grp = objNull;
_grp = createGroup east;
waitUntil {!(isNull _grp)};

// truck drivers
"CUP_O_RU_Soldier" createUnit [_respawnpoint, _grp, "", random 1, "SERGEANT"];
"CUP_O_RU_Soldier" createUnit [_respawnpoint, _grp, "", random 1, "CORPORAL"];
"CUP_O_RU_Soldier" createUnit [_respawnpoint, _grp, "", random 1, "PRIVATE"];
"CUP_O_RU_Soldier" createUnit [_respawnpoint, _grp, "", random 1, "PRIVATE"];
// security vehicle
"CUP_O_RU_Soldier" createUnit [_respawnpoint, _grp, "", random 1, "PRIVATE"];
"CUP_O_RU_Soldier" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];

// truck 1
_myVec = selectRandom _tmp;
_vcl = _myVec createVehicle _respawnpoint;
(units _grp select 0) moveInDriver _vcl;

// truck 2
_myVec = selectRandom _tmp;
_vcl = _myVec createVehicle _respawnpoint;
(units _grp select 1) moveInDriver _vcl;

// truck 3
_myVec = selectRandom _tmp;
_vcl = _myVec createVehicle _respawnpoint;
(units _grp select 2) moveInDriver _vcl;

// truck 4
_myVec = selectRandom _tmp;
_vcl = _myVec createVehicle _respawnpoint;
(units _grp select 3) moveInDriver _vcl;

// security vehicle #5
_myVec = selectRandom PMC_opfor_vehicle_car_armed;
_vcl = _myVec createVehicle _respawnpoint;
(units _grp select 4) moveInDriver _vcl;
(units _grp select 5) moveInGunner _vcl;

// increment the created units count
PMC_opfor = PMC_opfor + 4;
publicVariable "PMC_opfor";

// these to function somehow nicely, please :(
{
	_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
} forEach units _grp;
_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

_grp setBehaviour "SAFE";
_grp setCombatMode "BLUE";
_grp setSpeedMode "FULL";
_grp setFormation "COLUMN";

_wp = 1;

_grp addWaypoint [_targetpoint, _waypointRanPosit];
[_grp, _wp] setWaypointBehaviour "SAFE";
[_grp, _wp] setWaypointCombatMode "BLUE";
[_grp, _wp] setWaypointSpeed "FULL";
[_grp, _wp] setWaypointFormation "COLUMN";
[_grp, _wp] setWaypointType "SUPPORT";
