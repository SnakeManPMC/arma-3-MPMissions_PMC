
// PMC_Objective_FOB_4.sqf

"respawn_west" setMarkerPosLocal getPosASL pmc_fob_4;
PMC_active_fob = getPosASL pmc_fob_4;
["t4", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
hint "FOB 4 has been opened, respawn has been moved to that location now.";
