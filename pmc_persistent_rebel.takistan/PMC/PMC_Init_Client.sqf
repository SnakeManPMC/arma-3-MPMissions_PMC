
[] execVM "PMC\PMC_addPublicEventHandlers.sqf";

[] execVM "PMC\PMC_Briefing.sqf";

// screen is black at start
cutText ["", "BLACK FADED", 9999];

// triggers pmc_bluforunits and pmc_opforunits
[] execVM "PMC\Triggers.sqf";

// player
removeAllWeapons player;
// original with non working pmc_killed which requires pmc_corpses[]
//player addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"; handle = _this execVM "PMC\PMC_respawnPlayer.sqf"}];
player addEventHandler ["killed", {0 = _this execVM "PMC\PMC_respawnPlayer.sqf"}];

cutText ["", "BLACK IN", 2];
sleep 10;
["PMC Persistent Rebel", "Takistan", "2010-07-28"] spawn BIS_fnc_infoText;
