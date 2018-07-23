
player createDiaryRecord ["Diary", ["Designers Notes", "This was one of the early OFP missions created by Snake Man.<br/><br/>Must have been something like 2001 or 2002 era when we played a lot of LAN multiplayer at PMC WHQ.<br/><br/>Note: this is the Original strike eagle which we played to the death on our LAN sessions, later this mission was ported to arma2 chernarus."]];
player createDiaryRecord ["Diary", ["Diary", "Everything is open."]];
player createDiaryRecord ["Diary", ["Mission", "PMC Strike Eagle<br/>We have been tasked to clear our enemy postions in this sector. Our Base is located in the <marker name = 'airbase'>Airbase</marker><br/><br/>First objective is to clear out city of Meaux <marker name = 'meaux'>here</marker>.<br/>Second objective is to capture the hospital <marker name = 'hospital'>here</marker>.<br/>Third objective is to clear montignac <marker name = 'montignac'>here</marker>.<br/>Lastly you will unleash an attack to enemy main base <marker name = 'base'>here</marker>.<br/>Be aware of the enemy AAA site <marker name = 'aa'>here</marker>."]];

objective4 = player createSimpleTask ["Capture base <marker name = 'base'>here</marker>."];
objective4 setSimpleTaskDescription ["Capture base <marker name = 'base'>here</marker>.", "Capture base <marker name = 'base'>here</marker>.", "Capture base <marker name = 'base'>here</marker>."];
objective3 = player createSimpleTask ["Clear Montignac <marker name = 'montignac'>here</marker>."];
objective3 setSimpleTaskDescription ["Clear Montignac <marker name = 'montignac'>here</marker>.", "Clear Montignac <marker name = 'montignac'>here</marker>.", "Clear Montignac <marker name = 'montignac'>here</marker>."];
objective2 = player createSimpleTask ["Capture hospital <marker name = 'hospital'>here</marker>."];
objective2 setSimpleTaskDescription ["Capture hospital <marker name = 'hospital'>here</marker>.", "Capture hospital <marker name = 'hospital'>here</marker>.", "Capture hospital <marker name = 'hospital'>here</marker>."];
objective1 = player createSimpleTask ["Clear Meaux <marker name = 'meaux'>here</marker>."];
objective1 setSimpleTaskDescription ["Clear Meaux <marker name = 'meaux'>here</marker>.", "Clear Meaux <marker name = 'meaux'>here</marker>.", "Clear Meaux <marker name = 'meaux'>here</marker>."];
