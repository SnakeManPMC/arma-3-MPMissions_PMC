// on server we run...
if (isServer) then
{
};

[[
  ["PMC_objective1", "Clear houses", "Clear <marker name='markerTask1'>houses</marker>.", true, ["markerTask1", getPosASL pmc_1]],
  ["PMC_objective2", "Clear houses", "Clear <marker name='markerTask2'>houses</marker>.", true, ["markerTask2", getPosASL pmc_2]],
  ["PMC_objective3", "Capture electric area", "Capture <marker name='markerTask3'>electric area</marker>.", true, ["markerTask3", getPosASL pmc_3]]
],[
]] call compile preprocessfilelinenumbers "PMC\shk_taskmaster.sqf";

enableSaving [ false, false ];
