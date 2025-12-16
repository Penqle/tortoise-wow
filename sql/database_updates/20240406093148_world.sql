-- Item "Dust Coin" drops or Aliance only.
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60907, 60894, 60, 0, 1, 1, 30001);
-- Dispplay ids for creatures motsog kegsipper and brutish bouncer have been enabled. 
replace INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES (20615, 0, 0, 0, 0);
replace INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES (20614, 0, 0, 0, 0);