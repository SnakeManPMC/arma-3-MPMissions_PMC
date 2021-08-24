
// 0 = execVM "PMC\PMC_Obj_East_Dead.sqf";

/*
			dataType="Trigger";
			position[]={3765.9043,18.404999,3219.3718};
			class Attributes
			{
				text="east dead";
				onActivation="";
				sizeA=300;
				sizeB=300;
				activationType="NOT PRESENT";
				activationBy="EAST";
			};
			id=175;
			type="EmptyDetector";
			atlOffset=-0.4089489;
*/

leader assault1 sideradio "Rcitysecure";
citysecure = true;
["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
