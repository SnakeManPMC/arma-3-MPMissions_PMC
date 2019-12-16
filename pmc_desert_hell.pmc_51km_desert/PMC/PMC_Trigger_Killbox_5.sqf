
"killbox5" setmarkerColor "colorgreen";
player sideChat "Killbox 5 has been cleared. Over.";
hint "Killbox 5 cleared.";
0 = [killbox5] execVM "PMC\PMC_killbox_cleared.sqf";
pmc_killbox5 = true;

["t5", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
