// on server we run...
if (isServer) then
{
};

[[
  ["PMC_blufor_objective1","Capture Berezino","You must capture the <marker name='markerTaskBLUFOR1'>Berezino</marker>.", WEST, ["markerTaskBLUFOR1", getPosASL pmc_blufor_obj1]],
  ["PMC_opfor_objective1","Capture Berezino","You must capture the <marker name='markerTaskOPFOR1'>Berezino</marker>.", EAST, ["markerTaskOPFOR1", getPosASL pmc_opfor_obj1]]
],[
  ["Mission","You are tasked to capture Berezino. There is Russians forces approaching the same objective from south-east, prevent them for accessing the city.", WEST],
  ["Mission","You are tasked to capture Berezino. There is American forces approaching the same objective from nort-west, prevent them for accessing the city.", EAST]
]] call compile preprocessfilelinenumbers "PMC\shk_taskmaster.sqf";

enableSaving [ false, false ];
