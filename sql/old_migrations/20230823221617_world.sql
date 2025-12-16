-- Foul Effigy should only drop for Alliance.
UPDATE `creature_loot_template` SET `condition_id`=3 WHERE `item`=61153;
