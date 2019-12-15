
// if you are client on the server, you get this marker.
// if you JIP after this has been created, you wont see it
"PMC_Downed_Aircraft" addPublicVariableEventhandler
{
	private ["_markerobj", "_m"];

	_m = format ["PMC_Aircraft_%1", (round random 1000)];
	_markerobj = createMarkerLocal [_m, getPosASL (_this select 1)];
	_markerobj setMarkerTypeLocal "mil_pickup";
	_markerobj setMarkerColorLocal "ColorRed";
	_markerobj setMarkerTextLocal format ["%1", _m];

	hintSilent "Downed Aircraft Marker Placed!\n\nCheck map.";
	
	// turns marker colors to indicate fading, finally deletes the marker
	// ColorRed -> ColorKhaki -> ColorGrey -> ColorBlack -> DELETE
	[_m] spawn
	{
		sleep 300;
		(_this select 0) setMarkerColorLocal "ColorKhaki";
		sleep 300;
		(_this select 0) setMarkerColorLocal "ColorGrey";
		sleep 300;
		(_this select 0) setMarkerColorLocal "ColorBlack";
		sleep 300;
		deleteMarker (_this select 0);
	};
};
