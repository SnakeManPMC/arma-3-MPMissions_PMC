/*

Use players sideChat to report forecast, what the setOverCast/setFog will be
and how long time before it starts to change and finally how long until the 
new weather has finally arrived.

*/

private [
	"_t","_w","_wd","_tfc","_f","_rain"
];

/*
make array out of it; current time / weather / duration / time for change / fog / rain
PMC_weatherForecast = [time,_w,_wd,_tfc,_f,_rain];
*/

_t = PMC_weatherForecast select 0;
_w = PMC_weatherForecast select 1;
_wd = PMC_weatherForecast select 2;
_tfc = PMC_weatherForecast select 3;
_f = PMC_weatherForecast select 4;
_rain = PMC_weatherForecast select 5;

// clear weather
if (_w < 0.2) then
{
	player sideChat format["Weather forecast: perfect clear skies, no fog, expected in %1min, weather duration: %2min.", (round _tfc/60), (round _wd/60)];
};
// almost clear weather
if (_w > 0.2 && _w < 0.5) then
{
	player sideChat format["Weather forecast: mostly clear skies, no fog, expected in %1min, weather duration: %2min.", (round _tfc/60), (round _wd/60)];
};
// slight overcast
if (_w > 0.5 && _w < 0.7) then
{
	player sideChat format["Weather forecast: overcast, slight fog, expected in %1min, weather duration: %2min.", (round _tfc/60), (round _wd/60)];
};
// overcast weather
if (_w > 0.7 && _w < 0.9) then
{
	player sideChat format["Weather forecast: overcast with chance of rain and slight fog, expected in %1min, weather duration: %2min.", (round _tfc/60), (round _wd/60)];
};
// stormy weather
if (_w > 0.9) then
{
	player sideChat format["Weather forecast: overcast with rain and thick fog, expected in %1min, weather duration: %2min.", (round _tfc/60), (round _wd/60)];
};
