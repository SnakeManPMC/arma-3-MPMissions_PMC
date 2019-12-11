
// PMC_fob_open_6.sqf

"respawn_west" setMarkerPosLocal getPosASL pmc_fob_6;
["t6", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
hint "FOB 6 has been opened, respawn has been moved to that location now.";
PMC_active_fob = getPosASL _this select 0;
