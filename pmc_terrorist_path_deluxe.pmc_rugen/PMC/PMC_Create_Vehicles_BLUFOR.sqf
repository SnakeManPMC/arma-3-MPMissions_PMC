
private
[
	"_grp",
	"_pos",
	"_safePos",
	"_ran"
];

_pos = getPosASL blufor_land_start;

diag_log format["PMC_Create_Vehicles_BLUFOR _pos: %1", _pos];

while {PMC_CreatingVehiclesBLUFOR} do
{
	if ( ('landVehicle' countType list pmc_blufor_list) < 20 ) then
	{
		_safePos = [_pos, 0, 500, 30, 0, 20, 0] call BIS_fnc_findSafePos;

		_ran = floor (random 8);
		diag_log format["PMC_Create_Vehicles_BLUFOR _ran: %1, landVehicles: %2", _ran, ('landVehicle' countType list pmc_blufor_list)];
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
			case 5:
			{
				_grp = [_safePos, WEST, (configFile >> "CfgGroups" >> "West" >> "CUP_B_USMC" >> "Armored" >> "CUP_B_USMC_TankPlatoon")] call BIS_fnc_spawnGroup;
			};
			case 6:
			{
				_grp = [_safePos, WEST, (configFile >> "CfgGroups" >> "West" >> "CUP_B_USMC" >> "Armored" >> "CUP_B_USMC_TankPlatoon")] call BIS_fnc_spawnGroup;
			};
			case 7:
			{
				_grp = [_safePos, WEST, (configFile >> "CfgGroups" >> "West" >> "CUP_B_USMC" >> "Armored" >> "CUP_B_USMC_TankPlatoon")] call BIS_fnc_spawnGroup;
			};
		};

		{
			_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
		} forEach units _grp;

		_targetpoint = (selectRandom PMC_Locations);
		diag_log format["PMC_Create_Vehicles_BLUFOR _targetpoint: %1, _grp: %2", _targetpoint, _grp];

		[_grp, _targetpoint, 0] call PMC_Guard_Inf_Waypoints;
	};

	sleep 60;
};
