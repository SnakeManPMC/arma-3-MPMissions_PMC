
player createDiaryRecord ["Diary", ["Designers Notes", "This was one of the early OFP missions created by Snake Man.<br/><br/>Must have been something like 2001 or 2002 era when we played a lot of LAN multiplayer at PMC WHQ."]];
player createDiaryRecord ["Diary", ["Diary", "Empty main section."]];
player createDiaryRecord ["Diary", ["Mission", "US defends airbase, russians try to capture it."]];

objective2 = player createSimpleTask ["Russians capture airbase"];
objective2 setSimpleTaskDescription ["Russians capture airbase", "Russians capture airbase", "Russians capture airbase"];
objective1 = player createSimpleTask ["US defend airbase"];
objective1 setSimpleTaskDescription ["US defend airbase", "US defend airbase", "US defend airbase"];
