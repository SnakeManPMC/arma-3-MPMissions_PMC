
PMC_Create_Takistani_Insurgents_Technicals =
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
	_grp = createGroup resistance;
	waitUntil {!(isNull _grp)};

	"CUP_I_TK_GUE_Soldier_TL" createUnit [_respawnpoint, _grp, "", 0.46, "SERGEANT"];

	// car 1
	_vcl = "CUP_I_UAZ_SPG9_UN" createVehicle _respawnpoint;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	[_vcl] execVM "PMC\PMC_Vehicle_Auto_Refuel.sqf";
	(units _grp select 0) moveInDriver _vcl;

	"CUP_I_TK_GUE_Soldier" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	(units _grp select 1) moveInGunner _vcl;

	// car 2
	_vcl2 = "CUP_I_UAZ_SPG9_UN" createVehicle [(_respawnpoint select 0)+10, (_respawnpoint select 1), 0];
	_vcl2 addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	[_vcl2] execVM "PMC\PMC_Vehicle_Auto_Refuel.sqf";

	"CUP_I_TK_GUE_Soldier" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	(units _grp select 2) moveInDriver _vcl2;
	"CUP_I_TK_GUE_Soldier" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	(units _grp select 3) moveInGunner _vcl2;

	// car 3
	_vcl3 = "CUP_I_Datsun_PK_TK_Random" createVehicle [(_respawnpoint select 0), (_respawnpoint select 1)+10, 0];
	_vcl3 addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	[_vcl3] execVM "PMC\PMC_Vehicle_Auto_Refuel.sqf";

	"CUP_I_TK_GUE_Soldier" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	(units _grp select 4) moveInDriver _vcl3;

	"CUP_I_TK_GUE_Soldier" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	(units _grp select 5) moveInGunner _vcl3;

	"CUP_I_TK_GUE_Soldier_AT" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	(units _grp select 6) assignAsCargo _vcl2;

	"CUP_I_TK_GUE_Soldier" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	(units _grp select 7) assignAsCargo _vcl3;

	_grp
};
