
/*
2022-04-21T06:17:00Z
mission.sqm trigger lines:
			dataType="Trigger";
			position[]={14497.773,8.8428478,2589.533};
			class Attributes
			{
				text="Obj 3 - City 1 Captured";
				condition="call{this}";
				onActivation="call{0 = [] execVM ""PMC\PMC_Objective3.sqf"";}";
				sizeA=200;
				sizeB=200;
				timeout[]={3,5,7};
				interuptable=1;
				activationBy="GUER SEIZED";
			};
			id=6223;
			type="EmptyDetector";
			atlOffset=-0.027152061;

marker: city1
classname: Faction_US
type COUNTRY FLAG
position: 14495.406, 2585.518
size: 1.5, 1

circle area: pmc_marker_obj_city1_marum
*/

private _pmcmarker = "pmc_marker_obj_city1_marum";

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

PMC_obj3 = true;

_pmcmarker setMarkerColorLocal "ColorGreen";
_pmcmarker setMarkerShapeLocal "icon";
_pmcmarker setMarkerSizeLocal [1, 1];
_pmcmarker setMarkerType "mil_dot";

"city1" setMarkerColor "ColorGreen";
"city1" setMarkerType "mil_dot";

"Marum city objective secured, excellent work!" remoteExec ["hint", 2];
sleep 3;
[["Marum city objective secured, excellent work!", "PLAIN", 1]] remoteExec ["titleText"];
sleep 5;

private _task = ["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

pmc_respawn_obj3 setPos (getMarkerPos "city1");
