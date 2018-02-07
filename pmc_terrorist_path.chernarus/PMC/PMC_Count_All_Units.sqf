
hint format
[
	"Units in map: %1\n\nBLUFOR: %2\nOPFOR: %3\nTanks: %4\nCar: %5\nAir: %6\nMen: %7\n\nBLUFOR detected: %8\nOPFOR detected: %9\n\n\nInitial lists: %10\n\nTime Used:\n%11",
	count list pmc_opfor_list,
	west countSide list pmc_opfor_list,
	east countSide list pmc_opfor_list,
	('tank' countType list pmc_opfor_list),
	('car' countType list pmc_opfor_list),
	('air' countType list pmc_opfor_list),
	('man' countType list pmc_opfor_list),
	PMC_blufor_detected,
	PMC_opfor_detected,
	PMC_initial_lists,
	call PMC_Time_Used
];
