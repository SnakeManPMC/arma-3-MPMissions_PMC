
/*
2022-04-21T05:37:00Z
mission.sqm trigger lines:
			dataType="Trigger";
			position[]={5041.0352,15.974999,20604.465};
			class Attributes
			{
				text="Obj 1 - Military Base Captured";
				condition="call{this}";
				onActivation="call{0 = [] execVM ""PMC\PMC_Objective1.sqf"";}";
				sizeA=200;
				sizeB=200;
				timeout[]={3,5,7};
				interuptable=1;
				activationBy="GUER SEIZED";
			};
			id=6219;
			type="EmptyDetector";
			atlOffset=-0.0050001144;

marker: pmc_military_base
classname: Faction_CUP_RU
type COUNTRY FLAG
position: 5060.674, 20603.268
size: 1.5, 1

circle area: pmc_marker_obj_base
*/

private _pmcmarker = "pmc_marker_obj_base";

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

PMC_obj1 = true;

_pmcmarker setMarkerColorLocal "ColorGreen";
_pmcmarker setMarkerShapeLocal "icon";
_pmcmarker setMarkerSizeLocal [1, 1];
_pmcmarker setMarkerType "mil_dot";

"pmc_military_base" setMarkerColorLocal "ColorGreen";
"pmc_military_base" setMarkerType "mil_dot";

"Military base objective accomplished, great work!" remoteExec ["hint", 2];
sleep 3;
[["Military base objective accomplished, great work!", "PLAIN", 1]] remoteExec ["titleText"];
sleep 5;

private _task = ["t4", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

pmc_respawn_obj1 setPos (getMarkerPos "pmc_military_base");
