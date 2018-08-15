
private _p = _this select 1;

player sidechat format["_p: %1", _p];
player sidechat format["pmc_respawn_mobile: %1", (getPosASL pmc_respawn_mobile)];

pmc_respawn_mobile setPos _p;

player sidechat format["pmc_respawn_mobile after change: %1", (getPosASL pmc_respawn_mobile)];
