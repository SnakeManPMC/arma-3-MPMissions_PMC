// on server we run...
if (isServer) then
{
};

[[
  ["PMC_blufor_objective1","Capture Gvozdno","You must capture the <marker name='markerTaskBLUFOR1'>Gvozdno</marker> town. Don't let Russians get there.", WEST, ["markerTaskBLUFOR1", getPosASL pmc_blufor_obj1]],
  ["PMC_opfor_objective1","Capture Gvozdno","You must capture the <marker name='markerTaskOPFOR1'>Gvozdno</marker> town. Don't let Armericans get there.", EAST, ["markerTaskOPFOR1", getPosASL pmc_opfor_obj1]]
],[
  ["Mission","You are tasked to capture Gvozdno town. There is Russians forces approaching the same objective from nort-west, prevent them for accessing the town.", WEST],
  ["Mission","You are tasked to capture Gvozdno town. There is American forces approaching the same objective from south-east, prevent them for accessing the town.", EAST],
	["Credits","Mission by Snake Man, PMC."]
]] call compile preprocessfilelinenumbers "PMC\shk_taskmaster.sqf";

enableSaving [ false, false ];
