private
[
	"_heli",
	"_insty",
	"_wtr",
	"_vel",
	"_angInc",
	"_inRad",
	"_pos",
	"_i",
	"_co",
	"_cR",
	"_cG",
	"_cB",
	"_prcl",
	"_maxi",
	"_angle",
	"_life",
	"_stSz",
	"_endSz",
	"_sin",
	"_cos"
];

_heli = _this select 0;
_wtr = _this select 1;
_co = _this select 2;
_pos = getPos _heli;

if ((_pos select 2) < 25 && (_pos select 2) > 0.5 && speed _heli < 950) then
{
	_i = ((25-(_pos select 2))/25);
	_insty = _i*((250-speed _heli)/250);
	_insty = _insty*_co;
	_inRad = (10-(5*_insty));
	_angInc = 5+(random 4);
	_maxi = 360/_angInc;
	_life = 1.5+(random 1)+(0.25*_insty);
	_vel = 35+(random 10)+(20* _insty);
	_stSz = (1+random 2.5)+(_insty);
	_endSz = 10+(random 10)+(20*_insty);
	_cR = 0.35+((random 0.02)-0.01);_cG = 0.33+((random 0.02)-0.01);_cB = 0.26+((random 0.02)-0.01);
	_prcl = "cl_basic";
	if (_wtr) then
	{
	_vel = 25+(random 10)+(20*_insty);
	_stSz = 1+(2*_insty);
	_endSz = 2+(4*_insty);

	_prcl = "cl_water";
	};
	_i = 0;
	while {_i < _maxi} do
	{
	_angle = (_i*_angInc)+((random _maxi*2)-_maxi);
	_sin = sin(_angle);
	_cos = cos(_angle);
	drop 
	[
		_prcl,
		"",
		"Billboard",
		100,
		_life,
		[
			((_pos select 0)+(_inRad*_sin))+((random 4)-2),
			((_pos select 1)+(_inRad*_cos))+((random 4)-2),
			0
		],
		[
			((_vel*_sin)),
			((_vel*_cos)),
			(random 4)
		],
		0.1,
		0.1,
		0,
		0.075,
		[_stSz,_stSz+4+(random 6),_endSz + (random 12)],
		[
			[_cR,_cG,_cB, 0.3+(0.2*_insty)+(random 0.4)],[_cR,_cG,_cB, 0.2+(random 0.4)],[_cR,_cG,_cB,0]
		],
		[0],
		1,
		5,
		"",
		"",
		""
	];
	if ((random 10) <= 0.95 * _insty + 10 && !_wtr) then
	{
	drop 
	[
		_prcl,
		"",
		"SpaceObject",
		1,
		5,
		[
			((_pos select 0)+((_inRad+10)*_sin)),
			((_pos select 1)+((_inRad+10)*_cos)),
			0
		],
		[
			((_vel*_sin))+((random 25)-(random 25)),
			((_vel*_cos))+((random 25)-(random 25)),
			6+(random 4)
		],
		0.1,
		0.1,
		0,
		0.05,
		[0.1+(random 0.3)],
		[
			[0,0,0,1]
		],
		[0],
		0,
		0,
		"",
		"",
		""
		]
		};
		_i = _i+_angInc
	}
};

if ((_pos select 2) < 0.5 && !_wtr) then
{
	_i = ((25-(_pos select 2))/25);
	_insty = _i;
	_insty = _insty*_co;
	_vel = 27+(random 6) + (15*_insty);
	_inRad = 5+(random 5);
	_angInc = 8+(random 4)-(3*_insty);
	_maxi = 360/_angInc;
	_life = 1+((random 0.5)-0.25)+(0.5*_insty);
	_stSz = 0.5+(random 0.5)+(1*_insty);
	_cR = 0.35+((random 0.02)-0.01);_cG = 0.33+((random 0.02)-0.01);_cB = 0.26+((random 0.02)-0.01);
	_prcl = "cl_basic";
	_i = 0;
	while {_i < _maxi} do
	{
	_angle = (_i*_angInc)+((random _maxi*2)-_maxi);
	_sin = sin(_angle);
	_cos = cos(_angle);
	drop 
	[
		_prcl,
		"",
		"Billboard",
		100,
		_life,
		[
			((_pos select 0)+(_inRad*_sin)+((random 2)-1)),
			((_pos select 1)+(_inRad*_cos)+((random 2)-1)),
			0
		],
		[
			((_vel*_sin))*0.6,
			((_vel*_cos))*0.6,
			(random 4)
		],
		0.1,
		0.1,
		0,
		0.075,
		[_stSz,_stSz+1+(random 6)],
		[
			[_cR,_cG,_cB, 0.1+(random 0.3)+(0.4*_insty)],[_cR,_cG,_cB, 0.15+(random 0.3)],[_cR,_cG,_cB,0]
		],
		[0],
		0,
		0,
		"",
		"",
		""
	];
	if ((random 10) <= (0.1 * _insty)) then
	{
	drop 
	[
		_prcl,
		"",
		"SpaceObject",
		100,
		5,
		[
		((_pos select 0)+((_inRad+10)*_sin)),
		((_pos select 1)+((_inRad+10)*_cos)),
		0
		],
		[
		((_vel*_sin))+((random 50)-25),
		((_vel*_cos))+((random 50)-25),
		4+(random 3)
		],
		0.1,
		0.1,
		0,
		0.05,
		[0.15+(random 0.15)],
		[
		[0,0,0,1]
		],
		[0],
		0,
		0,
		"",
		"",
		""
	]
	};
	_i = _i + _angInc
	}
}