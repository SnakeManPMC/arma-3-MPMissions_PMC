/*
	PMC_patrol_vehicle_blufor.sqf

Syntax:
[respawnpoint] execVM "PMC\PMC_patrol_vehicle_blufor.sqf";

Requires:
PMC\PMC_create_crew.sqf
PMC\PMC_killed.sqf

Return:
-

*/

PMC_patrol_vehicle_blufor =
{
	private
	[
		"_grp",
		"_myVec",
		"_respawnpoint",
		"_vcl",
		"_vehicle_list"
	];

	_vehicle_list =
	[
		"CUP_B_HMMWV_Ambulance_USA",
		"CUP_B_HMMWV_Avenger_USA",
		"CUP_B_HMMWV_Unarmed_USA",
		"CUP_B_HMMWV_Transport_USA",
		"CUP_B_HMMWV_M2_GPK_USA",
		"CUP_B_HMMWV_M2_GPK_USA",
		"CUP_B_HMMWV_Crows_M2_USA",
		"CUP_B_HMMWV_Crows_MK19_USA",
		"CUP_B_HMMWV_SOV_USA",
		"CUP_B_HMMWV_Crows_MK19_USA",
		"CUP_B_HMMWV_Terminal_USA",
		"CUP_B_HMMWV_TOW_USA",
		"CUP_B_M1126_ICV_M2_Desert",
		"CUP_B_M1126_ICV_MK19_Desert",
		"CUP_B_M1128_MGS_Desert",
		"CUP_B_M1129_MC_MK19_Desert",
		"CUP_B_M1130_CV_M2_Desert",
		"CUP_B_M1135_ATGMV_Desert",
		"CUP_B_M1A1_DES_US_Army",
		"CUP_B_M1A2_TUSK_MG_DES_US_Army",
		"CUP_B_M2Bradley_USA_D",
		"CUP_B_M2A3Bradley_USA_D",
		"CUP_B_M6LineBacker_USA_D",
		"CUP_B_MTVR_USA",
		"CUP_B_MTVR_USA",
		"CUP_B_MTVR_Ammo_USA",
		"CUP_B_MTVR_Refuel_USA",
		"CUP_B_MTVR_Repair_USA"
	];

	_respawnpoint = _this select 0;

	_myVec = (_vehicle_list select floor random (count _vehicle_list));
	_vcl = _myVec createVehicle _respawnpoint;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	_grp = objNull;
	_grp = createGroup west;
	waitUntil {!(isNull _grp)};

	"CUP_B_US_Soldier_GL" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	(units _grp select 0) moveInDriver _vcl;

	[_vcl, _grp] execVM "PMC\PMC_create_crew.sqf";

	// increment the created units count
	PMC_blufor = PMC_blufor + 2;
	publicVariable "PMC_blufor";

	PMC_grp_blufor = PMC_grp_blufor + 1;
	publicVariable "PMC_grp_blufor";

	_grp setBehaviour "SAFE";
	_grp setCombatMode "RED";
	_grp setSpeedMode "FULL";
	_grp setFormation "WEDGE";

diag_log format["PMC_patrol_vehicle_blufor: _vcl: %1, _grp: %2", typeOf _vcl, _grp];

	_grp
};
