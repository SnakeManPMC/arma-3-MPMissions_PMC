
PMC_Create_Takistani_Militia_Support =
{
	private
	[
		"_grp",
		"_vcl",
		"_vcl2",
		"_vcl3",
		"_respawnpoint"
	];

	_respawnpoint = _this select 0;

	_grp = objNull;
	_grp = createGroup east;
	waitUntil {!(isNull _grp)};

	// car 1 - REAMMO
	_vcl = "CUP_I_Ural_Reammo_UN" createVehicle _respawnpoint;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	[_vcl] execVM "PMC\PMC_Vehicle_Auto_Refuel.sqf";

	// car 2 - REFUEL
	_vcl2 = "CUP_I_V3S_Refuel_TKG" createVehicle [(_respawnpoint select 0)+10, (_respawnpoint select 1), 0];
	_vcl2 addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	[_vcl2] execVM "PMC\PMC_Vehicle_Auto_Refuel.sqf";

	// car 3 - REPAIR
	_vcl3 = "CUP_I_V3S_Repair_TKG" createVehicle [(_respawnpoint select 0)+20, (_respawnpoint select 1), 10];
	_vcl3 addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	[_vcl3] execVM "PMC\PMC_Vehicle_Auto_Refuel.sqf";

	"CUP_O_TK_INS_Soldier_TL" createUnit [_respawnpoint, _grp, "", 0.46, "SERGEANT"];
	(units _grp select 0) moveInDriver _vcl;

	"CUP_I_TK_GUE_Soldier" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	(units _grp select 1) moveInCargo _vcl;

	"CUP_I_TK_GUE_Soldier" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	(units _grp select 2) moveInDriver _vcl2;

	"CUP_I_TK_GUE_Soldier" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	(units _grp select 3) moveInCargo _vcl2;

	"CUP_O_TK_INS_Soldier_AT" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	(units _grp select 4) moveInDriver _vcl3;

	"CUP_O_TK_INS_Soldier_AT" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	(units _grp select 5) moveInCargo _vcl3;

	_grp
};
