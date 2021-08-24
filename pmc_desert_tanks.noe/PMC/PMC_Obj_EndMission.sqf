
// 0 = execVM "PMC\PMC_Obj_EndMission.sqf";

/*
			dataType="Trigger";
			position[]={2654.3503,32.958523,4837.7783};
			class Attributes
			{
				text="END 1";
				onActivation="";
				sizeA=3000;
				sizeB=3000;
				activationType="NOT PRESENT";
				activationBy="WEST";
				type="END1";
			};
			id=2;
			type="EmptyDetector";
			atlOffset=7.4523373;
*/

["t1", "FAILED", true] spawn BIS_fnc_taskSetState;
["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
