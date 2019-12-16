
"killbox6" setmarkerColor "colorgreen";
player sideChat "Killbox 6 has been cleared. Over.";
hint "Killbox 6 cleared.";
0 = [killbox6] execVM "PMC\PMC_killbox_cleared.sqf";
pmc_killbox6 = true;

["t6", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
