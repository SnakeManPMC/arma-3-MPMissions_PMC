
PAPABEAR = [West, "HQ"];

[] execVM "briefing.sqf";

{_x setunitpos "DOWN"} foreach units snipers;
snipers setcombatmode "BLUE";
snipers setbehaviour "AWARE";

{_x setcaptive true} foreach units captives;
{_x setbehaviour "CARELESS"} foreach units captives;

// remove heavy weapons from assault teams
{removeallweapons _x} foreach units assault1;
{removeallweapons _x} foreach units assault2;

{_x addmagazine "CUP_30Rnd_556x45_Stanag"} foreach units assault1;
{_x addmagazine "CUP_30Rnd_556x45_Stanag"} foreach units assault1;
{_x addmagazine "CUP_30Rnd_556x45_Stanag"} foreach units assault1;
{_x addmagazine "CUP_30Rnd_556x45_Stanag"} foreach units assault1;
{_x addmagazine "CUP_30Rnd_556x45_Stanag"} foreach units assault1;
{_x addmagazine "CUP_30Rnd_556x45_Stanag"} foreach units assault1;
{_x addmagazine "CUP_30Rnd_556x45_Stanag"} foreach units assault1;
{_x addmagazine "CUP_30Rnd_556x45_Stanag"} foreach units assault1;
{_x addmagazine "CUP_30Rnd_556x45_Stanag"} foreach units assault1;
{_x addmagazine "CUP_30Rnd_556x45_Stanag"} foreach units assault1;
{_x addweapon "CUP_arifle_M4A1_Aim_Laser_snds"} foreach (units assault1 + units assault2);
