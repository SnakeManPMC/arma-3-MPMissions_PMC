
// 0 = execVM "PMC\PMC_Obj_EndMission.sqf";

/*
			dataType="Trigger";
			position[]={10401.437,62.252865,6142.4507};
			class Attributes
			{
				onActivation="";
				sizeA=150;
				sizeB=150;
				timeout[]={0,3,5};
				activationType="NOT PRESENT";
				activationBy="GUER";
				effectMusic="ATrack6";
				effectTitle="Mission Accomplished!";
				effectTitleType="TEXT";
			};
			id=598;
			type="EmptyDetector";
			atlOffset=-0.0042228699;
*/

["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
"target1" setMarkerType "mil_dot";
"target1" setMarkerColor "colorgreen";
mcomplete = true;
