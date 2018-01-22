
PMC_opfor_vehicle_heavy = ["CUP_O_BMP2_CHDKZ","CUP_O_BMP2_CHDKZ","CUP_O_ZSU23_ChDKZ","CUP_O_T72_RU","CUP_O_T72_RU"];
PMC_opfor_vehicle_car_armed = ["CUP_O_UAZ_AGS30_RU","CUP_O_UAZ_MG_CHDKZ","CUP_O_BRDM2_CHDKZ","CUP_O_BRDM2_ATGM_CHDKZ"];
PMC_opfor_vehicle_car_unarmed = ["CUP_O_Ural_Repair_CHDKZ","CUP_O_Ural_Reammo_CHDKZ","CUP_O_Ural_Refuel_CHDKZ","CUP_C_Ural_Civ_01","CUP_O_Ural_Open_CHDKZ","CUP_O_UAZ_Unarmed_RU"];

PMC_CreateOPFORVehicles =
{
private ["_grp","_myVec","_vcl","_respawnpoint","_all_OPFOR_vecH","_wp","_targetpoint"];
_all_OPFOR_vecH = ["CUP_O_Ka52_RU","CUP_O_Mi8_RU","CUP_O_Mi8_RU"];
        
        _respawnpoint = _this select 0;
        _targetpoint = _this select 1;
        
        _myVec = objNull;
	_vcl = objNull;
	_grp = objNull;
	_grp = createGroup east;
	waitUntil {!(isNull _grp)};

	// first vehicle
        _myVec = (PMC_opfor_vehicle_heavy select round random ((count PMC_opfor_vehicle_heavy) - 1));
	_vcl = _myVec createVehicle _respawnpoint;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "LIEUTENANT"];
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	(units _grp select 0) moveInCommander _vcl;
	(units _grp select 1) moveInGunner _vcl;
	(units _grp select 2) moveInDriver _vcl;

	// second vehicle
	_myVec = (PMC_opfor_vehicle_heavy select round random ((count PMC_opfor_vehicle_heavy) - 1));
	_vcl = _myVec createVehicle [(_respawnpoint select 0),(_respawnpoint select 1)-40];
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	(units _grp select 3) moveInCommander _vcl;
	(units _grp select 4) moveInGunner _vcl;
	(units _grp select 5) moveInDriver _vcl;

	// third vehicle
	_myVec = (PMC_opfor_vehicle_car_armed select round random ((count PMC_opfor_vehicle_car_armed) - 1));
	_vcl = _myVec createVehicle [(_respawnpoint select 0),(_respawnpoint select 1)-80];
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	(units _grp select 6) moveInDriver _vcl;
	(units _grp select 7) moveInGunner _vcl;

	// fourth vehicle
	_myVec = (PMC_opfor_vehicle_car_armed select round random ((count PMC_opfor_vehicle_car_armed) - 1));
	_vcl = _myVec createVehicle [(_respawnpoint select 0),(_respawnpoint select 1)-120];
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	(units _grp select 8) moveInDriver _vcl;
	(units _grp select 9) moveInGunner _vcl;

	// fifth vehicle (cargo stuff?)
	_myVec = (PMC_opfor_vehicle_car_unarmed select round random ((count PMC_opfor_vehicle_car_unarmed) - 1));
	_vcl = _myVec createVehicle [(_respawnpoint select 0),(_respawnpoint select 1)-160];
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	"CUP_O_RU_Soldier" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"CUP_O_RU_Soldier_SL" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	(units _grp select 10) moveInDriver _vcl;
	(units _grp select 11) moveInCargo _vcl;

	// sixth vehicle (cargo stuff?)
	_myVec = (PMC_opfor_vehicle_car_unarmed select round random ((count PMC_opfor_vehicle_car_unarmed) - 1));
	_vcl = _myVec createVehicle [(_respawnpoint select 0),(_respawnpoint select 1)-200];
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	"CUP_O_RU_Soldier" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"CUP_O_RU_Soldier_SL" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	(units _grp select 12) moveInDriver _vcl;
	(units _grp select 13) moveInCargo _vcl;

	// seventh vehicle
	_myVec = (PMC_opfor_vehicle_car_unarmed select round random ((count PMC_opfor_vehicle_car_unarmed) - 1));
	_vcl = _myVec createVehicle [(_respawnpoint select 0),(_respawnpoint select 1)-240];
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	"CUP_O_RU_Soldier" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"CUP_O_RU_Soldier_SL" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	(units _grp select 14) moveInDriver _vcl;
	(units _grp select 15) moveInCargo _vcl;

	// eight, trailing vehicle (lets make it heavy)
	_myVec = (PMC_opfor_vehicle_heavy select round random ((count PMC_opfor_vehicle_heavy) - 1));
	_vcl = _myVec createVehicle _respawnpoint;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	(units _grp select 16) moveInCommander _vcl;
	(units _grp select 17) moveInGunner _vcl;
	(units _grp select 18) moveInDriver _vcl;

	// new one, helo!
	// nine, airsupport
	_myVec = (_all_OPFOR_vecH select round random ((count _all_OPFOR_vecH) - 1));
	_vcl = createVehicle [_myVec, _respawnpoint, [], 0, "FLY"];
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	
	"CUP_O_RU_Pilot" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"CUP_O_RU_Pilot" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	(units _grp select 19) moveInGunner _vcl;
	(units _grp select 20) moveInDriver _vcl;

	// increment the created units count
	PMC_opfor = PMC_opfor + 21;
	publicVariable "PMC_opfor";

	// these to function somehow nicely, please :(
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} foreach units _grp;

	_grp setBehaviour "COMBAT";
	_grp setCombatMode "RED";
	_grp setFormation "COLUMN";
	_grp setSpeedMode "NORMAL";

	_wp = 1;
	// add waypoint to this target.
	_grp addWaypoint [_targetpoint, 0];
	[_grp, _wp] setWaypointBehaviour "COMBAT";
	[_grp, _wp] setWaypointCombatMode "RED";
	[_grp, _wp] setWaypointFormation "COLUMN";
	[_grp, _wp] setWaypointSpeed "NORMAL";
	[_grp, _wp] setWaypointType "GUARD";
};
