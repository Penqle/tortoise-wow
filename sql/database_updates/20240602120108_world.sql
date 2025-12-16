-- 4223:  Not (Target Has 410 Points In Skill 356)
UPDATE `conditions` SET `type`=7, `value1`=356, `value2`=410 WHERE `condition_entry`= 4223;
update fishing_loot_template set condition_id = 4223 where item = 56087 and entry = 5121;
update fishing_loot_template set condition_id = 4223 where item = 56086 and entry = 5024;
-- Creature Filius Crosner change display ID to 20642.
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES (20642, 0, 0, 0, 0);
update creature_template set display_id1 = 20642 where entry = 62000;