
// helicopter landing and troop waiting
biggie sideradio "Rcommitextract";

biggie land "get in";

// loop to get the helo landing height
waitUntil
{
	sleep 1;
	(getpos vehicle biggie select 2 < 2);
};

// stop the goddamn bird here, flying height ZERO :)
biggie flyinheight 0;

// assign all the guys into the helo
// seals, player team
{_x assignascargo biggie} foreach units seals;
{[_x] ordergetin true} foreach units seals;

// kill1 team
{_x assignascargo biggie} foreach units kill1;
{[_x] ordergetin true} foreach units kill1;

// kill2 team
{_x assignascargo biggie} foreach units kill2;
{[_x] ordergetin true} foreach units kill2;

// and finally prisoners
{_x assignascargo biggie} foreach units prisoners;
{[_x] ordergetin true} foreach units prisoners;

// wait until they are in the helo
private _A = 0;

while {(_B > _A)} do
{
	private _listunits = units seals;
	private _B = count _listunits
	sleep 0.5;
	if (_listunits select _A in biggie) then
	{
		_A = _A + 1;
	};
};

_A = 0;

while {(_B > _A)} do
{
	private _listunits = units kill1;
	private _B = count _listunits
	sleep 0.5;
	if (_listunits select _A in biggie) then
	{
		_A = _A + 1;
	};
};

_A = 0;

while {(_B > _A)} do
{
	private _listunits = units kill2;
	private _B = count _listunits
	sleep 0.5;
	if (_listunits select _A in biggie) then
	{
		_A = _A + 1;
	};
};

_A = 0;

while {(_B > _A)} do
{
	private _listunits = units prisoners;
	private _B = count _listunits
	sleep 0.5;
	if (_listunits select _A in biggie) then
	{
		_A = _A + 1;
	};
};

// then takeoff and continue waypoints
biggie flyinheight 50;
