/*

	PMC Create Convoy BLUFOR

Syntax:
[respawnpoint] execVM "PMC\PMC_Create_Convoy_BLUFOR";

Requires:
-

Returns:
-

*/

//PMC_Create_Convoy_BLUFOR.sqf


private ["_grp","_PMC_CreateConvoyVehicles","_respawnpoint"];

_PMC_CreateConvoyVehicles =
{
private ["_grp","_ran","_tlogic","_targetpoint","_wp","_vcl","_respawnpoint","_crewType"];
	_respawnpoint = _this select 0;

	_vcl = objNull;
	_grp = objNull;
	_grp = createGroup west;
	waitUntil {!(isNull _grp)};

	// first vehicle
	_vcl = "CUP_B_M1A2_TUSK_MG_DES_US_Army" createVehicle _respawnpoint;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	// get crew type for this vehicle
	_crewType = getText (configFile >> "CfgVehicles" >> (typeOf _vcl) >> "Crew");
	
	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "LIEUTENANT"];
	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	(units _grp select 0) moveInCommander _vcl;
	(units _grp select 1) moveInGunner _vcl;
	(units _grp select 2) moveInDriver _vcl;

	// second vehicle
	_vcl = "CUP_B_M2Bradley_USA_D" createVehicle [(_respawnpoint select 0),(_respawnpoint select 1)-40];
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	// get crew type for this vehicle
	_crewType = getText (configFile >> "CfgVehicles" >> (typeOf _vcl) >> "Crew");

	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	(units _grp select 3) moveInCommander _vcl;
	(units _grp select 4) moveInGunner _vcl;
	(units _grp select 5) moveInDriver _vcl;

	// third vehicle
// AMMO
	_vcl = "CUP_B_MTVR_Ammo_USA" createVehicle [(_respawnpoint select 0),(_respawnpoint select 1)-80];
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	// get crew type for this vehicle
	_crewType = getText (configFile >> "CfgVehicles" >> (typeOf _vcl) >> "Crew");

	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	(units _grp select 6) moveInDriver _vcl;
	(units _grp select 7) moveInCargo _vcl;

	// fourth vehicle
// FUEL
	_vcl = "CUP_B_MTVR_Refuel_USA" createVehicle [(_respawnpoint select 0),(_respawnpoint select 1)-120];
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	// get crew type for this vehicle
	_crewType = getText (configFile >> "CfgVehicles" >> (typeOf _vcl) >> "Crew");

	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	(units _grp select 8) moveInDriver _vcl;
	(units _grp select 9) moveInCargo _vcl;

	// fifth vehicle (important vehicle with gunner)
	_vcl = "CUP_B_HMMWV_Crows_M2_USA" createVehicle [(_respawnpoint select 0),(_respawnpoint select 1)-160];
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	// get crew type for this vehicle
	_crewType = getText (configFile >> "CfgVehicles" >> (typeOf _vcl) >> "Crew");

	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	(units _grp select 10) moveInDriver _vcl;
	(units _grp select 11) moveInGunner _vcl;

	// sixth vehicle
	_vcl = "CUP_B_HMMWV_Ambulance_USA" createVehicle [(_respawnpoint select 0),(_respawnpoint select 1)-200];
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	// get crew type for this vehicle
	_crewType = getText (configFile >> "CfgVehicles" >> (typeOf _vcl) >> "Crew");

	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	(units _grp select 12) moveInDriver _vcl;
	(units _grp select 13) moveInCargo _vcl;

	// seventh vehicle (important vehicle with gunner)
	_vcl = "CUP_B_MTVR_USA" createVehicle [(_respawnpoint select 0),(_respawnpoint select 1)-240];
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	// get crew type for this vehicle
	_crewType = getText (configFile >> "CfgVehicles" >> (typeOf _vcl) >> "Crew");

	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	(units _grp select 14) moveInDriver _vcl;
	(units _grp select 15) moveInCargo _vcl;

	// eight, trailing vehicle (lets make it heavy)
	_vcl = "CUP_B_M2A3Bradley_USA_D" createVehicle _respawnpoint;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	// get crew type for this vehicle
	_crewType = getText (configFile >> "CfgVehicles" >> (typeOf _vcl) >> "Crew");
	
	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	(units _grp select 16) moveInCommander _vcl;
	(units _grp select 17) moveInGunner _vcl;
	(units _grp select 18) moveInDriver _vcl;

	// increment the created units count
	PMC_blufor = PMC_blufor + 19;
	publicVariable "PMC_blufor";

	// these to function somehow nicely, please :(
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;

	// do these need to be set, before waypoint 0 hmm?
	_grp setFormation "COLUMN";
	_grp setCombatMode "YELLOW";
	_grp setSpeedMode "NORMAL";
	_grp setBehaviour "SAFE";

	// do the random patrolling waypoints
	_wp = 0;
	while {_wp < 20} do
	{
		// choose random target.
		_ran = (floor random count PMC_loc);
		_targetpoint = (PMC_loc select _ran);
		// remove it from the temp array so it wont be chosen again.
		_wp = _wp + 1;

		// add waypoint to this target.
		_grp addWaypoint [_targetpoint, 0];
		[_grp, _wp] setWaypointBehaviour "SAFE";
		[_grp, _wp] setWaypointCombatMode "GREEN";
		[_grp, _wp] setWaypointSpeed "FULL";
		[_grp, _wp] setWaypointFormation "COLUMN";
		[_grp, _wp] setWaypointType "MOVE";
//		[_grp, _wp] setWaypointTimeout [min, mid, max];
		[_grp, _wp] setWaypointTimeout [60*2, 0, 60*20];
	};

	// add one last for cycle, so if he survives, he does it all over again.
	_wp = _wp + 1;
	_grp addWaypoint [_respawnpoint, 0];
	[_grp, _wp] setWaypointBehaviour "SAFE";
	[_grp, _wp] setWaypointCombatMode "GREEN";
	[_grp, _wp] setWaypointSpeed "FULL";
	[_grp, _wp] setWaypointFormation "COLUMN";
	[_grp, _wp] setWaypointType "CYCLE";

	// return the group name
	_grp
};

_respawnpoint = _this select 0;

// loop until our war is over from PMC_war_blufor.sqf
while {PMC_war_blufor} do
{
	_grp = [_respawnpoint] call _PMC_CreateConvoyVehicles;

	sleep 10;
	// we wait until the convoy group is completely dead.
	waitUntil
	{
		sleep 10;
		((count units _grp) == 0);
	};

	// then we delete its group.
	waitUntil
	{
		deleteGroup _grp;
		(isNull _grp);
	};
	// and then we start the whole damn loop all over again :)
};
