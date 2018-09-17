
// local variables for [group,helo] exec "script.sqs"
private _team = _this select 0;
private _helo = _this select 1;

_team = units assault1 + units assault2;

_helo sideradio "Rinsert";

// get people out
_helo land "land";

while { ((getpos vehicle _helo select 2) > 2) } do
{
	sleep 0.5;
	
	// loop until helo height is 2 meters.
};

_helo flyinheight 0;

// wait until whole squad is out
private _A = 0;

{
	unassignvehicle _x;
} foreach _team;

while { (_B > _A) } do
{
	private _listunits = _team;
	private _B = count _listunits
	sleep 0.2;
	_listunits select _A action ["eject", _helo];
	_A = _A + 1;
};

_helo flyinheight 25;

_helo sideradio "Rgoodluck";

leader assault1 move getpos leader captives;
leader assault2 move getpos leader captives;
