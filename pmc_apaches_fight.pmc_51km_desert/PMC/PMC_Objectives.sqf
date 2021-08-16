
// obj 2 is opfor killed in huge trigger area
[] spawn
{
	// veeery long wait in the beginning so we dont trigger this before enemy even reaches us
	sleep 60*10;

	// we wait for players to kill some commies...
	waitUntil
	{
		sleep 10;
		(count (units EAST inAreaArray "pmc_marker_2") == 0);
	};
	player sideChat "Russian commie scum assault has been completely annihilated.";
	sleep 10;

	["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
	sleep 7;

	"pmc_end1" call BIS_fnc_endMissionServer;
};

// trigger 2 I should say, is simple timeout of 30 min
[] spawn
{
	sleep 60*45;
	
	PMCHQ sideChat "Congratulations, you wont the waiting game. HQ Out.";
	sleep 4;
	
	["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
	sleep 7;
	
	"pmc_end1" call BIS_fnc_endMissionServer;
};
