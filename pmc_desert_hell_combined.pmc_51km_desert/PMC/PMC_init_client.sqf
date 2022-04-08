
[] execVM "PMC\PMC_Briefing.sqf";

// FARP marker creation on clients
call compile preProcessFileLineNumbers "PMC\PMC_Create_FARP_Marker.sqf";

player setVariable ["BIS_noCoreConversations", true];
