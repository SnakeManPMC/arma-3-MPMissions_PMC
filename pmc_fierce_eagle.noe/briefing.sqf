//auto-generated by ArmaBriefingConversion

player createDiaryRecord ["Diary", ["Diary", "




This morning we launch the assault for Nogova. By the end of the day... I hope I'm
still alive.






"]];
player createDiaryRecord ["Diary", ["Mission", "


Alpha and Bravo squads <marker name = 'start'>insert LZ</marker> is in the beach. Assault
and capture <marker name = 'target1'>airbase</marker> from Russians.
<br/><br/>
After that you are free to engage and capture rest of the island.



<br/><br/>PMC Fierce Eagle<br/><br/>

GEN SITREP<br/>
Nogova is under Russian occupation this morning. Also this morning US will be launching
assault against the forces in the objective of ejecting them from Nogova.
<br/><br/>

INTEL<br/>
No intel available, you have to recon as you go.
<br/><br/>

ORDERS<br/>
Alpha and Bravo squads <marker name = 'start'>insert LZ</marker> is in the beach. You'll be 
inserted with two UH-60 Black Hawk's. When you are ready to go, proceed. assault
and capture the Nogova <marker name = 'target1'>airbase</marker> from the Russians. When you 
have accomplished this task, the helicopters and additional forces will arrive into the 
airbase.  Second objective 
is <marker name = 'target2'>Petrovice</marker> the big city due East from the airbase, third 
objective is <marker name = 'target3'>Modrava</marker> in the north. Last objective is to 
capture <marker name = 'target4'>Lipany</marker> at east. You'll get gunship helicopter to your 
use, do not blow them up. Your mission is accomplished when all key positions have been captured.
<br/><br/>

TACTICAL<br/>
Keep your people alive there, dont rush. You'll have all the time in the world to take on
this island, fight only from standoff position or when you are SURE you will kill the enemies
before they inflict casualties for friendly forces. Good luck squads.
<br/><br/>













"]];
// tasks need to be in reversed order
objective4 = player createSimpleTask ["Capture Lipany"];
objective4 setSimpleTaskDescription ["Capture Lipany", "Capture Lipany", "Capture Lipany"];
objective3 = player createSimpleTask ["Capture Modrava"];
objective3 setSimpleTaskDescription ["Capture Modrava", "Capture Modrava", "Capture Modrava"];
objective2 = player createSimpleTask ["Capture Petrovice"];
objective2 setSimpleTaskDescription ["Capture Petrovice", "Capture Petrovice", "Capture Petrovice"];
objective1 = player createSimpleTask ["Capture airbase"];
objective1 setSimpleTaskDescription ["Capture airbase", "Capture airbase", "Capture airbase"];