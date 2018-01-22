/*
	Random US helicopter patrol over the area.
	New one will be created when old is killed/out of ammo or sorts...

	if you want to extrenally shut down this script, do:
	PMC_helo_blufor_running = false;
	publicVariable "PMC_helo_blufor_running";

Syntax:
[] execVM "PMC\PMC_HeloBLUFOR.sqf";

Requires:
PMC\PMC_Create_Crew.sqf"
PMC\PMC_groupRecycle.sqf
PMC\PMC_killed.sqf

Returns:
-
*/

private
[
	"_PMC_MakeHeloBLUFOR",
	"_targetpoint",
	"_vcl"
];

_PMC_MakeHeloBLUFOR =
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
		"CUP_B_AH64D_MR_USA",
		"CUP_B_AH6J_MP_USA",
		"CUP_B_CH47F_USA",
		"CUP_B_MH6J_USA",
		"CUP_I_UH1H_TK_GUE",
		"CUP_B_UH60M_US"
	];

	_targetpoint = _this select 0;

	// change this to floor and see if it works ok?
	_myVec = (_helos select floor random (count _helos));
	_vcl = createVehicle [_myVec, (getPosASL pmc_homebase), [], 0, "FLY"];
	_grp = objNull;
	_grp = createGroup west;
	waitUntil {!(isNull _grp)};

	"CUP_B_US_Pilot" createUnit [(getPosASL pmc_homebase), _grp, "", 1, "SERGEANT"];
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
PMC_helo_blufor_running = true;
publicVariable "PMC_helo_blufor_running";

// counter for how many helos created
PMC_helo_blufor = 0;

// never ending loop to create units
while {PMC_helo_blufor_running} do
{
	// select target
	_targetpoint = PMC_loc select (random (count PMC_loc));
	// jiggle the fucker as it was array of cooridinates
	pmc_temp_logic setPos _targetpoint;
	pmc_homebase setPos _respawnpoint;

	_vcl = [_targetpoint] call _PMC_MakeHeloBLUFOR;

	// lets put up a variable showing helo amounts created
	PMC_helo_blufor = PMC_helo_blufor + 1;
	publicVariable "PMC_helo_blufor";

	PMC_blufor = PMC_blufor + 1;
	publicVariable "PMC_blufor";

	PMC_grp_blufor = PMC_grp_blufor + 1;
	publicVariable "PMC_grp_blufor";

diag_log format["PMC_HeloBLUFOR: _vcl: %1, PMC_blufor: %2, PMC_grp_blufor: %3", typeOf _vcl, PMC_blufor, PMC_grp_blufor];

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

diag_log format["PMC_HeloBLUFOR.sqf EXITED! _vcl: %1, PMC_blufor: %2, PMC_grp_blufor: %3", typeOf _vcl, PMC_blufor, PMC_grp_blufor];
