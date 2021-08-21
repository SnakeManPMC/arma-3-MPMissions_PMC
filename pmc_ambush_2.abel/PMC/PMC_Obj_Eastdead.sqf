
// 0 = execVM "PMC\PMC_Obj_Eastdead.sqf";

/*
			dataType="Trigger";
			position[]={5529.0957,334.24026,7035.9893};
			class Attributes
			{
				text="east dead";
				condition="count units convoy1 == 0 AND count units convoy2 == 0";
				onActivation="";
				sizeA=0;
				sizeB=0;
			};
			id=423;
			type="EmptyDetector";
			atlOffset=0.27423096;
*/

PAPABEAR sideradio "Rmcomplete";
mcomplete = true;
["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
