
private
[
	"_grp",
	"_pos",
	"_safePos",
	"_ran"
];

_pos = getPosASL opfor_land_start;

while {PMC_CreatingVehiclesOPFOR} do
{
	if ( ('landVehicle' countType list pmc_opfor_list) < 10 ) then
	{
		[] execVM "PMC\PMC_Count_All_Units.sqf";
		_safePos = [_pos, 0, 500, 30, 0, 20, 0] call BIS_fnc_findSafePos;

		_ran = round (random 6);
		switch (_ran) do
		{
			case 0:
			{
				_grp = [_safePos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Armored" >> "RU_TankPlatoon")] call BIS_fnc_spawnGroup;
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
