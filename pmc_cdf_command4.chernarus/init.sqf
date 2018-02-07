
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
  ["task1", "Krasnostav", "Clear <marker name='target1'>Krasnostav</marker>"],
  ["task2", "Dubrovka", "Clear <marker name='target2'>Dubrovka</marker>"],
  ["task3", "Gvozdno", "Clear <marker name='target3'>Gvozdno</marker>"],
  ["task4", "Gorka", "Clear <marker name='target4'>Gorka</marker>"]
],[
]] call compile preprocessfilelinenumbers "PMC\shk_taskmaster.sqf";

enableSaving [ false, false ];
