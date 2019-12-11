
[] execVM "PMC\PMC_addPublicEventHandlers.sqf";

skiptime (((paramsarray select 0) - daytime + 24) % 24);

[] execVM "PMC\PMC_Briefing.sqf";

// screen is black at start
cutText ["", "BLACK FADED", 9999];

// eh? try these if the below wont work :)
// again, isn't this obsolete as this for the old briefing.sqf method but not needed with shk_taskmaster?
waitUntil {!(isNull player)};
waitUntil {player == player};

// triggers for client
[] execVM "PMC\Triggers.sqf";

// this is gay, its like a debug joke really?
player addAction ["Camera", "camerago.sqf", true];

// debug for clients, remember to remove for release version :)
// v1.63 gives lots of errors, PMC_corpses undefined etc.
// you really need to rework this script.
/* 2019-07-12 various issues with undefined variables with this script and it doesnt relate to game-play, so commented out for now
[] execVM "PMC\PMC_debug.sqf";
*/

// create client objectives, these are just two triggers for blufor/opfor not present
[] execVM "PMC\PMC_Create_Tasks.sqf";

// weather script
//[] execVM "PMC\PMC_weather.sqf";
[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";

// add nice text
cutText ["", "BLACK IN", 2];
sleep 10;
["PMC Persistent Rebel", "Takistan", "2010-07-28"] spawn BIS_fnc_infoText;

// Huge debug shieet ;)
//player setPos [(getPosASL pmc_blufor_start_1 select 0),(getPosASL pmc_blufor_start_1 select 1) + 200];
