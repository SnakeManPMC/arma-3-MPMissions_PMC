
leader assault1 sideChat "Objective 3 has been accomplished. Over.";
eastdead3 = 1;
sleep 3;
private _task = ["objective3", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

sleep 15;
PMCHQ sideChat "We copy, great job. Over.";
"target3" setMarkerType "mil_dot";
"target3" setMarkerColor "colorgreen";
