/*
	Random Takistani Army aircraft patrol over the area.
	New one will be created when old is killed/out of ammo or sorts...

	if you want to externally shut down this script, do:
	PMC_aircraft_opfor_running = false;
	publicVariable "PMC_aircraft_opfor_running";

Syntax:
[_respawnpoint] execVM "PMC\PMC_Aircraft_OPFOR.sqf";

Requires:
PMC\PMC_Create_Crew.sqf"
PMC\PMC_groupRecycle.sqf
PMC\PMC_killed.sqf

Returns:
-
*/

private ["_PMC_Aircraft_OPFOR","_targetpoint","_vcl","_respawnpoint"];

_PMC_Aircraft_OPFOR =
{
	private
	[
		"_grp",
		"_helos",
		"_myVec",
		"_targetpoint",
		"_tmp",
		"_vcl"
	];

	_helos =
	[
		"CUP_O_L39_RKT_TK",
		"CUP_O_Su25_TKA"
	];

	_targetpoint = _this select 0;

	// change this to floor and see if it works ok?
	_myVec = (_helos select floor random (count _helos));
//	_vcl = _myVec createVehicle (getPosASL pmc_opfor_start_1);
	_vcl = createVehicle [_myVec, [0, 51200, 0], [], 0, "FLY"];
	_grp = objNull;
	_grp = createGroup east;
	waitUntil {!(isNull _grp)};

	"CUP_O_TK_Pilot" createUnit [[0, 51200, 0], _grp, "", 1, "SERGEANT"];
	(units _grp select 0) moveInDriver _vcl;

	// create helo crew
	_tmp = [_vcl, _grp] execVM "PMC\PMC_Create_Crew.sqf";

	// wait until crew has been created, then proceed to add killed EH.
	waitUntil
	{
		scriptDone _tmp;
	};

	// recycle the group
	[_grp] execVM "PMC\PMC_groupRecycle.sqf";

	// these to function somehow nicely, please :(
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} foreach units _grp;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	_grp setbehaviour "COMBAT";
	_grp setcombatmode "RED";
	_grp setspeedmode "FULL";
	_grp setformation "WEDGE";

	_grp addWaypoint [_targetpoint, 500];
	[_grp, 1] setWaypointBehaviour "COMBAT";
	[_grp, 1] setWaypointCombatMode "RED";
	[_grp, 1] setWaypointSpeed "FULL";
	[_grp, 1] setWaypointFormation "WEDGE";
	[_grp, 1] setWaypointType "GUARD";
	[_grp, 1] setWaypointCompletionRadius 500;

	// return the vehicle name
	_vcl
};

// set this to false to stop the script
PMC_aircraft_opfor_running = true;
publicVariable "PMC_aircraft_opfor_running";

// initialize him?
PMC_aircraft_opfor = 0;

_respawnpoint = _this select 0;

// never ending loop to create units
while {PMC_aircraft_opfor_running} do
{
	// select target
	_targetpoint = PMC_loc select (random (count PMC_loc));
	// jiggle the fucker as it was array of cooridinates
	pmc_temp_logic setPos _targetpoint;
	pmc_homebase setPos _respawnpoint;

	_vcl = [_targetpoint] call _PMC_Aircraft_OPFOR;

	// lets put up a variable showing helo amounts created
	PMC_aircraft_opfor = PMC_aircraft_opfor + 1;
	publicVariable "PMC_aircraft_opfor";

	PMC_opfor = PMC_opfor + 1;
	publicVariable "PMC_opfor";

	PMC_grp_opfor = PMC_grp_opfor + 1;
	publicVariable "PMC_grp_opfor";

diag_log format["PMC_Aircraft_OPFOR: _vcl: %1, PMC_opfor: %2, PMC_grp_opfor: %3", typeOf _vcl, PMC_opfor, PMC_grp_opfor];

	// do not attempt to create helos more than once a minute
	sleep 60;

	// wait until the helo cannot either; Move or Fire, or its simply dead.
	waitUntil
	{
		// very relaxed script, lets give it 1min room to breathe
		sleep 60;
		// hes dead
		// he cant move
		// he cant fire (but what if he has no weapons like MH6?)
		(!alive _vcl || !canMove _vcl || !canFire _vcl);
	};
};

// debug to show this script is running
PMC_aircraft_opfor_running = false;
publicVariable "PMC_aircraft_opfor_running";
diag_log format["PMC_Aircraft_OPFOR.sqf EXITED! _vcl: %1, PMC_opfor: %2, PMC_grp_opfor: %3", typeOf _vcl, PMC_opfor, PMC_grp_opfor];
