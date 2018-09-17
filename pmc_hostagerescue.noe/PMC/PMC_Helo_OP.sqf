
private _team = _this select 0;
private _helo = _this select 1;
private _opname = _this select 2;

// insertion
if (_opname == 0) then
{
	_helo land "land";
	waitUntil
	{
		sleep 0.2;
		((getPos vehicle _helo select 2) < 2);
	};
	_helo flyinheight 0;
	private _A = 0;
	{unassignvehicle _x} foreach units _team;
	
	while { (_B > _A) } do
	{
		private _listunits = units _team;
		private _B = count _listunits;
		sleep 0.2;
		_listunits select _A action ["eject", _helo];
		_A = _A + 1;
	};
	_helo flyinheight 50;
};

// extraction
if (_opname == 1) then
{
	_helo land "land";
	waitUntil
	{
		sleep 0.2;
		((getPos vehicle _helo select 2) < 2);
	};
	_helo flyinheight 0;
	{_x assignascargo _helo} foreach units _team;
	{[_x] ordergetin true} foreach units _team;
	_A = 0;
	
	while { (_B > _A) } do
	{
		private _listunits = units _team;
		private _B = count _listunits
		sleep 0.1;
		if (_listunits select _A in _helo) then
		{
			_A = _A + 1;
		};
	};
	_helo flyinheight 50;
};
