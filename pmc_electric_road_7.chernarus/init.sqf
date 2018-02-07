// on server we run...
if (isServer) then
{
};

[[
  ["PMC_objective1", "Clear road block", "Clear <marker name='markerTask1'>road block</marker>.", true, ["markerTask1", getPosASL pmc_1]],
  ["PMC_objective2", "Capture Kozlovka", "Capture <marker name='markerTask2'>Kozlovka</marker> town.", true, ["markerTask2", getPosASL pmc_2]],
  ["PMC_objective3", "Clear building", "Clear <marker name='markerTask3'>building</marker> near town.", true, ["markerTask3", getPosASL pmc_3]]
],[
]] call compile preprocessfilelinenumbers "PMC\shk_taskmaster.sqf";

enableSaving [ false, false ];
