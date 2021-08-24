
// 0 = execVM "PMC\PMC_Obj_East_Dead_1.sqf";

/*
			dataType="Trigger";
			position[]={9319.3203,25.296192,5206.2881};
			class Attributes
			{
				text="eastdead1";
				onActivation="";
				sizeA=150;
				sizeB=150;
				timeout[]={0,3,5};
				activationType="NOT PRESENT";
				activationBy="EAST";
				effectMusic="ATrack6";
				effectTitle="Mission Accomplished!";
				effectTitleType="TEXT";
			};
			id=212;
			type="EmptyDetector";
			atlOffset=3.56143;
*/

["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
"target1" setMarkerType "mil_dot";
"target1" setMarkerColor "colorgreen";
mcomplete = true;
