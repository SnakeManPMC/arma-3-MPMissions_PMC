
[] execVM "PMC\PMC_Briefing.sqf";

waitUntil
{
	(!isNil "PMC_active_fob");
};

player setPos PMC_active_fob;
"respawn_west" setMarkerPosLocal PMC_active_fob;
