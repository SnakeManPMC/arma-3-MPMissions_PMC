
/* east dead
trigger radius: 2000
activation: opfor, not present
condition: this
on activation: pmc_opfordead1 = true; hint "Objective 1 completed.";
pmc_marker_3

on activation launch music, then mission end
*/

sleep 60;

waitUntil
{
	sleep 10;
	(count (units EAST inAreaArray "pmc_marker_3") == 0);
};
player sideChat "East/OPFOR is dead.";
sleep 7;

["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
sleep 7;

"pmc_end1" call BIS_fnc_endMission;
