
// ran on players, take away weapons

private _p = _this select 0;

removeAllweapons _p;

_p addEventHandler ["killed", {0 = _this execVM "PMC\PMC_killed.sqf"; 0 = _this execVM "PMC\PMC_respawnPlayer.sqf"}];
