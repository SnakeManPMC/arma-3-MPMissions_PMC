
player createDiaryRecord ["Diary", ["Designers Notes", "Original mission was made for arma2 Hellenic Warfare Mod (or something?) apaches, until I realized those apache models sucked with no optimization at all etc.<br/><br/>This might have been first mission of a campaign because the number one in the name and briefing suggests there wouldbe more to come.<br/><br/>Ported to arma3 feb 2018.<br/><br/>Final porting done 2018-03-01.<br/><br/>Original mission had like 633 units so further tweaking might be in order hehe."]];
player createDiaryRecord ["Diary", ["Diary", "Time to shoot some hellfires, hell yeah!"]];
player createDiaryRecord ["Diary", ["Mission", "You <marker name = 'start'>start</marker> in HQ. Assault and clear out <marker name = 'target1'>target 1</marker>, <marker name = 'target2'>target 2</marker>, <marker name = 'target3'>target 3</marker> and <marker name = 'target4'>target 4</marker> city objectives. Leave no enemies alive.<br/><br/>PMC Indians 01<br/><br/>1. WAR SITUATION:<br/>Enemy is completely in control of the terrain. Our operations start by systematically start attacking enemy held cities.<br/><br/>2. YOUR MISSION:<br/>Destroy the four target objectives, leave no enemies alive.<br/><br/>3. EXECUTION/INTEL:<br/>You <marker name = 'start'>start</marker> in HQ. Assault and clear out <marker name = 'target1'>target 1</marker>, <marker name = 'target2'>target 2</marker>, <marker name = 'target3'>target 3</marker> and <marker name = 'target4'>target 4</marker> city objectives. Leave no enemies alive.<br/><br/>4. SUPPORT and ORBAT:<br/>No support expected.<br/><br/>5. SIGNALS and TACTICS:<br/>You are pilot. Your callsign is 1-1-A."]];

objective4 = player createSimpleTask ["Clear out target 4"];
objective4 setSimpleTaskDescription ["Clear out target 4", "Clear out target 4", "Clear out target 4"];
objective3 = player createSimpleTask ["Clear out target 3"];
objective3 setSimpleTaskDescription ["Clear out target 3", "Clear out target 3", "Clear out target 3"];
objective2 = player createSimpleTask ["Clear out target 2"];
objective2 setSimpleTaskDescription ["Clear out target 2", "Clear out target 2", "Clear out target 2"];
objective1 = player createSimpleTask ["Clear out target 1"];
objective1 setSimpleTaskDescription ["Clear out target 1", "Clear out target 1", "Clear out target 1"];
