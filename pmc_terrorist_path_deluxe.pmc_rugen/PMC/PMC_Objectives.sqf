
// individual objectives
[] execVM "PMC\PMC_Objective1.sqf";
[] execVM "PMC\PMC_Objective2.sqf";
[] execVM "PMC\PMC_Objective3.sqf";
[] execVM "PMC\PMC_Objective4.sqf";

// global ending the mission condition
sleep (3*60);
waitUntil
{
	sleep 60;
	(PMC_obj1 && PMC_obj2 && PMC_obj3 && PMC_obj4);
};

pmc_mcomplete = true;
publicVariable "pmc_mcomplete";
// play music track here
diag_log format["PMC_Objectives: %1, All objectives are complete! Mission is over! :-)", time];

"Mission accomplished, congratulations!\n\nNow you can continue or end mission with Support 0-8 command." remoteExec ["hint", 2];
[player, "PMC_OrderEndMission", nil, nil, ""] call BIS_fnc_addCommMenuItem;
