
PMC_Create_Takistani_Army =
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

	"CUP_O_TK_Soldier_SL" createUnit [_respawnpoint, _grp, "", 0.59, "LIEUTENANT"];
	"CUP_O_TK_Soldier_MG" createUnit [_respawnpoint, _grp, "", 0.46, "SERGEANT"];
	"CUP_O_TK_Soldier_AT" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_O_TK_Soldier_GL" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_O_TK_Soldier_MG" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_O_TK_Soldier_LAT" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_O_TK_Soldier_GL" createUnit [_respawnpoint, _grp, "", 0.2, "CORPORAL"];
	"CUP_O_TK_Soldier_AAT" createUnit [_respawnpoint, _grp, "", 0.2, "CORPORAL"];
	"CUP_O_TK_Soldier_AMG" createUnit [_respawnpoint, _grp, "", 0.2, "CORPORAL"];

	_grp
};
