UPDATE quest_template SET
OfferRewardText = 'You truly disgust me, $R. A grown $gman:woman drooling over a pile of junk? Pitiful! Take your reward and get out of my sight.$B$BSounds familiar? It should, because I say it a thousand times per day.$B$BOh how I loathe this world.'
WHERE entry = 3502;

UPDATE quest_template SET NextQuestInChain = 41073 WHERE entry = 41072;
UPDATE quest_template SET NextQuestInChain = 41074 WHERE entry = 41073;
UPDATE quest_template SET NextQuestInChain = 41076 WHERE entry = 41075;
UPDATE quest_template SET NextQuestInChain = 41077 WHERE entry = 41076;

UPDATE quest_template SET
Details = 'I have seen the devastation that the corruption of nature can bring. Felwood is a stark reminder of this truth. However, this glade here remains pure, and it is all thanks to Ethwyr.$B$B<The druid pauses, his head bowed in reverence for a moment, before continuing.>$B$BHis sacrifice, however, touched only those closest to him. We must honor his legacy by continuing to cleanse Felwood of corruption.$B$BTo the west lies the ancient glade known as Irontree Woods, a place steeped in both beauty and darkness. It is there that you shall face the heart-wrenching sight of crazed treants.$B$BFrom the fallen bodies of these treants, claim six branches tainted by their suffering. Though tainted they may be, these branches possess a latent power. Bring them to me and we shall breathe new life into their corrupted essence.'
WHERE entry = 41070;

-- Fix mismatched Felwood Cenarion Plant Cleansing quests and objects
REPLACE INTO gameobject VALUES (5018079, 174597, 1, 6601.29, -1272.42, 448.709, 1.88929, 0, 0, 0.810288, 0.586031, 7200, 7200, 100, 1, 0, 0);
DELETE FROM gameobject_questrelation WHERE id IN (164886, 171939, 171942, 174594, 174595, 174596, 174597, 174598, 174712, 174713);
DELETE FROM gameobject_involvedrelation WHERE id IN (164886, 171939, 171942, 174594, 174595, 174596, 174597, 174598, 174712, 174713);
REPLACE INTO gameobject_questrelation VALUES (171942, 2523);
REPLACE INTO gameobject_questrelation VALUES (174595, 3363);
REPLACE INTO gameobject_questrelation VALUES (164886, 4113);
REPLACE INTO gameobject_questrelation VALUES (173594, 2878);
REPLACE INTO gameobject_questrelation VALUES (174597, 4116);
REPLACE INTO gameobject_questrelation VALUES (171939, 4401);
REPLACE INTO gameobject_questrelation VALUES (174598, 4118);
REPLACE INTO gameobject_questrelation VALUES (174713, 4465);
REPLACE INTO gameobject_questrelation VALUES (174712, 4464);
REPLACE INTO gameobject_questrelation VALUES (174596, 4114);
REPLACE INTO gameobject_involvedrelation VALUES (171942, 2523);
REPLACE INTO gameobject_involvedrelation VALUES (174595, 3363);
REPLACE INTO gameobject_involvedrelation VALUES (164886, 4113);
REPLACE INTO gameobject_involvedrelation VALUES (173594, 2878);
REPLACE INTO gameobject_involvedrelation VALUES (174597, 4116);
REPLACE INTO gameobject_involvedrelation VALUES (171939, 4401);
REPLACE INTO gameobject_involvedrelation VALUES (174598, 4118);
REPLACE INTO gameobject_involvedrelation VALUES (174713, 4465);
REPLACE INTO gameobject_involvedrelation VALUES (174712, 4464);
REPLACE INTO gameobject_involvedrelation VALUES (174596, 4114);
DELETE FROM gameobject_questrelation WHERE id IN (164887, 173327, 174599, 174600, 174601, 174602, 174603, 174604, 174708, 174709);
DELETE FROM gameobject_involvedrelation WHERE id IN (164887, 173327, 174599, 174600, 174601, 174602, 174603, 174604, 174708, 174709);
REPLACE INTO gameobject_questrelation VALUES (174600, 996);
REPLACE INTO gameobject_questrelation VALUES (164887, 4115);
REPLACE INTO gameobject_questrelation VALUES (174603, 4222);
REPLACE INTO gameobject_questrelation VALUES (174601, 4403);
REPLACE INTO gameobject_questrelation VALUES (174602, 4343);
REPLACE INTO gameobject_questrelation VALUES (174708, 4466);
REPLACE INTO gameobject_questrelation VALUES (173327, 1514);
REPLACE INTO gameobject_questrelation VALUES (174604, 4221);
REPLACE INTO gameobject_questrelation VALUES (174709, 4467);
REPLACE INTO gameobject_questrelation VALUES (174599, 998);
REPLACE INTO gameobject_involvedrelation VALUES (174600, 996);
REPLACE INTO gameobject_involvedrelation VALUES (164887, 4115);
REPLACE INTO gameobject_involvedrelation VALUES (174603, 4222);
REPLACE INTO gameobject_involvedrelation VALUES (174601, 4403);
REPLACE INTO gameobject_involvedrelation VALUES (174602, 4343);
REPLACE INTO gameobject_involvedrelation VALUES (174708, 4466);
REPLACE INTO gameobject_involvedrelation VALUES (173327, 1514);
REPLACE INTO gameobject_involvedrelation VALUES (174604, 4221);
REPLACE INTO gameobject_involvedrelation VALUES (174709, 4467);
REPLACE INTO gameobject_involvedrelation VALUES (174599, 998);
DELETE FROM gameobject_questrelation WHERE id IN (164885, 173324, 174608, 174684);
DELETE FROM gameobject_involvedrelation WHERE id IN (164885, 173324, 174608, 174684);
REPLACE INTO gameobject_questrelation VALUES (164885, 4119);
REPLACE INTO gameobject_questrelation VALUES (173324, 4447);
REPLACE INTO gameobject_questrelation VALUES (174608, 4448);
REPLACE INTO gameobject_questrelation VALUES (174684, 4462);
REPLACE INTO gameobject_involvedrelation VALUES (164885, 4119);
REPLACE INTO gameobject_involvedrelation VALUES (173324, 4447);
REPLACE INTO gameobject_involvedrelation VALUES (174608, 4448);
REPLACE INTO gameobject_involvedrelation VALUES (174684, 4462);
DELETE FROM gameobject_questrelation WHERE id IN (164888, 173284, 174605, 174606, 174607, 174686);
DELETE FROM gameobject_involvedrelation WHERE id IN (164888, 173284, 174605, 174606, 174607, 174686);
REPLACE INTO gameobject_questrelation VALUES (164888, 4117);
REPLACE INTO gameobject_questrelation VALUES (174605, 4444);
REPLACE INTO gameobject_questrelation VALUES (174686, 4461);
REPLACE INTO gameobject_questrelation VALUES (174607, 4446);
REPLACE INTO gameobject_questrelation VALUES (174606, 4445);
REPLACE INTO gameobject_questrelation VALUES (173284, 4443);
REPLACE INTO gameobject_involvedrelation VALUES (164888, 4117);
REPLACE INTO gameobject_involvedrelation VALUES (174605, 4444);
REPLACE INTO gameobject_involvedrelation VALUES (174686, 4461);
REPLACE INTO gameobject_involvedrelation VALUES (174607, 4446);
REPLACE INTO gameobject_involvedrelation VALUES (174606, 4445);
REPLACE INTO gameobject_involvedrelation VALUES (173284, 4443);