
PMC_Create_Guerrilla_Takistan_Weapons =
{
	private
	[
		"_grp",
		"_respawnpoint"
	];

	_respawnpoint = _this select 0;

	_grp = objNull;
	_grp = createGroup resistance;
	waitUntil {!(isNull _grp)};

	"CUP_I_TK_GUE_Soldier_TL" createUnit [_respawnpoint, _grp, "", 0.46, "SERGEANT"];
	"CUP_I_TK_GUE_Soldier_MG" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_I_TK_GUE_Soldier_AT" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_I_TK_GUE_Soldier_MG" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_I_TK_GUE_Soldier_HAT" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_I_TK_GUE_Soldier_GL" createUnit [_respawnpoint, _grp, "", 0.2, "CORPORAL"];

	_grp
};
