
2 setradiomsg "null";

helo sideradio "Rextract";

helo setbehaviour "aware";
helo FlyInHeight 30;
helo setcombatmode "yellow";
tbird setSpeedMode "full"

helo move getpos leader assault;

waitUntil
{
	sleep 2;
	unitready helo;
};

helo land "get in";

helo sideradio "Rextract1";

waitUntil
{
	sleep 2;
	unitready helo;
};

helo flyinheight 0;

private _A = 0;
private _B = count _listunits;

while {(_B > _A)} do
{
	_listunits = units assault;
	_B = count _listunits;
	sleep 0.3;
	if (_listunits select _A in helo) then
	{
		_A = _A + 1;
	};
};

leader assault sideradio "Rgogogo";

helo flyinheight 25;

helo move getpos usa;

waitUntil
{
	sleep 2;
	unitready helo;
};

helo land "land";

waitUntil
{
	sleep 2;
	unitready helo;
};

helo sideradio "Rwelcomehome";

1 setradiomsg "Call - Insert LZ";
