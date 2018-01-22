
PMC_Create_Insurgent_Militia =
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

	"CUP_O_INS_Worker2" createUnit [_respawnpoint, _grp, "", 0.46, "SERGEANT"];
	"CUP_O_INS_Woodlander3" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_O_INS_Villager3" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_O_INS_Woodlander2" createUnit [_respawnpoint, _grp, "", 0.2, "CORPORAL"];
	"CUP_O_INS_Woodlander1" createUnit [_respawnpoint, _grp, "", 0.2, "CORPORAL"];
	"CUP_O_INS_Villager4" createUnit [_respawnpoint, _grp, "", 0.2, "CORPORAL"];

	_grp
};
