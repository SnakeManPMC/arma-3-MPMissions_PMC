
// 0 = execVM "PMC\PMC_Obj_West_Dead.sqf";

/*
			dataType="Trigger";
			position[]={8279.4229,10.902544,5994.7969};
			class Attributes
			{
				text="west dead";
				onActivation="";
				sizeA=100;
				sizeB=100;
				timeout[]={0,3,5};
				activationType="NOT PRESENT";
				activationBy="WEST";
				effectMusic="Track14";
				effectTitle="COMRADES, MORE AMRIKAN BLOOD HAS BEEN SHED!";
				effectTitleType="TEXT";
			};
			id=1246;
			type="EmptyDetector";
			atlOffset=-0.24078178;
*/

mcomplete = true;
["t1", "FAILED", true] spawn BIS_fnc_taskSetState;
["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
