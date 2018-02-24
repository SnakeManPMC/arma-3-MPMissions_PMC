private
[
	"_heli",
	"_logic",
	"_return"
];

_heli = _this select 0;
_logic = _this select 1;

_helipos = getPos _heli;
_logic setPos [(_helipos select 0),(_helipos select 1)];

if (abs (getPos _logic select 2) < 2) then {_return = true} else {_return = false};
_return