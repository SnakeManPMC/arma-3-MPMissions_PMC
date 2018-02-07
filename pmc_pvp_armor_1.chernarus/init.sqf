// on server we run...
if (isServer) then
{
};

[[
  ["PMC_blufor_objective1","Capture road","You must capture the <marker name='markerTaskBLUFOR1'>road</marker> between Vybor and Pushtoska.", WEST, ["markerTaskBLUFOR1", getPosASL pmc_blufor_obj1]],
  ["PMC_opfor_objective1","Capture road","You must capture the <marker name='markerTaskOPFOR1'>road</marker> between Vybor and Pushtoska.", EAST, ["markerTaskOPFOR1", getPosASL pmc_opfor_obj1]]
],[
  ["Mission","You are tasked to capture road between Vybor and Pushtoska. There is Russians forces approaching the same objective from north, prevent them for accessing the road.", WEST],
  ["Mission","You are tasked to capture road between Vybor and Pushtoska. There is American forces approaching the same objective from south, prevent them for accessing the road.", EAST],
	["Credits","Mission by Snake Man, PMC."]
]] call compile preprocessfilelinenumbers "PMC\shk_taskmaster.sqf";

enableSaving [ false, false ];
