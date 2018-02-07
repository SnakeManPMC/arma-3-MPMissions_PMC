// on server we run...
if (isServer) then
{
};

[[
  ["PMC_objective1", "Clear north end", "You must clear the north end of airfield buildings.", true, ["markerTask1", getPosASL pmc_1]],
  ["PMC_objective2", "Clear center", "You must clear the center of airfield buildings.", true, ["markerTask2", getPosASL pmc_2]],
  ["PMC_objective3", "Clear south end", "You must clear the south end of airfield, the small group of buildings.", true, ["markerTask3", getPosASL pmc_3]]
],[
]] call compile preprocessfilelinenumbers "PMC\shk_taskmaster.sqf";

enableSaving [ false, false ];
