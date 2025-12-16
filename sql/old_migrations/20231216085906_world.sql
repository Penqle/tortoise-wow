-- Remove obscene Cenarion Cricle rep from a repeatable quest, undermining Ahn'Qiraj farming
UPDATE quest_template SET RewRepFaction1 = 0, RewRepValue1 = 0, RewXP = 0, RewMoneyMaxLevel = 0 WHERE entry = 50318;

-- Several item fixes from Dragunovi
update item_template set bonding = 1 where entry = 51043; -- void linked satchel
update item_template set inventory_type = 15 where entry = 83215; -- Blackflame Wand
update item_template set sheath = 2 where entry = 84503; -- Nature's Gift
update item_template set item_level = 27, disenchant_id = 24 where entry = 60112; -- Evermoon Staff

-- Fix incorrect Winter Veil questgiver
DELETE FROM creature_questrelation WHERE id = 50653 AND quest = 40784;
REPLACE INTO creature_questrelation (id, quest) VALUES (61189, 40784);

-- Fix incorrect "choose reward" behavior
UPDATE quest_template SET RewItemId1 = 0, RewChoiceItemCount1 = 0, RewItemId1 = 61623, RewItemCount1 = 1 WHERE entry = 40976;
UPDATE quest_template SET RewItemId1 = 0, RewChoiceItemCount1 = 0, RewItemId1 = 61386, RewItemCount1 = 1 WHERE entry = 40857;
