
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

// maximum number of opfor on the map at one time
_Max_OPFOR_On_Map = ["PMC_OPFOR_Strength"] call BIS_fnc_getParamValue;

// random sleep time
// debug long that we don't have many helos ferrying soldiers which then "explode" the unit numbers when disembarked.
_sleeptime = (360 + random 360);

while {true} do
{
	if (count ((EAST countSide allUnits)) < _Max_OPFOR_On_Map) then
	{
		// random starting location
		//_respawnpoint = ["OPFOR"] call PMC_SelectStartPosit;
		_respawnpoint = getPosATL opfor_airlift_start;

		_ran = floor (random 6);
		switch (_ran) do
		{
			case 0:
			{
				_grp = [_respawnpoint, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Infantry" >> "CUP_O_RU_InfSquad")] call BIS_fnc_spawnGroup;
				waitUntil {!(isNull _grp)};

				PMC_opfor = PMC_opfor + 10;
				publicVariable "PMC_opfor";
			};
			case 1:
			{
				_grp = [_respawnpoint, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Infantry" >> "CUP_O_RU_InfSection")] call BIS_fnc_spawnGroup;
				waitUntil {!(isNull _grp)};

				PMC_opfor = PMC_opfor + 10;
				publicVariable "PMC_opfor";
			};
			case 2:
			{
				_grp = [_respawnpoint, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Infantry" >> "CUP_O_RU_InfSection_AT")] call BIS_fnc_spawnGroup;
				waitUntil {!(isNull _grp)};

				PMC_opfor = PMC_opfor + 10;
				publicVariable "PMC_opfor";
			};
			case 3:
			{
				_grp = [_respawnpoint, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Infantry" >> "CUP_O_RU_InfSection_AA")] call BIS_fnc_spawnGroup;
				waitUntil {!(isNull _grp)};

				PMC_opfor = PMC_opfor + 10;
				publicVariable "PMC_opfor";
			};
			case 4:
			{
				_grp = [_respawnpoint, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Infantry" >> "CUP_O_RU_InfSection_MG")] call BIS_fnc_spawnGroup;
				waitUntil {!(isNull _grp)};

				PMC_opfor = PMC_opfor + 10;
				publicVariable "PMC_opfor";
			};
			case 5:
			{
				_grp = [_respawnpoint, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Infantry" >> "CUP_O_RU_SniperTeam")] call BIS_fnc_spawnGroup;
				waitUntil {!(isNull _grp)};

				PMC_opfor = PMC_opfor + 10;
				publicVariable "PMC_opfor";
			};
		};

		// put group into recycle script
		[_grp] execVM "PMC\PMC_groupRecycle.sqf";

		// add one group created.
		PMC_grp_opfor = PMC_grp_opfor + 1;
		publicVariable "PMC_grp_opfor";

		// select target
		//_targetpoint = call PMC_Select_Target;
		PMC_temporary_location setPos (PMC_Locations select (random count PMC_Locations));
		_targetpoint = PMC_temporary_location;

		// ferry them into target area
		[_grp, opfor_airlift_start, _targetpoint] execVM "PMC\PMC_Infantry_Transport_Airborne_Russian.sqf";

		// debug
		hintSilent "Russian Reinforcements Arrive!";
		player sideChat "Russian Reinforcements Arrive!";

		_ran = floor (random 3);
		// guard rules :)
		//_ran = 1;
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
			case 2:
			{
				// PMC_Sentry_Inf_Waypoints
				[_grp, _targetpoint, 100] call PMC_Sentry_Inf_Waypoints;
			};
		};
	};

	sleep _sleeptime;
};
