// on server we run...
if (isServer) then
{
};

[[
  ["PMC_objective1", "Clear building", "This <marker name='markerTask1'>building</marker> is housing some insurgents, clear it.", true, ["markerTask1", getPosASL pmc_1]],
  ["PMC_objective2", "Clear factory", "Clear this <marker name='markerTask2'>factory</marker> area.", true, ["markerTask2", getPosASL pmc_2]],
  ["PMC_objective3", "Capture Vybor", "Assault and capture <marker name='markerTask3'>Vybor</marker> town.", true, ["markerTask3", getPosASL pmc_3]]
],[
]] call compile preprocessfilelinenumbers "PMC\shk_taskmaster.sqf";

enableSaving [ false, false ];
