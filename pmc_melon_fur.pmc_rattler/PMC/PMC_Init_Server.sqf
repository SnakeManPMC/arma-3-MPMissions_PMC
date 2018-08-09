
skiptime (((paramsarray select 0) - daytime + 24) % 24);

[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";

[] execVM "PMC\PMC_Tasks.sqf";

PMC_active_fob = getMarkerPos "start";
publicVariable "PMC_active_fob";
