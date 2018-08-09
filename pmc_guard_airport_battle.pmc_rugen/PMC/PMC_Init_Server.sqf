
[] execVM "PMC\PMC_Tasks.sqf";

PMC_war_is_on = true;
pmc_mcomplete = false;
pmc_debug = false;

skiptime (((paramsarray select 0) - daytime + 24) % 24);

[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";

PMC_corpses = [];
[150] execVM "PMC\PMC_corpses.sqf";

PMC_killedNum = 0;
publicVariable "PMC_killedNum";

call compile preProcessFileLineNumbers "PMC\PMC_Create_BLUFOR_Guard.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_Create_OPFOR_Guard.sqf";
sleep 1;

while {PMC_war_is_on} do
{
	if ((WEST countSide (list pmc_list)) < 100) then
	{
		call PMC_MakeGuardInfBLUFOR;
	};
	sleep 60;

	if ((EAST countSide (list pmc_list)) < 100) then
	{
		call PMC_MakeGuardInfOPFOR;
	};
};
