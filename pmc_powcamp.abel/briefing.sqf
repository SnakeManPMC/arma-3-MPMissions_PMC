
player createDiaryRecord ["Diary", ["Designers Notes", "This was one of the early OFP missions created by Snake Man.<br/><br/>Must have been something like 2001 or 2002 era when we played a lot of LAN multiplayer at PMC WHQ."]];
player createDiaryRecord ["Diary", ["Diary", "I must rescue my army buddies from the Russian hands."]];
player createDiaryRecord ["Diary", ["Mission", "Alpha and Bravo teams <marker name = 'start'>start</marker> from airbase. They will be <marker name = 'insertion'>Inserted</marker> near the <marker name = 'powcamp'>POW Camp</marker> where Russians are keeping two of our soldiers.<br/><br/>Rescue them.<br/><br/>PMC POW Camp<br/><br/>GEN SITREP<br/>We have tracked down two of our soldiers being had as prisoners of war in the Russian hands. These soldiers will be rescued immediately.<br/><br/>INTEL<br/>There is infantry and one BMP patrolling the area. POW's are kept between the rock face and the house in the open field.<br/><br/>ORDERS<br/>Alpha and Bravo teams <marker name = 'start'>start</marker> from airbase on board UH-60 Black Hawk. You will be <marker name = 'insertion'>Inserted</marker> near the <marker name = 'powcamp'>POW Camp</marker> where Russians are keeping two of our soldiers. Get in there, take out all the threats to the POW's or your team and secure POW's. When you got them secured, join up with the snipers and board the Black Hawk which will come to get you in the field. Good luck, bring them home.<br/><br/>TACTICAL<br/>Okay move fast, watch your fire - do not shoot the POW's. Secure the area until the helo arrives to pick you up. Best of luck to you."]];

objective3 = player createSimpleTask ["Return POW's to US base"];
objective3 setSimpleTaskDescription ["Return POW's to US base", "Return POW's to US base", "Return POW's to US base"];
objective2 = player createSimpleTask ["Join up with Snipers"];
objective2 setSimpleTaskDescription ["Join up with Snipers", "Join up with Snipers", "Join up with Snipers"];
objective1 = player createSimpleTask ["Secure POW's"];
objective1 setSimpleTaskDescription ["Secure POW's", "Secure POW's", "Secure POW's"];
