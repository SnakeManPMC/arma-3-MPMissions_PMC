// PMC_Locations

private _veh =
[
	"CUP_C_LR_Transport_CTK",
	"CUP_C_Octavia_CIV",
	"CUP_C_Skoda_White_CIV",
	"CUP_C_Skoda_Red_CIV",
	"CUP_C_Skoda_Blue_CIV",
	"CUP_C_Skoda_Green_CIV",
	"CUP_C_UAZ_Unarmed_TK_CIV",
	"CUP_C_UAZ_Open_TK_CIV",
	"CUP_C_Ural_Civ_01",
	"CUP_C_Ural_Civ_02",
	"CUP_C_Ural_Civ_03",
	"CUP_C_Ural_Open_Civ_01",
	"CUP_C_Ural_Open_Civ_02",
	"CUP_C_Ural_Open_Civ_03",
	"CUP_C_V3S_Open_TKC",
	"CUP_C_V3S_Covered_TKC",
	"CUP_C_Datsun",
	"CUP_C_Datsun_4seat",
	"CUP_C_Datsun_Plain",
	"CUP_C_Datsun_Covered",
	"CUP_C_Datsun_Tubeframe",
	"CUP_C_Golf4_red_Civ",
	"CUP_C_Golf4_black_Civ",
	"CUP_C_Golf4_yellow_Civ",
	"CUP_C_Golf4_blue_Civ",
	"CUP_C_Golf4_white_Civ",
	"CUP_C_Golf4_green_Civ",
	"CUP_C_Golf4_whiteblood_Civ",
	"CUP_C_Golf4_camo_Civ",
	"CUP_C_Golf4_camodigital_Civ",
	"CUP_C_Golf4_camodark_Civ",
	"CUP_C_Golf4_reptile_Civ",
	"CUP_C_Golf4_kitty_Civ",
	"CUP_C_SUV_CIV"
];


{
	private _myVeh = selectRandom _veh;
	private _safePos = [(selectRandom PMC_Locations), 0, 100, 30, 0, 20, 0] call BIS_fnc_findSafePos;

	diag_log format["_myVeh: %1, _safePos: %2", _myVeh, _safePos];

	private _vcl = _myVeh createVehicle _safePos;
} forEach PMC_Locations;
