
// PMC_Objective_FOB_5.sqf

"respawn_west" setMarkerPosLocal getPosASL pmc_fob_5;
PMC_active_fob = getPosASL pmc_fob_5;
["t5", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
hint "FOB 5 has been opened, respawn has been moved to that location now.";
