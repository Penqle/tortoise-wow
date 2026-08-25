-- ==============================================
-- FILE: trainer_spell_reqlevel.sql
-- GENERATED: 20260718184759
-- ==============================================
UPDATE `npc_trainer`
SET `reqlevel` = 16
WHERE `spell` = 6480;

UPDATE `npc_trainer`
SET `reqlevel` = 1
WHERE `spell` = 46051;

-- Strange inacessible spell on warrior trainers to teach 877 Elemental Fury, seems to actually be sent with the trainer data so leaving this for historical data
UPDATE `npc_trainer`
SET `reqlevel` = 6
WHERE `spell` = 1229;

UPDATE `npc_trainer`
SET `reqlevel` = 20
WHERE `spell` = 5247;

UPDATE `npc_trainer`
SET `reqlevel` = 46
WHERE `spell` IN (11199, 18648);

UPDATE `npc_trainer`
SET `reqlevel` = 56
WHERE `spell` = 11200;

UPDATE `npc_trainer`
SET `reqlevel` = 60
WHERE `spell` = 17938;

-- Rogue and Warrior Dual Wield
UPDATE `npc_trainer`
SET `reqlevel` = 10
WHERE `spell` = 1424
AND `entry` IN (913, 914, 917, 918, 985, 1229, 1234, 1411, 1901, 2130, 2131, 3041, 3042, 3043, 3063, 3169, 3170, 3327, 3328, 3353, 3354, 3401, 3408, 3598, 3599, 4087, 4089, 4163, 4214, 4215, 4582, 4583, 4584, 4593, 4594, 4595, 5113, 5114, 5165, 5166, 5167, 5479, 5480, 7315, 8141, 13283, 62428, 80106, 80247, 80248, 92198);

-- Hunter Dual Wield
UPDATE `npc_trainer`
SET `reqlevel` = 20
WHERE `spell` = 1424
AND `entry` IN (987, 1231, 1404, 3038, 3039, 3040, 3065, 3171, 3352, 3406, 3407, 3601, 3963, 4138, 4146, 4205, 5115, 5116, 5117, 5501, 5515, 5516, 5517, 8308, 10930, 60483, 60484, 60485, 60486, 60487, 61624, 61625, 61626, 61628, 61640, 80105, 80245, 80458, 80855, 81050);

-- Warrior Parry
UPDATE `npc_trainer`
SET `reqlevel` = 6
WHERE `spell` = 3128
AND `entry` IN (911, 912, 913, 914, 985, 1229, 1901, 2119, 2131, 3041, 3042, 3043, 3059, 3063, 3153, 3169, 3353, 3354, 3408, 3593, 3598, 4087, 4089, 4593, 4594, 4595, 5113, 5114, 5479, 5480, 7315, 8141, 62428, 80104, 80217, 80247);

-- Hunter and Paladin Parry
UPDATE `npc_trainer`
SET `reqlevel` = 8
WHERE `spell` = 3128
AND `entry` IN (927, 928, 987, 1231, 1232, 1404, 3038, 3039, 3040, 3065, 3171, 3352, 3406, 3407, 3601, 3963, 4138, 4146, 4205, 5115, 5116, 5117, 5147, 5148, 5149, 5491, 5492, 5501, 5515, 5516, 5517, 8140, 8308, 10930, 60483, 60484, 60485, 60486, 60487, 61624, 61625, 61626, 61628, 61640, 80105, 80244, 80245, 80458, 80855, 81050);

-- Rogue Parry
UPDATE `npc_trainer`
SET `reqlevel` = 12
WHERE `spell` = 3128
AND `entry` IN (917, 918, 1234, 1411, 2130, 3170, 3327, 3328, 3401, 3599, 4163, 4214, 4215, 4582, 4583, 4584, 5165, 5166, 5167, 13283, 80106);

UPDATE `npc_trainer`
SET `reqlevel` = 6
WHERE `spell` = 1888;

UPDATE `npc_trainer`
SET `reqlevel` = 8
WHERE `spell` IN (47314, 48021);

UPDATE `npc_trainer`
SET `reqlevel` = 10
WHERE `spell` = 47340;

UPDATE `npc_trainer`
SET `reqlevel` = 14
WHERE `spell` = 2874;

UPDATE `npc_trainer`
SET `reqlevel` = 20
WHERE `spell` = 47315;

UPDATE `npc_trainer`
SET `reqlevel` = 22
WHERE `spell` = 36922;

UPDATE `npc_trainer`
SET `reqlevel` = 30
WHERE `spell` IN (47268, 47316);

UPDATE `npc_trainer`
SET `reqlevel` = 38
WHERE `spell` = 20958;

UPDATE `npc_trainer`
SET `reqlevel` = 40
WHERE `spell` = 47317;

UPDATE `npc_trainer`
SET `reqlevel` = 50
WHERE `spell` IN (47318, 51494);

UPDATE `npc_trainer`
SET `reqlevel` = 56
WHERE `spell` = 51528;

UPDATE `npc_trainer`
SET `reqlevel` = 60
WHERE `spell` IN (47271, 51495);

-- ==============================================
-- FILE: trainer_spell_spellcost.sql
-- GENERATED: 20260718184759
-- ==============================================
UPDATE `npc_trainer`
SET `spellcost` = 100
WHERE `spell` IN (13164, 46051);

UPDATE `npc_trainer`
SET `spellcost` = 200
WHERE `spell` IN (1830, 5146);

UPDATE `npc_trainer`
SET `spellcost` = 400
WHERE `spell` IN (13011);

UPDATE `npc_trainer`
SET `spellcost` = 600
WHERE `spell` IN (1266);

UPDATE `npc_trainer`
SET `spellcost` = 650
WHERE `spell` IN (13012, 13023);

UPDATE `npc_trainer`
SET `spellcost` = 900
WHERE `spell` IN (13014);

UPDATE `npc_trainer`
SET `spellcost` = 1150
WHERE `spell` IN (13024);

UPDATE `npc_trainer`
SET `spellcost` = 1170
WHERE `spell` IN (13037);

UPDATE `npc_trainer`
SET `spellcost` = 1500
WHERE `spell` IN (2858, 5147);

UPDATE `npc_trainer`
SET `spellcost` = 1750
WHERE `spell` IN (13025, 13038);

UPDATE `npc_trainer`
SET `spellcost` = 1800
WHERE `spell` IN (13016);

UPDATE `npc_trainer`
SET `spellcost` = 1890
WHERE `spell` IN (13017);

UPDATE `npc_trainer`
SET `spellcost` = 2000
WHERE `spell` IN (1035, 5566, 13039);

UPDATE `npc_trainer`
SET `spellcost` = 2100
WHERE `spell` IN (13026);

UPDATE `npc_trainer`
SET `spellcost` = 3000
WHERE `spell` IN (6144);

UPDATE `npc_trainer`
SET `spellcost` = 5000
WHERE `spell` IN (1225);

UPDATE `npc_trainer`
SET `spellcost` = 7000
WHERE `spell` IN (1210);

UPDATE `npc_trainer`
SET `spellcost` = 8000
WHERE `spell` IN (8414, 8441);

UPDATE `npc_trainer`
SET `spellcost` = 10000
WHERE `spell` IN (8420, 8463);

UPDATE `npc_trainer`
SET `spellcost` = 12000
WHERE `spell` IN (8448);

UPDATE `npc_trainer`
SET `spellcost` = 13000
WHERE `spell` IN (8497);

UPDATE `npc_trainer`
SET `spellcost` = 14000
WHERE `spell` IN (8415, 8442, 13015);

UPDATE `npc_trainer`
SET `spellcost` = 15000
WHERE `spell` IN (8421, 8460, 10141);

UPDATE `npc_trainer`
SET `spellcost` = 18000
WHERE `spell` IN (1475, 8464, 10146, 10152, 10162);

UPDATE `npc_trainer`
SET `spellcost` = 23000
WHERE `spell` IN (10194);

UPDATE `npc_trainer`
SET `spellcost` = 26000
WHERE `spell` IN (10198, 10203);

UPDATE `npc_trainer`
SET `spellcost` = 28000
WHERE `spell` IN (10213, 22784);

UPDATE `npc_trainer`
SET `spellcost` = 32000
WHERE `spell` IN (10221, 10224);

UPDATE `npc_trainer`
SET `spellcost` = 35000
WHERE `spell` IN (10147, 10178);

UPDATE `npc_trainer`
SET `spellcost` = 36000
WHERE `spell` IN (10154, 10204, 10231);

UPDATE `npc_trainer`
SET `spellcost` = 38000
WHERE `spell` IN (10158, 10184, 10214, 10218);

UPDATE `npc_trainer`
SET `spellcost` = 40000
WHERE `spell` IN (10056, 10164, 10210);

UPDATE `npc_trainer`
SET `spellcost` = 42000
WHERE `spell` IN (10155, 10190, 10196, 12829);

UPDATE `npc_trainer`
SET `spellcost` = 100
WHERE `spell` IN (1420, 1888, 5181, 8922);

UPDATE `npc_trainer`
SET `spellcost` = 400
WHERE `spell` IN (47340, 51303);

UPDATE `npc_trainer`
SET `spellcost` = 550
WHERE `spell` = 52423;

UPDATE `npc_trainer`
SET `spellcost` = 700
WHERE `spell` = 51457;

UPDATE `npc_trainer`
SET `spellcost` = 800
WHERE `spell` = 20958;

UPDATE `npc_trainer`
SET `spellcost` = 1170
WHERE `spell` = 20960;

UPDATE `npc_trainer`
SET `spellcost` = 1200
WHERE `spell` IN (48310, 51494);

UPDATE `npc_trainer`
SET `spellcost` = 1400
WHERE `spell` IN (51563, 51567);

UPDATE `npc_trainer`
SET `spellcost` = 1700
WHERE `spell` = 48311;

UPDATE `npc_trainer`
SET `spellcost` = 2100
WHERE `spell` = 51788;

UPDATE `npc_trainer`
SET `spellcost` = 2300
WHERE `spell` IN (51495, 51564, 51568, 52424);

UPDATE `npc_trainer`
SET `spellcost` = 3000
WHERE `spell` IN (19337, 36922);

UPDATE `npc_trainer`
SET `spellcost` = 3500
WHERE `spell` = 20459;

UPDATE `npc_trainer`
SET `spellcost` = 4000
WHERE `spell` IN (1890, 47267, 47327);

UPDATE `npc_trainer`
SET `spellcost` = 6000
WHERE `spell` = 36923;

UPDATE `npc_trainer`
SET `spellcost` = 9000
WHERE `spell` IN (1891, 20460, 51537);

UPDATE `npc_trainer`
SET `spellcost` = 10000
WHERE `spell` IN (36924, 47285, 47326);

UPDATE `npc_trainer`
SET `spellcost` = 11000
WHERE `spell` = 26574;

UPDATE `npc_trainer`
SET `spellcost` = 12000
WHERE `spell` = 47266;

UPDATE `npc_trainer`
SET `spellcost` = 14000
WHERE `spell` = 20461;

UPDATE `npc_trainer`
SET `spellcost` = 16000
WHERE `spell` = 51538;

UPDATE `npc_trainer`
SET `spellcost` = 18000
WHERE `spell` IN (6386, 36925);

UPDATE `npc_trainer`
SET `spellcost` = 20000
WHERE `spell` = 20952;

UPDATE `npc_trainer`
SET `spellcost` = 22000
WHERE `spell` IN (5571, 51527);

UPDATE `npc_trainer`
SET `spellcost` = 24000
WHERE `spell` = 51539;

UPDATE `npc_trainer`
SET `spellcost` = 26000
WHERE `spell` = 51753;

UPDATE `npc_trainer`
SET `spellcost` = 27000
WHERE `spell` = 36926;

UPDATE `npc_trainer`
SET `spellcost` = 28000
WHERE `spell` = 20953;

UPDATE `npc_trainer`
SET `spellcost` = 30000
WHERE `spell` IN (14820, 51528);

UPDATE `npc_trainer`
SET `spellcost` = 32000
WHERE `spell` = 51540;

UPDATE `npc_trainer`
SET `spellcost` = 34000
WHERE `spell` = 51418;

UPDATE `npc_trainer`
SET `spellcost` = 46000
WHERE `spell` IN (10335, 20954, 27843, 27845, 51744, 57706);

UPDATE `npc_trainer`
SET `spellcost` = 2200
WHERE `spell` = 1424
AND `entry` IN (987, 1231, 1404, 3038, 3039, 3040, 3065, 3171, 3352, 3406, 3407, 3601, 3963, 4138, 4146, 4205, 5115, 5116, 5117, 5501, 5515, 5516, 5517, 8308, 10930, 60483, 60484, 60485, 60486, 60487, 61624, 61625, 61626, 61628, 61640, 80105, 80245, 80458, 80855, 81050);

UPDATE `npc_trainer`
SET `spellcost` = 200
WHERE `spell` = 3128
AND `entry` IN (987, 1231, 1404, 3038, 3039, 3040, 3065, 3171, 3352, 3406, 3407, 3601, 3963, 4138, 4146, 4205, 5115, 5116, 5117, 5501, 5515, 5516, 5517, 8308, 10930, 60483, 60484, 60485, 60486, 60487, 61624, 61625, 61626, 61628, 61640, 80105, 80245, 80458, 80855, 81050);

