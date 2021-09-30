
behave = "AWARE";
{_x setbehaviour behave} foreach units captives;
behave = "AUTO";
{_x setunitpos behave} foreach units captives;
{_x setcaptive false} foreach units captives;

if (leader assault1 distance leader captives < 15) then
{
	leader assault1 sideradio "Rout";
	{[_x] join assault1} foreach units captives;
};

if (leader assault2 distance leader captives < 15) then
{
	leader assault2 sideradio "Rout";
	{[_x] join assault2} foreach units captives;
};

["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
sleep 10;
leader assault1 sideradio "Rcallhelo";
cleared = true;

sleep 15;

leader assault1 sideradio "Rsnipajoin";
sleep 3;

// snipers join up
{_x setunitpos behave} foreach units snipers;
{[_x] join assault1} foreach units snipers;

["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
