// on server we run...
if (isServer) then
{
	// set downed helo to gamelogic's random position
	pmc_downed_helo setDir random 360;
	pmc_downed_helo setPos getPosASL pmc_crash_site;

	PMC_crash_site_location = getPosASL pmc_downed_helo;
	publicVariable "PMC_crash_site_location";
};

// then exit if on server
if (isServer) exitWith{};

// eh? try these if the below wont work :)
waitUntil {!(isNull player)};
waitUntil {player == player};

// move the crash_team to downed helo
{
	_x setPos PMC_crash_site_location;
} forEach units crash_team;

// set debug marker in the downed helo
"crash_site" setMarkerPos PMC_crash_site_location;

// create briefing objectives
[] execVM "briefing.sqf";

enableSaving [ false, false ];
