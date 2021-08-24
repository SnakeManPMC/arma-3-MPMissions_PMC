
// 0 = execVM "PMC\PMC_Obj_East_Dead.sqf";

/*
			dataType="Trigger";
			position[]={12560.616,42.101784,8356.373};
			class Attributes
			{
				condition="!alive trk1";
				onActivation="";
				sizeA=150;
				sizeB=150;
				timeout[]={0,3,5};
				activationType="NOT PRESENT";
				activationBy="EAST";
				effectMusic="ATrack6";
				effectTitle="Mission Accomplished!";
				effectTitleType="TEXT";
			};
			id=988;
			type="EmptyDetector";
			atlOffset=-0.0037612915;
*/

["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
"target1" setMarkerType "mil_dot";
"target1" setMarkerColor "colorgreen";
mcomplete = true;
