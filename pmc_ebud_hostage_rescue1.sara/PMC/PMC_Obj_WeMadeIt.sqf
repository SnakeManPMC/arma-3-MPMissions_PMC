
// 0 = execVM "PMC\PMC_Obj_WeMadeIt.sqf";

/*
			dataType="Trigger";
			position[]={12427.117,27.788641,7515.0845};
			class Attributes
			{
				onActivation="";
			};
			id=73;
			type="EmptyDetector";
			atlOffset=-0.016494751;
*/

["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
mcomplete = true;
player sidechat "We made it!";
