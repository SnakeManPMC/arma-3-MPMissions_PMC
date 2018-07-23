
PAPABEAR = [West, "HQ"];

{_x moveincargo helo1} foreach units assault1;
{_x moveincargo helo2} foreach units assault2;

[] execVM "briefing.sqf";
