//auto-generated by ArmaBriefingConversion
player createDiaryRecord ["Diary", ["Designers Notes", "This was one of the early OFP missions created by Snake Man.<br/><br/>Must have been something like 2001 or 2002 era when we played a lot of LAN multiplayer at PMC WHQ.<br/><br/>JAM means joint weapons and magazines, and OFP addon initiative which also introduced high dispersion (HD) weapons/magazines."]];
player createDiaryRecord ["Diary", ["Diary", "We will be doing some heavy fighting against the russians, on foot, on the ground."]];
player createDiaryRecord ["Diary", ["Mission", "Alpha and Bravo teams <marker name = 'start'>start</marker> from base. Mission objective is to neutralize all Russians in <marker name = 'russians'>this</marker> sector.<br/><br/>Infantry Fight<br/><br/>We are having some air support problems currently, so we must live with out them for the moment.<br/><br/>Intel estimates lot of enemy infatry in the territory south of our <marker name = 'start'>base</marker> however there should be no enemy heavy armor.<br/><br/>Alpha and Bravo teams <marker name = 'start'>start</marker> from base and proceed on foot to the <marker name = 'russians'>enemy territory</marker> using caution while engaging all encountered enemies. Try to concetrate the operation first for the cities of Meaux, Tyrone, the hospital and Gravette. After those are cleared you're to mop up any remaining russians in the area marked by red.<br/><br/>You should be aware of enemy patrols, while the cities are most likely defended heavily. Move cautiously, often stop to listen and looking around you. The deeper you go into the enemy territory, the more danger you're in."]];

// tasks need to be in reversed order
objective5 = player createSimpleTask ["Neutralize all Russians"];
objective5 setSimpleTaskDescription ["Neutralize all Russians", "Neutralize all Russians", "Neutralize all Russians"];
objective4 = player createSimpleTask ["Capture Gravette"];
objective4 setSimpleTaskDescription ["Capture Gravette", "Capture Gravette", "Capture Gravette"];
objective3 = player createSimpleTask ["Capture Hospital"];
objective3 setSimpleTaskDescription ["Capture Hospital", "Capture Hospital", "Capture Hospital"];
objective2 = player createSimpleTask ["Capture Tyrone"];
objective2 setSimpleTaskDescription ["Capture Tyrone", "Capture Tyrone", "Capture Tyrone"];
objective1 = player createSimpleTask ["Capture Meaux"];
objective1 setSimpleTaskDescription ["Capture Meaux", "Capture Meaux", "Capture Meaux"];
