
hint "Mission Accomplished!";

sleep 3;
private _task = ["objective2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

sleep 10;
"pmc_end1" call BIS_fnc_endMissionServer;
