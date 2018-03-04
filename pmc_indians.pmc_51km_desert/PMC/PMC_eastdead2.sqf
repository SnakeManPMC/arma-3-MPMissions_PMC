
leader assault1 sideChat "Objective 2 has been accomplished. Over.";
eastdead2 = 1;
sleep 3;
private _task = ["objective2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

sleep 15;
PMCHQ sideChat "We copy, great job. Over.";
//"2" objStatus "DONE";
"target2" setMarkerType "mil_dot";
"target2" setMarkerColor "colorgreen";
