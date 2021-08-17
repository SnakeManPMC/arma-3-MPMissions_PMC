
// very long sleep in the beginning so there are bad guys in trigger area when we check it
sleep 60*15;
waitUntil
{
	sleep 10;
	(count (units EAST inAreaArray "pmc_marker_3") == 0);
};
player sideChat "East/OPFOR is dead.";
sleep 7;

["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
sleep 7;

"pmc_end1" call BIS_fnc_endMissionServer;
