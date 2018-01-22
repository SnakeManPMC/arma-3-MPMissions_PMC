
PMC_Create_Takistani_Army_Special_Purpose =
{
	private
	[
		"_grp",
		"_respawnpoint"
	];

	_respawnpoint = _this select 0;

	_grp = objNull;
	_grp = createGroup east;
	waitUntil {!(isNull _grp)};

	"CUP_O_TK_SpecOps_TL" createUnit [_respawnpoint, _grp, "", 0.59, "LIEUTENANT"];
	"CUP_O_TK_SpecOps_MG" createUnit [_respawnpoint, _grp, "", 0.46, "SERGEANT"];
	"CUP_O_TK_SpecOps" createUnit [_respawnpoint, _grp, "", 0.46, "SERGEANT"];
	"CUP_O_TK_SpecOps" createUnit [_respawnpoint, _grp, "", 0.46, "SERGEANT"];
	"CUP_O_TK_SpecOps_MG" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_O_TK_SpecOps" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_O_TK_SpecOps" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];

	_grp
};
