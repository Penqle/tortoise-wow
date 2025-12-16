-- Assign equal chance to Darkmoon Faire Fortune loot, so it always contains something.
UPDATE `item_loot_template` SET `ChanceOrQuestChance`=0 WHERE `entry`=19422;
