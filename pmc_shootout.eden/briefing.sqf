//auto-generated by ArmaBriefingConversion

player createDiaryRecord ["Diary", ["Diary", "Empty main section.
"]];
player createDiaryRecord ["Diary", ["Mission", "Empty plan section.
"]];
// tasks need to be in reversed order
objective2 = player createSimpleTask ["Russians stay alive"];
objective2 setSimpleTaskDescription ["Russians stay alive", "Russians stay alive", "Russians stay alive"];
objective1 = player createSimpleTask ["US neutralizes Russians"];
objective1 setSimpleTaskDescription ["US neutralizes Russians", "US neutralizes Russians", "US neutralizes Russians"];