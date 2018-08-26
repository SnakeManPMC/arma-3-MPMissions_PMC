
private
[
	"_grp",
	"_pos",
	"_safePos",
	"_ran"
];

_pos = getPosASL opfor_land_start;

diag_log format["PMC_Create_Vehicles_OPFOR _pos: %1", _pos];

while {PMC_CreatingVehiclesOPFOR} do
{
	if ( ('landVehicle' countType list pmc_opfor_list) < 20 ) then
	{
		_safePos = [_pos, 0, 500, 30, 0, 20, 0] call BIS_fnc_findSafePos;

		_ran = floor (random 9);
		diag_log format["PMC_Create_Vehicles_OPFOR _ran: %1, landVehicles: %2", _ran, ('landVehicle' countType list pmc_opfor_list)];
		switch (_ran) do
		{
			case 0:
			{
				_grp = [_safePos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Armored" >> "RU_TankPlatoon")] call BIS_fnc_spawnGroup;
				diag_log format["PMC_Create_Vehicles_OPFOR: TANKS!!!! _grp: %1", _grp];
			};
			case 1:
			{
				_grp = [_safePos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Motorized" >> "CUP_O_RU_MotInfSquad")] call BIS_fnc_spawnGroup;
			};
			case 2:
			{
				_grp = [_safePos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Motorized" >> "CUP_O_RU_MotInfSquad")] call BIS_fnc_spawnGroup;
			};
			case 3:
			{
				_grp = [_safePos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Mechanized" >> "CUP_O_RU_MechInfSquad_2")] call BIS_fnc_spawnGroup;
			};
			case 4:
			{
				_grp = [_safePos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Mechanized" >> "CUP_O_RU_MechInfSquad_2")] call BIS_fnc_spawnGroup;
			};
			case 5:
			{
				_grp = [_safePos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Motorized" >> "CUP_O_RU_MotInfSquad")] call BIS_fnc_spawnGroup;
			};
			case 6:
			{
				_grp = [_safePos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Armored" >> "RU_TankPlatoon")] call BIS_fnc_spawnGroup;
				diag_log format["PMC_Create_Vehicles_OPFOR: TANKS!!!! _grp: %1", _grp];
			};
			case 7:
			{
				_grp = [_safePos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Armored" >> "RU_TankPlatoon")] call BIS_fnc_spawnGroup;
				diag_log format["PMC_Create_Vehicles_OPFOR: TANKS!!!! _grp: %1", _grp];
			};
			case 8:
			{
				_grp = [_safePos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Armored" >> "RU_TankPlatoon")] call BIS_fnc_spawnGroup;
				diag_log format["PMC_Create_Vehicles_OPFOR: TANKS!!!! _grp: %1", _grp];
			};
		};

		{
			_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
		} forEach units _grp;

		_targetpoint = (selectRandom PMC_Locations);
		diag_log format["PMC_Create_Vehicles_OPFOR _targetpoint: %1, _grp: %2", _targetpoint, _grp];

		[_grp, _targetpoint, 0] call PMC_Guard_Inf_Waypoints;
	};

	sleep 60;
};
