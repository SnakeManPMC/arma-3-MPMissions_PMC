
if (isServer) then
{
	// how many times difference sides detected enemies in their territory.
	PMC_blufor_detected = 0;
	PMC_opfor_detected = 0;

	publicVariable "PMC_blufor_detected";
	publicVariable "PMC_opfor_detected";

	[] execVM "PMC\PMC_weather.sqf";
}
else
{
	// create briefing
	[] execVM "briefing.sqf";
	[] execVM "PMC\PMC_weather.sqf";
	
	call compile preProcessFileLineNumbers "PMC\PMC_Time_Used.sqf";
};

enableSaving [ false, false ];
