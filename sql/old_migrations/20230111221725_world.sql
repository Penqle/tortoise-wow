-- Fixed questchains ~by RMJ
UPDATE quest_template SET PrevQuestId = 80104 WHERE entry = 80101;
UPDATE quest_template SET PrevQuestId = 80100 WHERE entry = 80102;
UPDATE quest_template SET PrevQuestId = 80102 WHERE entry = 80103;
UPDATE quest_template SET PrevQuestId = 80105 WHERE entry = 80106;
UPDATE quest_template SET PrevQuestId = 80106 WHERE entry = 80107;
UPDATE quest_template SET PrevQuestId = 80107 WHERE entry = 80108;
UPDATE quest_template SET PrevQuestId = 80108 WHERE entry = 80109;
UPDATE quest_template SET PrevQuestId = 80109 WHERE entry = 80110;

-- Fixed startzone creature fire ressistance ~by RMJ
UPDATE creature_template SET fire_res = 0 WHERE entry = 80116;

-- Fixed Spawntime on startzone mobs ~by RMJ
UPDATE creature SET spawntimesecsmin = 240, spawntimesecsmax = 300 WHERE id IN (80114, 80118);

-- Fixed DisplayID for Voryn Skywalker
UPDATE creature_template SET display_id1 = 16818 WHERE entry = 93100;