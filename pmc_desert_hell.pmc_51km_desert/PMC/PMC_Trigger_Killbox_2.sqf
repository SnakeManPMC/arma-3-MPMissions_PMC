
"killbox2" setmarkerColor "colorgreen";
player sideChat "Killbox 2 has been cleared. Over.";
hint "Killbox 2 cleared.";
0 = [killbox2] execVM "PMC\PMC_killbox_cleared.sqf";
pmc_killbox2 = true;

["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
