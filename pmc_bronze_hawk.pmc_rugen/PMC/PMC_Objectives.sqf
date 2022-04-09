
/*
2022-04-09T07:34:00Z
PMC_Objectives.sqf spawns code to replace old mission.sqm triggers
*/

[] spawn
{
	waitUntil
	{
		sleep 30;
		(!isNil "pmc_obj1" && !isNil "pmc_obj2" && !isNil "pmc_obj3" && !isNil "pmc_obj4" && !isNil "pmc_obj5" && !isNil "pmc_obj6" && !isNil "pmc_obj7" && !isNil "pmc_obj8" && !isNil "pmc_obj9");
	};
	playMusic "EP1_Track01";
	"Mission Accomplished!" remoteExec ["hint"];

	sleep 30;
	"pmc_end1" call BIS_fnc_endMissionServer;
};

[] spawn
{
	private _pmcmarker = "killbox1";
	sleep 3 + (random 5);

	while { (count (units WEST inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};

	waitUntil
	{
		sleep 10;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	"killbox1" setMarkerColor "ColorGreen";
	pmc_obj1 = true;
	"Killbox ONE has been cleared!" remoteExec ["hint"];
	sleep 5;
	["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
};

[] spawn
{
	private _pmcmarker = "killbox2";
	sleep 3 + (random 5);

	while { (count (units WEST inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};

	waitUntil
	{
		sleep 10;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	"killbox2" setMarkerColor "ColorGreen";
	pmc_obj2 = true;
	"Killbox TWO has been cleared!" remoteExec ["hint"];
	sleep 5;
	["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
};

[] spawn
{
	private _pmcmarker = "killbox3";
	sleep 3 + (random 5);

	while { (count (units WEST inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};

	waitUntil
	{
		sleep 10;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	"killbox3" setMarkerColor "ColorGreen";
	pmc_obj3 = true;
	"Killbox THREE has been cleared!" remoteExec ["hint"];
	sleep 5;
	["t3", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
};

[] spawn
{
	private _pmcmarker = "killbox4";
	sleep 3 + (random 5);

	while { (count (units WEST inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};

	waitUntil
	{
		sleep 10;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	"killbox4" setMarkerColor "ColorGreen";
	pmc_obj4 = true;
	"Killbox FOUR has been cleared!" remoteExec ["hint"];
	sleep 5;
	["t4", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
};

[] spawn
{
	private _pmcmarker = "killbox5";
	sleep 3 + (random 5);

	while { (count (units WEST inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};

	waitUntil
	{
		sleep 10;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	"killbox5" setMarkerColor "ColorGreen";
	pmc_obj5 = true;
	"Killbox FIVE has been cleared!" remoteExec ["hint"];
	sleep 5;
	["t5", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
};

[] spawn
{
	private _pmcmarker = "killbox6";
	sleep 3 + (random 5);

	while { (count (units WEST inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};

	waitUntil
	{
		sleep 10;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	"killbox6" setMarkerColor "ColorGreen";
	pmc_obj6 = true;
	"Killbox SIX has been cleared!" remoteExec ["hint"];
	sleep 5;
	["t6", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
};

[] spawn
{
	private _pmcmarker = "killbox7";
	sleep 3 + (random 5);

	while { (count (units WEST inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};

	waitUntil
	{
		sleep 10;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	"killbox7" setMarkerColor "ColorGreen";
	pmc_obj7 = true;
	"Killbox SEVEN has been cleared!" remoteExec ["hint"];
	sleep 5;
	["t7", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
};

[] spawn
{
	private _pmcmarker = "killbox8";
	sleep 3 + (random 5);

	while { (count (units WEST inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};

	waitUntil
	{
		sleep 10;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	"killbox8" setMarkerColor "ColorGreen";
	pmc_obj8 = true;
	"Killbox EIGHT has been cleared!" remoteExec ["hint"];
	sleep 5;
	["t8", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
};

[] spawn
{
	private _pmcmarker = "killbox9";
	sleep 3 + (random 5);

	while { (count (units WEST inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};

	waitUntil
	{
		sleep 10;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	"killbox9" setMarkerColor "ColorGreen";
	pmc_obj9 = true;
	"Killbox NINE has been cleared!" remoteExec ["hint"];
	sleep 5;
	["t9", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
};
