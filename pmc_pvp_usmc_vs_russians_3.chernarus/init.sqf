// on server we run...
if (isServer) then
{
};

[[
  ["PMC_blufor_objective1","Defend aircrafts","You must keep the <marker name='markerTaskBLUFOR1'>aircrafts</marker> unharmed in the airfield.", WEST, ["markerTaskBLUFOR1", getPosASL pmc_blufor_obj1]],
  ["PMC_opfor_objective1","Destroy aircrafts","You must destroy <marker name='markerTaskOPFOR1'>aircrafts</marker> in the US occupied airfield.", EAST, ["markerTaskOPFOR1", getPosASL pmc_opfor_obj1]]
],[
  ["Mission","You are tasked to defend the aircrafts on the airfield. Intel has sugested that Russian forces are approaching the from north, prevent them for causing harm to the aircrafts.", WEST],
  ["Mission","You are tasked to destroy all aircrafts in the airfield. There is American forces holding the airfield, destroy the aircrafts at any cost. Choose good anti tank weapons from ammo boxes so you have power to knock out the aircrafts.", EAST],
	["Credits","Mission by Snake Man, PMC."]
]] call compile preprocessfilelinenumbers "PMC\shk_taskmaster.sqf";

enableSaving [ false, false ];
