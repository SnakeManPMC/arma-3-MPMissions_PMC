
PMC_Create_ACR_SpecialForcesTeam =
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

	"CUP_B_CZ_SpecOps_TL_DES" createUnit [_respawnpoint, _grp, "", 0.59, "LIEUTENANT"];
	"CUP_B_CZ_SpecOps_MG_DES" createUnit [_respawnpoint, _grp, "", 0.46, "SERGEANT"];
	"CUP_B_CZ_SpecOps_GL_DES" createUnit [_respawnpoint, _grp, "", 0.46, "SERGEANT"];
	"CUP_B_CZ_SpecOps_DES" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_B_CZ_SpecOps_DES" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_B_CZ_SpecOps_Scout_DES" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];

	_grp
};
