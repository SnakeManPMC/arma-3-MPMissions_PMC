
/*
2022-04-21T06:09:00Z
mission.sqm trigger lines:
			dataType="Trigger";
			position[]={23536.912,11.97,24479.877};
			class Attributes
			{
				text="Obj 2 - Airstrip Captured";
				condition="call{this}";
				onActivation="call{0 = [] execVM ""PMC\PMC_Objective2.sqf"";}";
				sizeA=400;
				sizeB=200;
				timeout[]={3,5,7};
				interuptable=1;
				activationBy="GUER SEIZED";
			};
			id=6220;
			type="EmptyDetector";
			atlOffset=0.010000229;

marker: airstrip
classname: Faction_CUP_RU
type COUNTRY FLAG
position: 23513.156, 24472.846
size: 1.5, 1

circle area: pmc_marker_obj_airstrip
*/

private _pmcmarker = "pmc_marker_obj_airstrip";

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

PMC_obj2 = true;

_pmcmarker setMarkerColorLocal "ColorGreen";
_pmcmarker setMarkerShapeLocal "icon";
_pmcmarker setMarkerSizeLocal [1, 1];
_pmcmarker setMarkerType "mil_dot";

"airstrip" setMarkerColor "ColorGreen";
"airstrip" setMarkerType "mil_dot";

"Airstrip objective secured, good job!" remoteExec ["hint", 2];
sleep 3;
[["Airstrip objective secured, good job!", "PLAIN", 1]] remoteExec ["titleText"];
sleep 5;

private _task = ["t3", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

pmc_respawn_obj2 setPos (getMarkerPos "airstrip");
