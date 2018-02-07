// on server we run...
if (isServer) then
{
};

[[
  ["PMC_objective1", "Clear buildings", "This small group of <marker name='markerTask1'>buildings</marker> is needs to be cleared.", true, ["markerTask1", getPosASL pmc_1]],
  ["PMC_objective2", "Clear house", "Clear suspected <marker name='markerTask2'>insurgent house</marker> before you assault main objective.", true, ["markerTask2", getPosASL pmc_2]],
  ["PMC_objective3", "Capture Pushtoska", "Seize <marker name='markerTask3'>Pushtoska</marker> from insurgents.", true, ["markerTask3", getPosASL pmc_3]]
],[
]] call compile preprocessfilelinenumbers "PMC\shk_taskmaster.sqf";

enableSaving [ false, false ];
