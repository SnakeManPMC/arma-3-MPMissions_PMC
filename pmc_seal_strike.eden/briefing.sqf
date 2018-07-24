//auto-generated by ArmaBriefingConversion
player createDiaryRecord ["Diary", ["Diary", "Gosh, another day and another mission."]];
player createDiaryRecord ["Diary", ["Mission", "Alpha team <marker name = 'start'>start</marker> from woods. capture <marker name = 'target1'>target #1</marker> objective. capture <marker name = 'target2'>target #2</marker> objective. capture <marker name = 'target3'>target #3</marker> objective. capture <marker name = 'target4'>target #4</marker> objective.<br/><br/>PMC SEAL Strike<br/><br/>GEN SITREP<br/>Our war against the russians are continuing, today like yesterday we are going to hit the enemy with all we got.<br/><br/>INTEL<br/>Our recon shows that the infantry is on the high alert all over the region.<br/><br/>ORDERS<br/>Alpha team <marker name = 'start'>start</marker> from woods. Proceed to neutralize and capture <marker name = 'target1'>target #1</marker> objective. capture <marker name = 'target2'>target #2</marker> objective. capture <marker name = 'target3'>target #3</marker> objective. capture <marker name = 'target4'>target #4</marker> objective. Good luck.<br/><br/>TACTICAL<br/>Be sure to watch your backs out there, keep your men alive and healthy. See you later on the HQ, goodspeed you all."]];

// tasks need to be in reversed order
objective5 = player createSimpleTask ["Return to base"];
objective5 setSimpleTaskDescription ["Return to base", "Return to base", "Return to base"];
objective4 = player createSimpleTask ["Capture #4"];
objective4 setSimpleTaskDescription ["Capture #4", "Capture #4", "Capture #4"];
objective3 = player createSimpleTask ["Capture #3"];
objective3 setSimpleTaskDescription ["Capture #3", "Capture #3", "Capture #3"];
objective2 = player createSimpleTask ["Capture #2"];
objective2 setSimpleTaskDescription ["Capture #2", "Capture #2", "Capture #2"];
objective1 = player createSimpleTask ["Capture #1"];
objective1 setSimpleTaskDescription ["Capture #1", "Capture #1", "Capture #1"];