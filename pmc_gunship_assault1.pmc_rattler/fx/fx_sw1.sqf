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
	"_pos5"
];

_pos = _this select 0;
_maxPuffs = 2 + random 2;
_i = 0;
_count1 = 0;

_rand1 = 15 + random 15;


_pos1 = [(_pos select 0) +random 0.5 -random 0.5,(_pos select 1)+random 0.5 -random 0.5,0-0.25];   
_pos2 = [(_pos select 0) +random 0.5 -random 0.5,(_pos select 1)+random 0.5 -random 0.5,0-0.25 -random 0.25];
_pos3 = [(_pos select 0) +random 0.25 -random 0.25,(_pos select 1)+random 0.25 -random 0.25,0 -random 0.25];
_pos4 = [(_pos select 0) +random 0.25 -random 0.25,(_pos select 1)+random 0.25 -random 0.25,0 -random 0.5]; 

if (random 10 <= 2.5) then
{
	drop ["\ca\data\cl_basic","","Billboard",1, 0.15 +random 0.15,_pos1,[0,0,0],1,0.185,0.14,0.5,[2+random 2 -random 2, 5 + random 15],[[0.85+random 0.05 +random 0.0175 -random 0.0175, 0.85+random 0.05 +random 0.0175 -random 0.0175,0.85+random 0.05 +random 0.0175 -random 0.0175,0.2],[0.63+random 0.05 +random 0.0175 -random 0.0175,0.63+random 0.05 +random 0.0175 -random 0.0175,0.63+random 0.05 +random 0.0175 -random 0.0175,0]],[0,1],0,0,"","",""]; 

};

	drop ["\ca\data\cl_basic","","Billboard",1,8 +random 4,_pos2,[0,0,0],1,0.185,0.14,0.5,[8+ random 5,10 +random 20],[[0.75+random 0.0175 -random 0.0175, 0.75+random 0.0175 -random 0.0175, 0.75+random 0.0175 -random 0.0175,0.75],[0.55+random 0.0175 -random 0.0175, 0.55+random 0.0175 -random 0.0175, 0.55+random 0.0175 -random 0.0175,0]],[0,1],0,0,"","",""];

	drop ["\ca\data\cl_basic","","Billboard",1,8 +random 4,_pos3,[0,0,0],1,0.185,0.14,0.5,[8+ random 8,25 +random 15],[[0.65+random 0.0175 -random 0.0175, 0.65+random 0.0175 -random 0.0175, 0.65+random 0.0175 -random 0.0175,0.75],[0.45+random 0.0175 -random 0.0175, 0.45+random 0.0175 -random 0.0175, 0.45+random 0.0175 -random 0.0175,0]],[0,1],0,0,"","",""];

	drop ["\ca\data\cl_basic","","Billboard",1,8 +random 6,_pos4,[0,0,0],1,0.185,0.14,0.5,[10+ random 5,15 +random 25],[[0.25+random 0.0175 -random 0.0175, 0.25+random 0.0175 -random 0.0175, 0.25+random 0.0175 -random 0.0175,0.75],[0.02+random 0.0175 -random 0.0175, 0.02+random 0.0175 -random 0.0175, 0.02+random 0.0175 -random 0.0175,0]],[0,1],0,0,"","",""];

	while {_count1 < _rand1} do
	{
		_pos4 = [(_pos select 0) +random 25 -random 25,(_pos select 1)+random 25 -random 25,-2 -random 3];
		drop ["\ca\data\cl_basic","","Billboard",1,5 +random 4,_pos4,[0,0,0],1,0.185,0.15,0.5,[8+random 8,12 + random 25],[[0.675+random 0.0175 -random 0.0175, 0.675+random 0.0175 -random 0.0175, 0.675+random 0.0175 -random 0.0175,0.75],[0.325+random 0.0175 -random 0.0175, 0.325+random 0.0175 -random 0.0175, 0.325+random 0.0175 -random 0.0175,0]],[0,1],0,0,"","",""];
	 
		_count1 = _count1 + 1  
	};  

	while {_count2 < _rand1} do
	{
		_pos5 = [(_pos select 0) +random 25 -random 25,(_pos select 1)+random 25 -random 25,-2 -random 2];
		drop ["\ca\data\cl_basic","","Billboard",1,5 +random 4,_pos5,[0,0,0],1,0.185,0.15,0.5,[6+random 5,8 + random 15],[[0.015+random 0.0175 -random 0.0175, 0.015+random 0.0175 -random 0.0175, 0.015+random 0.0175 -random 0.0175 ,0.75],[0.075+random 0.0175 -random 0.0175, 0.0175+random 0.0175 -random 0.0175, 0.0175+random 0.0175 -random 0.0175,0]],[0,1],0,0,"","",""];
	 
		_count2 = _count2 + 1  
	};