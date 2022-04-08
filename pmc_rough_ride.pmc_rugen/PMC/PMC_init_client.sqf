
[] execVM "PMC\PMC_Briefing.sqf";

// wait until server gives us HQ location
waitUntil { !isNil "PMC_HQ"; };

player setPos PMC_HQ;
