
// create briefing
[] execVM "briefing.sqf";
// use the other guys weather for testing
[] execVM "PMC\PMC_setViewdistance.sqf";
enableSaving [ false, false ];

[player] execVM "PMC\PMC_playerStuff.sqf";

waitUntil
{
	sleep 0.3;
	(count (missionNamespace getVariable "PMC_initial_lists") > 0);
};

call compile preProcessFileLineNumbers "PMC\PMC_Time_Used_Update.sqf";

// here is where our war starts
// check if either side has detected each other, then proceed.
waitUntil
{
	sleep 2;
	((PMC_blufor_detected > 0) || (PMC_opfor_detected > 0) );
};

titleText ["Our War has begin, congratulations bitch!", "plain down", 2];
