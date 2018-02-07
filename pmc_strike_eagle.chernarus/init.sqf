PAPABEAR = [West, "HQ"];

[[
  ["PMC_objective1","Clear Novy Sobor","Assault and clear <marker name='novysobor'>Novy Sobor</marker> of any enemy presence."],
  ["PMC_objective2","Capture Pogorevka","Capture <marker name='pogorevka'>Pogorevka</marker> as soon as possible."],
  ["PMC_objective3","Capture Zelenogorsk","Capture <marker name='zelenogorsk'>Zelenogorsk</marker> from enemy hands."],
  ["PMC_objective4","Clear enemy base ","Clear <marker name='enemybase'>enemy base</marker> from all enemies."]
],[
  ["Mission","PMC Strike Eagle<br/>We have been tasked to clear our enemy postions in this sector. Our Base is located in the <marker name='airbase'>airbase</marker>.<br/><br/>First objective is to clear out city of Novy Sobor. Second objective is to capture the Pogorevka. Third objective is to capture Zelenogorsk. Lastly you will unleash an attack to enemy main base.<br/><br/>Be aware of the enemy AAA site located hilltop <marker name='aa'>here</marker>."],
    ["OFP Mission","This was originally OFP mission back in the day when PMC started multiplayer in LAN meetings. We played this mission to the death, it was great time."],
	["Credits","Mission by Snake Man, PMC."]
]] call compile preprocessfilelinenumbers "PMC\shk_taskmaster.sqf";

enableSaving [ false, false ];
