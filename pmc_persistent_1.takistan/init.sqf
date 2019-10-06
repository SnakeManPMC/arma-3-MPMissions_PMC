
// on server we run...
if (isServer) then
{
	// PMC server stuff
	[] execVM "PMC\PMC_Init_Server.sqf";
}
else
{
	[] execVM "PMC\PMC_Init_Client.sqf";
};

enableSaving [ false, false ];
