
[] execVM "PMC\PMC_Set_Mission_Time.sqf";

[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";

// set downed helo to gamelogic's random position. pmc_downed_helo == uh60 wreck model
pmc_downed_helo setDir random 360;
private _terrainHalf = [(worldSize / 2), (worldSize / 2), 0];
private _crashSite = [_terrainHalf, 0, worldSize, 30, 0, 20, 0] call BIS_fnc_findSafePos;

pmc_downed_helo setPos _crashSite;

PMC_crash_site_location = getPosASL pmc_downed_helo;
publicVariable "PMC_crash_site_location";

// set debug marker in the downed helo. this is global command.
"crash_site" setMarkerPos PMC_crash_site_location;

// add the searching insurgent party
[PMC_crash_site_location] execVM "PMC\PMC_Create_Searching_Insurgents.sqf";

[] execVM "PMC\PMC_Tasks.sqf";
