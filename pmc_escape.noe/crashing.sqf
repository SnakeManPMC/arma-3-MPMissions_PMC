
helo3 sideradio "Rwerehit"; 
helo3 land "land";

// land the helo
while { (getpos helo3 select 2 > 2) } do
{
	sleep 0.3;
};

// when its near the ground eject the units out of there
{
	_x action["eject", helo3];
} foreach units assault1;
{
	unassignvehicle _x;
} foreach units transp3;

// then set its dammage so pilots wont get back onboard
if (getDammage helo3 < 0.9) then
{
	helo3 setdammage 0.9;
};

["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

[] spawn
{
	sleep 3;
	[
		west,
		[
			"t2"
		],
		[
			"Take command of the survivors and get them into Nogova <marker name = 'airbase'>Airbase</marker> area.",
			"Escape",
			"airbase"
		],
		(getMarkerPos "airbase"),
		1,
		2,
		true
	] call BIS_fnc_taskCreate;
};

leader aaguys1 move getpos helo3;
leader aaguys2 move getpos helo3;
leader aaguys3 move getpos helo3;
leader aaguys4 move getpos helo3;
leader aaguys5 move getpos helo3;
leader aaguys6 move getpos helo3;

// small wait
sleep 10;

{[_x] join assault1} foreach units deltas1;
{[_x] join assault1} foreach units deltas2;
