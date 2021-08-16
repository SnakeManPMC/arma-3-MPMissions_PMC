/*

	PMC OPFOR vehicles creation

*/

private ["_grp","_respawnpoint","_targetpoint","_PMC_CreateOPFORVehicles","_PMC_SelectStartPosit"];

while {true} do
{
	// choose one of the random starting locations
	_respawnpoint = [] call PMC_SelectStartPositOPFOR;
	_targetpoint = getPosASL (missionNamespace getVariable "racsflag");

	_grp = [_respawnpoint, _targetpoint] call PMC_CreateOPFORVehicles;

	sleep 10;
	// we wait until the convoy group is completely dead.
	waitUntil
	{
		sleep 10;
		((count units _grp) == 0);
	};
	// then we delete its group.
	deleteGroup _grp;
	waitUntil
	{
		(isNull _grp);
	};
	// and then we start the whole damn loop all over again :)
};
