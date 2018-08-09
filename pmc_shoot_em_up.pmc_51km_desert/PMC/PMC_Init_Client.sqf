
[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";

// wait until server selects starting location for players
waitUntil { !isNil "PMC_starting_position" };
//player setPos _safePos;
{_x setPosASL [(PMC_starting_position select 0) - 150, PMC_starting_position select 1, 0]} forEach units group player;

[] execVM "PMC\PMC_Briefing.sqf";
