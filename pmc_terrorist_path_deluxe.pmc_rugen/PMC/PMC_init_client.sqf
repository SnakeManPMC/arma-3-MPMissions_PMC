
[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_setViewdistance.sqf";
[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";

[player] execVM "PMC\PMC_playerStuff.sqf";

waitUntil
{
	sleep 0.3;
	(count (missionNamespace getVariable "PMC_initial_lists") > 0);
};

call compile preProcessFileLineNumbers "PMC\PMC_Time_Used_Update.sqf";

[player, "PMC_Count_All_Units", nil, nil, ""] call BIS_fnc_addCommMenuItem;
[player, "PMC_Weather_Forecast", nil, nil, ""] call BIS_fnc_addCommMenuItem;

sleep 2;
titleText["PMC Terrorist Path", "plain down", 2];
sleep 7;
titleText["Hunt, kill, destroy and cause unimagineable destruction on enemy forces", "plain down", 2];

// here is where our war starts
// check if either side has detected each other, then proceed.
waitUntil
{
	sleep 2;
	((PMC_blufor_detected > 0) || (PMC_opfor_detected > 0) );
};

titleText ["Our War has begin, congratulations bitch!", "plain down", 2];
