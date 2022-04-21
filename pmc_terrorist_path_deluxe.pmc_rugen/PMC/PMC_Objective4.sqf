
/*
2022-04-21T06:30:00Z
mission.sqm trigger lines:
			dataType="Trigger";
			position[]={9350.4463,8.9204817,7839.4341};
			angle=2.4454842;
			class Attributes
			{
				text="Obj 4 - City 2 Captured";
				condition="call{this}";
				onActivation="call{0 = [] execVM ""PMC\PMC_Objective4.sqf"";}";
				sizeA=700;
				sizeB=300;
				timeout[]={3,5,7};
				interuptable=1;
				activationBy="GUER SEIZED";
			};
			id=6224;
			type="EmptyDetector";
			atlOffset=0.092143059;

marker: city2
classname: Faction_US
type COUNTRY FLAG
position: 9351.15, 7849.711
size: 1.5, 1

circle area: pmc_marker_obj_city1_camerig
*/

private _pmcmarker = "pmc_marker_obj_city1_camerig";

_pmcmarker setMarkerColorLocal "ColorRed";
_pmcmarker setMarkerShapeLocal "ELLIPSE";
_pmcmarker setMarkerSizeLocal [100, 100];
_pmcmarker setMarkerType "mil_objective";

sleep 3 + (random 5);

while { (count (units resistance inAreaArray _pmcmarker) == 0) } do
{
	sleep 10;
};

waitUntil
{
	sleep 5;
	(count (units EAST inAreaArray _pmcmarker) == 0);
};

PMC_obj4 = true;

_pmcmarker setMarkerColorLocal "ColorGreen";
_pmcmarker setMarkerShapeLocal "icon";
_pmcmarker setMarkerSizeLocal [1, 1];
_pmcmarker setMarkerType "mil_dot";

"city2" setMarkerColor "ColorGreen";
"city2" setMarkerType "mil_dot";

"Camerig city objective completed, well done!" remoteExec ["hint", 2];
sleep 3;
[["Camerig city objective completed, well done!", "PLAIN", 1]] remoteExec ["titleText"];
sleep 5;

private _task = ["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

pmc_respawn_obj4 setPos (getMarkerPos "city2");
