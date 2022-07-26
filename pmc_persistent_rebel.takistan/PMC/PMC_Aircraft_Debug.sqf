
private _vcl = _this select 0;
private _crew = crew _vcl;
private _grp = group (_crew select 0);

diag_log "";
diag_log format
[
	"PMC_Aircraft_Debug, _vcl: %1, fuel: %2, pos: %3, _grp: %4, alive _vcl: %5, damage _vcl: %6, alive _grp: %7, time: %8, fps: %9",
	typeOf (vehicle _vcl),
	(fuel _vcl),
	(getPosASL _vcl),
	_grp,
	(alive _vcl),
	(getDammage _vcl),
	(alive leader _grp),
	time,
	diag_fps
];

diag_log "";

PMC_Downed_Aircraft = _vcl;
publicVariable "PMC_Downed_Aircraft";
