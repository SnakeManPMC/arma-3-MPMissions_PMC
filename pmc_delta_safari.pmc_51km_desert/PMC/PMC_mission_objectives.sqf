/*

	Mission Objectives, tasks are set when objective is completed

*/

// just a check to make sure our arrays are filled
waitUntil
{
	sleep 1;
	( (count PMC_vips > 0) && (count PMC_scuds > 0) );
};

if (PMC_debug) then
{
	diag_log format["PMC_mission_objectives; start, PMC_vips: %1, PMC_scuds: %2", count PMC_vips, count PMC_scuds];
};

private["_PMC_vip_1_dead", "_PMC_vip_2_dead", "_PMC_vip_3_dead", "_PMC_vip_4_dead", "_PMC_vip_5_dead", "_PMC_scud_1_dead", "_PMC_scud_2_dead", "_PMC_scud_3_dead", "_PMC_scud_4_dead", "_PMC_scud_5_dead"];

_PMC_vip_1_dead = false;
_PMC_vip_2_dead = false;
_PMC_vip_3_dead = false;
_PMC_vip_4_dead = false;
_PMC_vip_5_dead = false;
_PMC_scud_1_dead = false;
_PMC_scud_2_dead = false;
_PMC_scud_3_dead = false;
_PMC_scud_4_dead = false;
_PMC_scud_5_dead = false;

// slow loop to go through completed objectives
while { true } do
{
	// 30 sec wait, hardcoded, we are in no hurry.
	sleep 30;
	
	// VIP hunt

	// VIP 1
	if ( !alive (PMC_vips select 0) && !_PMC_vip_1_dead ) then
	{
		_PMC_vip_1_dead = true;
		private _task = ["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
		"VIP 1 objective accomplished, great work!" remoteExec ["hint", -2];
	};

	// VIP 2
	if ( !alive (PMC_vips select 1) && !_PMC_vip_2_dead ) then
	{
		_PMC_vip_2_dead = true;
		private _task = ["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
		"VIP 2 objective accomplished, great work!" remoteExec ["hint", -2];
	};

	// VIP 3
	if ( !alive (PMC_vips select 2) && !_PMC_vip_3_dead ) then
	{
		_PMC_vip_3_dead = true;
		private _task = ["t3", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
		"VIP 3 objective accomplished, great work!" remoteExec ["hint", -2];
	};

	// VIP 4
	if ( !alive (PMC_vips select 3) && !_PMC_vip_4_dead ) then
	{
		_PMC_vip_4_dead = true;
		private _task = ["t4", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
		"VIP 4 objective accomplished, great work!" remoteExec ["hint", -2];
	};

	// VIP 5
	if ( !alive (PMC_vips select 4) && !_PMC_vip_5_dead ) then
	{
		_PMC_vip_5_dead = true;
		private _task = ["t5", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
		"VIP 5 objective accomplished, great work!" remoteExec ["hint", -2];
	};


	// then SCUD hunt

	// PMC_scuds is array of GROUPS

	// SCUD 1
	if ( (count units (PMC_scuds select 0) == 0) && !_PMC_scud_1_dead ) then
	{
		_PMC_scud_1_dead = true;
		private _task = ["t6", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
		"SCUDs 1 objective accomplished, great work!" remoteExec ["hint", -2];
	};

	// SCUD 2
	if ( (count units (PMC_scuds select 1) == 0) && !_PMC_scud_2_dead ) then
	{
		_PMC_scud_2_dead = true;
		private _task = ["t7", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
		"SCUDs 2 objective accomplished, great work!" remoteExec ["hint", -2];
	};

	// SCUD 3
	if ( (count units (PMC_scuds select 2) == 0) && !_PMC_scud_3_dead ) then
	{
		_PMC_scud_3_dead = true;
		private _task = ["t8", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
		"SCUDs 3 objective accomplished, great work!" remoteExec ["hint", -2];
	};

	// SCUD 4
	if ( (count units (PMC_scuds select 3) == 0) && !_PMC_scud_4_dead ) then
	{
		_PMC_scud_4_dead = true;
		private _task = ["t9", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
		"SCUDs 4 objective accomplished, great work!" remoteExec ["hint", -2];
	};

	// SCUD 5
	if ( (count units (PMC_scuds select 4) == 0) && !_PMC_scud_5_dead ) then
	{
		_PMC_scud_5_dead = true;
		private _task = ["t10", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
		"SCUDs 5 objective accomplished, great work!" remoteExec ["hint", -2];
	};

	// all objectives complete, exit loop
	if (_PMC_vip_1_dead && _PMC_vip_2_dead && _PMC_vip_3_dead && _PMC_vip_4_dead && _PMC_vip_5_dead && _PMC_scud_1_dead && _PMC_scud_2_dead && _PMC_scud_3_dead && _PMC_scud_4_dead && _PMC_scud_5_dead) exitWith
	{
		// just in case that we dont run this too quickly after the last objective is completed
		sleep 40;
		diag_log "PMC_mission_objectives; *****\nPMC_mcomplete is true! All objectives completed! Mission is over!\n******";

		// should run on all computers(?)
		[["All objectives accomplished, great work!", "PLAIN", 1]] remoteExec ["titleText"];

		// a bit more sleep for the congratulations texts
		sleep 20;

		// ends mission on server + clients
		["pmc_end1", true] remoteExecCall ['BIS_fnc_endMission', 0];
	};

	//diag_log format["PMC_mission_objectives; loop, _PMC_vip_1_dead: %1, _PMC_vip_2_dead: %2, _PMC_vip_3_dead: %3, _PMC_vip_4_dead: %4, _PMC_vip_5_dead: %5, _PMC_scud_1_dead: %6, _PMC_scud_2_dead: %7, _PMC_scud_3_dead: %8, _PMC_scud_4_dead: %9, _PMC_scud_5_dead: %10",
	//_PMC_vip_1_dead, _PMC_vip_2_dead, _PMC_vip_3_dead, _PMC_vip_4_dead, _PMC_vip_5_dead, _PMC_scud_1_dead, _PMC_scud_2_dead, _PMC_scud_3_dead, _PMC_scud_4_dead, _PMC_scud_5_dead];
};
