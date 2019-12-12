
// PMC_Objective_FOB_6.sqf

"respawn_west" setMarkerPosLocal getPosASL pmc_fob_6;
PMC_active_fob = getPosASL pmc_fob_6;
["t6", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
hint "FOB 6 has been opened, respawn has been moved to that location now.";
