
// 0 = execVM "PMC\PMC_Obj_EndMission2.sqf";

/*
			dataType="Trigger";
			position[]={2715.3887,31.357601,4795.0923};
			class Attributes
			{
				text="END";
				onActivation="";
				sizeA=3000;
				sizeB=3000;
				activationType="NOT PRESENT";
				activationBy="EAST";
				type="END2";
			};
			id=3;
			type="EmptyDetector";
			atlOffset=6.659399;
*/

["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
["t2", "FAILED", true] spawn BIS_fnc_taskSetState;
