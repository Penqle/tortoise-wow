-- ==============================================
-- FILE: a_trainer_cleanup.sql
-- GENERATED: 20260821154713
-- ==============================================
DELETE from`creature`
WHERE `guid` IN (
    2583705, 2583704, 2594011, 2594012, 2583713, 2583714, 2583710, 2583711, 2583715, 2583708,
    2583709, 2583701, 2583712
    );

-- ==============================================
-- FILE: broadcast_text_survival_trailers.sql
-- GENERATED: 20260821154713
-- ==============================================
INSERT INTO `broadcast_text`
(
    `entry`,
    `male_text`,
    `female_text`,
    `chat_type`,
    `sound_id`,
    `language_id`,
    `emote_id1`,
    `emote_id2`,
    `emote_id3`,
    `emote_delay1`,
    `emote_delay2`,
    `emote_delay3`
)
VALUES
(6295001, 'The Kaldorei have lived in the woods of Kalimdor for countless years, and tamed its ruthlessness. It is not an easy path, but fending and providing for yourself in the great outdoors is crucial if you wish to see the moonlight of the next night.', 'The Kaldorei have lived in the woods of Kalimdor for countless years, and tamed its ruthlessness. It is not an easy path, but fending and providing for yourself in the great outdoors is crucial if you wish to see the moonlight of the next night.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6295501, 'You should always be well prepared when venturing into the wilds. Don''t underestimate the importance of thorough planning.', 'You should always be well prepared when venturing into the wilds. Don''t underestimate the importance of thorough planning.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6295301, 'I met Eissinn when I was wandering the high ridges during a heavy snowstorm. Certain my end was near, I cowered behind a stone, trying to stay warm. I soon lost consciousness and when I came back to me, this absolute beast of a lass had hauled me from my hiding spot to her mountain shelter. That''s when I knew: This woman will be my wife, even if I have to move mountains to make it happen.', 'I met Eissinn when I was wandering the high ridges during a heavy snowstorm. Certain my end was near, I cowered behind a stone, trying to stay warm. I soon lost consciousness and when I came back to me, this absolute beast of a lass had hauled me from my hiding spot to her mountain shelter. That''s when I knew: This woman will be my wife, even if I have to move mountains to make it happen.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6295401, 'Eager to go out into the wild, eh? A warm hearth and a foamy ale is wonderful and all, but the thrill of a good mountain hike is something irreplaceable. Come closer, and I''ll tell you the dwarven ways of surviving in the icy cold of Dun Morogh.', 'Eager to go out into the wild, eh? A warm hearth and a foamy ale is wonderful and all, but the thrill of a good mountain hike is something irreplaceable. Come closer, and I''ll tell you the dwarven ways of surviving in the icy cold of Dun Morogh.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6307201, 'The rest of Desolace used to be more akin to the greenery you see here at Nijel''s Point. But eventually, all life got drained from its soil and only barren death remained. If you are willing to listen and pay, I can tutor you in more advanced survival techniques that may save your life out there.', 'The rest of Desolace used to be more akin to the greenery you see here at Nijel''s Point. But eventually, all life got drained from its soil and only barren death remained. If you are willing to listen and pay, I can tutor you in more advanced survival techniques that may save your life out there.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6295701, 'There are many ways in which you can utilize nature to your advantage. With a little bit of creativity and expertise, you can turn even the most mundane things into something useful.', 'There are many ways in which you can utilize nature to your advantage. With a little bit of creativity and expertise, you can turn even the most mundane things into something useful.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6295601, 'We have not survived the deadly heat of Durotar by sheer luck. Our people are resilient, but moreso, they are resourceful. You ought to hone your instincts and skill, otherwise you''ll not make it for long out there.', 'We have not survived the deadly heat of Durotar by sheer luck. Our people are resilient, but moreso, they are resourceful. You ought to hone your instincts and skill, otherwise you''ll not make it for long out there.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6295901, 'For many years we have traveled across the lands of Kalimdor, persecuted by the centaur marauders. During that time, we learned much from the land, its dangers and its intransigence. If you wish to survive, you have to fight tooth and nail for it, as there is no mercy for you out there.', 'For many years we have traveled across the lands of Kalimdor, persecuted by the centaur marauders. During that time, we learned much from the land, its dangers and its intransigence. If you wish to survive, you have to fight tooth and nail for it, as there is no mercy for you out there.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6295801, 'The plains offer plentiful bounties, enough to benefit from the Earthmother''s blessing without depriving her off her natural beauty.', 'The plains offer plentiful bounties, enough to benefit from the Earthmother''s blessing without depriving her off her natural beauty.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6307101, 'The swamp is without remorse. One small misstep, a breaking twig or even the fumes of the bog can be enough to bring even the most battlehardened warrior to their knees. If you are willing to listen and pay, I can train you in more advanced survival techniques that may save your life out there.', 'The swamp is without remorse. One small misstep, a breaking twig or even the fumes of the bog can be enough to bring even the most battlehardened warrior to their knees. If you are willing to listen and pay, I can train you in more advanced survival techniques that may save your life out there.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6296601, 'I remember hiding in the forest from the despicable monster calling itself my mother, back when I was not a slave to this curse. Hours at a time, sometimes even days. The skills I had back then I still possess, and I can share my knowledge from that wretched time with you, for a price.', 'I remember hiding in the forest from the despicable monster calling itself my mother, back when I was not a slave to this curse. Hours at a time, sometimes even days. The skills I had back then I still possess, and I can share my knowledge from that wretched time with you, for a price.', 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: creature_addon_survival_trainers.sql
-- GENERATED: 20260821154713
-- ==============================================
INSERT INTO `creature_addon`
(
    `guid`,
    `display_id`,
    `mount_display_id`,
    `equipment_id`,
    `stand_state`,
    `sheath_state`,
    `emote_state`,
    `auras`
)
VALUES
(2594024, 0, 0, -1, 8, 1, 0, NULL);

-- ==============================================
-- FILE: creature_equip_template_survival_trailers.sql
-- GENERATED: 20260821154713
-- ==============================================
INSERT INTO `creature_equip_template`
(
    `entry`,
    `equipentry1`,
    `equipentry2`,
    `equipentry3`
)
VALUES
(62951, 13721, 0, 0),
(62952, 0, 0, 0),
(62957, 0, 12859, 0),
(62959, 0, 2715, 0),
(62962, 51768, 0, 0);

-- ==============================================
-- FILE: creature_survival_trainers.sql
-- GENERATED: 20260821154713
-- ==============================================
INSERT INTO `creature`
(
    `guid`,
    `id`,
    `id2`,
    `id3`,
    `id4`,
    `map`,
    `position_x`,
    `position_y`,
    `position_z`,
    `orientation`,
    `spawntimesecsmin`,
    `spawntimesecsmax`,
    `wander_distance`,
    `health_percent`,
    `mana_percent`,
    `movement_type`,
    `spawn_flags`,
    `visibility_mod`
)
VALUES
(2594006, 62951, 0, 0, 0, 0, -9075.900391, 338.161011, 93.039001, 2.2482662200927734, 300, 300, 0, 100, 100, 0, 0, 0),
(2594008, 62952, 0, 0, 0, 0, -9079.009766, 345.983002, 92.836998, 3.7081000804901123, 300, 300, 0, 100, 100, 0, 0, 0),
(2594011, 62953, 0, 0, 0, 0, -4906.22998, -1171.040039, 503.820007, 5.023709774017334, 300, 300, 0, 100, 100, 0, 0, 0),
(2594012, 62954, 0, 0, 0, 0, -4908.459961, -1181.599976, 503.820007, 1.2761906385421753, 300, 300, 0, 100, 100, 0, 0, 0),
(2594025, 62962, 0, 0, 0, 0, 4418.410156, -3001.77002, 10.654, 2.173328161239624, 300, 300, 0, 100, 100, 0, 0, 0),
(2595984, 63071, 0, 0, 0, 0, -10429.299805, -3292.040039, 20.558701, 1.6020750999450684, 300, 300, 0, 100, 100, 0, 0, 0),
(2594013, 62955, 0, 0, 0, 1, 10058.400391, 2390.030029, 1324.209961, 0.3502260148525238, 300, 300, 0, 100, 100, 0, 0, 0),
(2594015, 62950, 0, 0, 0, 1, 10060.099609, 2399.139893, 1324.189941, 5.221033096313477, 300, 300, 0, 100, 100, 0, 0, 0),
(2595980, 63072, 0, 0, 0, 1, 221.001007, 1336.380005, 193.692993, 5.224803447723389, 300, 300, 0, 100, 100, 0, 0, 0),
(2594017, 62956, 0, 0, 0, 1, 2015.040039, -4636.819824, 28.881701, 3.259718894958496, 300, 300, 0, 100, 100, 0, 0, 0),
(2594018, 62957, 0, 0, 0, 1, 2015.160034, -4629.879883, 29.3866, 4.246870040893555, 300, 300, 0, 100, 100, 0, 0, 0),
(2594023, 62959, 0, 0, 0, 1, -2284.590088, -254.237, -9.42481, 3.477530002593994, 300, 300, 0, 100, 100, 0, 0, 0),
(2594024, 62958, 0, 0, 0, 1, -2281.449951, -247.662994, -9.42481, 5.765170097351074, 300, 300, 0, 100, 100, 0, 0, 0),
(2594047, 62966, 0, 0, 0, 0, 2286.969971, 301.011993, 35.188099, 2.3612568378448486, 300, 300, 0, 100, 100, 0, 0, 0),
(2594792, 5202, 0, 0, 0, 0, 2224.159912, 292.074005, 35.1894, 5.602610111236572, 300, 300, 0, 100, 100, 0, 0, 0);

-- ==============================================
-- FILE: creature_template_update_survivial_trainers.sql
-- GENERATED: 20260821154713
-- ==============================================
UPDATE `creature_template`
SET `gossip_menu_id` = `entry`,
    `speed_walk` = 1,
    `speed_run` = 1.14286,
    `scale` = 1,
    `dmg_min` = 0,
    `dmg_max` = 0,
    `attack_power` = 136,
    `ranged_dmg_min` = 0,
    `ranged_dmg_max` = 0,
    `ranged_attack_power` = 112
WHERE `entry` = 62950;

UPDATE `creature_template`
SET `gossip_menu_id` = `entry`,
    `speed_walk` = 1,
    `speed_run` = 1.14286,
    `scale` = 1,
    `dmg_min` = 43.927868,
    `dmg_max` = 55.432785,
    `attack_power` = 102,
    `ranged_dmg_min` = 42.977089,
    `ranged_dmg_max` = 59.093498,
    `ranged_attack_power` = 84,
    `equipment_id` = `entry`
WHERE `entry` = 62951;

UPDATE `creature_template`
SET `gossip_menu_id` = `entry`,
    `speed_walk` = 1,
    `speed_run` = 1.14286,
    `scale` = 1,
    `dmg_min` = 38.984402,
    `dmg_max` = 49.303848,
    `attack_power` = 90,
    `ranged_dmg_min` = 36.67664,
    `ranged_dmg_max` = 50.430382,
    `ranged_attack_power` = 72,
    `equipment_id` = `entry`
WHERE `entry` = 62952;

UPDATE `creature_template`
SET `gossip_menu_id` = `entry`,
    `speed_walk` = 1,
    `speed_run` = 1.14286,
    `scale` = 1,
    `dmg_min` = 52.9375,
    `dmg_max` = 67.375,
    `attack_power` = 84,
    `ranged_dmg_min` = 47.951763,
    `ranged_dmg_max` = 65.93367,
    `ranged_attack_power` = 66
WHERE `entry` = 62953;

UPDATE `creature_template`
SET `gossip_menu_id` = `entry`,
    `speed_walk` = 1,
    `speed_run` = 1.14286,
    `scale` = 1,
    `dmg_min` = 24.639999,
    `dmg_max` = 31.826666,
    `attack_power` = 70,
    `ranged_dmg_min` = 27.842146,
    `ranged_dmg_max` = 38.282948,
    `ranged_attack_power` = 58
WHERE `entry` = 62954;

UPDATE `creature_template`
SET `gossip_menu_id` = `entry`,
    `speed_walk` = 1,
    `speed_run` = 1.14286,
    `scale` = 1,
    `dmg_min` = 46.131252,
    `dmg_max` = 59.760937,
    `attack_power` = 108,
    `ranged_dmg_min` = 45.877144,
    `ranged_dmg_max` = 63.081074,
    `ranged_attack_power` = 88
WHERE `entry` = 62955;

UPDATE `creature_template`
SET `gossip_menu_id` = `entry`,
    `speed_walk` = 1,
    `speed_run` = 1.14286,
    `scale` = 1,
    `dmg_min` = 39.637932,
    `dmg_max` = 50.068966,
    `attack_power` = 96,
    `ranged_dmg_min` = 39.813805,
    `ranged_dmg_max` = 54.743984,
    `ranged_attack_power` = 78
WHERE `entry` = 62956;

UPDATE `creature_template`
SET `gossip_menu_id` = `entry`,
    `speed_walk` = 1,
    `speed_run` = 1.14286,
    `scale` = 1,
    `dmg_min` = 48.299999,
    `dmg_max` = 60.900002,
    `attack_power` = 112,
    `ranged_dmg_min` = 47.616306,
    `ranged_dmg_max` = 65.47242,
    `ranged_attack_power` = 92,
    `equipment_id` = `entry`
WHERE `entry` = 62957;

UPDATE `creature_template`
SET `gossip_menu_id` = `entry`,
    `speed_walk` = 1,
    `speed_run` = 1.14286,
    `scale` = 1,
    `dmg_min` = 60.225002,
    `dmg_max` = 78.186844,
    `attack_power` = 132,
    `ranged_dmg_min` = 56.932758,
    `ranged_dmg_max` = 78.282539,
    `ranged_attack_power` = 108
WHERE `entry` = 62958;

UPDATE `creature_template`
SET `gossip_menu_id` = `entry`,
    `speed_walk` = 1,
    `speed_run` = 1.14286,
    `scale` = 1,
    `dmg_min` = 91.0177,
    `dmg_max` = 116.716812,
    `attack_power` = 206,
    `ranged_dmg_min` = 75.210083,
    `ranged_dmg_max` = 103.413864,
    `ranged_attack_power` = 144,
    `equipment_id` = `entry`
WHERE `entry` = 62959;

UPDATE `creature_template`
SET `gossip_menu_id` = `entry`,
    `speed_walk` = 1,
    `speed_run` = 1.14286,
    `scale` = 1,
    `dmg_min` = 91.0177,
    `dmg_max` = 116.716812,
    `attack_power` = 206,
    `ranged_dmg_min` = 75.210083,
    `ranged_dmg_max` = 103.413864,
    `ranged_attack_power` = 144,
    `equipment_id` = `entry`
WHERE `entry` = 62962;

UPDATE `creature_template`
SET `gossip_menu_id` = `entry`,
    `speed_walk` = 1,
    `speed_run` = 1.14286,
    `scale` = 1,
    `dmg_min` = 64.519226,
    `dmg_max` = 82.5,
    `attack_power` = 136,
    `ranged_dmg_min` = 58.712193,
    `ranged_dmg_max` = 80.729271,
    `ranged_attack_power` = 112
WHERE `entry` = 63071;

UPDATE `creature_template`
SET `gossip_menu_id` = `entry`,
    `speed_walk` = 1,
    `speed_run` = 1.14286,
    `scale` = 1,
    `dmg_min` = 64.519226,
    `dmg_max` = 82.5,
    `attack_power` = 136,
    `ranged_dmg_min` = 58.712193,
    `ranged_dmg_max` = 80.729271,
    `ranged_attack_power` = 112
WHERE `entry` = 63072;

UPDATE `creature_template`
SET `gossip_menu_id` = `entry`,
    `speed_walk` = 1,
    `speed_run` = 1.14286,
    `scale` = 1,
    `dmg_min` = 91.0177,
    `dmg_max` = 116.716812,
    `attack_power` = 206,
    `ranged_dmg_min` = 75.210083,
    `ranged_dmg_max` = 103.413864,
    `ranged_attack_power` = 144
WHERE `entry` = 62966;


-- ==============================================
-- FILE: gameobect_template_update_survival_trainers.sql
-- GENERATED: 20260821154713
-- ==============================================
update `gameobject_template`
SET `size` = 2
WHERE `entry` = 2020411;

-- ==============================================
-- FILE: gameobject_survival_trainers.sql
-- GENERATED: 20260821154713
-- ==============================================
INSERT INTO `gameobject`
(
    `guid`,
    `id`,
    `map`,
    `position_x`,
    `position_y`,
    `position_z`,
    `orientation`,
    `rotation0`,
    `rotation1`,
    `rotation2`,
    `rotation3`,
    `spawntimesecsmin`,
    `spawntimesecsmax`,
    `animprogress`,
    `state`,
    `spawn_flags`,
    `visibility_mod`
)
VALUES
(5026158, 2002764, 0, -9069.2998046875, 344.89599609375, 92.9636001586914, 3.415260076522827, 0, 0, 0.990652866, -0.136407111, 300, 300, 100, 1, 0, 0),
(5026159, 2003527, 0, -9073.26953125, 338.7959899902344, 92.94979858398438, 0.006633040029555559, 0, 0, 0.00331651393, 0.9999945, 300, 300, 100, 1, 0, 0),
(5026163, 2000116, 0, -9073.6103515625, 339.0830078125, 94.22540283203125, 1.2938200235366821, 0, 0, 0.602723631, 0.797950014, 300, 300, 100, 1, 0, 0),
(5026164, 2003544, 0, -9073.4697265625, 337.4840087890625, 93.94020080566406, 2.6996800899505615, 0, 0, 0.975688314, 0.219162756, 300, 300, 100, 1, 0, 0),
(5026165, 2003544, 0, -9073.8603515625, 337.7279968261719, 93.94020080566406, 3.838510036468506, 0, 0, 0.939900108, -0.341449538, 300, 300, 100, 1, 0, 0),
(5026166, 2003377, 0, -9072.599609375, 338.3080139160156, 93.95369720458984, 3.2078299522399902, 0, 0, 0.999451628, -0.0331125953, 300, 300, 100, 1, 0, 0),
(5026167, 61101, 0, -9080.150390625, 346.7340087890625, 92.85459899902344, 4.552430152893066, 0, 0, 0.761340121, -0.648352697, 300, 300, 100, 1, 0, 0),
(5026168, 61101, 0, -9083.759765625, 345.281005859375, 92.95709991455078, 5.849899768829346, 0, 0, 0.214952086, -0.976624596, 300, 300, 100, 1, 0, 0),
(5026169, 2002232, 0, -9067.5703125, 343.8489990234375, 93.15039825439453, 3.425379991531372, 0, 0, 0.989949972, -0.141418005, 300, 300, 100, 1, 0, 0),
(5026170, 2003528, 0, -9068.25, 346.9630126953125, 93.02970123291016, 3.4183099269866943, 0, 0, 0.990443703, -0.137917623, 300, 300, 100, 1, 0, 0),
(5026171, 2000072, 0, -9068.4501953125, 346.4469909667969, 94.15799713134766, 4.144800186157227, 0, 0, 0.876812547, -0.480832359, 300, 300, 100, 1, 0, 0),
(5026172, 2003196, 0, -9067.6201171875, 346.7340087890625, 94.15799713134766, 3.49685001373291, 0, 0, 0.984265463, -0.176696064, 300, 300, 100, 1, 0, 0),
(5026173, 2003195, 0, -9067.8603515625, 347.4410095214844, 94.15779876708984, 6.155409812927246, 0, 0, 0.0638442948, -0.997959872, 300, 300, 100, 1, 0, 0),
(5026174, 2004235, 0, -9068.8095703125, 347.20098876953125, 94.15809631347656, 4.352139949798584, 0, 0, 0.822346426, -0.568987131, 300, 300, 100, 1, 0, 0),
(5026175, 2004203, 0, -9072.150390625, 346.51800537109375, 92.96170043945312, 5.7846999168396, 0, 0, 0.246670126, -0.969099504, 300, 300, 100, 1, 0, 0),
(5026176, 2004203, 0, -9071.3203125, 346.7040100097656, 93.00440216064453, 5.00793981552124, 0, 0, 0.59528697, -0.803513175, 300, 300, 100, 1, 0, 0),
(5026177, 2001881, 0, -9080.9697265625, 346.5780029296875, 92.86830139160156, 4.579100131988525, 0, 0, 0.75262691, -0.658447214, 300, 300, 100, 1, 0, 0),
(5026178, 2001882, 0, -9072.099609375, 346.59100341796875, 93.92160034179688, 2.170289993286133, 0, 0, 0.884371106, 0.466784476, 300, 300, 100, 1, 0, 0),
(5026179, 2003230, 0, -9072.5498046875, 348.6889953613281, 93.02259826660156, 3.765439987182617, 0, 0, 0.951744977, -0.306890043, 300, 300, 100, 1, 0, 0),
(5026180, 2003230, 0, -9070.849609375, 348.8210144042969, 93.19730377197266, 1.1029399633407593, 0, 0, 0.523939859, 0.851755261, 300, 300, 100, 1, 0, 0),
(5026181, 2003229, 0, -9072.5400390625, 348.5780029296875, 94.2666015625, 1.8655699491500854, 0, 0, 0.803281782, 0.595599176, 300, 300, 100, 1, 0, 0),
(5026182, 2002392, 0, -9069.240234375, 349.12701416015625, 93.1552963256836, 2.472949981689453, 0, 0, 0.944633216, 0.328128157, 300, 300, 100, 1, 0, 0),
(5026184, 2003227, 0, -9070.6904296875, 341.52398681640625, 93.10320281982422, 1.9663599729537964, 0, 0, 0.832264493, 0.554378764, 300, 300, 100, 1, 0, 0),
(5026185, 2003258, 0, -9071.1103515625, 342.3330078125, 93.0696029663086, 1.1534700393676758, 0, 0, 0.545289987, 0.838247476, 300, 300, 100, 1, 0, 0),
(5026186, 2002655, 0, -9072.5400390625, 346.86199951171875, 92.84310150146484, 2.9535999298095703, 0, 0, 0.995585594, 0.0938580084, 300, 300, 100, 1, 0, 0),
(5026190, 2003829, 1, 2008.280029296875, -4633.080078125, 28.46619987487793, 5.465390205383301, 0, 0, 0.397598007, -0.917559712, 300, 300, 100, 1, 0, 0),
(5026191, 2003813, 1, 2018.6400146484375, -4630.33984375, 29.780099868774414, 3.8278400897979736, 0, 0, 0.941708348, -0.33643036, 300, 300, 100, 1, 0, 0),
(5026192, 2003813, 1, 2019.0, -4628.3701171875, 30.214799880981445, 3.5293900966644287, 0, 0, 0.981260466, -0.192686011, 300, 300, 100, 1, 0, 0),
(5026193, 2003825, 1, 2017.510009765625, -4629.22998046875, 29.77199935913086, 3.212090015411377, 0, 0, 0.99937883, -0.0352413821, 300, 300, 100, 1, 0, 0),
(5026196, 2002764, 1, -2276.3798828125, -254.177001953125, -9.424079895019531, 2.749500036239624, 0, 0, 0.980844393, 0.194792907, 300, 300, 100, 1, 0, 0),
(5026197, 2004695, 1, -2271.820068359375, -257.8370056152344, -9.424799919128418, 4.860630035400391, 0, 0, 0.652802149, -0.757528451, 300, 300, 100, 1, 0, 0),
(5026199, 2003812, 1, -2276.7099609375, -259.18701171875, -9.424850463867188, 3.0432000160217285, 0, 0, 0.998790105, 0.0491764764, 300, 300, 100, 1, 0, 0),
(5026200, 2003812, 1, -2278.489990234375, -258.1549987792969, -9.424850463867188, 3.9699699878692627, 0, 0, 0.915443141, -0.402447334, 300, 300, 100, 1, 0, 0),
(5026201, 2003812, 1, -2278.31005859375, -259.6809997558594, -9.424850463867188, 3.4319798946380615, 0, 0, 0.989477911, -0.144684016, 300, 300, 100, 1, 0, 0),
(5026202, 2003815, 1, -2280.030029296875, -258.3500061035156, -9.424750328063965, 3.3958499431610107, 0, 0, 0.991930031, -0.126786486, 300, 300, 100, 1, 0, 0),
(5026203, 2003829, 1, -2280.080078125, -258.1919860839844, -9.424839973449707, 5.375050067901611, 0, 0, 0.438624602, -0.898670384, 300, 300, 100, 1, 0, 0),
(5026204, 2003968, 1, -2273.989990234375, -253.125, -9.42490005493164, 3.333019971847534, 0, 0, 0.995422944, -0.0955675856, 300, 300, 100, 1, 0, 0),
(5026205, 2004703, 1, -2277.27001953125, -255.76199340820312, -9.424949645996094, 5.843929767608643, 0, 0, 0.217866349, -0.975978613, 300, 300, 100, 1, 0, 0),
(5026206, 2004599, 1, -2275.75, -256.8320007324219, -9.424949645996094, 1.996269941329956, 0, 0, 0.840461842, 0.541870733, 300, 300, 100, 1, 0, 0),
(5026208, 2004600, 1, -2277.389892578125, -256.2590026855469, -9.424819946289062, 2.1085801124572754, 0, 0, 0.869549845, 0.493845186, 300, 300, 100, 1, 0, 0),
(5026209, 1000018, 1, -2274.010009765625, -253.10400390625, -8.7122802734375, 3.4186201095581055, 0, 0, 0.990422301, -0.138071231, 300, 300, 100, 1, 0, 0),
(5026210, 2003825, 1, -2277.550048828125, -250.9810028076172, -9.424909591674805, 4.965060234069824, 0, 0, 0.612375994, -0.790566659, 300, 300, 100, 1, 0, 0),
(5026213, 2003580, 1, -2278.780029296875, -249.8719940185547, -9.424850463867188, 2.919110059738159, 0, 0, 0.993819065, 0.111012011, 300, 300, 100, 1, 0, 0),
(5026214, 2003580, 1, -2278.7900390625, -247.92799377441406, -9.42488956451416, 3.834089994430542, 0, 0, 0.940652423, -0.339371506, 300, 300, 100, 1, 0, 0),
(5026215, 2003580, 1, -2280.449951171875, -248.60800170898438, -9.424839973449707, 6.127449989318848, 0, 0, 0.0777889927, -0.996969845, 300, 300, 100, 1, 0, 0),
(5026216, 2003580, 1, -2279.27001953125, -248.61099243164062, -9.424830436706543, 4.231510162353516, 0, 0, 0.855148673, -0.51838282, 300, 300, 100, 1, 0, 0),
(5026217, 2010645, 0, 4422.97021484375, -3001.43994140625, 10.536999702453613, 3.328779935836792, 0, 0, 0.995623311, -0.0934570578, 300, 300, 100, 1, 0, 0),
(5026218, 2003230, 0, 4420.93017578125, -2998.080078125, 10.604700088500977, 2.2518699169158936, 0, 0, 0.902670332, 0.430332746, 300, 300, 100, 1, 0, 0),
(5026219, 2003230, 0, 4422.72021484375, -2997.570068359375, 10.548100471496582, 1.7924200296401978, 0, 0, 0.780965397, 0.624574294, 300, 300, 100, 1, 0, 0),
(5026220, 2003228, 0, 4421.89013671875, -2996.719970703125, 10.595999717712402, 2.0028998851776123, 0, 0, 0.842253507, 0.539081654, 300, 300, 100, 1, 0, 0),
(5026221, 2004203, 0, 4424.58984375, -3002.47998046875, 10.55049991607666, 2.456860065460205, 0, 0, 0.941962898, 0.335716991, 300, 300, 100, 1, 0, 0),
(5026222, 2004203, 0, 4425.0498046875, -3001.52001953125, 10.512999534606934, 3.0985300540924072, 0, 0, 0.999768211, 0.0215296361, 300, 300, 100, 1, 0, 0),
(5026223, 2002655, 0, 4422.43017578125, -3003.22998046875, 10.537099838256836, 4.282909870147705, 0, 0, 0.841545386, -0.540186415, 300, 300, 100, 1, 0, 0),
(5026224, 2003580, 0, 4424.8798828125, -3004.60009765625, 10.743599891662598, 3.362420082092285, 0, 0, 0.993910596, -0.110189505, 300, 300, 100, 1, 0, 0),
(5026225, 2003580, 0, 4426.14990234375, -3004.5400390625, 10.770999908447266, 4.46589994430542, 0, 0, 0.788669964, -0.614816792, 300, 300, 100, 1, 0, 0),
(5026226, 2003580, 0, 4425.10009765625, -3005.969970703125, 10.904399871826172, 1.3832099437713623, 0, 0, 0.63777419, 0.770223398, 300, 300, 100, 1, 0, 0),
(5026227, 2004247, 0, 4419.8701171875, -2999.360107421875, 10.62600040435791, 3.229870080947876, 0, 0, 0.999026045, -0.044124383, 300, 300, 100, 1, 0, 0),
(5026228, 2004247, 0, 4419.52001953125, -2998.9599609375, 10.640399932861328, 3.1631100177764893, 0, 0, 0.999942126, -0.0107584745, 300, 300, 100, 1, 0, 0),
(5026229, 2003377, 0, 4422.85009765625, -2997.610107421875, 11.791299819946289, 2.2261300086975098, 0, 0, 0.897057366, 0.441914112, 300, 300, 100, 1, 0, 0),
(5026248, 2003580, 0, -9073.2998046875, 340.1610107421875, 93.94779968261719, 4.612209796905518, 0, 0, 0.741623794, -0.670816032, 300, 300, 100, 1, 0, 0),
(5026249, 2003580, 0, -9072.83984375, 339.45001220703125, 93.95210266113281, 6.1201701164245605, 0, 0, 0.0814173762, -0.996680095, 300, 300, 100, 1, 0, 0),
(5030424, 2020412, 1, 2013.93994140625, -4647.6298828125, 26.64859962463379, 4.034589767456055, 0, 0, 0.901964587, -0.43181001, 300, 300, 100, 1, 0, 0),
(5030425, 2020411, 1, 10072.2001953125, 2388.9599609375, 1327.06005859375, 4.270899772644043, 0, 0, 0.844774039, -0.535123184, 300, 300, 100, 1, 0, 0),
(5030908, 1859, 0, -9081.0595703125, 344.68701171875, 92.88140106201172, 0.0689568966627121, 0, 0, 0.0344716176, 0.999405677, 300, 300, 100, 1, 0, 0),
(5030910, 1859, 1, 2009.56005859375, -4633.85009765625, 28.541500091552734, 4.467450141906738, 0, 0, 0.788193184, -0.615427904, 300, 300, 100, 1, 0, 0),
(5041169, 181987, 0, -9095.83984375, 411.1789855957031, 92.24449920654297, 2.3038299083709717, 0, 0, 0.913544501, 0.406738792, 300, 300, 100, 1, 0, 0),
(5041245, 181987, 0, -9095.83984375, 411.1789855957031, 92.24449920654297, 2.3038299083709717, 0, 0, 0.913544501, 0.406738792, 300, 300, 100, 1, 0, 0),
(5041305, 181987, 0, -9095.83984375, 411.1789855957031, 92.24449920654297, 2.3038299083709717, 0, 0, 0.913544501, 0.406738792, 300, 300, 100, 1, 0, 0),
(5041484, 181987, 0, -9095.83984375, 411.1789855957031, 92.24449920654297, 2.3038299083709717, 0, 0, 0.913544501, 0.406738792, 300, 300, 100, 1, 0, 0),
(5041650, 181987, 0, -9095.83984375, 411.1789855957031, 92.24449920654297, 2.3038299083709717, 0, 0, 0.913544501, 0.406738792, 300, 300, 100, 1, 0, 0),
(5041830, 181987, 0, -9095.83984375, 411.1789855957031, 92.24449920654297, 2.3038299083709717, 0, 0, 0.913544501, 0.406738792, 300, 300, 100, 1, 0, 0),
(5041960, 181987, 0, -9095.83984375, 411.1789855957031, 92.24449920654297, 2.3038299083709717, 0, 0, 0.913544501, 0.406738792, 300, 300, 100, 1, 0, 0),
(5042061, 181987, 0, -9095.83984375, 411.1789855957031, 92.24449920654297, 2.3038299083709717, 0, 0, 0.913544501, 0.406738792, 300, 300, 100, 1, 0, 0),
(5026001, 177044, 0, 2238.56005859375, 254.5030059814453, 34.005401611328125, 2.9741599559783936, 0, 0, 0.996497833, 0.0836185964, 300, 300, 100, 1, 0, 0),
(5026241, 2002767, 0, 2290.909912109375, 299.5840148925781, 35.18349838256836, 2.781830072402954, 0, 0, 0.983864938, 0.178912781, 300, 300, 100, 1, 0, 0),
(5026242, 2002208, 0, 2290.780029296875, 303.3800048828125, 35.187801361083984, 1.9995800256729126, 0, 0, 0.84135751, 0.540478992, 300, 300, 100, 1, 0, 0),
(5026243, 2002208, 0, 2291.68994140625, 302.7900085449219, 35.186500549316406, 1.964229941368103, 0, 0, 0.831673599, 0.555264825, 300, 300, 100, 1, 0, 0),
(5026244, 2003580, 0, 2292.949951171875, 302.6369934082031, 35.18539810180664, 2.0584800243377686, 0, 0, 0.856907486, 0.515470233, 300, 300, 100, 1, 0, 0),
(5026246, 2003437, 0, 2291.929931640625, 304.27398681640625, 35.18899917602539, 1.8605600595474243, 0, 0, 0.801787321, 0.597609481, 300, 300, 100, 1, 0, 0),
(5026247, 2003147, 0, 2290.820068359375, 304.3110046386719, 35.189300537109375, 1.995650053024292, 0, 0, 0.840293852, 0.542131204, 300, 300, 100, 1, 0, 0),
(5030909, 1859, 0, 2284.550048828125, 299.6570129394531, 35.18730163574219, 2.8341400623321533, 0, 0, 0.988207364, 0.15312154, 300, 300, 100, 1, 0, 0);

-- ==============================================
-- FILE: gossip_menu_survival_trainers.sql
-- GENERATED: 20260821154713
-- ==============================================
INSERT INTO `gossip_menu`
(
    `entry`,
    `text_id`,
    `script_id`,
    `condition_id`
)
VALUES
(62950, 6295001, 0, 0),
(62955, 6295501, 0, 0),
(62953, 6295301, 0, 0),
(62954, 6295401, 0, 0),
(63072, 6307201, 0, 0),
(62956, 6295601, 0, 0),
(62957, 6295701, 0, 0),
(62958, 6295801, 0, 0),
(62959, 6295901, 0, 0),
(63071, 6307101, 0, 0),
(62966, 6296601, 0, 0);

-- ==============================================
-- FILE: npc_text_survival_trainers.sql
-- GENERATED: 20260821154713
-- ==============================================
INSERT INTO `npc_text`
(
    `ID`,
    `BroadcastTextID0`,
    `Probability0`,
    `BroadcastTextID1`,
    `Probability1`,
    `BroadcastTextID2`,
    `Probability2`,
    `BroadcastTextID3`,
    `Probability3`,
    `BroadcastTextID4`,
    `Probability4`,
    `BroadcastTextID5`,
    `Probability5`,
    `BroadcastTextID6`,
    `Probability6`,
    `BroadcastTextID7`,
    `Probability7`
)
VALUES
(6295001, 6295001, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6295501, 6295501, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6295301, 6295301, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6295401, 6295401, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6307201, 6307201, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6295601, 6295601, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6295701, 6295701, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6295801, 6295801, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6295901, 6295901, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6307101, 6307101, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6296601, 6296601, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0);

