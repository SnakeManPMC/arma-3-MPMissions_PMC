
// PMC_fob_open_2.sqf

"respawn_west" setMarkerPosLocal getPosASL pmc_fob_2;
["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
hint "FOB 2 has been opened, respawn has been moved to that location now.";
PMC_active_fob = getPosASL _this select 0;
