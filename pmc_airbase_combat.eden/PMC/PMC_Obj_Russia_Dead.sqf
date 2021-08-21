
// 0 = execVM "PMC\PMC_Obj_Russia_Dead.sqf";

/*
			dataType="Trigger";
			position[]={4828.6484,24.66,11404.911};
			class Attributes
			{
				text="russia dead";
				onActivation="";
				sizeA=1000;
				sizeB=1000;
				timeout[]={0,3,5};
				activationType="NOT PRESENT";
				activationBy="EAST";
				effectMusic="Track14_Close_Quarter_Combat";
				effectTitle="Communist Ruskies are wasted!";
				effectTitleType="TEXT";
			};
			id=376;
			type="EmptyDetector";
			atlOffset=-0.26227951;
*/

mcomplete = true;

["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
["t2", "FAILED", true] spawn BIS_fnc_taskSetState;
