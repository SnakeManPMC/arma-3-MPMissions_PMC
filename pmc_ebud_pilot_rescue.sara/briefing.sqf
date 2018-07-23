
player createDiaryRecord ["Diary", ["Diary", "Oh man, our guys are down in the enemy territory..."]];
player createDiaryRecord ["Diary", ["Mission", "1-1-A team <marker name = 'start'>start</marker> from the airbase. Find the <marker name = 'down_loc'>downed bird</marker>, rescue the crew and bring them back to base."]];

objective1 = player createSimpleTask ["Rescue Crew"];
objective1 setSimpleTaskDescription ["Rescue Crew", "Rescue Crew", "Rescue Crew"];
