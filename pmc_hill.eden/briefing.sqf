
player createDiaryRecord ["Diary", ["Designers Notes", "This was one of the early OFP missions created by Snake Man.<br/><br/>Must have been something like 2001 or 2002 era when we played a lot of LAN multiplayer at PMC WHQ."]];
player createDiaryRecord ["Diary", ["Diary", "Humm nasty multiplayer shiet"]];
player createDiaryRecord ["Diary", ["Mission", "Russian troops are holding the <marker name = 'defend'>Hill</marker> and NATO forces must <marker name = 'nato'>assault</marker> it and take control of that hill. Good luck<br/><br/>PMC Hill<br/><br/>GEN SITREP<br/>Our little hill is coming under a battle.<br/><br/>INTEL<br/>Only infantry present, but Russians do have M2 machine gun in the hill.<br/><br/>ORDERS<br/>NATO must <marker name = 'nato'>assault</marker> from the chapel start point and Russians will defend the <marker name = 'defend'>Hill</marker> at all costs. Mission is accomplished when only one team remins alive.<br/><br/>TACTICAL<br/>Stay alert, its raining and not much light."]];

objective2 = player createSimpleTask ["NATO takes hill"];
objective2 setSimpleTaskDescription ["NATO takes hill", "NATO takes hill", "NATO takes hill"];
objective1 = player createSimpleTask ["Russians defend hill"];
objective1 setSimpleTaskDescription ["Russians defend hill", "Russians defend hill", "Russians defend hill"];
