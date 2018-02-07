// on server we run...
if (isServer) then
{
};

[[
  ["PMC_blufor_objective1","Capture Green Mountain","You must capture the <marker name='markerTaskBLUFOR1'>Green Mountain</marker> objective. Don't let Russians get there.", WEST, ["markerTaskBLUFOR1", getPosASL pmc_blufor_obj1]],
  ["PMC_opfor_objective1","Capture Green Mountain","You must capture the <marker name='markerTaskOPFOR1'>Green Mountain</marker> objective. Don't let Armericans get there.", EAST, ["markerTaskOPFOR1", getPosASL pmc_opfor_obj1]]
],[
  ["Mission","You are tasked to capture Green Mountain radio station. There is Russians forces approaching the same objective from south, prevent them for accessing the station.", WEST],
  ["Mission","You are tasked to capture Green Mountain radio station. There is American forces approaching the same objective from north, prevent them for accessing the station.", EAST],
	["Credits","Mission by Snake Man, PMC."]
]] call compile preprocessfilelinenumbers "PMC\shk_taskmaster.sqf";

enableSaving [ false, false ];
