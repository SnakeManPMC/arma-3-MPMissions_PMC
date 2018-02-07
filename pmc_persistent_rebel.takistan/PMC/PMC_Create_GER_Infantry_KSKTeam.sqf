
PMC_Create_GER_Infantry_KSKTeam =
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

	"CUP_B_GER_Soldier_TL" createUnit [_respawnpoint, _grp, "", 0.59, "SERGEANT"];
	"CUP_B_GER_Soldier_MG" createUnit [_respawnpoint, _grp, "", 0.46, "CORPORAL"];
	"CUP_B_GER_Soldier" createUnit [_respawnpoint, _grp, "", 0.46, "CORPORAL"];
	"CUP_B_GER_Soldier_Scout" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_B_GER_Soldier" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_B_GER_Medic" createUnit [_respawnpoint, _grp, "", 0.33, "PRIVATE"];

	_grp
};
