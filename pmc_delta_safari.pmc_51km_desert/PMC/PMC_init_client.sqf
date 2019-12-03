
[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";

[] execVM "PMC\PMC_public_eventhandlers.sqf";

// after respawning player has no weapons and gets the addaction's back
removeAllWeapons player;
// ugly hack for the server vs client PMC_corpses localization :( PMC_corpses array is accessed from PMC_killed which is run everytime player dies, therefore giving undefined variable error
PMC_corpses = [];
player addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"; handle = _this execVM "PMC\PMC_respawnPlayer.sqf"}];

// try to setup respawn marker properly...
if (!isNil "PMC_Setup_My_FOB") then
{
	// PMC_Setup_FOB is variable of the coords of our last FOB
	"respawn_west" setMarkerPosLocal PMC_Setup_My_FOB;
	diag_log format["!isNil: PMC_Setup_FOB: %1", PMC_Setup_My_FOB];
	
	// place our player there
	// this is stupid, why dont setpos pmc_setup_my_fob doesnt work?
	player setPosASL getMarkerPos "respawn_west";
	
	//player sidechat format["PMC_Setup_My_FOB: %1", PMC_Setup_My_FOB];
	//hint format["PMC_Setup_My_FOB: %1", PMC_Setup_My_FOB];
};

waitUntil
{
	(!isNil "PMC_vips") && (!isNil "PMC_scuds")
};

// try to create markers according to the mission objectives, so that JIP players also see them
{
	[(getPosASL leader _x)] call compile preprocessFileLineNumbers "PMC\PMC_Create_Marker_Local.sqf"
} forEach (PMC_vips + PMC_scuds);
//hint format["PMC_vips: %1\n\nPMC_scuds: %2", PMC_vips, PMC_scuds];

// add communications menu for player
[player, "PMC_Create_FOB", nil, nil, ""] call BIS_fnc_addCommMenuItem;
[player, "PMC_Airstrike_A10", nil, nil, ""] call BIS_fnc_addCommMenuItem;
[player, "PMC_Strike_Team", nil, nil, ""] call BIS_fnc_addCommMenuItem;
[player, "PMC_Helo_Extraction", nil, nil, ""] call BIS_fnc_addCommMenuItem;

sleep 10;

call compile preprocessFileLineNumbers "PMC\time_used_update.sqf";
["Mission Time", (call PMC_Time_Used_Update), "Good luck"] spawn BIS_fnc_infoText;

sleep 20;
titleText["Change view distance from the flag pole.", "plain down", 2];
hintSilent "Change view distance from the flag pole.";

sleep 20;
[] execVM "PMC\PMC_AddAction.sqf";
