
call compile preProcessFileLineNumbers "PMC\time_used_update.sqf";

private["_pmc_b", "_pmc_o"];

while {true} do
{
	if (PMC_debug) then
	{
		_pmc_b = missionNamespace getVariable "pmc_bluforunits";
		_pmc_o = missionNamespace getVariable "pmc_opforunits";
	
		hintSilent format
		[
			"On map\n
			OPFOR: %1\n
			BLUFOR: %2\n
			All Units: %3\n
			killedNum: %4\n
			Corpses Array: %5\n
			Created / Groups\n
			OPFOR: %6 / %7\n
			BLUFOR: %8 / %9\n
			PMC_mcomplete: %10\n
			Time used\n
			%11\n
			PMC_var1: %12\n
			PMC_aircraft_blufor: %13\n
			PMC_aircraft_opfor: %14\n
			PMC_helo_blufor: %15\n
			PMC_helo_opfor: %16\n\n
			
			BLUFOR\n
			Cars: %17, Tanks: %18, Air: %19\n
			OPFOR\n
			Cars: %20, Tanks: %21, Air: %22\n\n

			PMC_war_blufor: %23\n
			PMC_war_opfor: %24\n
			PMC_aircraft_blufor_running: %25\n
			PMC_aircraft_opfor_running: %26\n\n
			
			PMC_InfTransport: %27\n
			PMC_InfTransportUsed: %28\n
			FPS: %29",

			(EAST countSide (list _pmc_o)),
			(WEST countSide (list _pmc_b)),
			(count list _pmc_b + count list _pmc_b),
			PMC_killedNum,
			count PMC_corpses,
			PMC_opfor,
			PMC_grp_opfor,
			PMC_blufor,
			PMC_grp_blufor,
			PMC_mcomplete,
			call PMC_Time_Used_Update,
			PMC_var1,
			PMC_aircraft_blufor,
			PMC_aircraft_opfor,
			PMC_helo_blufor,
			PMC_helo_opfor,

			('car' countType (list _pmc_b)),
			('tank' countType (list _pmc_b)),
			('air' countType (list _pmc_b)),

			('car' countType (list _pmc_o)),
			('tank' countType (list _pmc_o)),
			('air' countType (list _pmc_o)),

			PMC_war_blufor,
			PMC_war_opfor,
			PMC_aircraft_blufor_running,
			PMC_aircraft_opfor_running,
			
			PMC_InfTransport,
			PMC_InfTransportUsed,
			diag_fps
		];
	};
	sleep 5;
};
