
PMC_Create_Insurgent_Weapons_Group =
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

	"CUP_O_INS_Officer" createUnit [_respawnpoint, _grp, "", 0.46, "SERGEANT"];
	"CUP_O_INS_Soldier_MG" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"CUP_O_INS_Soldier_MG" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"CUP_O_INS_Soldier_AT" createUnit [_respawnpoint, _grp, "", 0.2, "CORPORAL"];
	"CUP_O_INS_Soldier_AT" createUnit [_respawnpoint, _grp, "", 0.2, "CORPORAL"];
	"CUP_O_INS_Soldier_AR" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"CUP_O_INS_Soldier_AR" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"CUP_O_INS_Soldier" createUnit [_respawnpoint, _grp, "", 0.2, "CORPORAL"];

	_grp
};
