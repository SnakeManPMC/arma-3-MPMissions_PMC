
private
[
	"_grp",
	"_pos",
	"_safePos",
	"_ran"
];

_pos = getPosASL blufor_land_start;

while {PMC_CreatingVehiclesBLUFOR} do
{
	if ( ('landVehicle' countType list pmc_blufor_list) < 10 ) then
	{
		[] execVM "PMC\PMC_Count_All_Units.sqf";
		_safePos = [_pos, 0, 500, 30, 0, 20, 0] call BIS_fnc_findSafePos;

		_ran = round (random 5);
		switch (_ran) do
		{
			case 0:
			{
				_grp = [_safePos, WEST, (configFile >> "CfgGroups" >> "West" >> "CUP_B_USMC" >> "Armored" >> "CUP_B_USMC_TankPlatoon")] call BIS_fnc_spawnGroup;
			};
			case 1:
			{
				_grp = [_safePos, WEST, (configFile >> "CfgGroups" >> "West" >> "CUP_B_USMC" >> "Motorized" >> "CUP_B_USMC_MotInfSection_AT")] call BIS_fnc_spawnGroup;
			};
			case 2:
			{
				_grp = [_safePos, WEST, (configFile >> "CfgGroups" >> "West" >> "CUP_B_USMC" >> "Mechanized" >> "CUP_B_USMC_MechInfSquad")] call BIS_fnc_spawnGroup;
			};
			case 3:
			{
				_grp = [_safePos, WEST, (configFile >> "CfgGroups" >> "West" >> "CUP_B_USMC" >> "Mechanized" >> "CUP_B_USMC_MechReconSection")] call BIS_fnc_spawnGroup;
			};
			case 4:
			{
				_grp = [_safePos, WEST, (configFile >> "CfgGroups" >> "West" >> "CUP_B_USMC" >> "Motorized" >> "CUP_B_USMC_MotInfSection")] call BIS_fnc_spawnGroup;
			};
		};

		{
			_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
		} forEach units _grp;

		PMC_temporary_location setPos (selectRandom PMC_Locations);
		_targetpoint = PMC_temporary_location;

		[_grp, _targetpoint, 0] call PMC_Sentry_Inf_Waypoints;
	};

	sleep 60;
};
