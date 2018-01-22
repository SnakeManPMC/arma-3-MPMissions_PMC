
PMC_Create_Takistani_Army_Support =
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

	"CUP_O_TK_Medic" createUnit [_respawnpoint, _grp, "", 0.33, "LIEUTENANT"];
	"CUP_O_TK_Medic" createUnit [_respawnpoint, _grp, "", 0.33, "SERGEANT"];
	"CUP_O_TK_Medic" createUnit [_respawnpoint, _grp, "", 0.2, "CORPORAL"];

	_grp
};
