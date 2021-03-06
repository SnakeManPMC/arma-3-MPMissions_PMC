/*

	Airstrike comes in with A10's to wipe out enemy vehicles

Syntax:
[strike position, respawnpoint] execVM "PMC\PMC_Airstrike_Target.sqf";

Requires:
PMC\PMC_killed.sqf

Returns:
-

*/

// if we are on client, exit
//if (!isServer) exitWith {};

private ["_p","_respawnpoint","_vcl","_grp","_a10pilot"];

_p = _this select 1;
_respawnpoint = getPos PMC_blufor_start_1;

player sidechat format["PMC_Airstrike_Target; (server side), _p: %1, _respawnpoint: %2", _p, _respawnpoint];
diag_log format["PMC_Airstrike_Target; (server side), _p: %1, _respawnpoint: %2", _p, _respawnpoint];

//_vcl = createVehicle ["CUP_B_A10_CAS_USA", _respawnpoint, [], 0, "FLY"];
_vcl = createVehicle ["CUP_B_A10_DYN_USA", _respawnpoint, [], 0, "FLY"];
private _pylons =
	[
		"CUP_PylonPod_19Rnd_Rocket_FFAR_plane_M",
		"CUP_PylonPod_19Rnd_Rocket_FFAR_plane_M",
		"CUP_PylonPod_3Rnd_AGM65_Maverick_M",
		"CUP_PylonPod_3Rnd_AGM65_Maverick_M",
		"CUP_PylonPod_3Rnd_AGM65_Maverick_M",
		"CUP_PylonPod_3Rnd_AGM65_Maverick_M",
		"CUP_PylonPod_3Rnd_AGM65_Maverick_M",
		"CUP_PylonPod_3Rnd_AGM65_Maverick_M",
		"CUP_PylonPod_3Rnd_AGM65_Maverick_M",
		"CUP_PylonPod_1Rnd_AGM65_Maverick_M",
		"CUP_PylonPod_ANAAQ_28"
	];
private _pylonPaths = (configProperties [configFile >> "CfgVehicles" >> typeOf _vcl >> "Components" >> "TransportPylonsComponent" >> "Pylons", "isClass _x"]) apply {getArray (_x >> "turret")};
{ _vcl removeWeaponGlobal getText (configFile >> "CfgMagazines" >> _x >> "pylonWeapon") } forEach getPylonMagazines _vcl;
{ _vcl setPylonLoadout [_forEachIndex + 1, _x, true, _pylonPaths select _forEachIndex] } forEach _pylons;

_grp = createGroup west;
waitUntil {!(isNull _grp)};

"CUP_B_US_Pilot" createUnit [_respawnpoint, _grp, "", 1, "SERGEANT"];
(units _grp select 0) moveInDriver _vcl;

// recycle the group
[_grp] execVM "PMC\PMC_groupRecycle.sqf";

_a10pilot = leader _grp;
_a10pilot sideChat "Ready to rock'n'roll!";

// these to function somehow nicely, please :(
{
	_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
} foreach units _grp;
_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

_grp setbehaviour "CARELESS";
_grp setcombatmode "BLUE";
_grp setspeedmode "FULL";
_grp setformation "WEDGE";

// first just in case one simple move, no fuss, no huss
_vcl move _p;
// then we check if we are far away and automatically move him, if we are not, this returns umm nothing
// and the above move command continues to to take effect
[_vcl, _p] execVM "PMC\PMC_plotWaypoints_Holding_Hands.sqf";

// small wait so he will start to move
sleep 10;

// wait until he is ready, DEAD or close to assault target.
waitUntil
{
	sleep 2;
	diag_log format["PMC_Airstrike_Target; A10 airstrike closing in to target, distance: %1", (_vcl distance _p)];
	( (!alive _vcl) || (unitReady _vcl) || (_vcl distance _p < 500) );
};

diag_log "PMC_Airstrike_Target; A10 just reached _p!";
PMC_Hint = "A10 in station!";
publicVariable "PMC_Hint";
_a10pilot sideChat "A10 on station, ready to attack!";

// waypoints, we add couple to make patrol area
_grp addWaypoint [_p, 0];
// search and destroy waypoint
[_grp, 1] setWaypointType "MOVE";
[_grp, 1] setWaypointBehaviour "CARELESS";
[_grp, 1] setWaypointCombatMode "BLUE";
[_grp, 1] setWaypointSpeed "FULL";
[_grp, 1] setWaypointCompletionRadius 1000;

_grp addWaypoint [_p, 0];
[_grp, 2] setWaypointType "SAD";
[_grp, 2] setWaypointBehaviour "AWARE";
[_grp, 2] setWaypointCombatMode "RED";
[_grp, 2] setWaypointSpeed "NORMAL";
[_grp, 2] setWaypointCompletionRadius 1000;

_grp addWaypoint [_p, 0];
[_grp, 3] setWaypointType "MOVE";
[_grp, 3] setWaypointCompletionRadius 1000;
[_grp, 3] setWaypointStatements ["true", "PMC_Hint = 'A10 reached MOVE waypoint, now what? heh'; publicVariable 'PMC_Hint';"];

sleep 5;

// just exit, no have any cool radio calls for player notifying him... but lets just exit from this script
if (!alive _vcl) exitWith
{
	diag_log "PMC_Airstrike_Target; Tough luck, PMC_Airstrike_Target bird crashed heh";
	player sideChat "Tough luck, PMC_Airstrike_Target bird crashed heh";
};

// tricky checks if they have completed their "mission"
waitUntil
{
	diag_log format["PMC_Airstrike_Target; looping while A10's strike some targets... %1", time];
	// very relaxed
	sleep 10;
	// they are:
	// all dead
	// leader ready
	( (!canMove _vcl) || (unitReady leader _grp) );
};

diag_log "PMC_Airstrike_Target; Airstrike looping waituntil is done (one way or the other)";
_a10pilot sideChat "Airstrike looping waituntil is done (one way or the other)";

// death check, assault is alive or dead
if ( (!alive _vcl) || (!canMove _vcl) ) exitWith
{
	diag_log "PMC_Airstrike_Target; A10 group is dead hehe.";
	player sideChat "A10 group is dead hehe.";
};

diag_log "PMC_Airstrike_Target; Airstrike death checks done, alive!";
_a10pilot sideChat "Airstrike death checks done, alive!";

// move back to the starting point
_vcl move _respawnpoint;

// move the helo
[_vcl, _respawnpoint] execVM "PMC\PMC_plotWaypoints_Holding_Hands.sqf";

PMC_Hint = "A10 winchester, return to base.";
publicVariable "PMC_Hint";
_a10pilot sideChat "A10 winchester, return to base.";

// small wait so he will start to move
sleep 10;

// wait until he is ready, DEAD or close to home base.
waitUntil
{
	sleep 2;
	( (!alive _vcl) || (unitReady _vcl) || (_vcl distance _respawnpoint < 100) );
};

diag_log "PMC_Airstrike_Target; Airstrike A10 is either dead, ready or close enough in home base?";
if (alive _a10pilot) then
{
	_a10pilot sideChat "I'm still alive baby! At home base, safe and sound. Thank you for your co-operation.";
}
else
{
	player sideChat "A10 pilot is dead...";
};

// just exit, no have any cool radio calls for player notifying him... but lets just exit from this script
if (!alive _vcl) exitWith
{
	diag_log "PMC_Airstrike_Target; Tough luck, A10 crashed heh";
	player sideChat "Tough luck, A10 crashed heh";
};

// wait and then delete the crew, the vehicle and the strike team
sleep 5;

{
	deleteVehicle _x;
} forEach units _grp;
deleteVehicle _vcl;

PMC_Hint = "A10 landing, mission complete!";
publicVariable "PMC_Hint";

diag_log "PMC_Airstrike_Target; Airstrike mission is *COMPLETELY* done, all successfully completed, congrats! :-)";
player sideChat "Airstrike mission is *COMPLETELY* done, all successfully completed, congrats! :-)";
