// on server we run...
if (isServer) then
{
};

[[
  ["PMC_objective1", "Seize factory area", "Seize <marker name='markerTask1'>factory area</marker>.", true, ["markerTask1", getPosASL pmc_1]],
  ["PMC_objective2", "Seize downtown Chernogorsk", "Seize <marker name='markerTask2'>downtown Chernogorsk</marker>.", true, ["markerTask2", getPosASL pmc_2]]
],[
]] call compile preprocessfilelinenumbers "PMC\shk_taskmaster.sqf";

enableSaving [ false, false ];
