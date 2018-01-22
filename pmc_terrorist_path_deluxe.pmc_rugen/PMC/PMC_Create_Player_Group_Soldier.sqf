private
[
	"_UnitTypes",
	"_MyUnit",
	"_unit"
];

_UnitTypes =
[
	"CUP_I_GUE_Commander",
	"CUP_I_GUE_Soldier_AKSU",
	"CUP_I_GUE_Soldier_AKM",
	"CUP_I_GUE_Soldier_AKS74",
	"CUP_I_GUE_Soldier_AA",
	"CUP_I_GUE_Soldier_AR",
	"CUP_I_GUE_Soldier_AT",
	"CUP_I_GUE_Officer",
	"CUP_I_GUE_Crew",
	"CUP_I_GUE_Soldier_GL",
	"CUP_I_GUE_Medic",
	"CUP_I_GUE_Soldier_MG",
	"CUP_I_GUE_Pilot",
	"CUP_I_GUE_Saboteur",
	"CUP_I_GUE_Soldier_Scout",
	"CUP_I_GUE_Sniper"
];

_MyUnit = _UnitTypes select (random count _UnitTypes);

_unit = group player createUnit [_MyUnit, position player, [], 0, "FORM"];
_unit addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
removeAllWeapons _unit;
addSwitchableUnit _unit;
[_unit] joinSilent group player;

/*
unitName setSkill [type, skill]

aimingAccuracy
aimingShake
aimingSpeed
endurance
spotDistance
spotTime
courage
reloadSpeed
commanding
general

hero setskill ["Endurance", 0.7];

*/
