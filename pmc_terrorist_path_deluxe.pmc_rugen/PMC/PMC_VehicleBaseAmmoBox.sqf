
// ammo box in players base

private _v = _this select 0;
if !(local _v) exitWith {};

clearMagazineCargoGlobal _v;
clearWeaponCargoGlobal _v;
clearBackPackCargoGlobal _v;
clearItemCargoGlobal _v;

_v addBackpackCargoGlobal ["CUP_B_AlicePack_Khaki", 5];
_v addBackpackCargoGlobal ["CUP_B_AlicePack_Bedroll", 5];
