
// PMC_Objective_FOB_2.sqf

"respawn_west" setMarkerPosLocal getPosASL pmc_fob_2;
PMC_active_fob = getPosASL pmc_fob_2;
["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
hint "FOB 2 has been opened, respawn has been moved to that location now.";
