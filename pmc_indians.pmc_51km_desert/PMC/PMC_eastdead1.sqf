
leader assault1 sideChat "Objective 1 has been accomplished. Over.";
eastdead1 = 1;
sleep 3;
private _task = ["objective1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

sleep 15;
PMCHQ sideChat "Roger that, good work. Over";
"target1" setMarkerType "mil_dot";
"target1" setMarkerColor "colorgreen";
