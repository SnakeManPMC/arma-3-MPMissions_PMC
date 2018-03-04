
// loop for colonel to drive around starts here
while { (alive cguy) } do
{
	private _guardTeam = [grd1, grd2, grd3];

	// behaviour to safe so its ... safe to drive
	colonelteam setbehaviour "safe";

	// assign the group into the uaz
	cguy assignasdriver colcar;
	grd1 assignascargo colcar;
	grd2 assignascargo colcar;
	grd3 assignascargo colcar;

	(units colonelteam) ordergetin true;

	waitUntil
	{
		sleep 2;
		{_x in colcar} forEach [cguy, grd1, grd2, grd3];
	};

	// randomly select location name from loc1 to loc50
	private _ran = selectRandom PMC_targets;
	cguy doMove getPos _ran;

	// grd1 will drive the uaz to next waypoint
	waitUntil
	{
		sleep 3;
		unitready cguy;
	};

	// behaviour aware and engage at will
	{
		_x setbehaviour "aware";
		_x setcombatmode "red";
	} forEach _guardTeam;

	// bodyguards out of the uaz
	{
		unassignvehicle _x;
	} forEach _guardTeam;
	sleep 30;

	// everything is safe
	{
		_x setbehaviour "safe";
		_x setcombatmode "yellow";
	} forEach _guardTeam;
	sleep 5;

	// mister bigshot out of the uaz
	unassignvehicle cguy;

	// lets wait some random time
	sleep (30 + (random 260));
};

/*
;loc1 == saint pierre
;loc2 == vernon
;loc3 == durras
;loc4 == regina
;loc5 == base
;loc6 == church at the hilltop
;loc7 == noname town in the beach west of base
;loc8 == levie
;loc9 == intersections west of levie
;loc10 == laruns
;loc11 == chotain
;loc12 == town north of chotain
;loc13 == base at the beach
;loc14 == farm east of entre deux
;loc15 == beachhead in morton
;loc16 == morton
;loc17 == figari
;loc18 == provins
;loc19 == buildings east of provins
;loc20 == entre deux
;loc21 == montignac
;loc22 == chapel at the beach, north of entre deux
;loc23 == town west of morton
;loc24 == building in the beach south of le moule
;loc25 == le moule
;loc26 == farm north of le moule
;loc27 == forest place
;loc28 == beach farm at north-east of lamentin
;loc29 == fuel station north-east of lamentin
;loc30 == lamentin
;loc31 == gravette
;loc32 == hospital
;loc33 == tyrone
;loc34 == buildings tyrone to meux
;loc35 == meux
;loc36 == buildings north of tyrone
;loc37 == buildings north of tyrone 2
;loc38 == fuel station south of northern base
;loc39 == lighthouse east of fuel station
;loc40 == buildings south-east of northern base
;loc41 == northern base
;loc42 == northern hospital
;loc43 == saint philippe
;loc44 == buildings south-east of airfield
;loc45 == buildings west of airfield
;loc46 == southern airfield
;loc47 == building east of airfield
;loc48 == airfield gate
;loc49 == airfield barracks
;loc50 == chapel in the north
*/
