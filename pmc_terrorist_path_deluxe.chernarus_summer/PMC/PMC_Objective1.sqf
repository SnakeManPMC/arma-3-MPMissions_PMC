// 0 = [] execVM "PMC\PMC_Objective1.sqf";

"airfield" setMarkerColorLocal "colorgreen";
publicVariable "PMC_airfield_task";
hint "Airfield objective accomplished, great work!";
["PMC_airfield_task", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
