
if (isServer) then
{
	[] execVM "PMC\PMC_init.sqf";
}
else
{
	[] execVM "PMC\PMC_init_client.sqf";
};
