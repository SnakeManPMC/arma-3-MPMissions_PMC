//auto-generated by ArmaBriefingConversion

player createDiaryRecord ["Diary", ["Diary", "




rumours





"]];
player createDiaryRecord ["Diary", ["Mission", "


You <marker name = 'start'>start</marker> in oil farm. Defend and then extract.



<br/><br/>Valley Escape<br/><br/>

1. WAR SITUATION:<br/>
Russians are pushing hard to keep control of the region. We are trying to run them out.
<br/><br/>

2. YOUR MISSION:<br/>
We are going to be overrun, you are alone in the oil farm since all our other forces are committed in the fight elsewhere. We have intel to suggest there is sizeable enemy force approaching your location, you are to clear out asap.
<br/><br/>

3. EXECUTION/INTEL:<br/>
Defend the oil farm until you are free to extract back to <marker name = 'base'>base</marker> hq.
<br/><br/>

4. SUPPORT and ORBAT:<br/>
Two AH-1 Cobra gunships are coming to your aid. MH-60L blackhawk will be your extract helo. Artillery support includes M252 mortars (reaches just about your area), M101 howitzers, M109 paladins and Tomahawk cruise missiles. Make good use of them.
<br/><br/>

5. SIGNALS and TACTICS:<br/>
Set up artillery killzones and bring down the flaming steel on the russians. Grab the radio for the arty net from the table near ammo boxes. Do not lose the radio as its your lifeline to the artillery support.
<br/><br/>

6. COMBAT EFFICIENCY:<br/>
Try to get all your men back alive to base hq.
<br/><br/>













"]];
// tasks need to be in reversed order
objective2 = player createSimpleTask ["Extract back to base"];
objective2 setSimpleTaskDescription ["Extract back to base", "Extract back to base", "Extract back to base"];
objective1 = player createSimpleTask ["Hold off enemy attack"];
objective1 setSimpleTaskDescription ["Hold off enemy attack", "Hold off enemy attack", "Hold off enemy attack"];
