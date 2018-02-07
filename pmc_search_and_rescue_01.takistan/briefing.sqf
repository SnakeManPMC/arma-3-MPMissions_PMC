waitUntil {!(isNull player)};
waitUntil {player == player};

switch (side player) do
{
	case WEST:
	{
		player createDiaryRecord
		[
			"Diary",
			[
				"Mission",
				"Aircraft <marker name='crash_site'>crashed</marker>. Search the area for survivors and bring them back to base."
			]
		];
		PMC_objective1 = player createSimpleTask ["SAR"];
		PMC_objective1 setSimpleTaskDescription
		[
			"Search <marker name='crash_site'>crash site</marker>",
			"SAR",
			"SAR"
		];
		PMC_objective1 setSimpleTaskDestination (getMarkerPos "crash_site");
		player setCurrentTask PMC_objective1;
	};

	case EAST:
	{
	};

	case RESISTANCE:
	{
	};

	case CIVILIAN:
	{
	};
};
