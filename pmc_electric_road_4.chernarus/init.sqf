// on server we run...
if (isServer) then
{
};

[[
  ["PMC_objective1", "Clear road block", "Insurgents have setup a <marker name='markerTask1'>road block</marker> and you need to clear it.", true, ["markerTask1", getPosASL pmc_1]],
  ["PMC_objective2", "Seize Rogovo", "Attack and seize <marker name='markerTask2'>Rogovo</marker> objective.", true, ["markerTask2", getPosASL pmc_2]],
  ["PMC_objective3", "Capture Pogorevka", "Capture <marker name='markerTask3'>Pogorevka</marker> objective.", true, ["markerTask3", getPosASL pmc_3]]
],[
]] call compile preprocessfilelinenumbers "PMC\shk_taskmaster.sqf";

enableSaving [ false, false ];
