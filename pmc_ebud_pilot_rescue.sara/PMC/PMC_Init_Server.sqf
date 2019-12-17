
[] execVM "PMC\PMC_Tasks.sqf";

downed_bird setdir random 360;
"down_loc" setMarkerPos (getPosASL downed_bird);

{
	_x setPos (getPosASL downed_bird);
} forEach [ppilot1, ppilot2];
