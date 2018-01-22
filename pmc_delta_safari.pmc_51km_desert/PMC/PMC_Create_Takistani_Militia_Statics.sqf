
PMC_Create_Takistani_Militia_Statics =
{
	private
	[
		"_grp",
		"_myVec",
		"_respawnpoint",
		"_vcl",
		"_vehicle_list"
	];

	_vehicle_list =
	[
		"CUP_O_2b14_82mm_TK_INS",
		"CUP_I_AGS_TK_GUE",
		"CUP_O_D30_TK_INS",
		"CUP_O_DSHkM_MiniTriPod_ChDKZ",
		"CUP_O_DSHKM_TK_INS",
		"SPG9_TK_INS_EP1",
		"CUP_O_ZU23_TK_INS"
	];

	_respawnpoint = _this select 0;
	_myVec = (_vehicle_list select floor random (count _vehicle_list));
	_vcl = _myVec createVehicle _respawnpoint;
	_vcl setDir random 360;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	_grp = objNull;
	_grp = createGroup east;
	waitUntil {!(isNull _grp)};

	"CUP_O_TK_INS_Soldier" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	(units _grp select 0) moveInGunner _vcl;

	_grp
};
