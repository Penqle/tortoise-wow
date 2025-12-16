-- Fix wrong disenchant loot for many custom high level blues.
UPDATE `item_template` SET `disenchant_id`=47 WHERE `quality`=3 && `item_level` IN (51, 52, 53, 54, 55) && `disenchant_id` IN (45, 46);
UPDATE `item_template` SET `disenchant_id`=48 WHERE `quality`=3 && `item_level` IN (56, 57, 58, 59) && `disenchant_id` IN (46, 47);
UPDATE `item_template` SET `disenchant_id`=49 WHERE `quality`=3 && `item_level` > 59 && `disenchant_id` IN (47, 48);
