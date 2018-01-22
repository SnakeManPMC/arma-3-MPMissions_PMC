
PMC_Create_Takistani_Army_Sniper =
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

	"CUP_O_TK_Sniper_KSVK" createUnit [_respawnpoint, _grp, "", 1, "LIEUTENANT"];
	"CUP_O_TK_Spotter" createUnit [_respawnpoint, _grp, "", 1, "SERGEANT"];

	_grp
};
