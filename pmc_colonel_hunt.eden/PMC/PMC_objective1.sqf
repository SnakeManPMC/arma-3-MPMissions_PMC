
leader assault sideradio "Rcolonelgone";
colonelgone = 1;

sleep 15;
PAPABEAR sideradio "Rcomplete";

sleep 3;
private _task = ["objective1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
