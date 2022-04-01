
[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_setViewdistance.sqf";

[player] execVM "PMC\PMC_playerStuff.sqf";

waitUntil
{
	!isNil "PMC_initial_lists";
};

diag_log format["PMC_Init_Client; time: %1, passed PMC_initial_lists waitUntil.", time];

call compile preProcessFileLineNumbers "PMC\PMC_Time_Used_Update.sqf";

[player, "PMC_Count_All_Units", nil, nil, ""] call BIS_fnc_addCommMenuItem;
[player, "PMC_Weather_Forecast", nil, nil, ""] call BIS_fnc_addCommMenuItem;
[player, "PMC_MobileRespawnLocation", nil, nil, ""] call BIS_fnc_addCommMenuItem;

sleep 10;
[] execVM "PMC\PMC_weather_forecast.sqf";

sleep 5;
titleText["PMC Terrorist Path", "plain down", 2];
sleep 7;
titleText["Hunt, kill, destroy and cause unimagineable destruction on enemy forces", "plain down", 2];

// skip this if JIP joins much later
if ((PMC_blufor_detected == 0) && (PMC_opfor_detected == 0)) then
{
	// here is where our war starts
	// check if either side has detected each other, then proceed.
	waitUntil
	{
		sleep 2;
		((PMC_blufor_detected > 0) || (PMC_opfor_detected > 0) );
	};

	titleText ["Our War has begin, congratulations bitch!", "plain down", 2];
};
