
"killbox4" setmarkerColor "colorgreen";
player sideChat "Killbox 4 has been cleared. Over.";
hint "Killbox 4 cleared.";
0 = [killbox4] execVM "PMC\PMC_killbox_cleared.sqf";
pmc_killbox4 = true;

["t4", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
