
player createDiaryRecord ["Diary", ["Designers Notes", "This was one of the early OFP missions created by Snake Man.<br/><br/>Must have been something like 2001 or 2002 era when we played a lot of LAN multiplayer at PMC WHQ."]];
player createDiaryRecord ["Diary", ["Diary", "All out war againts the Russians, either us or them... someone's gotta go... and it ain't me!"]];
player createDiaryRecord ["Diary", ["Mission", "NATO Headquarters is located at <marker name = 'start'>Start</marker> airbase. Your orders are to take control of this island or at least clean up the following areas:<br/><marker name = 'base'>Base</marker> east of Chapoi<br/><marker name = 'depot'>Depot</marker> at La Passagne<br/><marker name = 'port'>Sea Port</marker> in Le Port<br/><marker name = 'port2'>Sea Port 2</marker> in La Riviere<br/><br/>Good luck.<br/><br/>Shitty Sember<br/><br/>NATO is making a move to secure Malden from the Russian occupancy. Currently NATO holds the small island in SE from the mainland and also the Malden Airport.<br/><br/>Intel reports lot of Russian infantry in the island, some armor is also present. Be sure to watch out Shilka <marker name = 'aaa'>AAA</marker> patrol in the island.<br/><br/>Your team <marker name = 'start'>starts</marker> at Airbase. Your orders are to take control of this island.<br/><br/>Make use of the vehicles in the NATO HQ and also if you run out of ammo, you can pickup more at <marker name = 'armoury'>armoury</marker> in the small island. Before you can conduct full scale air operations, you must neutralize the shilkas!"]];

objective5 = player createSimpleTask ["Neutralize all Russians!"];
objective5 setSimpleTaskDescription ["Neutralize all Russians!", "Neutralize all Russians!", "Neutralize all Russians!"];
objective4 = player createSimpleTask ["La Riviere Sea Port"];
objective4 setSimpleTaskDescription ["La Riviere Sea Port", "La Riviere Sea Port", "La Riviere Sea Port"];
objective3 = player createSimpleTask ["Le Port Sea Port"];
objective3 setSimpleTaskDescription ["Le Port Sea Port", "Le Port Sea Port", "Le Port Sea Port"];
objective2 = player createSimpleTask ["La Passagne Depot"];
objective2 setSimpleTaskDescription ["La Passagne Depot", "La Passagne Depot", "La Passagne Depot"];
objective1 = player createSimpleTask ["Chapoi Base"];
objective1 setSimpleTaskDescription ["Chapoi Base", "Chapoi Base", "Chapoi Base"];
