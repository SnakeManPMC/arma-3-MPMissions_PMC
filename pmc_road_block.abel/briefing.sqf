
player createDiaryRecord ["Diary", ["Designers Notes", "This was one of the early OFP missions created by Snake Man.<br/><br/>Must have been something like 2001 or 2002 era when we played a lot of LAN multiplayer at PMC WHQ."]];
player createDiaryRecord ["Diary", ["Diary", "Empty main section."]];
player createDiaryRecord ["Diary", ["Mission", "Russians defend a road block, NATO tries to capture it."]];

objective2 = player createSimpleTask ["Russians defend road block"];
objective2 setSimpleTaskDescription ["Russians defend road block", "Russians defend road block", "Russians defend road block"];
objective1 = player createSimpleTask ["NATO capture road block"];
objective1 setSimpleTaskDescription ["NATO capture road block", "NATO capture road block", "NATO capture road block"];
