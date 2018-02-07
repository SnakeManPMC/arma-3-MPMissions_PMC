// on server we run...
if (isServer) then
{
};

[[
  ["PMC_objective1", "Seize Pulkovo", "Seize <marker name='markerTask1'>Pulkovo</marker> from insurgents.", true, ["markerTask1", getPosASL pmc_1]],
  ["PMC_objective2", "Clear radio tower", "Clear any insurgents from <marker name='markerTask2'>radio tower</marker> area.", true, ["markerTask2", getPosASL pmc_2]],
  ["PMC_objective3", "Investigate hideout", "Investigate suspected bad guys <marker name='markerTask3'>hideout</marker> in the woods.", true, ["markerTask3", getPosASL pmc_3]]
],[
]] call compile preprocessfilelinenumbers "PMC\shk_taskmaster.sqf";

enableSaving [ false, false ];
