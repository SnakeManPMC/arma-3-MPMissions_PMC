//auto-generated by ArmaBriefingConversion

player createDiaryRecord ["Diary", ["Diary", "Empty main section.
"]];
player createDiaryRecord ["Diary", ["Mission", "Empty plan section.
"]];
// tasks need to be in reversed order
objective2 = player createSimpleTask ["Russians capture airbase"];
objective2 setSimpleTaskDescription ["Russians capture airbase", "Russians capture airbase", "Russians capture airbase"];
objective1 = player createSimpleTask ["US defend airbase"];
objective1 setSimpleTaskDescription ["US defend airbase", "US defend airbase", "US defend airbase"];