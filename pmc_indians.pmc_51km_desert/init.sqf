
[] execVM "briefing.sqf";

// execute weather script
[] execVM "PMC\PMC_weather.sqf";
sleep 10;
// raport some weather forecast on side channel
[] call compile preProcessFileLineNumbers "PMC\PMC_weatherForecast.sqf";
