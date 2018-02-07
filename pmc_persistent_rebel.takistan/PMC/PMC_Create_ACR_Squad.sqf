
PMC_Create_ACR_Squad =
{
	private
	[
		"_grp",
		"_respawnpoint"
	];

	_respawnpoint = _this select 0;

	_grp = objNull;
	_grp = createGroup west;
	waitUntil {!(isNull _grp)};

	"CUP_B_CZ_Soldier_SL_DES" createUnit [_respawnpoint, _grp, "", 0.59, "LIEUTENANT"];
	"CUP_B_CZ_Soldier_MG_DES" createUnit [_respawnpoint, _grp, "", 0.46, "SERGEANT"];
	"CUP_B_CZ_Soldier_AT_DES" createUnit [_respawnpoint, _grp, "", 0.46, "CORPORAL"];
	"CUP_B_CZ_Soldier_AMG_DES" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];

	_grp
};
