
"killbox11" setmarkerColor "colorgreen";
player sideChat "Killbox 11 has been cleared. Over.";
hint "Killbox 11 cleared.";
pmc_killbox11 = true;

["t11", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
