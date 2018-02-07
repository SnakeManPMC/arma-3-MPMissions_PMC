// on server we run...
if (isServer) then
{
};

[[
  ["PMC_objective1", "Clear Nango", "You must clear the <marker name='markerTask1'>Nango</marker>.", true, ["markerTask1", getPosASL pmc_1]],
  ["PMC_objective2", "Clear Zargabad", "You must clear the <marker name='markerTask2'>Zargabad</marker>.", true, ["markerTask2", getPosASL pmc_2]],
  ["PMC_objective3", "Clear Villa", "You must clear the <marker name='markerTask3'>Villa</marker>.", true, ["markerTask3", getPosASL pmc_3]]
],[
  ["Credits","Mission by PMC"]
]] call compile preprocessfilelinenumbers "PMC\shk_taskmaster.sqf";

player setVariable ["BIS_noCoreConversations", true];

enableSaving [ false, false ];
