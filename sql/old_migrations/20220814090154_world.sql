-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1911
update item_template set disenchant_id = 28 where entry = 60294;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1921
update creature_template set unit_flags = 0 where entry = 91838;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1905
update creature_template set display_id1 = 18514 where entry = 11500;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1896
update creature_template set type = 3 where entry = 60503;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1891
update quest_template set zoneorsort = 209 where entry in (60108, 60109);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1832
update quest_template set rewrepfaction1 = 76 where entry in (40538, 40539);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1929
-- Skill window will classify recipes based on the result item class and subclass.
update item_template set class = 4, subclass = 0 where entry = 6219;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1822: 
replace into fishing_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) values
(5024, 13443, 0.335, 1, 1, 1, 0),
(5024, 13446, 0.3618, 1, 1, 1, 0),
(5024, 13757, 8.7096, 1, 1, 1, 81),
(5024, 13758, 5.6278, 1, 1, 1, 0),
(5024, 13759, 14.458, 1, 1, 1, 82),
(5024, 13760, 16.7091, 1, 1, 1, 81),
(5024, 13889, 0, 1, 1, 1, 0),
(5024, 13890, 13.855, 1, 1, 1, 82),
(5024, 13901, 0.1742, 1, 1, 1, 0),
(5024, 13902, 0.1474, 1, 1, 1, 0);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1819
update item_template set max_count = 1, inventory_type = 13 where entry = 60543;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/79
delete from creature_loot_template where entry = 9568;
replace into creature_loot_template values 
(9568, 51217, 100, 0, 2, 2, 0), -- Fashion Coin
(9568, 30254, 100, 1, -30254, 1, 0), -- Reference loot
(9568, 12780, 100, 2, 1, 1, 0), -- General Drakkisath\'s Command
(9568, 16786, -80, 3, 2, 2, 0), -- Black Dragonspawn Eye

(9568, 12219, 7.5, 4, 1, 1, 0), -- Random stuff
(9568, 12337, 30, 4, 1, 1, 0),  -- Random stuff
(9568, 13143, 2, 4, 1, 1, 0),   -- Random stuff
(9568, 22528, 8, 4, 2, 4, 0),   -- Random stuff
(9568, 80760, 35, 4, 1, 1, 0); -- Random stuff

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1737
update quest_template set objectives = 'Find Kaja\'s Ammunition from Ammo Crates in Razorwind Canyon and return to Rezlak near Orgrimmar.' where entry = 60120;
update quest_template set objectives = 'Gather six Energized Scales from Lightning Hides and Thunder Lizards at Thunder Ridge to the west and bring them to Technician Spuzzle in Sparkwater Port.' where entry = 55003;
update quest_template set objectives = 'Kill 10 Armored Scorpid. Stomping on their tails is not required, but may make you feel better. Return to Yelnagi Blackarm in Razor Hill.' where entry = 60139;
