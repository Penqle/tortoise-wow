UPDATE quest_template SET ReqItemId1 = 6775,ReqItemCount1 = 1 WHERE entry = 1642;
UPDATE quest_template SET ReqItemId1 = 6916,ReqItemCount1 = 1 WHERE entry = 1646;
UPDATE item_template SET flags = 32 WHERE entry IN (6775, 6916);


