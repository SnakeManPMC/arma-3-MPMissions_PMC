
PMC_Create_Takistani_Militia_Technicals =
{
	private
	[
		"_grp",
		"_vcl",
		"_vcl2",
		"_respawnpoint"
	];

	_respawnpoint = _this select 0;

	_grp = objNull;
	_grp = createGroup east;
	waitUntil {!(isNull _grp)};

	"CUP_O_TK_INS_Soldier_TL" createUnit [_respawnpoint, _grp, "", 0.46, "SERGEANT"];

	// car 1
	_vcl = "CUP_O_LR_SPG9_TKM" createVehicle _respawnpoint;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	(units _grp select 0) moveInDriver _vcl;

	"CUP_I_TK_GUE_Soldier" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	(units _grp select 1) moveInGunner _vcl;

	// car 2
	_vcl2 = "CUP_O_LR_MG_TKM" createVehicle [(_respawnpoint select 0)+10, (_respawnpoint select 1), 0];
	_vcl2 addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	"CUP_I_TK_GUE_Soldier" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	(units _grp select 2) moveInDriver _vcl2;

	"CUP_I_TK_GUE_Soldier" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	(units _grp select 3) moveInGunner _vcl2;

	"CUP_O_TK_INS_Soldier_AT" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	(units _grp select 4) assignAsCargo _vcl;

	"CUP_O_TK_INS_Soldier_AT" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	(units _grp select 5) assignAsCargo _vcl2;

	_grp
};
