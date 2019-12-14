/*

	PMC Trucks Juicy Load

Syntax:
[respawnpoint] execVM "PMC\PMC_Trucks_Juicy_Load.sqf";

Requires:
PMC\PMC_killed.sqf
PMC\PMC_groupRecycle.sqf

Returns:
-

*/

private ["_grp","_PMC_CreateConvoyVehicles","_respawnpoint"];

_PMC_CreateConvoyVehicles =
{
	private ["_grp","_ran","_tlogic","_PMC_convoyBLUFORtargets","_targetpoint","_ptNum","_wp","_vcl","_respawnpoint","_crewType"];
	_respawnpoint = _this select 0;

	_vcl = objNull;
	_grp = objNull;
	_grp = createGroup west;
	waitUntil {!(isNull _grp)};

	// first vehicle
	_vcl = "CUP_B_HMMWV_Crows_M2_USA" createVehicle _respawnpoint;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	// get crew type for this vehicle
	_crewType = getText (configFile >> "CfgVehicles" >> (typeOf _vcl) >> "Crew");

	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "LIEUTENANT"];
	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	(units _grp select 0) moveInGunner _vcl;
	(units _grp select 1) moveInDriver _vcl;
	(units _grp select 2) moveInCargo _vcl;
	(units _grp select 3) moveInCargo _vcl;

	// was MtvrReammo_DES_EP1 but its cargo space wont hold all the magazines, its reammo truck, not "cargo" truck.
	_vcl = "CUP_B_MTVR_USA" createVehicle [(_respawnpoint select 0),(_respawnpoint select 1)-20];
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	// clear cargo
	clearMagazineCargo _vcl;
	clearWeaponCargo _vcl;
	// add magazines and weapons
//	_vcl addMagazineCargoGlobal ["", 5];
//	_vcl addWeaponCargoGlobal ["", 5];

// mags
	_vcl addMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M", 5];
	_vcl addMagazineCargoGlobal ["CUP_10Rnd_127x99_M107", 12];
	_vcl addMagazineCargoGlobal ["CUP_15Rnd_9x19_M9", 12];
	_vcl addMagazineCargoGlobal ["CUP_17Rnd_9x19_glock17", 12];
	_vcl addMagazineCargoGlobal ["CUP_1Rnd_HE_M203", 12];
	_vcl addMagazineCargoGlobal ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249", 5];
	_vcl addMagazineCargoGlobal ["CUP_20Rnd_762x51_B_SCAR", 12];
	_vcl addMagazineCargoGlobal ["CUP_20Rnd_762x51_DMR", 12];
	_vcl addMagazineCargoGlobal ["CUP_20Rnd_762x51_B_SCAR", 12];
	_vcl addMagazineCargoGlobal ["CUP_30Rnd_556x45_Stanag", 12];
	_vcl addMagazineCargoGlobal ["CUP_30Rnd_556x45_Stanag", 12];
	_vcl addMagazineCargoGlobal ["CUP_5Rnd_762x51_M24", 12];
/*
	_vcl addMagazineCargoGlobal ["Dragon_EP1", 12];
	_vcl addMagazineCargoGlobal ["Javelin", 11];
	_vcl addMagazineCargoGlobal ["M136", 5];
	_vcl addMagazineCargoGlobal ["CUP_MineE", 10];
*/
	_vcl addMagazineCargoGlobal ["CUP_PipeBomb_M", 10];
	_vcl addMagazineCargoGlobal ["CUP_SMAW_HEAA_M", 5];
	_vcl addMagazineCargoGlobal ["CUP_SMAW_HEDP_M", 5];
	_vcl addMagazineCargoGlobal ["CUP_Stinger_M", 12];
// weapons
	_vcl addWeaponCargoGlobal ["Binocular", 1];
	_vcl addWeaponCargoGlobal ["CUP_Binocular_Vector", 1];
	_vcl addWeaponCargoGlobal ["CUP_Glock17_EP1", 1];
	_vcl addWeaponCargoGlobal ["CUP_M107", 1];
	_vcl addWeaponCargoGlobal ["CUP_M110_NVG_EP1", 1];
	_vcl addWeaponCargoGlobal ["CUP_M110_TWS_EP1", 1];
/*
	_vcl addWeaponCargoGlobal ["Javelin", 1];
	_vcl addWeaponCargoGlobal ["M136", 1];
*/
	_vcl addWeaponCargoGlobal ["CUP_srifle_M14_Aim", 1];
	_vcl addWeaponCargoGlobal ["CUP_M24_des_EP1", 1];
	_vcl addWeaponCargoGlobal ["CUP_m240_scoped_EP1", 1];
	_vcl addWeaponCargoGlobal ["CUP_M249_EP1", 1];
	_vcl addWeaponCargoGlobal ["CUP_M47Launcher_EP1", 1];
	_vcl addWeaponCargoGlobal ["CUP_M4A1_AIM_SD_camo", 1];
	_vcl addWeaponCargoGlobal ["CUP_arifle_M4A1_M203_ACOG_Laser", 1];
	_vcl addWeaponCargoGlobal ["CUP_lmg_M60A4", 1];
	_vcl addWeaponCargoGlobal ["CUP_glaunch_M79", 1];
	_vcl addWeaponCargoGlobal ["CUP_M9SD", 1];
	_vcl addWeaponCargoGlobal ["CUP_NVG_PVS7", 1];
	_vcl addWeaponCargoGlobal ["CUP_SCAR_H_CQC_CCO_SD", 1];
	_vcl addWeaponCargoGlobal ["CUP_SCAR_H_STD_EGLM_Spect", 1];
	_vcl addWeaponCargoGlobal ["CUP_launch_Mk153Mod0_SMAWOptics", 1];
	_vcl addWeaponCargoGlobal ["CUP_launch_FIM92Stinger", 1];

	// get crew type for this vehicle
	_crewType = getText (configFile >> "CfgVehicles" >> (typeOf _vcl) >> "Crew");

	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	(units _grp select 4) moveInDriver _vcl;
	(units _grp select 5) moveInCargo _vcl;

	// trail vehicle
	_vcl = "CUP_B_HMMWV_Crows_MK19_USA" createVehicle [(_respawnpoint select 0),(_respawnpoint select 1)-40];
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	// get crew type for this vehicle
	_crewType = getText (configFile >> "CfgVehicles" >> (typeOf _vcl) >> "Crew");

	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	_crewType createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	(units _grp select 6) moveInGunner _vcl;
	(units _grp select 7) moveInDriver _vcl;
	(units _grp select 8) moveInCargo _vcl;
	(units _grp select 9) moveInCargo _vcl;
	(units _grp select 10) moveInCargo _vcl;

	// increment the created units count
	PMC_blufor = PMC_blufor + 19;
	publicVariable "PMC_blufor";

	// these to function somehow nicely, please :(
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;
	[_grp] execVM "PMC\PMC_groupRecycle.sqf";

	// do these need to be set, before waypoint 0 hmm?
	_grp setFormation "COLUMN";
	_grp setCombatMode "GREEN";
	_grp setSpeedMode "FULL";
	_grp setBehaviour "SAFE";

	// selecting the waypoint locations
	_ptNum = count PMC_targets;
	_PMC_convoyBLUFORtargets = [];
	_PMC_convoyBLUFORtargets = PMC_targets;

	// do the random patrolling waypoints
	_wp = 0;
	while {count _PMC_convoyBLUFORtargets > 0} do
	{
		// choose random target.
		_ran = (floor random _ptNum);
		_tlogic = (_PMC_convoyBLUFORtargets select _ran);
		// remove it from the temp array so it wont be chosen again.
		_PMC_convoyBLUFORtargets = _PMC_convoyBLUFORtargets - [_tlogic];
		// get its coordinates.
		_targetpoint = getPosASL _tlogic;
		_ptNum = _ptNum - 1;
		_wp = _wp + 1;

		// add waypoint to this target.
		_grp addWaypoint [_targetpoint, 0];
		[_grp, _wp] setWaypointBehaviour "SAFE";
		[_grp, _wp] setWaypointCombatMode "GREEN";
		[_grp, _wp] setWaypointSpeed "FULL";
		[_grp, _wp] setWaypointFormation "COLUMN";
		[_grp, _wp] setWaypointType "MOVE";
//		[_grp, _wp] setWaypointTimeout [min, mid, max];
		[_grp, _wp] setWaypointTimeout [60*5, 60*10, 60*20];
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

while {true} do
{
	_grp = [_respawnpoint] call _PMC_CreateConvoyVehicles;

	sleep 10;
	// we wait until the convoy group is completely dead and fps is high enough to create more
	waitUntil
	{
		sleep 10;
		((count units _grp) == 0 && (diag_fps > 15));
	};

	// then we delete its group.
	waitUntil
	{
		deleteGroup _grp;
		(isNull _grp);
	};
	// and then we start the whole damn loop all over again :)
};
