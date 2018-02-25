//auto-generated by ArmaBriefingConversion
player createDiaryRecord ["Diary", ["Designers Notes", "This was one of the early OFP missions created by Snake Man.<br/><br/>Must have been something like 2001 or 2002 era when we played a lot of LAN multiplayer at PMC WHQ."]];
player createDiaryRecord ["Diary", ["Diary", "There is not much intel for the area we are going to cover, but there is no indication that there would be heavy AAA activity (shilkas). Shoulder launched missiled and other heavy weapons... well that we just dont know, I hope we dont find out it the hard way.<br/><br/>So if I fly low and fast, I should be reasonably safe from shoulder launched missiles or heavy machinegun fire. If we find the bird crashed (God do I hope we dont) its very important that the extraction is handled with speed of a lightning, I'm not gonna wind up on some USSR prison camp or worst... a casualty of war.<br/><br/>Lets stay sharp people!"]];
player createDiaryRecord ["Diary", ["Mission", "PMC Search and Rescue<br/>15 minutes ago we lost contact one of our UH60 Blackhawk helicopters on routine patrol (over enemy territory). The last radio transmission we received came from this general <marker name = 'Crashsite'>area</marker> We are not sure what has happened, whether its only a radio comm malfunction or worst... it could have been crashed or even shot down, we just dont know. This is why your and your team comes in!<br/>You will take the medic/rescue team with UH60 and search the area where the last radio transmission was received. Beware of the enemy <marker name = 'EnemyAir'>airfield</marker> as its known to be active.<br/><br/>If you find the chopper, escort it back to base. If you find out its crashed, search the area for survivors and if you find any, bring them <marker name = 'homebase'>home</marker>. There is medical staff waiting in the home base to treat wounded soldiers."]];

// tasks need to be in reversed order
objective3 = player createSimpleTask ["Get survivors to medic <marker name = 'homebase'>here</marker>."];
objective3 setSimpleTaskDescription ["Get survivors to medic <marker name = 'homebase'>here</marker>.", "Get survivors to medic <marker name = 'homebase'>here</marker>.", "Get survivors to medic <marker name = 'homebase'>here</marker>."];
objective2 = player createSimpleTask ["Extract any survivors."];
objective2 setSimpleTaskDescription ["Extract any survivors.", "Extract any survivors.", "Extract any survivors."];
objective1 = player createSimpleTask ["Search UH60 <marker name = 'Crashsite'>here</marker>."];
objective1 setSimpleTaskDescription ["Search UH60 <marker name = 'Crashsite'>here</marker>.", "Search UH60 <marker name = 'Crashsite'>here</marker>.", "Search UH60 <marker name = 'Crashsite'>here</marker>."];
