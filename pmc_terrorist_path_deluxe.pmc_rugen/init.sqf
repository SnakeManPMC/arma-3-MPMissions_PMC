
if (isServer) then
{
	[] execVM "PMC\PMC_Init_Server.sqf";
};
if (hasInterface) then
{
	[] execVM "PMC\PMC_Init_Client.sqf";
};
