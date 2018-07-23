
player createDiaryRecord ["Diary", ["Designers Notes", "This was one of the early OFP missions created by Snake Man.<br/><br/>Must have been something like 2001 or 2002 era when we played a lot of LAN multiplayer at PMC WHQ."]];
player createDiaryRecord ["Diary", ["Diary", "Very tight battle coming up, stay focused."]];
player createDiaryRecord ["Diary", ["Mission", "NATO is defending this airbase <marker name = 'airbase'>here</marker>, Russian forces start in Saint Philippe <marker name = 'russia'>here</marker>.<br/><br/><br/><br/>Airbase Combat<br/><br/>GEN SITREP<br/>Today NATO defends airbase against Russian onslaught on northern Everon.<br/><br/>INTEL<br/>NATO has only infantry presence, Russians has one BMP at their disposal.<br/><br/>ORDERS<br/>NATO is not allowed to leave the airbase area, where Russian forces are authorized to use any forces necessary to capture the airbase and kill NATO troops. Mission is accomplished when either forces are defeated, additionally if NATO leaves airbase area Russians win.<br/><br/>TACTICAL<br/>Stay sharp out there, Russians will roam with that BMP, but then again NATO is dug in at the airbase and they do have LAW's and stuff like that.<br/><br/>"]];

objective2 = player createSimpleTask ["Russia captures airbase"];
objective2 setSimpleTaskDescription ["Russia captures airbase", "Russia captures airbase", "Russia captures airbase"];
objective1 = player createSimpleTask ["NATO defends airbase"];
objective1 setSimpleTaskDescription ["NATO defends airbase", "NATO defends airbase", "NATO defends airbase"];
