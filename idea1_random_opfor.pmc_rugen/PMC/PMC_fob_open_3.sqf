
// PMC_fob_open_3.sqf

"respawn_west" setMarkerPosLocal getPosASL pmc_fob_3;
["t3", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
hint "FOB 3 has been opened, respawn has been moved to that location now.";
PMC_active_fob = getPosASL _this select 0;
