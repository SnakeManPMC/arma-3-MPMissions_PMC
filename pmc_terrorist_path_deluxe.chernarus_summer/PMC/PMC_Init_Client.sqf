
[] execVM "PMC\PMC_Briefing.sqf";

// no guns for our bad guys
removeAllWeapons player;

waitUntil
{
	(!isNil (missionNamespace getVariable "PMC_initial_lists"));
};

call compile preProcessFileLineNumbers "PMC\PMC_Time_Used.sqf";
//[] execVM "PMC\PMC_Count_All_Units.sqf";

// here is where our war starts
// check if either side has detected each other, then proceed.
waitUntil
{
	((PMC_blufor_detected > 0) || (PMC_opfor_detected > 0) );
};

titleText ["Our War has begin, congratulations bitch!", "plain down", 2];
