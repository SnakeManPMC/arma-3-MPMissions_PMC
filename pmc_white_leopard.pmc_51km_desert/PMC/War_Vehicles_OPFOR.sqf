/*

	Takistani Vehicles !

*/
private ["_grp","_pos","_safePos","_ran","_countUnits","_numberOfVehicles","_minimumFPS","_targetpoint"];

_countUnits = compile preprocessFileLineNumbers "PMC\PMC_Count_Group_Units.sqf";
_numberOfVehicles = _this select 0;
_minimumFPS = _this select 1;

sleep (random 10 + 20);

while {true} do
{
	// was "car" before, now just land vehicle
	// new feature is && (diag_fps > 15), hopefully it wont kill gameplay totally :)
	if ( ('landVehicle' countType list pmc_opfor_list) < _numberOfVehicles && (diag_fps > _minimumFPS) && ([(list pmc_opfor_list)] call PMC_countGroups) < 144 ) then
	{
		// hardcoded to harbor 4...
		_pos = [11634, 49031, 0];
		_safePos = [_pos, 0, 500, 30, 0, 20, 0] call BIS_fnc_findSafePos;

		_ran = floor (random 11);
		switch (_ran) do
		{
			case 0:
			{
				_grp = [_safePos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_TK" >> "Motorized" >> "CUP_O_TK_MotorizedPatrol")] call BIS_fnc_spawnGroup;
			};
			case 1:
			{
				_grp = [_safePos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_TK" >> "Motorized" >> "CUP_O_TK_MotorizedReconSection")] call BIS_fnc_spawnGroup;
			};
			case 2:
			{
				_grp = [_safePos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_TK" >> "Motorized" >> "CUP_O_TK_MotorizedPatrol")] call BIS_fnc_spawnGroup;
			};
			case 3:
			{
				_grp = [_safePos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_TK" >> "Mechanized" >> "CUP_O_TK_MechanizedInfantrySquadBMP2")] call BIS_fnc_spawnGroup;
			};
			case 4:
			{
				_grp = [_safePos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_TK" >> "Mechanized" >> "CUP_O_TK_MechanizedInfantrySquadBTR60")] call BIS_fnc_spawnGroup;
			};
			case 5:
			{
				_grp = [_safePos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_TK" >> "Mechanized" >> "CUP_O_TK_MechanizedSpecialSquad")] call BIS_fnc_spawnGroup;
			};
			case 6:
			{
				_grp = [_safePos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_TK" >> "Mechanized" >> "CUP_O_TK_MechanizedReconSection")] call BIS_fnc_spawnGroup;
			};
			case 7:
			{
				_grp = [_safePos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_TK" >> "Mechanized" >> "CUP_O_TK_MechanizedReconSectionAT")] call BIS_fnc_spawnGroup;
			};
			case 8:
			{
				_grp = [_safePos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_TK" >> "Armored" >> "CUP_O_TK_T72Platoon")] call BIS_fnc_spawnGroup;
			};
			case 9:
			{
				_grp = [_safePos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_TK" >> "Armored" >> "CUP_O_TK_T55Platoon")] call BIS_fnc_spawnGroup;
			};
			case 10:
			{
				_grp = [_safePos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_TK" >> "Armored" >> "CUP_O_TK_T34Platoon")] call BIS_fnc_spawnGroup;
			};
		};

		{
			_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
		} forEach units _grp;

		// select target
		_targetpoint = PMC_loc select (random (count PMC_loc));
		// jiggle the fucker as it was array of cooridinates
		pmc_temp_logic setPos _targetpoint;

		[_grp, _targetpoint, 100] call PMC_Guard_Vehicle_Waypoints;
		
		diag_log format["War_Vehicles_OPFOR; Created RU vehicles: %1, total: %2", ([_grp] call _countUnits), ('landVehicle' countType list pmc_opfor_list)];
	};
/*
	if (PMC_debug) then
	{
		diag_log format["War_Vehicles_OPFOR; 60 sleeper at %1", diag_tickTime];
	};
*/
	sleep (random 60 + 10);
};
