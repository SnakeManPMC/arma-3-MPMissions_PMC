
player createDiaryRecord ["Diary", ["Designers Notes", "This was one of the early OFP missions created by Snake Man.<br/><br/>Must have been something like 2001 or 2002 era when we played a lot of LAN multiplayer at PMC WHQ."]];
player createDiaryRecord ["Diary", ["Mission", "US tries to neutralize russians, russians try to survive."]];

objective2 = player createSimpleTask ["Russians stay alive"];
objective2 setSimpleTaskDescription ["Russians stay alive", "Russians stay alive", "Russians stay alive"];
objective1 = player createSimpleTask ["US neutralizes Russians"];
objective1 setSimpleTaskDescription ["US neutralizes Russians", "US neutralizes Russians", "US neutralizes Russians"];
