
// 0 = execVM "PMC\PMC_Obj_Rescued.sqf";

/*
			dataType="Trigger";
			position[]={12353.16,19.462597,7295.022};
			class Attributes
			{
				text="rescued";
				condition="leader assault1 distance dude1 < 5";
				onActivation="";
				sizeA=0;
				sizeB=0;
			};
			id=72;
			type="EmptyDetector";
			atlOffset=-0.015390396;
*/

[dude1] join assault1;
["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
"target1" setMarkerType "mil_dot";
"target1" setMarkerColor "colorgreen";
leader assault1 sidechat "Come with me if you want to live!";
