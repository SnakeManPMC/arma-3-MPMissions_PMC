
// 0 = execVM "PMC\PMC_Obj_USSR_Dead.sqf";

/*
			dataType="Trigger";
			position[]={3543.0779,345.78262,6794.5117};
			class Attributes
			{
				text="USSR dead";
				onActivation="";
				sizeA=1000;
				sizeB=1000;
				activationType="NOT PRESENT";
				activationBy="EAST";
				effectMusic="Track14_Close_Quarter_Combat";
				effectTitle="NATO has won, all Russian troops have been eliminated!";
				effectTitleType="TEXT";
			};
			id=860;
			type="EmptyDetector";
			atlOffset=5.6967773;
*/

["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
