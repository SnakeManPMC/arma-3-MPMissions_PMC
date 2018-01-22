/*

	Vehicles for player

*/
private
[
	"_pos",
	"_grp",
	"_grp2"
];

// just to make sure our location is chosen
waitUntil { !isNil "PMC_HQ"; };

_pos = PMC_HQ;

// create bunch of vehicles and all ammo boxes :)
{
	_newPos = [_pos, 0, 100, 10, 0, 0, 0] call BIS_fnc_findSafePos;
	createVehicle [_x, _newPos, [], 0, "NONE"];
} forEach
[
	"CUP_B_AAV_USMC",
	"CUP_B_AH1Z_USMC",
	"CUP_B_AH64D_MR_USA",
	"CUP_B_AH6J_MP_USA",
	"CUP_B_CH47F_USA",
	"CUP_CZBasicWeapons_EP1",
	"CUP_GERBasicWeapons_EP1",
	"CUP_GuerillaCacheBox",
	"CUP_GuerillaCacheBox_EP1",
	"CUP_B_HMMWV_Unarmed_USMC",
	"CUP_B_HMMWV_Ambulance_USMC",
	"CUP_B_HMMWV_M1114_USMC",
	"CUP_B_HMMWV_M2_USMC",
	"CUP_B_HMMWV_MK19_USMC",
	"CUP_B_HMMWV_TOW_USMC",
	"CUP_B_LAV25_USMC",
	"CUP_LocalBasicAmmunitionBox",
	"CUP_LocalBasicWeaponsBox",
	"CUP_I_M113_UN",
	"CUP_B_M119_USMC",
	"CUP_B_M1A1_Woodland_USMC",
	"M252",
	"CUP_B_M2Bradley_USA_D",
	"CUP_B_MH60S_USMC",
	"CUP_B_MTVR_USMC",
	"CUP_B_MTVR_Ammo_USMC",
	"CUP_B_MTVR_Refuel_USMC",
	"CUP_B_MTVR_Repair_USMC",
	"CUP_RUBasicAmmunitionBox",
	"CUP_RUBasicWeaponsBox",
	"CUP_RULaunchersBox",
	"CUP_RUOrdnanceBox",
	"CUP_RUSpecialWeaponsBox",
	"CUP_RUVehicleBox",
	"CUP_RUSpecialWeaponsBox",
	"CUP_TKBasicAmmunitionBox_EP1",
	"CUP_TKBasicWeapons_EP1",
	"CUP_TKLaunchers_EP1",
	"CUP_TKOrdnanceBox_EP1",
	"CUP_TKSpecialWeapons_EP1",
	"CUP_TKVehicleBox_EP1",
	"CUP_B_UH1Y_UNA_USMC",
	"CUP_B_UH60M_US",
	"CUP_UNBasicAmmunitionBox_EP1",
	"CUP_UNBasicWeapons_EP1",
	"CUP_USBasicAmmunitionBox",
	"CUP_USBasicAmmunitionBox_EP1",
	"CUP_USBasicWeapons_EP1",
	"CUP_USBasicWeaponsBox",
	"CUP_USLaunchers_EP1",
	"CUP_USLaunchersBox",
	"CUP_USOrdnanceBox",
	"CUP_USOrdnanceBox_EP1",
	"CUP_USSpecialWeapons_EP1",
	"CUP_USSpecialWeaponsBox",
	"CUP_USVehicleBox",
	"CUP_USVehicleBox_EP1"
];
