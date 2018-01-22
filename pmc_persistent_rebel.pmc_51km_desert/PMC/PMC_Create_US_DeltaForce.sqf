
PMC_Create_US_DeltaForce =
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

	"CUP_B_US_SpecOps_TL" createUnit [_respawnpoint, _grp, "", 1, "SERGEANT"];
	"CUP_B_US_SpecOps_MG" createUnit [_respawnpoint, _grp, "", 1, "SERGEANT"];
	"CUP_B_US_SpecOps_Assault" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"CUP_B_US_SpecOps_M" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];

	_grp
};
