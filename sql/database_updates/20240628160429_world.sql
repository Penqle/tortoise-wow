-- Quest The Fall in Demon Canyon incorrect zone id.
UPDATE `quest_template` SET `ZoneOrSort` = 331 WHERE `entry` = 40843;
-- Increase item drop rate and fix loottables:
-- Remove all items in Loot Group 2 and 3 for NPC ID 65111, 50106, 65112, 65110, 61318, 65103.
delete from creature_loot_template where item = 30568 and entry in (65111, 50106, 65112, 65110, 61318, 65103);
delete from creature_loot_template where item = 30585 and entry in (65111, 50106, 65112, 65110, 61318, 65103);
-- Remove all items in Loot Group 17 and 18 for NPC ID 61317, 65100, 65105, 65101, 65102.
delete from creature_loot_template where item = 30568 and entry in (61317, 65100, 65105, 65101, 65102);
delete from creature_loot_template where item = 30585 and entry in (61317, 65100, 65105, 65101, 65102);
-- Remove Item ID 61596 from NPC ID 61379, 60596, 60597, 60598, 60599, 60601, 60602, 60603, 60604's loottables.
delete from creature_loot_template where item = 61596 and entry in (61379, 60596, 60597, 60598, 60599, 60601, 60602, 60603, 60604);
-- Increase the drop chance of all individual items on NPC ID 61318's Loot Group 1 from 0.0031% to 0.4%. 
update creature_loot_template set ChanceOrQuestChance = 0.4 where item = 30567 and entry = 61318;
-- Increase the drop chance of all individual items on NPC ID 65103, 65110, 65112, 65111, 50106's Loot Group 1 from 0.0006% to 0.05%.
update creature_loot_template set ChanceOrQuestChance = 0.05 where item = 30567 and entry in (65103, 65110, 65112, 65111, 50106);
-- Increase the drop chance of all individual items on NPC ID 65105's Loot Group 16 from 0.0031% to 0.4%.
update creature_loot_template set ChanceOrQuestChance = 0.4 where item = 30567 and entry = 65105;
-- Increase the drop chance of all individual items on NPC ID 61317, 65100, 65101, 65102's Loot Group 16 from 0.0013% to 0.2%.
update creature_loot_template set ChanceOrQuestChance = 0.2 where item = 30567 and entry in (61317, 65100, 65101, 65102);
-- Increase the drop chance of Item IDs 60803, 60804, 60805, 60806, 60807, 60808, 60809 for all creatures that drop them from 0.01% to 0.02%.
update creature_loot_template set ChanceOrQuestChance = 0.02 where item in (60803, 60804, 60805, 60806, 60807, 60808, 60809);
-- Increase the drop chance of Item IDs 61563, 61590, 61591, 61592, 61593, 61594, 61595 for all creatures that drop them from 0.0013% to 0.02%.
update creature_loot_template set ChanceOrQuestChance = 0.02 where item in (61563, 61590, 61591, 61592, 61593, 61594, 61595);