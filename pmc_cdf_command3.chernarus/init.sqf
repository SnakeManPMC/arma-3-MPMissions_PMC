
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
  ["task1", "Solnichniy", "Clear <marker name='target1'>Solnichniy</marker>"],
  ["task2", "Nizhnoye", "Clear <marker name='target2'>Nizhnoye</marker>"],
  ["task3", "Town", "Clear <marker name='target3'>Town</marker>"],
  ["task4", "Airstrip", "Clear <marker name='target4'>Airstrip</marker>"]
],[
]] call compile preprocessfilelinenumbers "PMC\shk_taskmaster.sqf";

enableSaving [ false, false ];
