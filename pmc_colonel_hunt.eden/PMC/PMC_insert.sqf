
1 setradiomsg "null";

_pos = _this select 0;

onMapSingleClick '';

helo sideradio "Rinsert";

helo setbehaviour "aware";
helo FlyInHeight 30;
helo setcombatmode "yellow";
tbird setSpeedMode "full";

helo move _pos;

waitUntil
{
	sleep 2;
	unitready helo;
};

helo land "get out";

waitUntil
{
	sleep 2;
	unitready helo;
};
helo sideradio "Rgetready";

// wait until the helo is 1.5meters off the ground
waitUntil
{
	sleep 1;
	((getpos vehicle helo select 2) > 1.5);
};

// set the helo for zero altitude
helo flyinheight 0;

act = "eject";

// get ALL the assault team members out of the helo
_listunits = units assault;

private _A = 0;
private _B = count _listunits;

while {_B >_A} do
{
	(_listunits select _A) action [act,helo];
	(_listunits select _A) sidechat "I'M OUT!";
	_A=_A+1;
	sleep 0.3;
};

// done inserting, small delay and radio message
sleep 0.5;
helo sideradio "Rgogetem";

// and helo flies back to base
helo flyinheight 30;

helo move getpos usa;

waitUntil
{
	sleep 2;
	unitready helo;
};

helo land "land";

2 setradiomsg "Call - Extract";
