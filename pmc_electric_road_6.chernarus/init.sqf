// on server we run...
if (isServer) then
{
};

[[
  ["PMC_objective1", "Capture north side", "Capture <marker name='markerTask1'>north side</marker> of Zelenogorsk.", true, ["markerTask1", getPosASL pmc_1]],
  ["PMC_objective2", "Capture center", "Capture <marker name='markerTask2'>center</marker> area of Zelenogorsk.", true, ["markerTask2", getPosASL pmc_2]],
  ["PMC_objective3", "Clear power station", "Clear <marker name='markerTask3'>power station</marker> objective.", true, ["markerTask3", getPosASL pmc_3]]
],[
]] call compile preprocessfilelinenumbers "PMC\shk_taskmaster.sqf";

enableSaving [ false, false ];
