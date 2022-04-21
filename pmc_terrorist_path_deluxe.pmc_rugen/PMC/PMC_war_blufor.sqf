
private
[
	"_grp",
	"_ran",
	"_Max_BLUFOR_On_Map",
	"_respawnpoint",
	"_sleeptime",
	"_targetpoint",
	"_victoryCondition"
];

// maximum number of opfor on the map at one time
_Max_BLUFOR_On_Map = ["PMC_BLUFOR_Strength"] call BIS_fnc_getParamValue;

// random sleep time
// debug long that we don't have many helos ferrying soldiers which then "explode" the unit numbers when disembarked.
_sleeptime = (360 + random 360);

while {true} do
{
	if (count ((WEST countSide allUnits)) < _Max_BLUFOR_On_Map) then
	{
		// random starting location
		//_respawnpoint = ["BLUFOR"] call PMC_SelectStartPosit;
		_respawnpoint = getPosATL blufor_airlift_start;

		_ran = floor (random 8);
		switch (_ran) do
		{
			case 0:
			{
				_grp = [_respawnpoint, WEST, (configFile >> "CfgGroups" >> "West" >> "CUP_B_USMC" >> "Infantry" >> "CUP_B_USMC_InfSquad")] call BIS_fnc_spawnGroup;
				waitUntil {!(isNull _grp)};

				PMC_blufor = PMC_blufor + 9;
				publicVariable "PMC_blufor";
			};
			case 1:
			{
				_grp = [_respawnpoint, WEST, (configFile >> "CfgGroups" >> "West" >> "CUP_B_USMC" >> "Infantry" >> "CUP_B_USMC_FireTeam")] call BIS_fnc_spawnGroup;
				waitUntil {!(isNull _grp)};

				PMC_blufor = PMC_blufor + 9;
				publicVariable "PMC_blufor";
			};
			case 2:
			{
				_grp = [_respawnpoint, WEST, (configFile >> "CfgGroups" >> "West" >> "CUP_B_USMC" >> "Infantry" >> "CUP_B_USMC_FireTeam_MG")] call BIS_fnc_spawnGroup;
				waitUntil {!(isNull _grp)};

				PMC_blufor = PMC_blufor + 9;
				publicVariable "PMC_blufor";
			};
			case 3:
			{
				_grp = [_respawnpoint, WEST, (configFile >> "CfgGroups" >> "West" >> "CUP_B_USMC" >> "Infantry" >> "CUP_B_USMC_FireTeam_AT")] call BIS_fnc_spawnGroup;
				waitUntil {!(isNull _grp)};

				PMC_blufor = PMC_blufor + 9;
				publicVariable "PMC_blufor";
			};
			case 4:
			{
				_grp = [_respawnpoint, WEST, (configFile >> "CfgGroups" >> "West" >> "CUP_B_USMC" >> "Infantry" >> "CUP_B_USMC_FireTeam_Support")] call BIS_fnc_spawnGroup;
				waitUntil {!(isNull _grp)};

				PMC_blufor = PMC_blufor + 9;
				publicVariable "PMC_blufor";
			};
			case 5:
			{
				_grp = [_respawnpoint, WEST, (configFile >> "CfgGroups" >> "West" >> "CUP_B_USMC" >> "Infantry" >> "CUP_B_USMC_HeavyATTeam")] call BIS_fnc_spawnGroup;
				waitUntil {!(isNull _grp)};

				PMC_blufor = PMC_blufor + 9;
				publicVariable "PMC_blufor";
			};
			case 6:
			{
				_grp = [_respawnpoint, WEST, (configFile >> "CfgGroups" >> "West" >> "CUP_B_USMC" >> "Infantry" >> "CUP_B_USMC_SniperTeam")] call BIS_fnc_spawnGroup;
				waitUntil {!(isNull _grp)};

				PMC_blufor = PMC_blufor + 9;
				publicVariable "PMC_blufor";
			};
			case 7:
			{
				_grp = [_respawnpoint, WEST, (configFile >> "CfgGroups" >> "West" >> "CUP_B_USMC" >> "Infantry" >> "CUP_B_USMC_FRTeam")] call BIS_fnc_spawnGroup;
				waitUntil {!(isNull _grp)};

				PMC_blufor = PMC_blufor + 6;
				publicVariable "PMC_blufor";
			};
		};

		// put group into recycle script
		[_grp] execVM "PMC\PMC_groupRecycle.sqf";

		// add one group created.
		PMC_grp_blufor = PMC_grp_blufor + 1;
		publicVariable "PMC_grp_blufor";

		// select target
		//_targetpoint = call PMC_Select_Target;
		PMC_temporary_location setPos (PMC_Locations select (random count PMC_Locations));
		_targetpoint = PMC_temporary_location;

		// ferry them into target area
		[_grp, blufor_airlift_start, _targetpoint] execVM "PMC\PMC_Infantry_Transport_Airborne.sqf";

		// debug
		hintSilent "US Reinforcements Arrive!";
		player sideChat "US Reinforcements Arrive!";
		
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
