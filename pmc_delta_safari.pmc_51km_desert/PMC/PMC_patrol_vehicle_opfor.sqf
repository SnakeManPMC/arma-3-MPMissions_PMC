/*
	PMC_patrol_vehicle_opfor.sqf

Syntax:
[respawnpoint] execVM "PMC\PMC_patrol_vehicle_opfor.sqf";

Requires:
PMC\PMC_killed.sqf
PMC\PMC_create_crew.sqf

Returns:
-

*/

PMC_patrol_vehicle_opfor =
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
		"CUP_O_BMP_HQ_TKA",
		"CUP_O_BMP2_TKA",
		"CUP_O_BRDM2_ATGM_TKA",
		"CUP_O_BRDM2_TKA",
		"CUP_O_BTR40_MG_TKM",
		"CUP_O_BTR40_TKM",
		"CUP_O_BTR60_TK",
		"CUP_O_BM21_TKA",
		"CUP_O_LR_MG_TKA",
		"CUP_O_LR_SPG9_TKA",
		"CUP_O_M113_TKA",
		"CUP_O_BM21_TKA",
		"CUP_O_T34_TKA",
		"CUP_O_T55_TK",
		"CUP_O_T72_TKA",
		"CUP_O_UAZ_AGS30_TKA",
		"CUP_O_UAZ_MG_TKA",
		"CUP_O_UAZ_Unarmed_TKA",
		"CUP_C_Ural_Civ_01",
		"CUP_O_Ural_ZU23_TKA",
		"CUP_O_V3S_Open_TKA",
		"CUP_O_V3S_Covered_TKA"
	];

	_respawnpoint = _this select 0;
	_myVec = (_vehicle_list select floor random (count _vehicle_list));
	_vcl = _myVec createVehicle _respawnpoint;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	_grp = objNull;
	_grp = createGroup east;
	waitUntil {!(isNull _grp)};

	"CUP_O_TK_Soldier_GL" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	(units _grp select 0) moveInDriver _vcl;

	[_vcl, _grp] execVM "PMC\PMC_create_crew.sqf";

	// increment the created units count
	missionNamespace setVariable ["PMC_opfor", (missionNamespace getVariable "PMC_opfor") + 2];
	publicVariable "PMC_opfor";

	missionNamespace setVariable ["PMC_grp_opfor", (missionNamespace getVariable "PMC_grp_opfor") + 1];
	publicVariable "PMC_grp_opfor";

	_grp setBehaviour "SAFE";
	_grp setCombatMode "RED";
	_grp setSpeedMode "FULL";
	_grp setFormation "WEDGE";

	if (PMC_debug) then
	{
		diag_log format["PMC_patrol_vehicle_opfor: _vcl: %1, _grp: %2", typeOf _vcl, _grp];
	};

	_grp
};
