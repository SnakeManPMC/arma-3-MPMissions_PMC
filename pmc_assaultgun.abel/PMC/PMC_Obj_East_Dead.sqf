
// 0 = execVM "PMC\PMC_Obj_East_Dead.sqf";

/*
			dataType="Trigger";
			position[]={8306.4502,9.5334778,5762.166};
			class Attributes
			{
				text="east dead";
				onActivation="";
				sizeA=1000;
				sizeB=1000;
				timeout[]={0,3,5};
				activationType="NOT PRESENT";
				activationBy="EAST";
				effectMusic="Track14_Close_Quarter_Combat";
				effectTitle="Yeehaaw, kill a commie for mommy!";
				effectTitleType="TEXT";
			};
			id=1247;
			type="EmptyDetector";
			atlOffset=-3.1038647;
*/

mcomplete = true;
["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
["t2", "FAILED", true] spawn BIS_fnc_taskSetState;
