-- Fix floating Thalassian Daisy.
UPDATE `gameobject` SET `position_x`=3399.91, `position_y`=-2560.13, `position_z`=102.804 WHERE `guid`=5017865;

-- Add chaining to Wetlands gnoll quest
UPDATE quest_template SET NextQuestInChain = 40680 WHERE entry = 40679;
UPDATE quest_template SET NextQuestInChain = 40681 WHERE entry = 40680;
UPDATE quest_template SET MinLevel = 15 WHERE entry = 55035;
