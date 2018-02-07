
waitUntil {!(isNull player)};
waitUntil {player == player};

/*

	city1 objective

*/
player createDiaryRecord
[
	"Diary",
	[
		"Elektrozavodsk",
		"Elektrozavodsk is under US control, USMC riflemen has been seen in the city. Try to kill them all.<br/><marker name='city1'>Elektrozavodsk location</marker>"
	]
];

PMC_city1_task = player createSimpleTask
[
	"city1"
];
PMC_city1_task setSimpleTaskDescription
[
	"Elektrozavodsk<br/>Check <marker name='city1'>Elektrozavodsk</marker> for location.",
	"Elektrozavodsk",
	"Elektrozavodsk"
];
PMC_city1_task setSimpleTaskDestination (getMarkerPos "city1");


/*

	city2 objective

*/
player createDiaryRecord
[
	"Diary",
	[
		"Chernogorsk",
		"Try to capture Chernogorsk back from the USMC/CDF enemy!<br/><marker name='city2'>Chernogorsk location</marker>"
	]
];

PMC_city2_task = player createSimpleTask
[
	"Chernogorsk"
];
PMC_city2_task setSimpleTaskDescription
[
	"Chernogorsk<br/>Check <marker name='city2'>Chernogorsk</marker> for location.",
	"Chernogorsk",
	"Chernogorsk"
];
PMC_city2_task setSimpleTaskDestination (getMarkerPos "city2");


/*

	airstrip objective

*/
player createDiaryRecord
[
	"Diary",
	[
		"Russian Airstrip",
		"Airstrip is holding scum sucking Russian enemy, kill them all and bow everything up!<br/><marker name='airstrip'>airstrip location</marker>"
	]
];

PMC_airstrip_task = player createSimpleTask
[
	"Airstrip"
];
PMC_airstrip_task setSimpleTaskDescription
[
	"Airstrip<br/>Check <marker name='airstrip'>airstrip</marker> for location.",
	"Airstrip",
	"Airstrip"
];
PMC_airstrip_task setSimpleTaskDestination (getMarkerPos "airstrip");


/*

	airfield objective

*/
player createDiaryRecord
[
	"Diary",
	[
		"Airfield",
		"Airfield is held by the Russians, go there and kill them all!<br/><marker name='airfield'>Airfield location</marker>"
	]
];

PMC_airfield_task = player createSimpleTask
[
	"Airfield"
];
PMC_airfield_task setSimpleTaskDescription
[
	"Airfield<br/>Check <marker name='airfield'>Airfield</marker> for location.",
	"Airfield",
	"Airfield"
];
PMC_airfield_task setSimpleTaskDestination (getMarkerPos "airfield");

/*

	Generic situation for player.

*/

player createDiaryRecord
[
	"Diary",
	[
		"Situation",
		"You are a scumbag terrorist, act like a rapist thief and a fucker that you are!<br/>Check out the forward line of troops (FLOT) shown <marker name='flot'>with this line</marker> here.<br/><br/>North side is Russians.<br/>South side is USA.<br/><br/>Make every effort to start war between them. Do this by trying to lure either one of the sides towards the other which causes them to initiate firefight, then just disappear into the background laughing your ass off."
	]
];
