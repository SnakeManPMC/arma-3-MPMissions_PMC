
if (isServer) then
{
	[] execVM "PMC\PMC_init.sqf";
};

// create briefing objectives
[] execVM "briefing.sqf";
[] execVM "PMC\PMC_weather.sqf";

player setVariable ["BIS_noCoreConversations", true];

enableSaving [ false, false ];
