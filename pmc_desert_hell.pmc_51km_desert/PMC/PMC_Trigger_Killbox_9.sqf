
"killbox9" setmarkerColor "colorgreen";
player sideChat "Killbox 9 has been cleared. Over.";
hint "Killbox 9 cleared.";
pmc_killbox9 = true;

["t9", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
