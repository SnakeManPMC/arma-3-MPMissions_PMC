
call compile preProcessFileLineNumbers "PMC\time_used_update.sqf";

while {true} do
{
	if (PMC_debug) then
	{
		hintSilent format
		[
			"On map OPFOR: %1\nOn map BLUFOR: %2\nAll units on map: %3\nkilledNum: %4\ncorpses array: %5\nCreated opfor: %6 / %7\nCreated blufor: %8 / %9\nPMC_mcomplete: %10\nTime used\n%11\n%PMC_var1: %12\nPMC_aircraft_blufor: %13\nPMC_aircraft_opfor: %14\nPMC_helo_blufor: %15\nPMC_helo_opfor: %16\nCars: %17, Tanks: %18, Air: %19\nPMC_war_blufor: %20\nPMC_war_opfor: %21\nPMC_aircraft_blufor_runs: %22\nPMC_aircraft_opfor_runs: %23",
			(EAST countSide (list pmc_opforunits)),
			(WEST countSide (list pmc_bluforunits)),
			(count list pmc_opforunits + count list pmc_bluforunits),
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
			('car' countType ((list pmc_opforunits)+(list pmc_bluforunits))),
			('tank' countType ((list pmc_opforunits)+(list pmc_bluforunits))),
			('air' countType ((list pmc_opforunits)+(list pmc_bluforunits))),
			PMC_war_blufor,
			PMC_war_opfor,
			PMC_aircraft_blufor_runs,
			PMC_aircraft_opfor_runs
		];
	};
	sleep 5;
};
