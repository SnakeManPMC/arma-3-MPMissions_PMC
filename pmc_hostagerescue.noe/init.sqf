
PAPABEAR = [West, "HQ"];

{_x setcaptive true} foreach units captives;
{_x setbehaviour "CARELESS"} foreach units captives;
{_x setunitpos "UP"} foreach units captives;

[] execVM "briefing.sqf";
