//auto-generated by ArmaBriefingConversion

player createDiaryRecord ["Diary", ["Diary", "



This should be walk in the park. We get in, neutralize the few Russians in the
village. Then we call the Truck to pick up the civis, when they are moving
into safety the Blackhawk picks us up and thats it.
<br/><br/>

I just need to be real careful that I don't accidently shoot any civilians, but
that should be no problem as its obvious which one is uniform Russian and which one
is harmless civlian.






"]];
player createDiaryRecord ["Diary", ["Mission", "


You'll be <marker name = 'start'>inserted</marker> just West of the Village. Clear 
the <marker name = 'target'>village</marker> and wait for 
extraction <marker name = 'truck'>truck</marker> to pick up the civilians.
<br/><br/>

When they are on their way to safety, Blackhawk will pick your team up from the
<marker name = 'start'>insertion</marker> point.




<br/><br/>Operation Liberty<br/><br/>

Operation Liberty<br/>
Some Civilians are requesting NATO assistance, they want to stay alive and leave 
the Russian infested territory before something bad happens to them.
<br/><br/>

There are small number of enemy forces dormenting those villagers in SW of Chotain. 
No enemy armored vehicles or air activity has been detected nearby. All their forces 
have concentrated to front line or in the southern part of the island. 
<br/><br/>

You'll be <marker name = 'start'>inserted</marker> just West from the village. Clear out 
the Russians from the <marker name = 'target'>village</marker> and wait for extraction 
team (<marker name = 'truck'>truck</marker>) to come and pick those civis up. When all 
the civilians are safe, you'll board the Blackhawk on 
the <marker name = 'start'>insertion</marker> point and return home with the extraction team.
<br/><br/>

We suggest you double check the targets you're firing when clearing the village, we do 
not want to have insident where NATO troops fires upon innocent civilians!<br/>
The intel estimates this is a cake walk, no vehicles have been detected in the nearby area
so you don't need any anti armor support on this one. Get in - get out, fast and the
Ruskies didn't even know you where there.
<br/><br/>














"]];
// tasks need to be in reversed order
objective6 = player createSimpleTask ["Board chinook and return home"];
objective6 setSimpleTaskDescription ["Board chinook and return home", "Board chinook and return home", "Board chinook and return home"];
objective5 = player createSimpleTask ["Secure Crash Site until the"];
objective5 setSimpleTaskDescription ["Secure Crash Site until the", "Secure Crash Site until the", "Secure Crash Site until the"];
objective4 = player createSimpleTask ["Locate pilots and drag them to the Black "];
objective4 setSimpleTaskDescription ["Locate pilots and drag them to the Black ", "Locate pilots and drag them to the Black ", "Locate pilots and drag them to the Black "];
objective3 = player createSimpleTask ["Locate Downed Black Hawk "];
objective3 setSimpleTaskDescription ["Locate Downed Black Hawk ", "Locate Downed Black Hawk ", "Locate Downed Black Hawk "];
objective2 = player createSimpleTask ["Get Civis out"];
objective2 setSimpleTaskDescription ["Get Civis out", "Get Civis out", "Get Civis out"];
objective1 = player createSimpleTask ["Clear village"];
objective1 setSimpleTaskDescription ["Clear village", "Clear village", "Clear village"];
