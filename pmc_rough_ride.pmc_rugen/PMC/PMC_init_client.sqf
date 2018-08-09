
[] execVM "PMC\PMC_Briefing.sqf";

[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";

// wait until server gives us HQ location
waitUntil { !isNil "PMC_HQ"; };

player setPos PMC_HQ;
