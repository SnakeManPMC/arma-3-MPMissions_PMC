
// PMC_fob_open_1.sqf

"respawn_west" setMarkerPosLocal getPosASL pmc_fob_1;
["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
hint "FOB 1 has been opened, respawn has been moved to that location now.";
PMC_active_fob = getPosASL _this select 0;
