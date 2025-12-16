DELETE FROM `creature_loot_template` WHERE `entry` = 61533;

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 
(61533, 2772, 0.02, 0, 1, 1, 0),
(61533, 3827, 0.02, 0, 1, 1, 0),
(61533, 3858, 0.02, 0, 1, 1, 0),
(61533, 3928, 0.02, 0, 1, 1, 0),
(61533, 4305, 0.02, 0, 1, 1, 0),
(61533, 4306, 0.04, 0, 1, 1, 0),
(61533, 4338, 0.02, 0, 1, 1, 0),
(61533, 4500, 0.06, 0, 1, 1, 109),
(61533, 5759, 0.0767, 0, 1, 1, 0),
(61533, 6149, 0.02, 0, 1, 1, 0),
(61533, 7909, 0.08, 0, 1, 1, 0),
(61533, 7910, 0.1023, 0, 1, 1, 0),
(61533, 8766, 2.0716, 0, 1, 1, 0),
(61533, 8838, 0.02, 0, 1, 1, 0),
(61533, 8932, 0.04, 0, 1, 1, 0),
(61533, 8948, 0.04, 0, 1, 1, 0),
(61533, 8950, 0.06, 0, 1, 1, 0),
(61533, 8952, 5.4731, 0, 1, 1, 0),
(61533, 8953, 0.02, 0, 1, 1, 0),
(61533, 10305, 0.36, 0, 1, 1, 0),
(61533, 10306, 0.5, 0, 1, 1, 0),
(61533, 10307, 0.32, 0, 1, 1, 0),
(61533, 10308, 0.24, 0, 1, 1, 0),
(61533, 10309, 0.14, 0, 1, 1, 0),
(61533, 10310, 0.16, 0, 1, 1, 0),
(61533, 10620, 0.1, 0, 1, 1, 0),
(61533, 12365, 0.04, 0, 1, 1, 0),
(61533, 12694, 0.02, 0, 1, 1, 0),
(61533, 12695, 0.02, 0, 1, 1, 0),
(61533, 12704, 0.02, 0, 1, 1, 0),
(61533, 12804, 4.9616, 0, 1, 1, 0),
(61533, 13444, 1.4, 0, 1, 1, 0),
(61533, 13446, 2.7, 0, 1, 1, 0),
(61533, 13464, 0.02, 0, 1, 1, 0),
(61533, 13466, 0.04, 0, 1, 1, 0),
(61533, 13490, 0.02, 0, 1, 1, 0),
(61533, 13518, 0.02, 0, 1, 1, 0),
(61533, 14047, 34.3223, 0, 1, 3, 0),
(61533, 14478, 0.02, 0, 1, 1, 0),
(61533, 14492, 0.02, 0, 1, 1, 0),
(61533, 14494, 0.02, 0, 1, 1, 0),
(61533, 14496, 0.02, 0, 1, 1, 0),
(61533, 14498, 0.02, 0, 1, 1, 0),
(61533, 14504, 0.02, 0, 1, 1, 0),
(61533, 14506, 0.02, 0, 1, 1, 0),
(61533, 14508, 0.02, 0, 1, 1, 0),
(61533, 15737, 0.02, 0, 1, 1, 0),
(61533, 15743, 0.02, 0, 1, 1, 0),
(61533, 15746, 0.02, 0, 1, 1, 0),
(61533, 15757, 0.02, 0, 1, 1, 0),
(61533, 15765, 0.02, 0, 1, 1, 0),
(61533, 16215, 0.02, 0, 1, 1, 0),
(61533, 19230, 0.0256, 0, 1, 1, 0),
(61533, 19232, 0.02, 0, 1, 1, 0),
(61533, 19259, 0.0512, 0, 1, 1, 0),
(61533, 19269, 0.02, 0, 1, 1, 0),
(61533, 19270, 0.02, 0, 1, 1, 0),
(61533, 19271, 0.02, 0, 1, 1, 0),
(61533, 19278, 0.02, 0, 1, 1, 0),
(61533, 19280, 0.0256, 0, 1, 1, 0),
(61533, 24024, 2.5, 0, -24024, 1, 0),
(61533, 24032, 0.01, 0, -24032, 1, 0),
(61533, 30046, 0.5, 0, -30046, 1, 0),
(61533, 30079, 0.01, 2, -30079, 1, 0),
(61533, 30080, 0.5, 0, -30080, 1, 0),
(61533, 30081, 0.5, 0, -30081, 1, 0),
(61533, 30082, 0.0025, 0, -30082, 1, 0),
(61533, 30083, 0.5, 3, -30083, 1, 0),
(61533, 30086, 0.0025, 0, -30086, 1, 0),
(61533, 30088, 0.01, 0, -30088, 1, 0),
(61533, 30090, 2.5, 10, -30090, 1, 0),
(61533, 61707, 100, 0, 1, 1, 0);

-- can you reduce drop chances of item 61706
-- 24% to 15%, 
-- 44% to 18% 
-- 89% to 41%

-- for item 61707, change drop chances to 

-- 10.4% to 13.5%
-- 6.3% to 8.8%

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 8.8 WHERE `entry` = 61367 AND `item` = 61707 AND `groupid` = 0;

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 13.5 WHERE `entry` = 61359 AND `item` = 61707 AND `groupid` = 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 13.5 WHERE `entry` = 61358 AND `item` = 61707 AND `groupid` = 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 13.5 WHERE `entry` = 61358 AND `item` = 61707 AND `groupid` = 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 13.5 WHERE `entry` = 61356 AND `item` = 61707 AND `groupid` = 0;

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15, `mincountOrRef` = 1, `maxcount` = 1, `condition_id` = 0 WHERE `entry` = 61338 AND `item` = 61706 AND `groupid` = 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15, `mincountOrRef` = 1, `maxcount` = 1, `condition_id` = 0 WHERE `entry` = 61339 AND `item` = 61706 AND `groupid` = 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15, `mincountOrRef` = 1, `maxcount` = 1, `condition_id` = 0 WHERE `entry` = 61340 AND `item` = 61706 AND `groupid` = 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15, `mincountOrRef` = 1, `maxcount` = 1, `condition_id` = 0 WHERE `entry` = 61341 AND `item` = 61706 AND `groupid` = 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -18, `mincountOrRef` = 1, `maxcount` = 1, `condition_id` = 0 WHERE `entry` = 61354 AND `item` = 61706 AND `groupid` = 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -18, `mincountOrRef` = 1, `maxcount` = 1, `condition_id` = 0 WHERE `entry` = 61349 AND `item` = 61706 AND `groupid` = 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -18, `mincountOrRef` = 1, `maxcount` = 1, `condition_id` = 0 WHERE `entry` = 61350 AND `item` = 61706 AND `groupid` = 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -41, `mincountOrRef` = 1, `maxcount` = 1, `condition_id` = 0 WHERE `entry` = 61352 AND `item` = 61706 AND `groupid` = 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -41, `mincountOrRef` = 1, `maxcount` = 1, `condition_id` = 0 WHERE `entry` = 61353 AND `item` = 61706 AND `groupid` = 0;
