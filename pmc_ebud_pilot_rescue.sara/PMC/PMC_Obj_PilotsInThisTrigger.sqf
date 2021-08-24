
// 0 = execVM "PMC\PMC_Obj_PilotsInThisTrigger.sqf";

/*
			dataType="Trigger";
			position[]={9533.5732,139.95,9997.7998};
			class Attributes
			{
				text="Objective ppilots in this trigger";
				onActivation="";
				sizeA=150;
				sizeB=150;
				activationByOwner="MEMBER";
			};
			id=294;
			type="EmptyDetector";
			atlOffset=-0.044998169;
*/

["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
mcomplete = true;
