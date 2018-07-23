
player createDiaryRecord ["Diary", ["Designers Notes", "This was one of the early OFP missions created by Snake Man.<br/><br/>Must have been something like 2001 or 2002 era when we played a lot of LAN multiplayer at PMC WHQ."]];
player createDiaryRecord ["Diary", ["Diary", "Time to get those hostages out."]];
player createDiaryRecord ["Diary", ["Mission", "Alpha team <marker name = 'start'>start</marker> from base, assault the enemy <marker name = 'target1'>compound</marker> and free the <marker name = 'hostages'>hostages</marker> kept there.<br/><br/>Good luck.<br/><br/>PMC Hostage Rescue 2<br/><br/>GEN SITREP<br/>Enemy is holding few of our soldiers as hostages. We must get them out.<br/><br/>INTEL<br/>Small infantry presence in the compound, some vehicles nearby.<br/><br/>ORDERS<br/>Alpha team <marker name = 'start'>start</marker> from base, Black Hawk helicopter will <marker name = 'insert'>insert</marker> you just north of the enemy compound. Assault the <marker name = 'target1'>compound</marker> and find the <marker name = 'hostages'>hostages</marker> located there. If they are not in the first objective, then look from the <marker name = 'target2'>castle ruins</marker> also. When you have located them, proceed into the <marker name = 'extract'>extraction LZ</marker> at the end of the road. Call Black Hawk by using radio (0-0-1).<br/><br/>TACTICAL<br/>Be careful not to shoot friendlies!"]];

objective3 = player createSimpleTask ["Bring hostages home"];
objective3 setSimpleTaskDescription ["Bring hostages home", "Bring hostages home", "Bring hostages home"];
objective2 = player createSimpleTask ["Assault castle"];
objective2 setSimpleTaskDescription ["Assault castle", "Assault castle", "Assault castle"];
objective1 = player createSimpleTask ["Assault base camp"];
objective1 setSimpleTaskDescription ["Assault base camp", "Assault base camp", "Assault base camp"];
