
private _team = _this select 0;
private _helo = _this select 1;

_helo sideradio "Rextract";

// get people out
_helo land "land";

waitUntil
{
	sleep 0.5;
	(getpos vehicle _helo select 2 < 2);
};

_helo flyinheight 0;

// wait until whole squad is on board.
private _A = 0;

while { (_B > _A) } do
{
	private _listunits = units _team;
	private _B = count _listunits;
	sleep 0.1;
	if (_listunits select _A in _helo) then
	{
		_A = _A + 1;
	};
};

_helo flyinheight 50;
AA_Ready = true;
