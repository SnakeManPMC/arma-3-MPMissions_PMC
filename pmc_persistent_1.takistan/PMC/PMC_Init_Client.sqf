
// eh? try these if the below wont work :)
waitUntil {!(isNull player)};
waitUntil {player == player};

// create briefing objectives
[] execVM "PMC\PMC_Briefing.sqf";

// debug for clients
[] execVM "PMC\PMC_debug.sqf";

// create client objectives
[] execVM "PMC\PMC_Create_Tasks.sqf";

// set our weather using multiplayer parameter array
[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";

player setVariable ["BIS_noCoreConversations", true];
