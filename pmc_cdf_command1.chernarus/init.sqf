
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
  ["task1", "Stary Sobor", "Clear <marker name='target1'>Stary Sobor</marker>"],
  ["task2", "Kabanimo", "Clear <marker name='target2'>Kabanimo</marker>"],
  ["task3", "Grishino", "Clear <marker name='target3'>Grishino</marker>"],
  ["task4", "Airfield", "Clear <marker name='target4'>Airfield</marker>"]
],[
]] call compile preprocessfilelinenumbers "PMC\shk_taskmaster.sqf";

enableSaving [ false, false ];
