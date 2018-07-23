
player createDiaryRecord ["Diary", ["Designers Notes", "This was one of the early OFP missions created by Snake Man.<br/><br/>Must have been something like 2001 or 2002 era when we played a lot of LAN multiplayer at PMC WHQ."]];
player createDiaryRecord ["Diary", ["Diary", "There are unknown number of enemy armour and some heavy weapon infantry."]];
player createDiaryRecord ["Diary", ["Mission", "PMC Armoured<br/>Our field HQ is located <marker name = 'fieldhq'>here</marker>, the forces contain two squads of men, Blackhawk, M113 and a M1A1 MBT, and some lighter vehicles.<br/><br/>Intel reports that enemys main base is <marker name = 'ussrbase'>here</marker>. We need to clear out this <marker name = 'fueldepot'>Fuel Depot</marker> that the russians currently are using to refuel their armour. When you have cleared the path to the fuel depot and the depot itself, call for support forces (Radio 0-0-1). Wait for them to arrive safely before proceeding into the base. There is going to be some activity in this <marker name = 'ussractive'>area</marker> between the two enemy positions."]];

objective3 = player createSimpleTask ["Find and destroy enemy base."];
objective3 setSimpleTaskDescription ["Find and destroy enemy base.", "Find and destroy enemy base.", "Find and destroy enemy base."];
objective2 = player createSimpleTask ["Call support forces."];
objective2 setSimpleTaskDescription ["Call support forces.", "Call support forces.", "Call support forces."];
objective1 = player createSimpleTask ["Clear out the Fuel Depot."];
objective1 setSimpleTaskDescription ["Clear out the Fuel Depot.", "Clear out the Fuel Depot.", "Clear out the Fuel Depot."];
