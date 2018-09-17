
private _team = _this select 0;
private _helo = _this select 1;

_helo sideradio "Rofficers";

{_x assignascargo helo1} foreach units _team;
{[_x] ordergetin true} foreach units _team;

// get people out
_helo land "land";

while {((getpos vehicle _helo select 2) > 2)} do
{
	sleep 0.5;
	// loop until helo height is 2 meters.
};

_helo flyinheight 0;

// wait until whole squad is on board.
private _A = 0;

while { (_B > _A) } do
{
	private _listunits = units _team;
	private _B = count _listunits
	sleep 1;
	if (_listunits select _A in _helo) then
	{
		_A = _A + 1;
	};
	if !(alive helo1) exitWith {};
};

_helo flyinheight 50;
_helo sideradio "Rdustoff";
