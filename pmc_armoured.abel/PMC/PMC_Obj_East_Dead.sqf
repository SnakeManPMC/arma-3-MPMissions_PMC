
// 0 = execVM "PMC\PMC_Obj_East_Dead.sqf";

/*
			dataType="Trigger";
			position[]={4234.9814,401.03009,7125.999};
			class Attributes
			{
				text="east dead";
				onActivation="";
				sizeA=500;
				sizeB=500;
				activationType="NOT PRESENT";
				activationBy="EAST";
			};
			id=879;
			type="EmptyDetector";
			atlOffset=-0.2805481;
*/

basedone = true;
["t3", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
