
// 0 = execVM "PMC\PMC_Obj_Eastdead.sqf";

/*
			dataType="Trigger";
			position[]={5224.6567,298.02374,8610.2246};
			class Attributes
			{
				text="east dead";
				onActivation="";
				sizeA=9000;
				sizeB=9000;
				activationType="NOT PRESENT";
				activationBy="EAST";
				effectMusic="Track14_Close_Quarter_Combat";
				effectTitle="NATO has killed all USSR forces, congratulations.";
				effectTitleType="TEXT";
			};
			id=501;
			type="EmptyDetector";
			atlOffset=-11.292969;
*/

["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
PAPABEAR sideradio "Rgoodjob";
mcomplete = true;
