private 
[
	"_pos",
	"_maxPuffs",
	"_i",
	"_count1",
	"_count2",
	"_rand1",
	"_pos1",
	"_pos2",
	"_pos3",
	"_pos4",
	"_pos5",
	"_color1",
	"_color2",
	"_color3",
	"_color4",
	"_color5",
	"_color6"
];

_pos = _this select 0;
_maxPuffs = 2 + random 2;
_i = 0;
_count1 = 0;
_count2 = 0;
_rand1 = 5 + random 25;
_color1 = 0.605 +random 0.1 -random 0.35;
_color2 = 0.205 +random 0.2 -random 0.15;
_color3 = 0.505 +random 0.2 -random 0.45;
_color4 = 0.305 +random 0.5 -random 0.3;
_color5 = 0.405 +random 0.1 -random 0.45;
_color6 = 0.305 +random 0.65 -random 0.225;

_pos1 = [(_pos select 0) +random 0.5 -random 0.5,(_pos select 1)+random 0.5 -random 0.5,0-0.25];   
_pos2 = [(_pos select 0) +random 0.5 -random 0.5,(_pos select 1)+random 0.5 -random 0.5,0-0.25 -random 0.25];
_pos3 = [(_pos select 0) +random 0.25 -random 0.25,(_pos select 1)+random 0.25 -random 0.25,0 -random 0.25];
_pos4 = [(_pos select 0) +random 0.25 -random 0.25,(_pos select 1)+random 0.25 -random 0.25,0 -random 0.5]; 

if (random 10 <= 2.5) then
{
	drop ["\ca\data\cl_basic","","Billboard",1, 0.15 +random 0.15,_pos1,[0,0,0],1,0.185,0.14,0.5,[2+random 2 -random 2, 5 + random 15],[[_color1,_color1,_color1,0.7 +random 0.4 -random 0.25],[_color1,_color1,_color1,0.5 +random 0.4 -random 0.25],[_color1,_color1,_color1,0]],[0,1],0,0,"","",""]; 

};

	drop ["\ca\data\cl_basic","","Billboard",1,8 +random 4,_pos2,[0,0,0],1,0.185,0.14,0.5,[8+ random 5,10 +random 20],[[_color2,_color2,_color2,0.7 +random 0.4 -random 0.25],[_color2,_color2,_color2,0.5 +random 0.4 -random 0.25],[_color2,_color2,_color2,0]],[0,1],0,0,"","",""];

	drop ["\ca\data\cl_basic","","Billboard",1,8 +random 4,_pos3,[0,0,0],1,0.185,0.14,0.5,[8+ random 8,25 +random 15],[[_color3,_color3,_color3,0.7 +random 0.4 -random 0.25],[_color3,_color3,_color3,0.5 +random 0.4 -random 0.25],[_color3,_color3,_color3,0]],[0,1],0,0,"","",""];

	drop ["\ca\data\cl_basic","","Billboard",1,8 +random 6,_pos4,[0,0,0],1,0.185,0.14,0.5,[10+ random 5,15 +random 25],[[_color4,_color4,_color4,0.7 +random 0.4 -random 0.25],[_color4,_color4,_color4,0.5 +random 0.4 -random 0.25],[_color4,_color4,_color4,0]],[0,1],0,0,"","",""];

	while {_count1 < _rand1} do
	{
		_pos4 = [(_pos select 0) +random 25 -random 25,(_pos select 1)+random 25 -random 25,-2 -random 3];
		drop ["\ca\data\cl_basic","","Billboard",1,5 +random 4,_pos4,[0,0,0],1,0.185,0.15,0.5,[8+random 8,12 + random 25],[[_color5,_color5,_color5,0.7 +random 0.4 -random 0.25],[_color5,_color5,_color5,0.5 +random 0.4 -random 0.25],[_color5,_color5,_color5,0]],[0,1],0,0,"","",""];
	 
		_count1 = _count1 + 1  
	};  

	while {_count2 < _rand1} do
	{
		_pos5 = [(_pos select 0) +random 25 -random 25 ,(_pos select 1)+random 25 -random 25 ,-1 -random 3];
		drop ["\ca\data\cl_basic","","Billboard",1,5 +random 4,_pos5,[0,0,0],1,0.185,0.15,0.5,[6+random 5,8 + random 15],[[_color6,_color6,_color6,0.7 +random 0.4 -random 0.25],[_color6,_color6,_color6,0.5 +random 0.4 -random 0.25],[_color6,_color6,_color6,0]],[0,1],0,0,"","",""];
	 
		_count2 = _count2 + 1  
	};
