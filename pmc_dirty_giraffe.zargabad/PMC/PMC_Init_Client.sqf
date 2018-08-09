
[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";

[] execVM "PMC\PMC_Briefing.sqf";

// if first FOB is in place already
if (!isNil PMC_active_fob) then
{
	player setPos PMC_active_fob;
	"respawn_west" setMarkerPosLocal PMC_active_fob;
};

/*
	reference

PMC_active_fob == Position of current fob, so on mission join do;

player setPos PMC_active_fob;
"respawn_west" setMarkerPosLocal PMC_active_fob;

*/
