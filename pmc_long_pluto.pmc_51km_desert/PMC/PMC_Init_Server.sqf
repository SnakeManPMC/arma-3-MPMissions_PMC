
setDate [2006, 11, 17, 0, 0];
PMCHQ = [ West, "BASE" ];
[] execVM "PMC\PMC_Set_Mission_Time.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";

call compile preProcessFileLineNumbers "PMC\PMC_SetAISkill.sqf";
private _skill = ["PMC_EnemySkillLevel", 0] call BIS_fnc_getParamValue;
private _PMC_EnemySkillLevel = [_skill] call compile preProcessFileLineNumbers "PMC\PMC_Get_Skill_Level.sqf";

private _pmcEastGroups = allGroups select {side _x isEqualTo EAST};

{
	[_x, _PMC_EnemySkillLevel] call PMC_SetAISkill;
}
forEach _pmcEastGroups;

[] execVM "PMC\PMC_Objectives.sqf";
