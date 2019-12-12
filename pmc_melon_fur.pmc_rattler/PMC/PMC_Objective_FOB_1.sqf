
// PMC_Objective_FOB_1.sqf

"respawn_west" setMarkerPosLocal getPosASL pmc_fob_1;
PMC_active_fob = getPosASL pmc_fob_1;
["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
hint "FOB 1 has been opened, respawn has been moved to that location now.";
