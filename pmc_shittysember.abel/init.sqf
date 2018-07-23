
PAPABEAR = [West, "HQ"];

[] execVM "briefing.sqf";

{_x addweapon "CUP_NVG_PVS7"} foreach (units assault1 + units assault2);
