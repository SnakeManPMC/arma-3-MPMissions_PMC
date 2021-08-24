
// 0 = execVM "PMC\PMC_Obj_HQ_Reply.sqf";

/*
			dataType="Trigger";
			position[]={9408.2109,189.08556,1026.2468};
			class Attributes
			{
				text="hq reply";
				condition="eastdead";
				onActivation="";
				sizeA=0;
				sizeB=0;
				timeout[]={0,15,20};
			};
			id=3245;
			type="EmptyDetector";
			atlOffset=-1.3301544;
*/

PAPABEAR sideradio "Rmcomplete";
["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
mcomplete = true;
