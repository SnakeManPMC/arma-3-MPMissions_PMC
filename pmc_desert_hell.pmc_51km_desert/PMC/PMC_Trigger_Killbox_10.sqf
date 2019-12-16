
"killbox10" setmarkerColor "colorgreen";
player sideChat "Killbox 10 has been cleared. Over.";
hint "Killbox 10 cleared.";
pmc_killbox10 = true;

["t10", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
