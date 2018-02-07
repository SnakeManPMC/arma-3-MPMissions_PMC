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
	["PMC_objective1", "Clear Shahbaz", "You must clear the <marker name='markerTask1'>Shahbaz</marker>.", true, ["markerTask1", getPosASL pmc_1]],
	["PMC_objective2", "Clear Yarum", "You must clear the <marker name='markerTask2'>Yarum</marker>.", true, ["markerTask2", getPosASL pmc_2]],
	["PMC_objective3", "Clear Zargabad", "You must clear the <marker name='markerTask3'>Zargabad</marker>.", true, ["markerTask3", getPosASL pmc_3]],
	["PMC_objective4", "Clear Nango", "You must clear the <marker name='markerTask4'>Nango</marker>.", true, ["markerTask4", getPosASL pmc_4]],
	["PMC_objective5", "Clear Hazar Bagh", "You must clear the <marker name='markerTask5'>Hazar Bagh</marker>.", true, ["markerTask5", getPosASL pmc_5]],
	["PMC_objective6", "Clear Military Base", "You must clear the <marker name='markerTask6'>Military Base</marker>.", true, ["markerTask6", getPosASL pmc_6]]
],[
	["Credits", "Addons used: None.<br/>Mission design, scripts: Snake Man, PMC."]
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";

enableSaving [ false, false ];

/*
	reference

for opfor dead trigger add:
["PMC_objective1", "succeeded"] call SHK_Taskmaster_Upd;

*/

// Saving disabled without autosave.
enableSaving [ false, false ];
