
private ["_grp","_respawnpoint","_targetpoint"];

// PMC_Patrol_Inf_Waypoints
call compile preProcessFileLineNumbers "PMC\PMC_Patrol_Inf_Waypoints.sqf";

// PMC_Sentry_Inf_Waypoints
call compile preProcessFileLineNumbers "PMC\PMC_Sentry_Inf_Waypoints.sqf";

// PMC_Create_Takistani_Militia
call compile preProcessFileLineNumbers "PMC\PMC_Create_Takistani_Militia.sqf";

// PMC_Create_Takistani_Army
call compile preProcessFileLineNumbers "PMC\PMC_Create_Takistani_Army.sqf";

// wait until mission starts and pmc_opforunits trigger is usable.
waitUntil
{
	(count (list pmc_opforunits) > 0);
};

for "_a" from 0 to 1 do
{
	_respawnpoint = PMC_Objectives_Array select _a;
	
	// create 1st squad of OPFOR, patrol
	_grp = [_respawnpoint] call PMC_Create_Takistani_Militia;

	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} foreach units _grp;
	
	// select target
	_targetpoint = _respawnpoint;
	
	// create waypoints
	[_grp, _targetpoint, 100] call PMC_Patrol_Inf_Waypoints;

	// write log to RPT
	diag_log format["PMC_Create_OPFOR_Objective_Defenses.sqf: Created group: %1 for %2", _grp, _a];

	// create 2nd squad of OPFOR, sentry
	_grp = [_respawnpoint] call PMC_Create_Takistani_Army;

	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} foreach units _grp;
	
	// select target
	_targetpoint = _respawnpoint;
	
	// create waypoints
	[_grp, _targetpoint, 0] call PMC_Sentry_Inf_Waypoints;

	// write log to RPT
	diag_log format["PMC_Create_OPFOR_Objective_Defenses.sqf: Created group: %1 for %2", _grp, _a];

	// add our created enemies
	PMC_opfor = PMC_opfor + 19;

	// add one group created.
	PMC_grp_opfor = PMC_grp_opfor + 2;
	publicVariable "PMC_grp_opfor";
};

// show new amount of untis to clients
publicVariable "PMC_opfor";
