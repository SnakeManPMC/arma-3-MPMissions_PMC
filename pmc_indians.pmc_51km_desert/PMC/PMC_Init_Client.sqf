
[] execVM "PMC\PMC_Briefing.sqf";

[] execVM "PMC\PMC_weather.sqf";
sleep 10;
[] call compile preProcessFileLineNumbers "PMC\PMC_weatherForecast.sqf";
