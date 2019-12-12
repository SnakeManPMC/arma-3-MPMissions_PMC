
[] execVM "PMC\PMC_Set_Mission_Time.sqf";
[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";

[] execVM "PMC\PMC_Tasks.sqf";

// how many times difference sides detected enemies in their territory.
PMC_blufor_detected = 0;
PMC_opfor_detected = 0;

publicVariable "PMC_blufor_detected";
publicVariable "PMC_opfor_detected";
