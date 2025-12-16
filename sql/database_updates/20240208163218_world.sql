DELETE FROM gameobject_template WHERE name LIKE '%teslinah%';
DELETE FROM gameobject WHERE id IN (3000250, 3000251, 3000252, 3000253, 3000254, 3000255, 3000256, 3000257, 3000258, 3000259, 3000260, 3000261, 3000262, 3000263, 3000264, 3000265, 3000266, 3000267, 3000268, 3000269);

-- Fix Leper Leadership rewards
UPDATE quest_template SET
RewChoiceItemId1 = 0,
RewChoiceItemId2 = 0,
RewChoiceItemId3 = 0,
RewChoiceItemId4 = 0,
RewChoiceItemId5 = 0,
RewChoiceItemId6 = 0,
RewChoiceItemCount1 = 0,
RewChoiceItemCount2 = 0,
RewChoiceItemCount3 = 0,
RewChoiceItemCount4 = 0,
RewChoiceItemCount5 = 0,
RewChoiceItemCount6 = 0
WHERE entry = 40857;

-- Fixed Zebra names inconcistencies:

UPDATE `spell_template` SET `name` = 'Zebra' WHERE `entry` = 46446;
UPDATE `item_template` SET `name` = 'Zebra' WHERE `entry` = 50426;

-- Cleaning Cloth:

UPDATE `skill_line_ability` SET `class_mask` = 0 WHERE `id` = 30033;

-- Remove Goblin barber:

UPDATE `creature_template` SET `subname` = 'Barber\'s Apprentice', `npc_flags` = 0, `script_name` = '' WHERE `entry` = 81034;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/5659

UPDATE `gameobject_loot_template` SET `item` = 41058 WHERE `entry` = 2020069 AND `item` = 61667;