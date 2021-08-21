
// 0 = execVM "PMC\PMC_Obj_End.sqf";

/*
			dataType="Trigger";
			position[]={7920.7896,35.298893,4222.8428};
			class Attributes
			{
				text="END";
				onActivation="";
				sizeA=500;
				sizeB=500;
				activationType="NOT PRESENT";
				activationBy="EAST";
				type="END1";
			};
			id=383;
			type="EmptyDetector";
			atlOffset=-0.070610046;
*/

["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
