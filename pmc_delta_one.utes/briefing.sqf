obj2 = player createSimpleTask ["Destroy HQ"];
obj2 setSimpleTaskDescription ["Destroy the HQ at the base-in-construction <marker name='base1'>marked on your map</marker>.", "Destroy HQ", "Destroy HQ"];
obj2 setTaskState "CREATED";

obj0 = player createSimpleTask ["Assassiate Insurgent Official"];
obj0 setSimpleTaskDescription ["Intel reports a high-ranking insurgent official will be in the area to discuss weapons purchases with the Russians. We need you to take him out.", "Assassinate Boss", "Assassinate Boss"];
obj0 setTaskState "CREATED";

obj1 = player createSimpleTask ["Recon for Weapons"];
obj1 setSimpleTaskDescription ["Intel reports weapons in the <marker name='recon1'>area marked</marker>. Confirm their presence.", "Recon for Weapons", "Recon for Weapons"];
obj1 setTaskState "CREATED";
player setCurrentTask obj1;

player createDiaryRecord ["Diary", ["Extraction", "An RHIB is in <marker name='rhib_extract'>position</marker> for you to board once previous objectives have been completed. Move into the labled extraction zone and we'll pick you up there."]];

player createDiaryRecord ["Diary", ["Protection Detatchment", "Known to be a small team of highly elite soldiers. These men are tasked with defending the Warlord and are armed and trained to doso very effectivly. UAV Recon indicates that they spend much time patrolling the area, and will likely show the Warlord several of the key facilities labeled."]];

player createDiaryRecord ["Diary", ["Insurgent Official", "He'll be easy enough to spot, wearing a blue jacket, unarmed. Be aware of his protection detatchment. His final destination is in the southernmost city, but it is higly suggested you get to him before he gets there."]];

player createDiaryRecord ["Diary", ["HQ", "The Russian's are building a new base in the center of the island, marked on your map. You need to destroy the HQ there in order to hinder Russian construction efforts. Expect to use both Satchel Charges equipped to you. Intel shows the HQ is made up of an APC in a covered net, directly adjacent to a field hospital."]];

player createDiaryRecord ["Diary", ["Weapons Cache", "The brass need confirmation that the Russians are dealing to terrorists before further operations on the island can commence. A weapons cache is almost certainly in the city marked."]];

player createDiaryRecord ["Diary", ["OPFOR", "Expect high hostile activity in the area. The city farthest south is known to be occupied by Russians. Be aware that there are several UAZ patrols in the area, as well as areas of interest marked on your map."]];

player createDiaryRecord ["Diary", ["Equipment", "1 M4A1 Carbine fitted with an ACOG scope and M203 Grenade launcher, 120 rounds of 5.56x45mm ammunition in 4 magazines, 1 HE M203 round, 2 M67 Fragmentation Grenades, 2 Satchel Charges, 1 M9 Pistol, 30 rounds of 9x19mm ammunition in 2 magazines"]];

player createDiaryRecord ["Diary", ["BLUFOR", "BLUFOR for this mission is a one man reconissance unit, callsign delta-1"]];
player createDiaryRecord ["Diary", ["Rules of Engagement", "Fire at will, however remember you are the only man out there and lightly equipped. Killing mass amounts of enemies is not neccessary for this mission."]];

player createDiaryRecord ["Diary", ["Execution", "Delta-1 will complete the following objectives: Find the weapons cache, Assassinate the Insurgent Official, and Destroy the HQ at the Russian's base in construction. Whiskey-Whiskey will then extract via RHIB to a location where we can pick him up."]];

player createDiaryRecord ["Diary", ["Background", "Russian activity on the Utes Island has upscaled massivly. It is believed by USSOCOM that they are using the island to manufacture and sell weapons to terrorists. If intel is found that the Russian's are doing so, it would give USSOCOM the reasons neccessary to invade and secure the island. Callsign Delta-1 was deployed to the area yesterday awaiting further orders."]];
