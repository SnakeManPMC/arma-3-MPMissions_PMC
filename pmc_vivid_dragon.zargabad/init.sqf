// if on server
if (isServer) then
{
	[] execVM "PMC\PMC_init.sqf";
}
else
{
	// set our weather using multiplayer parameter array
	[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";
	
	player setVariable ["BIS_noCoreConversations", true];
};

// setup briefing
[[
	["PMC_objective1", "Clear Zargabad", "You must clear the <marker name='markerTask1'>Zargabad</marker>.", true, ["markerTask1", getPosASL pmc_1]],
	["PMC_objective2", "Clear Nango", "You must clear the <marker name='markerTask2'>Nango</marker>.", true, ["markerTask2", getPosASL pmc_2]],
	["PMC_objective3", "Clear Shahbaz", "You must clear the <marker name='markerTask3'>Shahbaz</marker>.", true, ["markerTask3", getPosASL pmc_3]],
	["PMC_objective4", "Clear Military Base", "You must clear the <marker name='markerTask4'>Military Base</marker>.", true, ["markerTask4", getPosASL pmc_4]]
],[
	["Credits", "Addons used: None.<br/>Mission design, scripts: Snake Man, PMC."]
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";

enableSaving [ false, false ];

/*
	reference

for opfor dead trigger add:
["PMC_objective1", "succeeded"] call SHK_Taskmaster_Upd;

*/
