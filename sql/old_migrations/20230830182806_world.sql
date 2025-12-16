-- Rename Quest ID 41011 to "The Upper Binding I", quest ID 41011 should be a raid quest.
update quest_template set title = 'The Upper Binding I', type = 62 where entry = 41011;
-- Change the displayID of Item ID 61695 to 26772.
update item_template set display_id = 26772 where entry = 61695;
-- Change the drop chance of Item ID 61695 from NPC 14399 to 40%.
update creature_loot_template set ChanceOrQuestChance = -40 where entry = 14399 and item = 61695;
-- Change display id of 6243 to 20501 and enable serverside.
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20501, 0, 0, 0, 0);
update creature_template set display_id1 = 20501 where entry = 6243;
-- Change display id of 4819, 4820 to 20500 and enable serverside.
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20500, 0, 0, 0, 0);
update creature_template set display_id1 = 20500 where entry in (4819, 4820);
-- Change display id of 4818 to 20502 and enable serverside.
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20502, 0, 0, 0, 0);
update creature_template set display_id1 = 20502 where entry = 4818;