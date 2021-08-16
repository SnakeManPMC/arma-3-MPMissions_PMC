
setDate [1996, 7, 24, 0, 0];
PMCHQ = [ West, "BASE" ];
[] execVM "PMC\PMC_Set_Mission_Time.sqf";
[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[] execVM "PMC\PMC_Objectives.sqf";
