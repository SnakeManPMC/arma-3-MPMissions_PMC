
/* objective 1
location: getMarkerPos "target1"
activation: anybody
condition: east countside thislist == 0 && ("man" countType thislist == west countSide thislist) && west countSide thislist > 0
on activation: leader group (thislist select 0) sideChat "We have reached the objective 1, Over."; "target1" setMarkerColor "colorgreen"; PMC_objective1 setTaskState "SUCCEEDED";
*/
["target1"] spawn
{
	private _pmcmarker = _this select 0;
	// some random sleep so each start at different time
	sleep 3 + (random 5);

	// wait until WEST has arrived
	while { (count (units west inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};
	player sideChat format["WEST has entered into %1.", _pmcmarker];
	
	// wait until EAST is dead
	waitUntil
	{
		sleep 5;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};
	player sideChat format["East/OPFOR is dead in %1.", _pmcmarker];

	["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
};

/*
objective 2
location: getMarkerPos "target2"
activation: anybody
condition: east countside thislist == 0 && ("man" countType thislist == west countSide thislist) && west countSide thislist > 0
on activation: leader group (thislist select 0) sideChat "We have reached the objective 2, Over."; "target2" setMarkerColor "colorgreen"; PMC_objective2 setTaskState "SUCCEEDED";
*/
["target2"] spawn
{
	private _pmcmarker = _this select 0;
	// some random sleep so each start at different time
	sleep 3 + (random 5);

	// wait until WEST has arrived
	while { (count (units west inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};
	player sideChat format["WEST has entered into %1.", _pmcmarker];
	
	// wait until EAST is dead
	waitUntil
	{
		sleep 5;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};
	player sideChat format["East/OPFOR is dead in %1.", _pmcmarker];

	["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
};

/*
objective 3
location: getMarkerPos "target3"
activation: anybody
condition: east countside thislist == 0 && ("man" countType thislist == west countSide thislist) && west countSide thislist > 0
on activation: leader group (thislist select 0) sideChat "We have reached the objective 3, Over."; "target3" setMarkerColor "colorgreen"; PMC_objective3 setTaskState "SUCCEEDED";
*/
["target3"] spawn
{
	private _pmcmarker = _this select 0;
	// some random sleep so each start at different time
	sleep 3 + (random 5);

	// wait until WEST has arrived
	while { (count (units west inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};
	player sideChat format["WEST has entered into %1.", _pmcmarker];
	
	// wait until EAST is dead
	waitUntil
	{
		sleep 5;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};
	player sideChat format["East/OPFOR is dead in %1.", _pmcmarker];

	["t3", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
};

/*
objective 4
location: getMarkerPos "target4"
activation: anybody
condition: east countside thislist == 0 && ("man" countType thislist == west countSide thislist) && west countSide thislist > 0
on activation: leader group (thislist select 0) sideChat "We have reached the objective 4, Over."; "target4" setMarkerColor "colorgreen"; PMC_objective4 setTaskState "SUCCEEDED";
*/
["target4"] spawn
{
	private _pmcmarker = _this select 0;
	// some random sleep so each start at different time
	sleep 3 + (random 5);

	// wait until WEST has arrived
	while { (count (units west inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};
	player sideChat format["WEST has entered into %1.", _pmcmarker];
	
	// wait until EAST is dead
	waitUntil
	{
		sleep 5;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};
	player sideChat format["East/OPFOR is dead in %1.", _pmcmarker];

	["t4", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
};

/*
objective 5, aka mission completed
location: n/a it "rest" heh
activation: opfor, not present
condition: this
on activation: PMC_objective5 setTaskState "SUCCEEDED"; mcomplete=true;
*/
[] spawn
{
	// some random sleep so each start at different time
	sleep 3 + (random 5);

	// wait until EAST is dead
	waitUntil
	{
		sleep 10;
		(EAST countside allUnits == 0);
	};
	player sideChat "East/OPFOR is completely dead.";

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
