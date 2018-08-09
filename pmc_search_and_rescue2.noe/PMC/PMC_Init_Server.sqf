
PAPABEAR = [West, "HQ"];

// remove all weapons and insert HK's and smoke shells
{removeallweapons _x} foreach units blackops1;

{_x addmagazine "CUP_30Rnd_9x19_MP5"} foreach units blackops1;
{_x addmagazine "CUP_30Rnd_9x19_MP5"} foreach units blackops1;
{_x addweapon "CUP_smg_MP5SD6"} foreach units blackops1;

{_x addmagazine "1Rnd_SmokeGreen_Grenade_shell"} foreach units blackops1;
{_x addmagazine "1Rnd_SmokeGreen_Grenade_shell"} foreach units blackops1;
{_x addmagazine "1Rnd_SmokeGreen_Grenade_shell"} foreach units blackops1;

// move spetz natz groups into black ops
nazis1 setbehaviour "AWARE";
nazis1 setcombatmode "RED";
nazis1 setspeedmode "FULL";
leader nazis1 move getpos leader blackops1;

nazis2 setbehaviour "AWARE";
nazis2 setcombatmode "RED";
nazis2 setspeedmode "FULL";
leader nazis2 move getpos leader blackops1;

[] execVM "PMC\PMC_Tasks.sqf";
