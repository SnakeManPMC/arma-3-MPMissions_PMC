
// 0 = [] execVM "PMC\PMC_Obj_West_Dead.sqf";

/*
			dataType="Trigger";
			position[]={4803.3696,24.66,11659.812};
			class Attributes
			{
				text="west dead";
				onActivation="";
				sizeA=300;
				sizeB=500;
				timeout[]={0,3,5};
				activationType="NOT PRESENT";
				activationBy="WEST";
				effectMusic="Track14";
				effectTitle="American Evils are killed!";
				effectTitleType="TEXT";
			};
			id=375;
			type="EmptyDetector";
*/

mcomplete = true;

["t1", "FAILED", true] spawn BIS_fnc_taskSetState;
["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
