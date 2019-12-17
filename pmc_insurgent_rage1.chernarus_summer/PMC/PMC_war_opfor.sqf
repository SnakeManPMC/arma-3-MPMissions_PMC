
private
[
	"_grp",
	"_ran",
	"_Max_OPFOR_On_Map",
	"_respawnpoint",
	"_sleeptime",
	"_targetpoint",
	"_victoryCondition"
];

_victoryCondition = (paramsarray select 3);

// maximum number of opfor on the map at one time
_Max_OPFOR_On_Map = (paramsarray select 2);
//diag_log format["PMC_war_opfor; _victorycondition: %1, _Max_OPFOR_On_map: %2", _victoryCondition, _Max_OPFOR_On_Map];

// random sleep time
_sleeptime = (5 + random 2);

// PMC_SelectStartPosit starting position selecting function
call compile preProcessFileLineNumbers "PMC\PMC_SelectStartPosit.sqf";

call compile preProcessFileLineNumbers "PMC\PMC_SetAISkill.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_Select_Target.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_Create_Insurgent_Group.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_Create_Insurgent_Weapons_Group.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_Create_Insurgent_Militia.sqf";

// get server parameter enemy skill level
private _skill = ["PMC_EnemySkillLevel", 0] call BIS_fnc_getParamValue;
private _PMC_EnemySkillLevel = [_skill] call compile preProcessFileLineNumbers "PMC\PMC_Get_Skill_Level.sqf";
// mission editor placed group skills
[pmc_ins1, _PMC_EnemySkillLevel] call PMC_SetAISkill;

// wait until mission starts and pmc_opforunits trigger is usable.
waitUntil
{
	(!isNil "pmc_opforunits");
};

while {PMC_opfor < _victoryCondition} do
{
	if ((EAST countSide (list pmc_opforunits)) < _Max_OPFOR_On_Map) then
	{
		// random starting location
		_respawnpoint = ["OPFOR"] call PMC_SelectStartPosit;

		_ran = 3;
		_ran = round (random 3);
		switch (_ran) do
		{
			case 0:
			{
				_grp = [_respawnpoint] call PMC_Create_Insurgent_Group;
			};

			case 1:
			{
				_grp = [_respawnpoint] call PMC_Create_Insurgent_Weapons_Group;
			};

			case 2:
			{
				_grp = [_respawnpoint] call PMC_Create_Insurgent_Militia;
			};
		};

		// add one group created.
		PMC_grp_opfor = PMC_grp_opfor + 1;
		publicVariable "PMC_grp_opfor";

		// select target
		_targetpoint = call PMC_Select_Target;

		// set lower skill level
		[_grp, _PMC_EnemySkillLevel] call PMC_SetAISkill;

		{
			_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
		} foreach units _grp;

		_grp setbehaviour "AWARE";
		_grp setcombatmode "RED";
		_grp setspeedmode "FULL";
		_grp setformation "WEDGE";

		// waypoints, we add couple to make patrol area
		// first
		_grp addWaypoint [_targetpoint, 200];
		[_grp, 1] setWaypointBehaviour "AWARE";
		[_grp, 1] setWaypointCombatMode "RED";
		[_grp, 1] setWaypointSpeed "FULL";
		[_grp, 1] setWaypointFormation "WEDGE";
		[_grp, 1] setWaypointType "SAD";

		// cycle
		_grp addWaypoint [_targetpoint, 200];
		[_grp, 2] setWaypointType "GUARD";

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

// log uah ;)
diag_log "PMC_war_opfor; PMC MISSION OBJECTIVES COMPLETED! pmc_opforunits < 20";

// small delay that mission wont end immediately after last guy dies
sleep 5;

// declare mission over.
PMC_mcomplete = true;
publicVariable "PMC_mcomplete";
