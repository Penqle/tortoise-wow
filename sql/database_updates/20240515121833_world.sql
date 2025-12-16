-- The following items Advanced Gemology I starts the incorrect quest and should start the quest 41333.
update item_template set start_quest = 41333 where entry = 56109;
-- The following items Advanced Gemology II starts the incorrect quest and should start the quest 41334.
update item_template set start_quest = 41334 where entry = 56108;
-- The following items Advanced Goldsmithing I starts the incorrect quest and should start the quest 41335.
update item_template set start_quest = 41335 where entry = 56110;
-- The following items Advanced Goldsmithing II starts the incorrect quest and should start the quest 41337.
update item_template set start_quest = 41337 where entry = 56111;
-- Display ID 20611 needs to be enabled.
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20611, 0, 0, 0, 0);