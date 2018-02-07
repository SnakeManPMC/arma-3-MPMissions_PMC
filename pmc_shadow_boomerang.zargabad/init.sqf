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

[[
	["PMC_objective1", "Clear Military Base", "You must clear the <marker name='markerTask1'>Military Base</marker>.", true, ["markerTask1", getPosASL pmc_1]],
	["PMC_objective2", "Clear Azizayt", "You must clear the <marker name='markerTask2'>Azizayt</marker>.", true, ["markerTask2", getPosASL pmc_2]],
	["PMC_objective3", "Clear Zargabad", "You must clear the <marker name='markerTask3'>Zargabad</marker>.", true, ["markerTask3", getPosASL pmc_3]],
	["PMC_objective4", "Clear Shahbaz", "You must clear the <marker name='markerTask4'>Shahbaz</marker>.", true, ["markerTask4", getPosASL pmc_4]]
],[
  ["Credits","Mission by PMC"]
]] call compile preprocessfilelinenumbers "shk_taskmaster.sqf";

enableSaving [ false, false ];
