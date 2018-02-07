
if (isServer) then
{
	// description.ext mission starting parameters
	skiptime (((paramsarray select 0) - daytime + 24) % 24);
}
else
{
	player setVariable ["BIS_noCoreConversations", true];
};

// set our weather using multiplayer parameter array
[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";

[[
  ["task1", "Chernogorsk", "Clear <marker name='target1'>Chernogorsk</marker>"],
  ["task2", "Prigorodki", "Clear <marker name='target2'>Prigorodki</marker>"],
  ["task3", "Elektrozavodsk", "Clear <marker name='target3'>Elektrozavodsk</marker>"],
  ["task4", "Staroye", "Clear <marker name='target4'>Staroye</marker>"]
],[
]] call compile preprocessfilelinenumbers "PMC\shk_taskmaster.sqf";

enableSaving [ false, false ];
