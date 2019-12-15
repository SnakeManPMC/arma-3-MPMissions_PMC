
// PMC_Mission_End_Watch.sqf
// this monitors when mission victory conditions have been met, then completes tasks and does announcement

waitUntil
{
	sleep 30;
	(!PMC_war_blufor && !PMC_war_opfor && ((count list pmc_opforunits + count list pmc_bluforunits)) < 25);
};

diag_log "PMC_Mission_End_Watch, mission victory conditions have been met!";

// task t1 completed, blufor dead
[] execVM "PMC\PMC_Obj1.sqf";
// task t2 completed, opfor dead
[] execVM "PMC\PMC_Obj2.sqf";

sleep 10;
[["Congratulations Mission Completed!", "PLAIN", 1]] remoteExec ["titleText"];

sleep 10;
[["Thank you for playing, hope you had a great time!", "PLAIN", 1]] remoteExec ["titleText"];

sleep 30;
"pmc_end1" call BIS_fnc_endMission;
