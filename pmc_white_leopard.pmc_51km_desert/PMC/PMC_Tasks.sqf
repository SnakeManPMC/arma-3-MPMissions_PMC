
private _pmcVic = ["PMC_Victory_Condition_BLUFOR"] call BIS_fnc_getParamValue;
private _str = format["%1 %2 %3", ("Kill"), _pmcVic, ("BLUFOR units.")];

[
	resistance,
	[
		"t1"
	],
	[
		"Kill both BLUFOR and OPFOR forces! ALL OF THEM!",
		"Kill Em All",
		"respawn_west"
	],
	[
		pmc_flagpole
	],
	1,
	2,
	true
] call BIS_fnc_taskCreate;

[
	resistance,
	[
		"t2"
	],
	[
		_str,
		"BLUFOR KIAs reached",
		"respawn_west"
	],
	[
		pmc_flagpole
	],
	1,
	2,
	true
] call BIS_fnc_taskCreate;

private _pmcVic = ["PMC_Victory_Condition_OPFOR"] call BIS_fnc_getParamValue;
private _str = format["%1 %2 %3", ("Kill"), _pmcVic, ("OPFOR units.")];

[
	resistance,
	[
		"t3"
	],
	[
		_str,
		"OPFOR KIAs reached",
		"respawn_west"
	],
	[
		pmc_flagpole
	],
	1,
	2,
	true
] call BIS_fnc_taskCreate;
