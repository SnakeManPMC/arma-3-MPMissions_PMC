
pmc_mcomplete = true;
publicVariable "pmc_mcomplete";
// play music track here
hint "Mission accomplished, congratulations!\n\nNow you can continue or end mission with Support 0-8 command.";
[player, "PMC_OrderEndMission", nil, nil, ""] call BIS_fnc_addCommMenuItem;
