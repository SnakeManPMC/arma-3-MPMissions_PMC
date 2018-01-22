
PMC_Create_US_Army_Support =
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

	"CUP_B_US_Soldier_TL" createUnit [_respawnpoint, _grp, "", 0.46, "LIEUTENANT"];
	"CUP_B_US_Soldier_GL" createUnit [_respawnpoint, _grp, "", 0.33, "SERGEANT"];
	"CUP_B_US_Soldier_Marksman" createUnit [_respawnpoint, _grp, "", 0.33, "SERGEANT"];
	"CUP_B_US_Medic" createUnit [_respawnpoint, _grp, "", 0.2, "CORPORAL"];

	_grp
};
