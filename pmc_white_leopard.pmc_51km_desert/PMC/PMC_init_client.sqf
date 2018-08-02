
// set our weather using multiplayer parameter array
[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";

// this might be needed to remove weapons and stuff
waitUntil
{
	(alive player);
};

// wait until server gives us location
waitUntil
{
	!isNil "PMC_hq";
};

// move respawn items there
if (PMC_debug) then { hint format ["alright PMC_hq set!\n%1", PMC_hq]; };
"pmc_target1" setMarkerPosLocal PMC_hq;

// current player
private _playerPos = [PMC_hq, 0, 20, 10, 0, 20, 0] call BIS_fnc_findSafePos;
player setPosATL [_playerPos select 0, _playerPos select 1, 0];
pmc_blufor_respawn1 setPos [(_playerPos select 0), (_playerPos select 1) - 100, 0];
pmc_blufor_respawn2 setPos [(_playerPos select 0), (_playerPos select 1) + 100, 0];
pmc_blufor_respawn3 setPos [(_playerPos select 0) + 100, (_playerPos select 1) - 100, 0];
pmc_blufor_respawn4 setPos [(_playerPos select 0) + 100, (_playerPos select 1) + 100, 0];

// remove all weapons from new player
removeAllWeapons player;

// add killed eventhandler to remove dead player bodies
// respawn script to remove weapon from respawned player
player addEventHandler ["killed", {0 = _this execVM "PMC\PMC_killed.sqf"; 0 = _this execVM "PMC\PMC_respawnPlayer.sqf"}];

// binocular never hurt nobody
player addWeapon "binocular";
// nvg's so he can see at night hehe
player addWeapon "CUP_NVG_PVS7";
// pistol so he can defend himself
player addMagazine "CUP_8Rnd_9x18_Makarov_M";
player addMagazine "CUP_8Rnd_9x18_Makarov_M";
player addMagazine "CUP_8Rnd_9x18_Makarov_M";
player addMagazine "CUP_8Rnd_9x18_Makarov_M";
player addMagazine "CUP_8Rnd_9x18_Makarov_M";
player addMagazine "CUP_8Rnd_9x18_Makarov_M";
player addMagazine "CUP_8Rnd_9x18_Makarov_M";
player addMagazine "CUP_8Rnd_9x18_Makarov_M";
player addWeapon "CUP_Makarov";

player addAction ["Set Mobile Respawn Here", "PMC\PMC_Mobile_Respawn_Set.sqf", true];

[] execVM "PMC\PMC_briefing.sqf";

enableSaving [ false, false ];

sleep 3;
["Desert War", "PMC 51km Desert", "2012-06-23"] spawn BIS_fnc_infoText;
