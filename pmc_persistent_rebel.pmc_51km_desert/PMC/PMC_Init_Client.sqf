
[] execVM "PMC\PMC_addPublicEventHandlers.sqf";

skiptime (((paramsarray select 0) - daytime + 24) % 24);

[] execVM "PMC\PMC_Briefing.sqf";

// screen is black at start
cutText ["", "BLACK FADED", 9999];

[] execVM "PMC\Triggers.sqf";

[] execVM "PMC\PMC_Create_Tasks.sqf";

cutText ["", "BLACK IN", 2];
sleep 10;
["PMC Persistent Rebel", "PMC 51km Desert", "07-28-10"] spawn BIS_fnc_infoText;
