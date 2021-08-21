
// 0 = [] execVM "PMC\PMC_Obj_End.sqf";

/*
			dataType="Trigger";
			position[]={7456.1338,111.79402,9568.6016};
			class Attributes
			{
				text="END";
				onActivation="";
				sizeA=3000;
				sizeB=3000;
				activationType="NOT PRESENT";
				activationBy="EAST";
				type="END1";
			};
			id=5;
			type="EmptyDetector";
			atlOffset=-4.9538422;
*/

["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
