//auto-generated by ArmaBriefingConversion

player createDiaryRecord ["Diary", ["Diary", "



I know this will be covert stuff, try to sneak in and recon the area without
getting any heat... but I have the combat experience to tell me that when everything
looks easy and simple, we gotta maintain the upmost focus...<br/>
Anyway, intel guys tell us there are probably AAA cover for the prison camp, so we need
to go in and get some recon. If we find Shilka or AA soldiers, we will eliminate those 
units. The orders are not to engage units unless its AA, well shiet do they expect my team 
to sit on their asses while nice commie patrol strolls our way? well goddamn I'd say, but 
maybe its better this time to follow the orders.
<br/><br/>
Our insertion point is <marker name = 'insertion'>here</marker>, this part of the beach seems
pretty ok place to set our silent foots on that island, our intel have not detected any
movement there.<br/>
The air assault team guys are located <marker name = 'airbase'>here</marker>, they will have two
AH-1 Cobra gunships and those bulky UH-60 Black Hawks filled with NATO troops ready to
whoop some Russian ass.<br/>
Radio call Alpha is AH-1 call<br/>
Radio call Bravo is Black Hawk call<br/>






"]];
player createDiaryRecord ["Diary", ["Mission", "


Seal Team will <marker name = 'start'>start</marker> from the beach, travels to the 
small island by boat. Gets <marker name = 'insertion'>inserted</marker> into the beach.
<br/><br/>
From there they proceed to disable the enemy AAA defences and call air strike.
<br/>



<br/><br/>The Captive<br/><br/>

Two NATO soldiers were captured from their so called routine patrol two days ago, right 
now we have intel come up the location of the prison camp where they are being held. 
<br/><br/>

Intel believes there is serious AAA threat in the small island, probably one or more Shilkas.
Also one of our Recon choppers was shot by shoulder launched missile. This Russian prison 
camp is located <marker name = 'pcamp'>here</marker>, in one of the small islands of Malden.
<br/><br/>

The mission combines from two parts, first we send Special Forces to recon the area and 
to eliminate possible AAA equipment that can cause hazard to 
our <marker name = 'airbase'>air</marker> operations.<br/>
Second part of this mission is full air assault. We have two AH-1 Cobra gunships
to whip the Russians and then we send two UH-60 Black Hawks fully loaded with 12 men 
each.<br/>
Seal Team starts from the HQ at the beach <marker name = 'start'>start</marker> in the SE part of
Malden island. 
The Seal Team starts <marker name = 'start'>here</marker> where they board a boat that inserts
the team over <marker name = 'insertion'>here</marker>. From that insertion location the Seals
move in to recon the area and if found, destroy any AAA units.<br/>
<br/><br/>

Use caution when entering into the enemy territory. Do not call airstrikes before all 
AAA threat has been disabled. Stay clear from engaging the enemy unless its Anti 
Air unit, we dont want you to cause any stress to the enemy, they do not expect us to 
show up with force.
<br/><br/>













"]];
// tasks need to be in reversed order
objective4 = player createSimpleTask ["Get prisoners to safety"];
objective4 setSimpleTaskDescription ["Get prisoners to safety", "Get prisoners to safety", "Get prisoners to safety"];
objective3 = player createSimpleTask ["Call Assault teams"];
objective3 setSimpleTaskDescription ["Call Assault teams", "Call Assault teams", "Call Assault teams"];
objective2 = player createSimpleTask ["Call Air Strike"];
objective2 setSimpleTaskDescription ["Call Air Strike", "Call Air Strike", "Call Air Strike"];
objective1 = player createSimpleTask ["Neutralize AAA threat"];
objective1 setSimpleTaskDescription ["Neutralize AAA threat", "Neutralize AAA threat", "Neutralize AAA threat"];
