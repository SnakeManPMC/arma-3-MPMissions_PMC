
/* objective 1
location: getMarkerPos "target1"
activation: anybody
condition: east countside thislist == 0 && ("man" countType thislist == west countSide thislist) && west countSide thislist > 0
on activation: leader group (thislist select 0) sideChat "We have reached the objective 1, Over."; "target1" setMarkerColor "colorgreen"; PMC_objective1 set.TaskState "SUCCEEDED";
*/
["target1"] spawn
{
	private _pmcmarker = _this select 0;
	// some random sleep so each start at different time
	sleep 3 + (random 5);

	pmc_obj1 = 0;
	_pmcmarker setMarkerColorLocal "ColorRed";
	_pmcmarker setMarkerShapeLocal "ELLIPSE";
	_pmcmarker setMarkerSizeLocal [100, 100];
	_pmcmarker setMarkerType "mil_objective";

	// wait until WEST has arrived
	while { (count (units west inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};
	
	// wait until EAST is dead
	waitUntil
	{
		sleep 5;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	_pmcmarker setMarkerColorLocal "ColorGreen";
	_pmcmarker setMarkerShapeLocal "icon";
	_pmcmarker setMarkerSizeLocal [1, 1];
	_pmcmarker setMarkerType "mil_dot";

	"Objective 1 completed, good work!" remoteExec ["hint", 2];
	sleep 3;
	[["Objective 1 completed, good work!", "PLAIN", 1]] remoteExec ["titleText"];
	sleep 5;

	["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
	pmc_obj1 = 1;
};

/*
objective 2
location: getMarkerPos "target2"
activation: anybody
condition: east countside thislist == 0 && ("man" countType thislist == west countSide thislist) && west countSide thislist > 0
on activation: leader group (thislist select 0) sideChat "We have reached the objective 2, Over."; "target2" setMarkerColor "colorgreen"; PMC_objective2 set.TaskState "SUCCEEDED";
*/
["target2"] spawn
{
	private _pmcmarker = _this select 0;
	// some random sleep so each start at different time
	sleep 3 + (random 5);

	pmc_obj2 = 0;
	_pmcmarker setMarkerColorLocal "ColorRed";
	_pmcmarker setMarkerShapeLocal "ELLIPSE";
	_pmcmarker setMarkerSizeLocal [100, 100];
	_pmcmarker setMarkerType "mil_objective";

	// wait until WEST has arrived
	while { (count (units west inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};
	
	// wait until EAST is dead
	waitUntil
	{
		sleep 5;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	_pmcmarker setMarkerColorLocal "ColorGreen";
	_pmcmarker setMarkerShapeLocal "icon";
	_pmcmarker setMarkerSizeLocal [1, 1];
	_pmcmarker setMarkerType "mil_dot";

	"Objective 2 completed, good work!" remoteExec ["hint", 2];
	sleep 3;
	[["Objective 2 completed, good work!", "PLAIN", 1]] remoteExec ["titleText"];
	sleep 5;

	["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
	pmc_obj2 = 1;
};

/*
objective 3
location: getMarkerPos "target3"
activation: anybody
condition: east countside thislist == 0 && ("man" countType thislist == west countSide thislist) && west countSide thislist > 0
on activation: leader group (thislist select 0) sideChat "We have reached the objective 3, Over."; "target3" setMarkerColor "colorgreen"; PMC_objective3 set.TaskState "SUCCEEDED";
*/
["target3"] spawn
{
	private _pmcmarker = _this select 0;
	// some random sleep so each start at different time
	sleep 3 + (random 5);

	pmc_obj3 = 0;
	_pmcmarker setMarkerColorLocal "ColorRed";
	_pmcmarker setMarkerShapeLocal "ELLIPSE";
	_pmcmarker setMarkerSizeLocal [100, 100];
	_pmcmarker setMarkerType "mil_objective";

	// wait until WEST has arrived
	while { (count (units west inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};
	
	// wait until EAST is dead
	waitUntil
	{
		sleep 5;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	_pmcmarker setMarkerColorLocal "ColorGreen";
	_pmcmarker setMarkerShapeLocal "icon";
	_pmcmarker setMarkerSizeLocal [1, 1];
	_pmcmarker setMarkerType "mil_dot";

	"Objective 3 completed, good work!" remoteExec ["hint", 2];
	sleep 3;
	[["Objective 3 completed, good work!", "PLAIN", 1]] remoteExec ["titleText"];
	sleep 5;

	["t3", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
	pmc_obj3 = 1;
};

/*
objective 4
location: getMarkerPos "target4"
activation: anybody
condition: east countside thislist == 0 && ("man" countType thislist == west countSide thislist) && west countSide thislist > 0
on activation: leader group (thislist select 0) sideChat "We have reached the objective 4, Over."; "target4" setMarkerColor "colorgreen"; PMC_objective4 set.TaskState "SUCCEEDED";
*/
["target4"] spawn
{
	private _pmcmarker = _this select 0;
	// some random sleep so each start at different time
	sleep 3 + (random 5);

	pmc_obj4 = 0;
	_pmcmarker setMarkerColorLocal "ColorRed";
	_pmcmarker setMarkerShapeLocal "ELLIPSE";
	_pmcmarker setMarkerSizeLocal [100, 100];
	_pmcmarker setMarkerType "mil_objective";

	// wait until WEST has arrived
	while { (count (units west inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};
	
	// wait until EAST is dead
	waitUntil
	{
		sleep 5;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	_pmcmarker setMarkerColorLocal "ColorGreen";
	_pmcmarker setMarkerShapeLocal "icon";
	_pmcmarker setMarkerSizeLocal [1, 1];
	_pmcmarker setMarkerType "mil_dot";

	"Objective 4 completed, good work!" remoteExec ["hint", 2];
	sleep 3;
	[["Objective 4 completed, good work!", "PLAIN", 1]] remoteExec ["titleText"];
	sleep 5;

	["t4", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
	pmc_obj4 = 1;
};

/*
objective 5, aka mission completed
location: n/a it "rest" heh
activation: opfor, not present
condition: this
on activation: PMC_objective5 set.TaskState "SUCCEEDED"; mcomplete=true;
*/
[] spawn
{
	// some random sleep so each start at different time
	sleep 3 + (random 5);

	// wait until other objectives are complete
	waitUntil
	{
		sleep 60;
		(pmc_obj1 == 1 && pmc_obj2 == 1 && pmc_obj3 == 1 && pmc_obj4 == 1);
	};

	// wait until EAST is dead
	waitUntil
	{
		sleep 10;
		(EAST countside allUnits == 0);
	};

	"All objectives completed, good work!" remoteExec ["hint", 2];
	sleep 3;
	[["All objectives completed, good work!", "PLAIN", 1]] remoteExec ["titleText"];
	sleep 5;

	["t5", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

	sleep 15;
	"pmc_end1" call BIS_fnc_endMissionServer;
};

/*
// wait until WEST has arrived
"man" countType inAreaArray _pmcmarker == units west inAreaArray _pmcmarker
while { (count (units west inAreaArray _pmcmarker) == 0) } do
{
	sleep 10;
};
 
player sideChat "I have entered into _pmcmarker area.";

// wait until EAST is dead
waitUntil
{
	sleep 5;
	(count (units EAST inAreaArray _pmcmarker) == 0);
};
player sideChat "East/OPFOR is dead.";

*/
