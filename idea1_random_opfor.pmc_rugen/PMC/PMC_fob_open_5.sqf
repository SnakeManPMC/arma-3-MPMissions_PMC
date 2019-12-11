
// PMC_fob_open_5.sqf

"respawn_west" setMarkerPosLocal getPosASL pmc_fob_5;
["t5", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
hint "FOB 5 has been opened, respawn has been moved to that location now.";
PMC_active_fob = getPosASL _this select 0;
