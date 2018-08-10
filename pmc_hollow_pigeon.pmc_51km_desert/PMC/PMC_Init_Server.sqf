
[] execVM "PMC\PMC_Set_Mission_Time.sqf";

[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";

// set downed helo to gamelogic's random position. pmc_downed_helo == uh60 wreck model, pmc_crash_site == gamelogic with random radius
pmc_downed_helo setDir random 360;
pmc_downed_helo setPosATL getPosATL pmc_crash_site;

PMC_crash_site_location = getPosASL pmc_downed_helo;
publicVariable "PMC_crash_site_location";

// set debug marker in the downed helo. this is global command.
"crash_site" setMarkerPos PMC_crash_site_location;

// add the searching insurgent party
[PMC_crash_site_location] execVM "PMC\PMC_Create_Searching_Insurgents.sqf";

[] execVM "PMC\PMC_Tasks.sqf";
