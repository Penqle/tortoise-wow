-- Now in the quest "Whispers of Autumn" you need to choose one of two awards.
update quest_template set RewChoiceItemId1 = 41151, RewChoiceItemId2 = 41152, RewChoiceItemCount1 = 1, RewChoiceItemCount2 = 1, RewItemId1 = 0, RewItemId2 = 0, RewItemCount1 = 0, RewItemCount2 = 0 where entry = 41215;
-- Сopper vein in Durotar (60.1, 61.8) was pulled out of the ground.
update gameobject set position_z = 33.129925 where guid = 12376;
-- Quest item of the task "The Seeker's Demise" is now available to the whole group.
update item_template set flags = 2048 where entry = 70026;
-- The NPC "Twinkie Boomstick" has an updated greeting text for non-hunters.
UPDATE `broadcast_text` SET `male_text` = 'I got nothing for you, kid.' WHERE `entry` = 7656;
-- Solid Chest in the Hillsbrad Foothills (75.0, 41.0) is now available for looting.
update gameobject set position_x = -485.025, position_y = -1340.7, position_z = 53.6757, orientation = 3.95072 where guid = 62585;
-- Alliance Chest in the Silverpine Forest (63.3, 58.2) is now available for looting.
update gameobject set position_x = 36.8191, position_y = 790.141, position_z = 64.9497, orientation = 1.57 where guid = 62555;