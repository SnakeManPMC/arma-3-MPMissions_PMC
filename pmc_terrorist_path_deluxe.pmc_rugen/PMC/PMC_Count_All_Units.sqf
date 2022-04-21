
hintSilent format
[
	"Total Units: %1\n\n
	BLUFOR: %2\n
	OPFOR: %3\n
	Tanks: %4\n
	Car: %5\n
	Air: %6\n
	Men: %7\n\n

	BLUFOR detected: %8\n
	OPFOR detected: %9\n\n

	Initial lists: %10\n\n
	Time Used:\n%11\n\n

	BLUFOR\n
	Tanks: %12, Cars: %13, Air: %14, Man: %15\n\n

	OPFOR\n
	Tanks: %16, Cars: %17, Air: %18, Man: %19\n\n
	
	PMC_Corpses: %20, KIAs: %21, Inf Transports: %22",

	count allUnits,
	WEST countSide allUnits,
	EAST countSide allUnits,
	('tank' countType allUnits),
	('car' countType allUnits),
	('air' countType allUnits),
	('man' countType allUnits),
	PMC_blufor_detected,
	PMC_opfor_detected,
	PMC_initial_lists,
	call PMC_Time_Used_Update,
	
	({_x isKindOf 'tank' && (side _x) == west} count allUnits),
	({_x isKindOf 'car' && (side _x) == west} count allUnits),
	({_x isKindOf 'air' && (side _x) == west} count allUnits),
	({_x isKindOf 'man' && (side _x) == west} count allUnits),

	({_x isKindOf 'Tank' && (side _x) == east} count allUnits),
	({_x isKindOf 'Car' && (side _x) == east} count allUnits),
	({_x isKindOf 'Air' && (side _x) == east} count allUnits),
	({_x isKindOf 'Man' && (side _x) == east} count allUnits),
	
	count PMC_Corpses,
	PMC_KilledNum,
	PMC_InfTransportUsed
];
