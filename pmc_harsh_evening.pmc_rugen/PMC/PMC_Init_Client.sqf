
[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";

// then exit if on server
//if (isServer) exitWith{};

// eh? try these if the below wont work :)
//waitUntil {!(isNull player)};
//waitUntil {player == player};

// move the crash_team to downed helo
{
	_x setPos [(PMC_crash_site_location select 0) + 20, (PMC_crash_site_location select 1) + 20, 0];
} forEach units crash_team;

[] execVM "PMC\PMC_Briefing.sqf";
