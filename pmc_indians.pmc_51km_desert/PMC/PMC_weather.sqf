/*

non MP compatible weather script ;)

*/

private [
	"_minChange","_maxChange","_minDuration","_maxDuration","_w","_f",
	"_tfc","_wd","_rain"
];

// min time for a change, 10 min.
_minChange = (60 * 10);

// max time for a change, 2h.
_maxChange = (60 * 60 * 2);

// min time for weather duration, 5min.
_minDuration = (60 * 5);

// max time for weather duration, 12hrs.
_maxDuration = (60 * 60 * 12);

// initial weather for mission start
0 setOvercast random 1;
if (overCast > 0.7) then
{
	0 setFog (overCast - 0.25);
	0 setRain (overCast - 0.25);
};

while {true} do
{
	// our weather
	_w = random 1;

	// if we have rainy weather, we add some fog
	_f = 0;
	_rain = 0;
	if (_w > 0.7) then
	{
		_f = (_w - 0.25);
		_rain = (_w - 0.25);
	};
	// this is heavy rain and fog.
	if (_w > 0.9) then
	{
		_f = (_w - 0.1);
		_rain = 1;
	};
	// if it drops below zero, set to ... zero.
	if (_f < 0) then
	{
		_f = 0;
		_rain = 0;
	};

	// time for change
	_tfc = (_minChange + random _maxChange);

	// weather duration
	_wd = (_minDuration + random _maxDuration);

	// set the actual weather
	_tfc setOvercast _w;

	// set the fog on rainy days
	if (_f > 0) then
	{
		_tfc setFog _f;
		_tfc setRain _rain;
	};

	/*
	make array out of it;
	current time / weather / duration / time for change / fog / rain
	first clear the array from old contents.
	*/
	PMC_weatherForecast = [];
	PMC_weatherForecast = [time,_w,_wd,_tfc,_f,_rain];
//	player sideChat format["Weather forecast: %1 (Fog: %2). TimeForChange: %3min, WeatherDuration: %4min. Time before new weather: %5min!",_w,_f,(_tfc/60),(_wd/60),((_tfc/60)+(_wd/60))];
//	player sideChat format["Weather forecast: %1 (Fog: %2). TimeForChange: %3min, WeatherDuration: %4min. Time before new weather: %5min!",_w, _f, (round _tfc/60), (round _wd/60), ((round _tfc/60) + (round _wd/60))];

	// raport some weather forecast on side channel
	[] call compile preProcessFileLineNumbers "PMC\PMC_weatherForecast.sqf";

	// wait for the weather to be in effect
	sleep (_tfc + _wd);
};
