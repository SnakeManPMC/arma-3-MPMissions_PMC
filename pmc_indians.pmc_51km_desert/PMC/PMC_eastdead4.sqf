
leader assault1 sideChat "Objective 4 has been accomplished. Over.";
eastdead4 = 1;
sleep 3;
private _task = ["objective4", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

sleep 15;
PMCHQ sideChat "We copy, great job. Over.";
//"4" objStatus "DONE";
"target4" setMarkerType "mil_dot";
"target4" setMarkerColor "colorgreen";
