
// 0 = execVM "PMC\PMC_Obj_HQ_Reply.sqf";

/*
			dataType="Trigger";
			position[]={4622.833,16.743391,9384.8242};
			class Attributes
			{
				text="hq reply";
				condition="eastdead";
				onActivation="";
				sizeA=0;
				sizeB=0;
				timeout[]={0,15,25};
			};
			id=3303;
			type="EmptyDetector";
			atlOffset=1.1530066;
*/

PAPABEAR sideRadio "Rmcomplete";
["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
mcomplete = true;
