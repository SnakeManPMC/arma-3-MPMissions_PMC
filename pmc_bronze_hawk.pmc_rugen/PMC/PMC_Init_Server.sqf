
skiptime (((paramsarray select 0) - daytime + 24) % 24);

[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";

[] execVM "PMC\PMC_Tasks.sqf";

PMC_corpses = [];
[150] execVM "PMC\PMC_corpses.sqf";
PMC_killedNum = 0;

[] execVM "PMC\PMC_targets.sqf";
waitUntil
{
	sleep 1;
	(!isNil "PMC_targets");
};
[] execVM "PMC\PMC_unit_arrays.sqf";
[] execVM "PMC\PMC_opfor.sqf";
