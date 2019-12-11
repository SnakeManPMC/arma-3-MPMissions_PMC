
[] execVM "PMC\PMC_addPublicEventHandlers.sqf";

skiptime (((paramsarray select 0) - daytime + 24) % 24);

[] execVM "PMC\PMC_Briefing.sqf";

// screen is black at start
cutText ["", "BLACK FADED", 9999];

// triggers for client
[] execVM "PMC\Triggers.sqf";

// this is gay, its like a debug joke really?
player addAction ["Camera", "camerago.sqf", true];

// create client objectives, these are just two triggers for blufor/opfor not present
[] execVM "PMC\PMC_Create_Tasks.sqf";

cutText ["", "BLACK IN", 2];
sleep 10;
["PMC Persistent Rebel", "Takistan", "2010-07-28"] spawn BIS_fnc_infoText;
