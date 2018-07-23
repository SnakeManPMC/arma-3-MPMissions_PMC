
player createDiaryRecord ["Diary", ["Designers Notes", "This was one of the early OFP missions created by Snake Man.<br/><br/>Must have been something like 2001 or 2002 era when we played a lot of LAN multiplayer at PMC WHQ."]];
player createDiaryRecord ["Diary", ["Mission", "Russian sniper team tries to eliminat US Colonel, US forces try to find and kill the sniper team."]];

objective2 = player createSimpleTask ["Sniper team eliminates Colonel"];
objective2 setSimpleTaskDescription ["Sniper team eliminates Colonel", "Sniper team eliminates Colonel", "Sniper team eliminates Colonel"];
objective1 = player createSimpleTask ["US neutralizes sniper team"];
objective1 setSimpleTaskDescription ["US neutralizes sniper team", "US neutralizes sniper team", "US neutralizes sniper team"];
