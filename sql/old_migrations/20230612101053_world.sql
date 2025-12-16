-- Add the items below to the drop tables of the following creatures in a loot table with a drop chance of 0.10% (NPC entries 61424, 61425, 61426, 61364, 61365, 61388, 61389, 61390, 61391, 61417).
REPLACE INTO creature_loot_template VALUES
(61424, 30559, 0.1, 0, -30559, 1, 0),
(61425, 30559, 0.1, 0, -30559, 1, 0),
(61426, 30559, 0.1, 0, -30559, 1, 0),
(61364, 30559, 0.1, 0, -30559, 1, 0),
(61365, 30559, 0.1, 0, -30559, 1, 0),
(61388, 30559, 0.1, 0, -30559, 1, 0),
(61389, 30559, 0.1, 0, -30559, 1, 0),
(61390, 30559, 0.1, 0, -30559, 1, 0),
(61391, 30559, 0.1, 0, -30559, 1, 0),
(61417, 30559, 0.1, 0, -30559, 1, 0);

-- Baron Perenolde should attack 50% slower.
update creature_template set base_attack_time = 2000, ranged_attack_time = 2000 where entry = 61550;
-- NPC GUID 2577418 should have a respawn timer between 12-24 hours.
update creature set spawntimesecsmin = 43200, spawntimesecsmax = 86400 where ID = 2577418;
-- Baron Perenolde should drop the following item IDs from a new loottable with equal drop chances totalling to 100%: 61577,61578,61579.
REPLACE INTO reference_loot_template VALUES
(30560, 61577, 0, 1, 1, 1, 0),
(30560, 61578, 0, 1, 1, 1, 0),
(30560, 61579, 0, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(61550, 30560, 100, 0, -30560, 1, 0);

-- Maltimor's Prototype should have a scale of 1.3, attack 65% slower.
update creature_template set scale = 1.3, base_attack_time = 2100, ranged_attack_time = 2000 where entry = 61551;
-- NPC GUID 2577420 should have a respawn timer between 24-48 hours.
update creature set spawntimesecsmin = 86400, spawntimesecsmax = 172800 where ID = 2577420;
-- Maltimor's Prototype should drop the following item IDs from a new loottable with the listed drop chances: 61572 - 20%, 61573 - 40%, 61574 - 40%.
REPLACE INTO reference_loot_template VALUES
(30561, 61572, 20, 1, 1, 1, 0),
(30561, 61573, 40, 1, 1, 1, 0),
(30561, 61574, 40, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(61551, 30561, 100, 0, -30561, 1, 0);

-- Bonecruncher should have a scale of 1.4, attack 50% slower.
update creature_template set scale = 1.4, base_attack_time = 2000, ranged_attack_time = 2000 where entry = 61555;
-- NPC GUID 2577425 should have a respawn timer between 12-24 hours.
update creature set spawntimesecsmin = 43200, spawntimesecsmax = 86400 where ID = 2577425;
-- Bonecruncher should drop the following item IDs from a new loottable with equal drop chances totalling to 100%: 61583,61584,61585.
REPLACE INTO reference_loot_template VALUES
(30562, 61583, 0, 1, 1, 1, 0),
(30562, 61584, 0, 1, 1, 1, 0),
(30562, 61585, 0, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(61555, 30562, 100, 0, -30562, 1, 0);

-- Widow of the Woods should have a scale of 1.2, should do 25% less damage.
update creature_template set scale = 1.2, dmg_min = 172, dmg_max = 221 where entry = 61553;
-- NPC GUID 2577427 should have a respawn timer between 24-48 hours.
update creature set spawntimesecsmin = 86400, spawntimesecsmax = 172800 where ID = 2577427;
-- Widow of the Woods should drop the following item IDs from a new loottable with the listed drop chances: 61589 - 20%, 61576 - 40%, 61575 - 40%.
REPLACE INTO reference_loot_template VALUES
(30563, 61589, 20, 1, 1, 1, 0),
(30563, 61576, 40, 1, 1, 1, 0),
(30563, 61575, 40, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(61553, 30563, 100, 0, -30563, 1, 0);

-- Dawnhowl should have a scale of 1.2, should deal 25% less damage.
update creature_template set scale = 1.2, dmg_min = 270, dmg_max = 348 where entry = 61554;
-- NPC GUID 2577430 should have a respawn timer between 12-24 hours.
update creature set spawntimesecsmin = 43200, spawntimesecsmax = 86400 where ID = 2577430;
-- Dawnhowl should drop the following item IDs from a new loottable with equal drop chances totalling to 100%: 61580, 61581, 61582.
REPLACE INTO reference_loot_template VALUES
(30564, 61580, 0, 1, 1, 1, 0),
(30564, 61581, 0, 1, 1, 1, 0),
(30564, 61582, 0, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(61554, 30564, 100, 0, -30564, 1, 0);

-- Duskskitterer should have a scale of 1.2, should deal 25% less damage.
update creature_template set scale = 1.2, dmg_min = 180, dmg_max = 278 where entry = 61552;
-- NPC GUID 2577437 should have a respawn timer between 12-24 hours.
update creature set spawntimesecsmin = 43200, spawntimesecsmax = 86400 where ID = 2577437;
-- Duskskitterer should drop the following item IDs from a new loottable with equal drop chances totalling to 100%: 61599, 61600, 61601.
REPLACE INTO reference_loot_template VALUES
(30565, 61599, 0, 1, 1, 1, 0),
(30565, 61600, 0, 1, 1, 1, 0),
(30565, 61601, 0, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(61552, 30565, 100, 0, -30565, 1, 0);

-- The following NPC IDs should drop the listed item IDs from a new loottable with 0.01% drop chance for each item:
-- 60596, 60597, 60598, 60599, 60601, 60602, 60603, 60604.
-- The Item IDs: 61591, 61590, 61592, 61593, 61594, 61595, 61596, 61563.
REPLACE INTO reference_loot_template VALUES
(30566, 61591, 0, 1, 1, 1, 0),
(30566, 61590, 0, 1, 1, 1, 0),
(30566, 61592, 0, 1, 1, 1, 0),
(30566, 61593, 0, 1, 1, 1, 0),
(30566, 61594, 0, 1, 1, 1, 0),
(30566, 61595, 0, 1, 1, 1, 0),
(30566, 61596, 0, 1, 1, 1, 0),
(30566, 61563, 0, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(60596, 30566, 0.01, 0, -30566, 1, 0),
(60597, 30566, 0.01, 0, -30566, 1, 0),
(60598, 30566, 0.01, 0, -30566, 1, 0),
(60599, 30566, 0.01, 0, -30566, 1, 0),
(60601, 30566, 0.01, 0, -30566, 1, 0),
(60602, 30566, 0.01, 0, -30566, 1, 0),
(60603, 30566, 0.01, 0, -30566, 1, 0),
(60604, 30566, 0.01, 0, -30566, 1, 0);

-- The following NPC IDs should drop the listed item IDs from a new loottable with 0.01% drop chance for each item:
-- 65100, 65101, 65102, 65103, 61317.
-- The following NPC IDs should drop the listed item IDs from a new loottable with 0.025% drop chance for each item:
-- 61318, 65105.
-- The following NPC IDs should drop the listed item IDs from a new loottable with 0.005% drop chance for each item:
-- 50106, 65110, 65111, 65112.
-- The Item IDs: 61564, 61565, 61566, 61567, 61568, 61569, 61570, 61571.
REPLACE INTO reference_loot_template VALUES
(30567, 61564, 0, 1, 1, 1, 0),
(30567, 61565, 0, 1, 1, 1, 0),
(30567, 61566, 0, 1, 1, 1, 0),
(30567, 61567, 0, 1, 1, 1, 0),
(30567, 61568, 0, 1, 1, 1, 0),
(30567, 61569, 0, 1, 1, 1, 0),
(30567, 61570, 0, 1, 1, 1, 0),
(30567, 61571, 0, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(65100, 30567, 0.01, 0, -30567, 1, 0),
(65101, 30567, 0.01, 0, -30567, 1, 0),
(65102, 30567, 0.01, 0, -30567, 1, 0),
(65103, 30567, 0.01, 0, -30567, 1, 0),
(61317, 30567, 0.01, 0, -30567, 1, 0),
(61318, 30567, 0.025, 0, -30567, 1, 0),
(65105, 30567, 0.025, 0, -30567, 1, 0),
(50106, 30567, 0.005, 0, -30567, 1, 0),
(65110, 30567, 0.005, 0, -30567, 1, 0),
(65111, 30567, 0.005, 0, -30567, 1, 0),
(65112, 30567, 0.005, 0, -30567, 1, 0);

-- The following NPC IDs should drop the listed item IDs from a new loottable with 0.01% drop chance for each item:
-- 65100, 65101, 65102, 65103, 61317.
-- The following NPC IDs should drop the listed item IDs from a new loottable with 0.025% drop chance for each item:
-- 61318, 65105.
-- The following NPC IDs should drop the listed item IDs from a new loottable with 0.005% drop chance for each item:
-- 50106, 65110, 65111, 65112.
-- The Item IDs: 61564, 61565, 61566, 61567, 61568, 61569, 61570, 61571.
REPLACE INTO reference_loot_template VALUES
(30568, 61564, 0, 1, 1, 1, 0),
(30568, 61565, 0, 1, 1, 1, 0),
(30568, 61566, 0, 1, 1, 1, 0),
(30568, 61567, 0, 1, 1, 1, 0),
(30568, 61568, 0, 1, 1, 1, 0),
(30568, 61569, 0, 1, 1, 1, 0),
(30568, 61570, 0, 1, 1, 1, 0),
(30568, 61571, 0, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(65100, 30568, 0.01, 0, -30568, 1, 0),
(65101, 30568, 0.01, 0, -30568, 1, 0),
(65102, 30568, 0.01, 0, -30568, 1, 0),
(65103, 30568, 0.01, 0, -30568, 1, 0),
(61317, 30568, 0.01, 0, -30568, 1, 0),
(61318, 30568, 0.025, 0, -30568, 1, 0),
(65105, 30568, 0.025, 0, -30568, 1, 0),
(50106, 30568, 0.005, 0, -30568, 1, 0),
(65110, 30568, 0.005, 0, -30568, 1, 0),
(65111, 30568, 0.005, 0, -30568, 1, 0),
(65112, 30568, 0.005, 0, -30568, 1, 0);

-- Remove skull/boss status from the following mobs and change their level to level 62 and change respawn timer to 7 days: 65113, 65114, 65116, 65117, 65118, 65119, 65121, 65122, 65124, 65125, 61316.
update creature_template set rank = 0, level_min = 62, level_max = 62 where entry in (65113, 65114, 65116, 65117, 65118, 65119, 65121, 65122, 65124, 65125, 61316);
update creature set spawntimesecsmin = 604800, spawntimesecsmax = 604800 where ID in (65113, 65114, 65116, 65117, 65118, 65119, 65121, 65122, 65124, 65125, 61316);

-- The following NPC IDs should drop the listed item IDs from the listed loottable groups with 0.01% drop chance for each item:
-- Group 1: 92116.
REPLACE INTO creature_loot_template VALUES
(92116, 30569, 0.01, 1, -30569, 1, 0),
-- Group 6: 92115.
(92115, 30569, 0.01, 1, -30569, 1, 0),
-- Group 8: 92114.
(92114, 30569, 0.01, 1, -30569, 1, 0),
-- Group 9: 92104, 92103, 92102, 92100, 92101.
(92104, 30569, 0.01, 1, -30569, 1, 0),
(92103, 30569, 0.01, 1, -30569, 1, 0),
(92102, 30569, 0.01, 1, -30569, 1, 0),
(92100, 30569, 0.01, 1, -30569, 1, 0),
(92101, 30569, 0.01, 1, -30569, 1, 0),
-- The following NPC IDs should drop the listed item IDs from the listed loottable groups with 0.015% drop chance for each item:
-- Group 11: 92117.
(92117, 30569, 0.015, 1, -30569, 1, 0);
-- List of Item IDs: 61552, 61553, 61554, 61555.
REPLACE INTO reference_loot_template VALUES
(30569, 61552, 0, 1, 1, 1, 0),
(30569, 61553, 0, 1, 1, 1, 0),
(30569, 61554, 0, 1, 1, 1, 0),
(30569, 61555, 0, 1, 1, 1, 0);

-- NPC ID 92101 and 92101's loottable group 9 items shouldn't be classified as quest, the blue items should have a 0.01% drop chance and green items should have a 0.5% drop chance.
delete from creature_loot_template where entry = 92101 and item in (83200,83201,83202,83203,83204,83205,83206,83207);
REPLACE INTO creature_loot_template VALUES (92101, 83200, 0.01, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92101, 83201, 0.5, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92101, 83202, 0.5, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92101, 83203, 0.01, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92101, 83204, 0.5, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92101, 83205, 0.5, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92101, 83206, 0.01, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92101, 83207, 0.01, 1, 1, 1, 0);

-- Copy NPC ID 92117's loot for NPC ID 92127.
delete from creature_loot_template where entry = 92127;
REPLACE INTO creature_loot_template VALUES (92127, 765, 2.6, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 785, 2.7, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 857, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 929, 1.0317, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 954, 0.64, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 1205, 2.395, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 1206, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 1210, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 1478, 0.36, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 1529, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 1705, 0.1105, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 1712, 0.32, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 2409, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 2447, 2.78, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 2449, 2.62, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 2450, 2.76, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 2452, 1.6949, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 2453, 2.5, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 2771, 0.1, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 2836, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 3012, 0.46, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 3356, 2.78, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 3357, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 3385, 0.7001, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 3394, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 3608, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 3611, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 3612, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 3820, 0.16, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 4293, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 4297, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 4299, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 4345, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 4347, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 4348, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 4349, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 4350, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 4410, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 4412, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 4606, 4.0899, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 4632, 0.0368, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 4633, 0.0737, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 5543, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 5575, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 5576, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 5578, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 5972, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 6044, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 6211, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 6347, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 6375, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 6390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 6454, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 7360, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 10316, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 10424, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 11098, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 11165, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 14157, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 15313, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 16645, 3, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 16646, 2, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 16647, 1.9, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 16648, 3.4, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 16649, 3, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 16650, 1.8, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 16651, 3.4, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 16652, 1.6, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 16653, 4, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 16654, 2.9, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 16655, 3, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 16656, 1.4, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 16747, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 30008, 2.5, 0, -30008, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 30010, 0.01, 0, -30010, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 30011, 0.5, 0, -30011, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 30012, 0.01, 0, -30012, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 30013, 0.05, 0, -30013, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 30014, 0.01, 0, -30014, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 30015, 0.5, 0, -30015, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 30016, 0.01, 0, -30016, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 30040, 2.5, 0, -30040, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 30054, 0.5, 0, -30054, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 30569, 0.015, 1, -30569, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 70021, -100, 6, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 83200, 0.015, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 83203, 0.015, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 83204, 0.55, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 83205, 0.55, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 83206, 0.015, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (92127, 83207, 0.015, 1, 1, 1, 0);

-- Ruk'thok items.
replace into item_template values
 ('61613', '4', '2', 'Burnt Explorer\'s Tunic', '', '27518', '2', '0', '1', '75480', '18870', '5', '-1', '-1', '58',
 '53', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '13', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '150', '0', '18', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '0', '1', '0', '0', '85', '0', '0', '0', '0', '8', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('61614', '4', '1', 'Ruk\'thok Slippers', '', '28151', '2', '0', '1', '46056', '11514', '8', '-1', '-1', '58',
 '53', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '13', '7', '11',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '51', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '0', '1', '0', '0', '35', '0', '0', '0', '0', '8', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('61615', '2', '19', 'Burning Torch', 'It\'s hot!', '28631', '2', '0', '1', '117096', '29274', '15', '-1', '-1', '58',
 '53', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1600', '100',
 '0', '57', '105', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9399', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '2', '0', '0', '0', '55', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);
-- Ruk'thok the Pyromancer should drop these items from a new loottable with equal drop chances. 
REPLACE INTO reference_loot_template VALUES
(30570, 61613, 0, 1, 1, 1, 0),
(30570, 61614, 0, 1, 1, 1, 0),
(30570, 61615, 0, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(61517, 30570, 100, 0, -30570, 1, 0);

-- NPC ID 61499 have same loottable as NPC ID 91756.
REPLACE INTO creature_loot_template VALUES (61499, 774, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 818, 0.59, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 856, 0.3509, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 858, 2.4561, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 955, 0.43, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 1179, 2.1053, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 1180, 0.11, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 1181, 1.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 1210, 0.18, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 2085, 31.9298, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 2455, 0.7018, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 2598, 0.36, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 2698, 0.18, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 2881, 0.36, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 2971, 0.7018, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 2972, 0.18, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 2975, 0.54, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 3013, 0.18, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 3207, 0.11, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 3643, 0.36, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 4605, 7.0175, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 4683, 0.7018, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 4689, 0.3509, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 6344, 0.11, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 6555, 0.54, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 9762, 0.05, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 30018, 2.5, 0, -30018, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 30020, 0.5, 0, -30020, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 30021, 0.5, 0, -30021, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 30024, 0.5, 0, -30024, 1, 0);
REPLACE INTO creature_loot_template VALUES (61499, 30038, 0.5, 0, -30038, 1, 0);
-- NPC ID 61499 should drop the following item IDs with equal drop chance totalling to 100% from a new loottable: 61500, 61501.
REPLACE INTO reference_loot_template VALUES
(30571, 61500, 0, 1, 1, 1, 0),
(30571, 61501, 0, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(61499, 30571, 100, 0, -30571, 1, 0);

-- NPC ID 61504 should drop the following item IDs with equal drop chance totalling to 100% from a new loottable:
-- 61502
-- 61503
REPLACE INTO reference_loot_template VALUES
(30572, 61502, 0, 1, 1, 1, 0),
(30572, 61503, 0, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(61504, 30572, 100, 0, -30572, 1, 0);

-- NPC ID 61503 should drop the following item IDs with equal drop chance totalling to 100% from a new loottable:
-- 61504
-- 61505
REPLACE INTO reference_loot_template VALUES
(30573, 61504, 0, 1, 1, 1, 0),
(30573, 61505, 0, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(61503, 30573, 100, 0, -30573, 1, 0);

-- NPC ID 61502 should drop the following item IDs with the listed drop chance from a new loottable:
-- 61506 - 40%
-- 61507 - 40%
-- 61508 - 20%
REPLACE INTO reference_loot_template VALUES
(30574, 61506, 40, 1, 1, 1, 0),
(30574, 61507, 40, 1, 1, 1, 0),
(30574, 61508, 20, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(61502, 30574, 100, 0, -30574, 1, 0);

-- NPC ID 61501 should drop the following item IDs with the listed drop chance from a new loottable:
-- 61509 - 40%
-- 61510 - 40%
-- 61511 - 20%
REPLACE INTO reference_loot_template VALUES
(30575, 61509, 40, 1, 1, 1, 0),
(30575, 61510, 40, 1, 1, 1, 0),
(30575, 61511, 20, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(61501, 30575, 100, 0, -30575, 1, 0);

-- NPC ID 61500 should drop the following item IDs with the listed drop chance from a new loottable:
-- 61518 - 40%
-- 61519 - 40%
-- 61520 - 20%
REPLACE INTO reference_loot_template VALUES
(30576, 61518, 40, 1, 1, 1, 0),
(30576, 61519, 40, 1, 1, 1, 0),
(30576, 61520, 20, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(61500, 30576, 100, 0, -30576, 1, 0);

-- NPC ID 61518 should drop the following item IDs with the listed drop chance from a new loottable:
-- 61529 - 40%
-- 61530 - 40%
-- 61528 - 20%
REPLACE INTO reference_loot_template VALUES
(30577, 61529, 40, 1, 1, 1, 0),
(30577, 61530, 40, 1, 1, 1, 0),
(30577, 61528, 20, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(61518, 30577, 100, 0, -30577, 1, 0);

-- NPC ID 91839 should drop the following item IDs with the listed drop chance from two new loottables:
-- First Loottable (All should have equal drop chances equaling to 100%)
-- 61531 
-- 61532
-- 61534
-- Second Loottable:
-- 61533 - 2%
REPLACE INTO reference_loot_template VALUES
(30578, 61531, 0, 1, 1, 1, 0),
(30578, 61532, 0, 1, 1, 1, 0),
(30578, 61534, 0, 1, 1, 1, 0),
(30578, 61533, 2, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(91839, 30578, 100, 0, -30578, 1, 0);

-- NPC ID 61515 should have a respawn timer between 24-48 hours.
update creature set spawntimesecsmin = 86400, spawntimesecsmax = 172800 where ID = 61515;
-- NPC ID 61515 should drop the following item IDs with the listed drop chance from a new loottable:
-- 61535 - 40%
-- 61536 - 40%
-- 61537 - 20%
REPLACE INTO reference_loot_template VALUES
(30579, 61535, 40, 1, 1, 1, 0),
(30579, 61536, 40, 1, 1, 1, 0),
(30579, 61537, 20, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(61515, 30579, 100, 0, -30579, 1, 0);

-- NPC ID 61516 should have a respawn timer between 12-24 hours.
update creature set spawntimesecsmin = 43200, spawntimesecsmax = 86400 where ID = 61516;
-- NPC ID 61516 should drop the following item IDs with equal drop chance totalling to 100% from a new loottable:
-- 61538
-- 61539
-- 61540
REPLACE INTO reference_loot_template VALUES
(30580, 61538, 0, 1, 1, 1, 0),
(30580, 61539, 0, 1, 1, 1, 0),
(30580, 61540, 0, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(61516, 30580, 100, 0, -30580, 1, 0);

-- NPC ID 61516 should drop the following item IDs with with the listed drop chances.
-- 61545 - 10%
-- 61546 - 40%
-- 61547 - 10%
-- 61548 - 40%
REPLACE INTO reference_loot_template VALUES
(30581, 61545, 10, 1, 1, 1, 0),
(30581, 61546, 40, 1, 1, 1, 0),
(30581, 61547, 10, 1, 1, 1, 0),
(30581, 61548, 40, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(61516, 30581, 100, 0, -30581, 1, 0);

-- NPC ID 92163 should drop the following item IDs with the listed drop chance from two new loottables:
-- First Loottable (All should have equal drop chances equaling to 100%)
-- 61542
-- 61543
-- 61544
-- Second Loottable:
-- 61541 - 2%
REPLACE INTO reference_loot_template VALUES
(30582, 61542, 0, 1, 1, 1, 0),
(30582, 61543, 0, 1, 1, 1, 0),
(30582, 61544, 0, 1, 1, 1, 0),
(30582, 61541, 2, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(92163, 30582, 100, 0, -30582, 1, 0);

-- NPC ID 61488 should drop the following item IDs with with the listed drop chances.
-- 61549 - 20%
-- 61550 - 40%
-- 61551 - 40%
REPLACE INTO reference_loot_template VALUES
(30583, 61549, 20, 1, 1, 1, 0),
(30583, 61550, 40, 1, 1, 1, 0),
(30583, 61551, 40, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(61488, 30583, 100, 0, -30583, 1, 0);

-- New NPC
-- Name: Firstborn of Arugal
-- DisplayID: 19126
-- Creature Type: Humanoid
-- Should be a rare elite.
-- Should have a scale of 1.55
-- Should have 100 resistances to all schools of magic, 200 resistance to shadow.
-- Has the same skinning loottable as NPC ID 9622, Normal loottable of NPC ID 8282
-- Should have same armor, damage values, health and faction as NPC ID 2931, increase damage, armor and health by 25%
-- Casts 7373 on its target first after 2 sec then every 15 seconds, casts 8715 on its target every 14-18 seconds and casts 15608 on its target every 10-12 seconds.
REPLACE INTO creature_template VALUES
(61558, 19126, 0, 0, 0, 0, 'Firstborn of Arugal', NULL, 0, 55, 55, 9803, 9803, 0, 0, 4089, 14, 0, 1, 1.14286, 1.55, 20, 5, 0, 2, 1, 419, 540, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 58.688, 80.696, 100, 7, 0, 61558, 0, 9622, 100, 100, 100, 100, 200, 100, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO creature_loot_template VALUES (61558, 3858, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 2772, 0.14, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 3927, 0.14, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 4419, 0.14, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 4426, 0.14, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 10620, 0.14, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 12689, 0.14, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 15731, 0.14, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 4599, 0.28, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 7909, 0.28, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 7910, 0.28, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 3827, 0.46, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 4305, 0.46, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 4425, 0.46, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 4500, 0.46, 0, 1, 1, 109);
REPLACE INTO creature_loot_template VALUES (61558, 8028, 0.46, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 20400, 0.46, 0, 1, 1, 108);
REPLACE INTO creature_loot_template VALUES (61558, 4601, 0.7299, 0, 2, 2, 0);
REPLACE INTO creature_loot_template VALUES (61558, 4422, 0.94, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 30045, 1, 0, -30045, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 30046, 1, 0, -30046, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 5758, 1.4599, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 6149, 1.4599, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 1645, 3.6496, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (61558, 3928, 3.74, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 24024, 5, 0, -24024, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 30048, 5, 0, -30048, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 4602, 5.8394, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 4338, 27.0073, 0, 1, 4, 0);
REPLACE INTO creature_loot_template VALUES (61558, 51764, 50, 6, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 51765, 50, 6, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (61558, 30043, 100, 0, -30043, 1, 0);
-- Add the following items to a new loottable with the listed drop chances in addition to the copied loottable:
-- 61588 - 20%
-- 61587 - 40%
-- 61586 - 40% 
REPLACE INTO reference_loot_template VALUES
(30584, 61588, 20, 1, 1, 1, 0),
(30584, 61587, 40, 1, 1, 1, 0),
(30584, 61586, 40, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(61558, 30584, 100, 0, -30584, 1, 0);

-- Firstborn of Arugal
set @creature_entry = 61558;
set @description = ': Firstborn of Arugal';
set @spell_list_id = 180203;

set @spellid_1 = 7373; -- Hamstring
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 2;
set @delayinitialmax_1 = 2;
set @delayrepeatmin_1 = 15;
set @delayrepeatmax_1 = 15;

set @spellid_2 = 8715; -- Terrifying Howl
set @probability_2 = 100;
set @casttarget_2 = 0;
set @castflags_2 = 0;
set @delayinitialmin_2 = 0;
set @delayinitialmax_2 = 0;
set @delayrepeatmin_2 = 14;
set @delayrepeatmax_2 = 18;

set @spellid_3 = 15608; -- Ravenous Claw
set @probability_3 = 100;
set @casttarget_3 = 1;
set @castflags_3 = 4;
set @delayinitialmin_3 = 4;
set @delayinitialmax_3 = 4;
set @delayrepeatmin_3 = 10;
set @delayrepeatmax_3 = 12;

set @spellid_4 = 0;
set @probability_4 = 0;
set @casttarget_4 = 0;
set @castflags_4 = 0;
set @delayinitialmin_4 = 0;
set @delayinitialmax_4 = 0;
set @delayrepeatmin_4 = 0;
set @delayrepeatmax_4 = 0;

set @spellid_5 = 0;
set @probability_5 = 0;
set @casttarget_5 = 0;
set @castflags_5 = 0;
set @delayinitialmin_5 = 0;
set @delayinitialmax_5 = 0;
set @delayrepeatmin_5 = 0;
set @delayrepeatmax_5 = 0;

set @spellid_6 = 0;
set @probability_6 = 0;
set @casttarget_6 = 0;
set @castflags_6 = 0;
set @delayinitialmin_6 = 0;
set @delayinitialmax_6 = 0;
set @delayrepeatmin_6 = 0;
set @delayrepeatmax_6 = 0;

set @spellid_7 = 0;
set @probability_7 = 0;
set @casttarget_7 = 0;
set @castflags_7 = 0;
set @delayinitialmin_7 = 0;
set @delayinitialmax_7 = 0;
set @delayrepeatmin_7 = 0;
set @delayrepeatmax_7 = 0;

set @spellid_8 = 0;
set @probability_8 = 0;
set @casttarget_8 = 0;
set @castflags_8 = 0;
set @delayinitialmin_8 = 0;
set @delayinitialmax_8 = 0;
set @delayrepeatmin_8 = 0;
set @delayrepeatmax_8 = 0;

-- Do not touch this part:
update creature_template set spell_list_id = @spell_list_id, ai_name = '', script_name = '', spell_id1 = 0, spell_id2 = 0, spell_id3 = 0 
where entry = @creature_entry;
replace into creature_spells (entry, name, 
spellid_1, probability_1, casttarget_1, castflags_1, delayinitialmin_1, delayinitialmax_1, delayrepeatmin_1, delayrepeatmax_1, 
spellid_2, probability_2, casttarget_2, castflags_2, delayinitialmin_2, delayinitialmax_2, delayrepeatmin_2, delayrepeatmax_2, 
spellid_3, probability_3, casttarget_3, castflags_3, delayinitialmin_3, delayinitialmax_3, delayrepeatmin_3, delayrepeatmax_3, 
spellid_4, probability_4, casttarget_4, castflags_4, delayinitialmin_4, delayinitialmax_4, delayrepeatmin_4, delayrepeatmax_4, 
spellid_5, probability_5, casttarget_5, castflags_5, delayinitialmin_5, delayinitialmax_5, delayrepeatmin_5, delayrepeatmax_5, 
spellid_6, probability_6, casttarget_6, castflags_6, delayinitialmin_6, delayinitialmax_6, delayrepeatmin_6, delayrepeatmax_6, 
spellid_7, probability_7, casttarget_7, castflags_7, delayinitialmin_7, delayinitialmax_7, delayrepeatmin_7, delayrepeatmax_7, 
spellid_8, probability_8, casttarget_8, castflags_8, delayinitialmin_8, delayinitialmax_8, delayrepeatmin_8, delayrepeatmax_8) 
values (@spell_list_id, @description,
@spellid_1, @probability_1, @casttarget_1, @castflags_1, @delayinitialmin_1, @delayinitialmax_1, @delayrepeatmin_1, @delayrepeatmax_1,
@spellid_2, @probability_2, @casttarget_2, @castflags_2, @delayinitialmin_2, @delayinitialmax_2, @delayrepeatmin_2, @delayrepeatmax_2,
@spellid_3, @probability_3, @casttarget_3, @castflags_3, @delayinitialmin_3, @delayinitialmax_3, @delayrepeatmin_3, @delayrepeatmax_3,
@spellid_4, @probability_4, @casttarget_4, @castflags_4, @delayinitialmin_4, @delayinitialmax_4, @delayrepeatmin_4, @delayrepeatmax_4,
@spellid_5, @probability_5, @casttarget_5, @castflags_5, @delayinitialmin_5, @delayinitialmax_5, @delayrepeatmin_5, @delayrepeatmax_5,
@spellid_6, @probability_6, @casttarget_6, @castflags_6, @delayinitialmin_6, @delayinitialmax_6, @delayrepeatmin_6, @delayrepeatmax_6,
@spellid_7, @probability_7, @casttarget_7, @castflags_7, @delayinitialmin_7, @delayinitialmax_7, @delayrepeatmin_7, @delayrepeatmax_7,
@spellid_8, @probability_8, @casttarget_8, @castflags_8, @delayinitialmin_8, @delayinitialmax_8, @delayrepeatmin_8, @delayrepeatmax_8);

-- Item ID 61549 needs to have 16 slots, its a quiver.
update item_template set class = 11, container_slots = 16, inventory_type = 18 where entry = 61549;
-- Warlock tier 1 and tier 2 adjustments, also fixing display/projectile accessory bugs.
-- fix overcharged belt and projectile trinket/ring
update item_template set display_id = 30340 where entry = 61568; -- Overcharged Belt
update item_template set display_id = 30340 where entry = 61568; -- Overcharged Belt
update item_template set class = 3 where entry = 61531; -- Glowing Black Pearl
update item_template set class = 3 where entry = 61533; -- Ring of the Forgotten Hero
-- Warlock Tier Set Reworks
-- Tier 1
update item_template set stat_value1 = 21, stat_type2 = 7, stat_value2 = 22, stat_value3 = 0, stat_value4 = 0, spellid_1 = 23727, spellid_2 = 18049 where entry = 16808; -- Felheart Horns
update item_template set stat_value1 = 12, stat_type2 = 7, stat_value2 = 21, stat_value3 = 0, stat_value4 = 0, spellid_1 = 23727, spellid_2 = 9345 where entry = 16807; -- Felheart Shoulder Pads
update item_template set stat_value1 = 20, stat_type2 = 7, stat_value2 = 25, stat_value3 = 0, stat_value4 = 0, spellid_1 = 23727, spellid_2 = 24595 where entry = 16809; -- Felheart Robes
update item_template set stat_value1 = 15, stat_type2 = 7, stat_value2 = 18, stat_value3 = 0, stat_value4 = 0, spellid_1 = 18384, spellid_2 = 9343 where entry = 16805; -- Felheart Gloves
update item_template set stat_value1 = 15, stat_type2 = 7, stat_value2 = 16, stat_value3 = 0, stat_value4 = 0, spellid_1 = 18384, spellid_2 = 14799 where entry = 16806; -- Felheart Belt
update item_template set stat_value1 = 12, stat_type2 = 7, stat_value2 = 18, stat_value3 = 0, stat_value4 = 0, spellid_1 = 9345, spellid_2 = 0 where entry = 16804; -- Felheart Bracers
update item_template set stat_value1 = 11, stat_type2 = 7, stat_value2 = 21, stat_value3 = 0, stat_value4 = 0, spellid_1 = 23727, spellid_2 = 9346 where entry = 16803; -- Felheart Slippers
update item_template set stat_value1 = 19, stat_type2 = 7, stat_value2 = 20, stat_value3 = 0, stat_value4 = 0, spellid_1 = 14798, spellid_2 = 0 where entry = 16810; -- Felheart Pants
-- Tier 2
update item_template set stat_value1 = 16, stat_type2 = 7, stat_value2 = 26, stat_value3 = 0, stat_value4 = 0, spellid_1 = 18384, spellid_2 = 18050 where entry = 16929; -- Nemesis Skullcap
update item_template set stat_value1 = 14, stat_type2 = 7, stat_value2 = 20, stat_value3 = 0, stat_value4 = 0, spellid_1 = 18384, spellid_2 = 14047 where entry = 16932; -- Nemesis Spaulders
update item_template set stat_value1 = 16, stat_type2 = 7, stat_value2 = 26, stat_value3 = 0, stat_value4 = 0, spellid_1 = 18384, spellid_2 = 14055 where entry = 16931; -- Nemesis Robes
update item_template set stat_value1 = 12, stat_type2 = 7, stat_value2 = 18, stat_value3 = 0, stat_value4 = 0, spellid_1 = 18384, spellid_2 = 14127 where entry = 16933; -- Nemesis Belt
update item_template set stat_value1 = 13, stat_type2 = 7, stat_value2 = 21, stat_value3 = 0, stat_value4 = 0, spellid_1 = 9345, spellid_2 = 0 where entry = 16934; -- Nemesis Bracers
update item_template set stat_value1 = 14, stat_type2 = 7, stat_value2 = 20, stat_value3 = 0, stat_value4 = 0, spellid_1 = 23727, spellid_2 = 15715 where entry = 16927; -- Nemesis Boots
update item_template set stat_value1 = 16, stat_type2 = 7, stat_value2 = 23, stat_value3 = 0, stat_value4 = 0, spellid_1 = 18056, spellid_2 = 0 where entry = 16930; -- Nemesis Leggings
	
-- Item Le Fishe Au Chocolat is currently a conjured item, remove this tag, change display ID to 67764.
update item_template set display_id = 67764, flags = 0 where entry = 84040; 
-- NPC Maria Galwest (Entry 61549) add subname <Gryphon Master>.
update creature_template set subname = 'Gryphon Master' where entry = 61549;
-- Create gobject called 'Grave of Franklin Blackheart' which uses the model Woodcross01, this object should have gossip flags with the following gossip text : "A hastily constructed grave. The following words are etched into the wood in crude handwriting.$B$B<Franklin Blackheart. Rest easy brother.>
REPLACE INTO gameobject_template VALUES
(2020035, 2, 22659, 'Grave of Franklin Blackheart', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_grave_of_franklin_blackheart');

replace into broadcast_text (entry, Male_Text) values (30126, 'A hastily constructed grave. The following words are etched into the wood in crude handwriting.$B$B<Franklin Blackheart. Rest easy brother.');
replace into npc_text (ID, BroadcastTextID0) values (30126, 30126);
