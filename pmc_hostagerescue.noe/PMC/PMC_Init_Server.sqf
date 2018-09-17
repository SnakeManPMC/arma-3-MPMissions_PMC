
PAPABEAR = [West, "HQ"];

private _pos = [place1, place2];
private _myPlace = selectRandom _pos;

{
	_x setpos getpos vehicle _myPlace;
} foreach units captives;

{_x setcaptive true} foreach units captives;
{_x setbehaviour "CARELESS"} foreach units captives;
{_x setunitpos "UP"} foreach units captives;

[] execVM "PMC\PMC_Tasks.sqf";
