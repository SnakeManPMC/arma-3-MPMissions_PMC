//auto-generated by ArmaBriefingConversion
player createDiaryRecord ["Diary", ["Designers Notes", "This was one of the early OFP missions created by Snake Man.<br/><br/>Must have been something like 2001 or 2002 era when we played a lot of LAN multiplayer at PMC WHQ."]];
player createDiaryRecord ["Diary", ["Diary", "PMC Assault Guns"]];
player createDiaryRecord ["Diary", ["Mission", "NATO will try to <marker name = 'Defence'>defend</marker> its base while Russian troops are <marker name = 'Attack'>attacking</marker> from South.<br/><br/>PMC Assaultguns<br/><br/>GEN SITREP<br/>Russians are launching large infantry assault to our base in the beach.<br/><br/>INTEL<br/>Only infantry detected, lot of them. They attack from the south.<br/><br/>ORDERS<br/>NATO <marker name = 'Defence'>defends</marker> its base against large scale Russian <marker name = 'Attack'>attack</marker> coming from the south.<br/><br/>TACTICAL<br/>Use the machine guns to mow down the commies. good luck!"]];

// tasks need to be in reversed order
objective2 = player createSimpleTask ["Russians attack base"];
objective2 setSimpleTaskDescription ["Russians attack base", "Russians attack base", "Russians attack base"];
objective1 = player createSimpleTask ["NATO Defends the base"];
objective1 setSimpleTaskDescription ["NATO Defends the base", "NATO Defends the base", "NATO Defends the base"];
