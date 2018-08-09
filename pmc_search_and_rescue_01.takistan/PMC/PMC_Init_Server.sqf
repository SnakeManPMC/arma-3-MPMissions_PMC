
// set downed helo to gamelogic's random position
pmc_downed_helo setDir random 360;
pmc_downed_helo setPos getPosASL pmc_crash_site;

PMC_crash_site_location = getPosASL pmc_downed_helo;
publicVariable "PMC_crash_site_location";

[] execVM "PMC\PMC_Tasks.sqf";
