-- Replace Spell ID 25515 with Spell ID 56 on Creature _Template IDs 61074 and 61080.
update creature_spells set spellid_1 = 56 where entry in (180075,180077);
-- Add Crocolisk Meat to https://database.turtle-wow.org/?npc=91962 loot table.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91962, 2924, 30.402, 0, 1, 1, 0);
-- Modify displayID for npc with entryID: 61653 to 18752.
update creature_template set display_id1 = 18752 where entry = 61653;
-- Modify displaID for npc with entryID: 61648 to 18640.
update creature_template set display_id1 = 18640 where entry = 61648;