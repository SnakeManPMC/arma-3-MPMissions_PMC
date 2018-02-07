
private ["_grp","_Max_OPFOR_On_Map","_respawnpoint","_sleeptime","_victoryCondition"];

// how many enemies to create
// ArmA 2 group limit per side is 144 ?
// 500 / 10 = 50 groups.
// 1400 / 10 = 140 groups.
_victoryCondition = 1400;

// maximum number of opfor on the map at one time
_Max_OPFOR_On_Map = 100;

// random sleep time
_sleeptime = (5 + random 2);

// PMC_SelectStartPosit starting position selecting function
call compile preProcessFileLineNumbers "PMC\PMC_SelectStartPosit.sqf";

// PMC_Select_Target
call compile preProcessFileLineNumbers "PMC\PMC_Select_Target.sqf";

// PMC_Patrol_Inf_Waypoints
call compile preProcessFileLineNumbers "PMC\PMC_Patrol_Inf_Waypoints.sqf";

// PMC_Guard_Inf_Waypoints
call compile preProcessFileLineNumbers "PMC\PMC_Guard_Inf_Waypoints.sqf";

// PMC_Patrol_Inf_Targets_Waypoints
call compile preProcessFileLineNumbers "PMC\PMC_Patrol_Inf_Targets_Waypoints.sqf";

// PMC_Create_Takistani_Militia
call compile preProcessFileLineNumbers "PMC\PMC_Create_Takistani_Militia.sqf";

// wait until mission starts and pmc_opforunits trigger is usable.
waitUntil
{
	(count (list pmc_opforunits) > 0);
};

while {PMC_opfor < _victoryCondition} do
{
	if ((EAST countSide (list pmc_opforunits)) < _Max_OPFOR_On_Map) then
	{
		// random starting location
		_respawnpoint = ["OPFOR"] call PMC_SelectStartPosit;

		// create 1st squad of OPFOR
		_grp = [_respawnpoint] call PMC_Create_Takistani_Militia;

		// put group into recycle script
		[_grp] execVM "PMC\PMC_groupRecycle.sqf";

		// add one group created.
		PMC_grp_opfor = PMC_grp_opfor + 1;
		publicVariable "PMC_grp_opfor";

		// select target
		//_targetpoint = call PMC_Select_Target;

[_grp, 100] call PMC_Patrol_Inf_Targets_Waypoints;

/*
		_ran = floor (random 2);
		switch (_ran) do
		{
			case 0:
		    	{
				// PMC_Patrol_Inf_Waypoints
				[_grp, _targetpoint, 100] call PMC_Patrol_Inf_Waypoints;
		    	};
			case 1:
			{
				// PMC_Guard_Inf_Waypoints
				[_grp, _targetpoint, 0] call PMC_Guard_Inf_Waypoints;
			};
		};
*/
		// add our created enemies
		PMC_opfor = PMC_opfor + 10;
		publicVariable "PMC_opfor";
	};
	sleep _sleeptime;
};

// small wait
sleep 60;

// when enemy count drops below value, end mission!
waitUntil
{
	sleep 5;
	((EAST countSide (list pmc_opforunits)) < 20);
};

diag_log "PMC MISSION OBJECTIVES COMPLETED! pmc_opforuntis < 20";

// and final check that both objectives are completed.
waitUntil
{
	sleep 5;
	(PMC_target1 && PMC_target2);
};

diag_log "PMC MISSION OBJECTIVES COMPLETED! PMC_target1 && PMC_target2";

// declare mission over.
PMC_mcomplete = true;
publicVariable "PMC_mcomplete";
