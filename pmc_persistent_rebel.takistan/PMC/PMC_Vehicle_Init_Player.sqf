
// PMC_Vehicle_Init_Player.sqf
// players vehicles how are they initialized like clear weapon cargo, respawn etc.

private _vcl = _this select 0;
if (!local _vcl) exitWith {};

diag_log format["PMC_Vehicle_Init_Player, _vcl: %1", _vcl];

clearWeaponCargoGlobal _vcl;
clearMagazineCargoGlobal _vcl;
