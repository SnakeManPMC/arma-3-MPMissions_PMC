
// set our weather using multiplayer parameter array
[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";

[] execVM "PMC\PMC_Briefing.sqf";

player setPos PMC_active_fob;
"respawn_west" setMarkerPosLocal PMC_active_fob;
