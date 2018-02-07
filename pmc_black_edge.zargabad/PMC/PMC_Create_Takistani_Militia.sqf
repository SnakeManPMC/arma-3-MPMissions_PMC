
PMC_Create_Takistani_Militia =
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

	"CUP_O_TK_INS_Soldier_TL" createUnit [_respawnpoint, _grp, "", 0.46, "SERGEANT"];
	"CUP_O_TK_INS_Soldier_MG" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_O_TK_INS_Soldier_GL" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_O_TK_INS_Soldier_AT" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_O_TK_INS_Soldier" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_O_TK_INS_Soldier_MG" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_O_TK_INS_Soldier_AR" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_O_TK_INS_Sniper" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_O_TK_INS_Soldier_Enfield" createUnit [_respawnpoint, _grp, "", 0.2, "CORPORAL"];
	"CUP_O_TK_INS_Soldier_FNFAL" createUnit [_respawnpoint, _grp, "", 0.2, "CORPORAL"];

	_grp
};
