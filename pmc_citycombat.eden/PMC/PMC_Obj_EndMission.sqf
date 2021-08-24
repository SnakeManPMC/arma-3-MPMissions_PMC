
// 0 = execVM "PMC\PMC_Obj_EndMission.sqf";

/*
			dataType="Trigger";
			position[]={4933.3511,159.03,6978.0117};
			class Attributes
			{
				text="END";
				condition="mcomplete";
				onActivation="";
				sizeA=0;
				sizeB=0;
				type="END1";
			};
			id=1567;
			type="EmptyDetector";
			atlOffset=0.11239624;
*/

if (eastscore > westscore) then
{
	["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
	["t2", "FAILED", true] spawn BIS_fnc_taskSetState;
}
else
{
	["t1", "FAILED", true] spawn BIS_fnc_taskSetState;
	["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
};
