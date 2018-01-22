
PMC_Create_US_Army_Sniper =
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

	"CUP_B_US_Sniper" createUnit [_respawnpoint, _grp, "", 1, "LIEUTENANT"];
	"CUP_B_US_Spotter" createUnit [_respawnpoint, _grp, "", 1, "SERGEANT"];

	_grp
};
