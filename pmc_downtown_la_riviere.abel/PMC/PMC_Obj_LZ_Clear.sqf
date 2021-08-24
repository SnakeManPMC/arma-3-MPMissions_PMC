
// 0 = execVM "PMC\PMC_Obj_LZ_Clear.sqf";

/*
			dataType="Trigger";
			position[]={3884.3782,25.236702,3354.2437};
			angle=0.95993078;
			class Attributes
			{
				text="LZ clear";
				condition="this AND count units guards2 == 0";
				onActivation="";
				sizeA=130;
				activationBy="WEST";
				isRectangle=1;
			};
			id=177;
			type="EmptyDetector";
			atlOffset=1.3301659;
*/

leader assault1 sideradio "Rlzclear";
["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
lzclear = true;
