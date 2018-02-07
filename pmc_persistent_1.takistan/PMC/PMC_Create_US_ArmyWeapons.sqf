
PMC_Create_US_ArmyWeapons =
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

	"CUP_B_US_Soldier_SL" createUnit [_respawnpoint, _grp, "", 0.59, "LIEUTENANT"];
	"CUP_B_US_Soldier_MG" createUnit [_respawnpoint, _grp, "", 0.46, "SERGEANT"];
	"CUP_B_US_Soldier_GL" createUnit [_respawnpoint, _grp, "", 0.46, "SERGEANT"];
	"CUP_B_US_Soldier_AMG" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_B_US_Soldier_MG" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_B_US_Soldier_GL" createUnit [_respawnpoint, _grp, "", 0.33, "CORPORAL"];
	"CUP_B_US_Soldier_AMG" createUnit [_respawnpoint, _grp, "", 0.2, "CORPORAL"];
	"CUP_B_US_Soldier_LAT" createUnit [_respawnpoint, _grp, "", 0.2, "CORPORAL"];

	_grp
};
