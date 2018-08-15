
// ran to all player owned v3s trucks to setup cargo space properly

private _v = _this select 0;
if !(local _v) exitWith {};

clearMagazineCargoGlobal _v;
clearWeaponCargoGlobal _v;
clearBackPackCargoGlobal _v;
clearItemCargoGlobal _v;

/*
_v addItemCargoGlobal ["CUP_SOFLAM", 2];
_v addItemCargoGlobal ["CUP_LRTV", 2];
_v addItemCargoGlobal ["CUP_Laserdesignator", 2];
_v addItemCargoGlobal ["CUP_LRTV_ACR", 2];
_v addItemCargoGlobal ["Laserbatteries", 16];
_v addItemCargoGlobal ["CUP_Binocular_Vector", 2];
_v addItemCargoGlobal ["NVGoggles", 2];

_v addWeaponCargoGlobal ["Binocular", 2];
_v addWeaponCargoGlobal ["Rangefinder", 2];
_v addWeaponCargoGlobal ["ItemGPS", 2];

// vehicleName addMagazineCargoGlobal [magazineName, count]
*/

_v addBackpackCargoGlobal ["CUP_B_AlicePack_Khaki", 5];
_v addBackpackCargoGlobal ["CUP_B_AlicePack_Bedroll", 5];
