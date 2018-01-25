
if (isServer) then
{
	[] execVM "PMC\PMC_war.sqf";
};

[] execVM "briefing.sqf";

enableSaving [ false, false ];
