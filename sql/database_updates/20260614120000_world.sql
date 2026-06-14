-- ============================================================================
-- FILE: 20260614120000_world.sql
-- DESC: 猎人宠物7种族新技能完整链路修复
--       Spider(3) Web / Bear(4) Roar of Fortitude / Crocolisk(6) Death Roll
--       Crab(8) Bubble Barrier / Raptor(11) Savage Rend
--       Tallstrider(12) Strider Presence / Hyena(25) Packleader
-- FIX:
--   V1 - spell_template: 更新旧教学法术指向新技能, 插入新教学法术(36951-36961)
--   V2 - pet_spell_data: 为7家族添加种族技能到spell_id2, 新建9xxx条目
--       - skill_line_ability: learn_on_get_skill = 2
--   V3 - npc_trainer: 640条训练师教学记录(20法术×32NPC)
--       - creature_template: 拆分共享条目, 补齐缺失pet_spell_list_id
--       - petcreateinfo_spell: 鳄鱼Death Roll
-- ============================================================================

-- ============================================================================
-- V1: spell_template - 教学法术链
-- ============================================================================

-- PART A: 更新旧教学法术 → 新种族技能
UPDATE `spell_template` SET `effectTriggerSpell1` = 36531 WHERE `entry` = 4814;   -- Strider Presence
UPDATE `spell_template` SET `effectTriggerSpell1` = 36535 WHERE `entry` = 4732;   -- Roar of Fortitude
UPDATE `spell_template` SET `effectTriggerSpell1` = 36533 WHERE `entry` IN (4782, 4783, 4785);  -- Web

-- PART B: 插入新教学法术 (Pet Teach + Hunter Learn)
INSERT IGNORE INTO `spell_template` (`entry`, `name`, `description`, `effect1`, `effectTriggerSpell1`, `effectBasePoints1`, `effectImplicitTargetA1`, `attributes`) VALUES
-- Bubble Barrier (螃蟹)
(36951, 'Bubble Barrier',
 'Teaches your tamed crab the Bubble Barrier ability.',
 36, 36523, -1, 5, 262400),
(36958, 'Bubble Barrier',
 'Allows a hunter to teach $ghis:her; tamed crab the Bubble Barrier ability.',
 36, 36951, -1, 0, 262400),
-- Savage Rend (迅猛龙)
(36952, 'Savage Rend',
 'Teaches your tamed raptor the Savage Rend ability.',
 36, 36536, -1, 5, 262400),
(36959, 'Savage Rend',
 'Allows a hunter to teach $ghis:her; tamed raptor the Savage Rend ability.',
 36, 36952, -1, 0, 262400),
-- Death Roll (鳄鱼)
(36953, 'Death Roll',
 'Teaches your tamed crocilisk the Death Roll ability.',
 36, 36548, -1, 5, 262400),
(36960, 'Death Roll',
 'Allows a hunter to teach $ghis:her; tamed crocilisk the Death Roll ability.',
 36, 36953, -1, 0, 262400),
-- Packleader (鬣狗)
(36954, 'Packleader',
 'Teaches your tamed hyena the Packleader ability.',
 36, 36532, -1, 5, 262400),
(36961, 'Packleader',
 'Allows a hunter to teach $ghis:her; tamed hyena the Packleader ability.',
 36, 36954, -1, 0, 262400);

-- ============================================================================
-- V2: pet_spell_data - 种族技能数据
-- ============================================================================

-- PART A: 更新现有条目, 添加种族技能到 spell_id2
-- Spider (3) → Web 36533
UPDATE `pet_spell_data` SET `spell_id2` = 36533
WHERE `entry` IN (
  SELECT DISTINCT `pet_spell_list_id` FROM `creature_template`
  WHERE `beast_family` = 3 AND `pet_spell_list_id` > 0
  AND `pet_spell_list_id` NOT BETWEEN 9400 AND 9600
) AND `spell_id2` = 0;

-- Bear (4) → Roar of Fortitude 36535
UPDATE `pet_spell_data` SET `spell_id2` = 36535
WHERE `entry` IN (
  SELECT DISTINCT `pet_spell_list_id` FROM `creature_template`
  WHERE `beast_family` = 4 AND `pet_spell_list_id` > 0
  AND `pet_spell_list_id` NOT BETWEEN 9400 AND 9600
) AND `spell_id2` = 0;

-- Crocolisk (6) → Death Roll 36548
UPDATE `pet_spell_data` SET `spell_id2` = 36548
WHERE `entry` IN (
  SELECT DISTINCT `pet_spell_list_id` FROM `creature_template`
  WHERE `beast_family` = 6 AND `pet_spell_list_id` > 0
  AND `pet_spell_list_id` NOT BETWEEN 9400 AND 9600
) AND `spell_id2` = 0;

-- Crab (8) → Bubble Barrier 36523
UPDATE `pet_spell_data` SET `spell_id2` = 36523
WHERE `entry` IN (
  SELECT DISTINCT `pet_spell_list_id` FROM `creature_template`
  WHERE `beast_family` = 8 AND `pet_spell_list_id` > 0
  AND `pet_spell_list_id` NOT BETWEEN 9400 AND 9600
) AND `spell_id2` = 0;

-- Raptor (11) → Savage Rend 36536
UPDATE `pet_spell_data` SET `spell_id2` = 36536
WHERE `entry` IN (
  SELECT DISTINCT `pet_spell_list_id` FROM `creature_template`
  WHERE `beast_family` = 11 AND `pet_spell_list_id` > 0
  AND `pet_spell_list_id` NOT BETWEEN 9400 AND 9600
) AND `spell_id2` = 0;

-- Tallstrider (12) → Strider Presence 36531
UPDATE `pet_spell_data` SET `spell_id2` = 36531
WHERE `entry` IN (
  SELECT DISTINCT `pet_spell_list_id` FROM `creature_template`
  WHERE `beast_family` = 12 AND `pet_spell_list_id` > 0
  AND `pet_spell_list_id` NOT BETWEEN 9400 AND 9600
) AND `spell_id2` = 0;

-- Hyena (25) → Packleader 36532
UPDATE `pet_spell_data` SET `spell_id2` = 36532
WHERE `entry` IN (
  SELECT DISTINCT `pet_spell_list_id` FROM `creature_template`
  WHERE `beast_family` = 25 AND `pet_spell_list_id` > 0
  AND `pet_spell_list_id` NOT BETWEEN 9400 AND 9600
) AND `spell_id2` = 0;

-- PART B: 新建 9xxx 条目 (为缺失条目的 creature 提供独立数据)
INSERT IGNORE INTO `pet_spell_data` (`entry`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`) VALUES
-- Spider (family 3): Web
(9494, 17257, 36533, 0, 0),
-- Bear (family 4): Roar of Fortitude
(9506, 16829, 36535, 0, 0),
(9516, 16832, 36535, 0, 0),
-- Crocolisk (family 6): Death Roll
(9495, 17253, 36548, 0, 0),
(9496, 17255, 36548, 0, 0),
(9497, 17255, 36548, 0, 0),
(9498, 17257, 36548, 0, 0),
(9499, 17260, 36548, 0, 0),
(9513, 17260, 36548, 0, 0),
-- Crab (family 8): Bubble Barrier
(9509, 16828, 36523, 0, 0),
(9510, 16829, 36523, 0, 0),
(9511, 16830, 36523, 0, 0),
(9512, 16832, 36523, 0, 0),
-- Raptor (family 11): Savage Rend
(9500, 16827, 36536, 0, 0),
(9501, 16828, 36536, 0, 0),
(9502, 16829, 36536, 0, 0),
(9503, 16830, 36536, 0, 0),
(9504, 16832, 36536, 0, 0),
(9505, 16832, 36536, 0, 0),
-- Tallstrider (family 12): Strider Presence
(9507, 1742, 36531, 0, 0),
(9517, 1756, 36531, 0, 0),
(9518, 1753, 36531, 0, 0),
-- Hyena (family 25): Packleader
(9508, 17255, 36532, 0, 0);

-- PART C: skill_line_ability - 允许宠物自动学习
UPDATE `skill_line_ability` SET `learn_on_get_skill` = 2
WHERE `id` IN (6540, 6544, 6545, 6546, 6547, 6548, 6554);

-- ============================================================================
-- V3: npc_trainer - 训练师教学
-- ============================================================================

INSERT IGNORE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`)
SELECT `ct`.`entry`, `t`.`spell`, `t`.`spellcost`, `t`.`reqskill`, `t`.`reqskillvalue`, `t`.`reqlevel`
FROM `creature_template` `ct`
CROSS JOIN (
  SELECT 36560 AS `spell`, 1 AS `spellcost`, 0 AS `reqskill`, 0 AS `reqskillvalue`, 1 AS `reqlevel` UNION ALL  -- Web
  SELECT 36561, 1, 0, 0, 1 UNION ALL  -- Roar of Fortitude
  SELECT 36554, 1, 0, 0, 1 UNION ALL  SELECT 36555, 1, 0, 0, 1 UNION ALL  -- Bubble Barrier R1-R4
  SELECT 36556, 1, 0, 0, 1 UNION ALL  SELECT 36557, 1, 0, 0, 1 UNION ALL
  SELECT 36558, 1, 0, 0, 1 UNION ALL  -- Strider Presence
  SELECT 36559, 1, 0, 0, 1 UNION ALL  -- Packleader
  SELECT 36563, 1, 0, 0, 1 UNION ALL  SELECT 36564, 1, 0, 0, 1 UNION ALL  -- Savage Rend R1-R6
  SELECT 36565, 1, 0, 0, 1 UNION ALL  SELECT 36566, 1, 0, 0, 1 UNION ALL
  SELECT 36567, 1, 0, 0, 1 UNION ALL  SELECT 36568, 1, 0, 0, 1 UNION ALL
  SELECT 36569, 1, 0, 0, 1 UNION ALL  SELECT 36570, 1, 0, 0, 1 UNION ALL  -- Death Roll R1-R6
  SELECT 36571, 1, 0, 0, 1 UNION ALL  SELECT 36572, 1, 0, 0, 1 UNION ALL
  SELECT 36573, 1, 0, 0, 1 UNION ALL  SELECT 36574, 1, 0, 0, 1
) `t`
WHERE `ct`.`trainer_type` = 3 AND `ct`.`trainer_class` = 3;

-- ============================================================================
-- 全类型修复: creature_template pet_spell_list_id
-- ============================================================================

-- 新建独立条目 (拆分共享条目)
INSERT IGNORE INTO `pet_spell_data` (`entry`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`) VALUES
(9519, 1742, 36531, 0, 0),  -- Tallstrider: Strider Presence
(9520, 17255, 36532, 0, 0),  -- Hyena: Packleader
(9521, 17260, 36535, 0, 0);  -- Bear: Roar of Fortitude

-- 更新 creature_template 指向新独立条目
UPDATE `creature_template` SET `pet_spell_list_id` = 9519
WHERE `beast_family` = 12 AND `pet_spell_list_id` = 5800;
UPDATE `creature_template` SET `pet_spell_list_id` = 9520
WHERE `beast_family` = 25 AND `pet_spell_list_id` = 5883;
UPDATE `creature_template` SET `pet_spell_list_id` = 9521
WHERE `beast_family` = 4 AND `pet_spell_list_id` = 5906;

-- 补全缺失的 pet_spell_list_id (排除非可驯服NPC)
-- Spider (3)
UPDATE `creature_template` SET `pet_spell_list_id` = 9494
WHERE `beast_family` = 3 AND `pet_spell_list_id` = 0
AND `entry` NOT IN (1, 11, 18, 830, 3503, 80969, 80970, 90974, 112180, 604250, 1001000);

-- Bear (4)
UPDATE `creature_template` SET `pet_spell_list_id` = 9506
WHERE `beast_family` = 4 AND `pet_spell_list_id` = 0
AND `entry` NOT IN (6571, 6572, 6573, 6789);

-- Crocolisk (6) - 分等级分配
UPDATE `creature_template` SET `pet_spell_list_id` = 9495
WHERE `beast_family` = 6 AND `pet_spell_list_id` = 0 AND `entry` IN (1152, 2635, 4342);
UPDATE `creature_template` SET `pet_spell_list_id` = 9497
WHERE `beast_family` = 6 AND `pet_spell_list_id` = 0 AND `entry` IN (60501, 60843, 61516, 62345);
UPDATE `creature_template` SET `pet_spell_list_id` = 9498
WHERE `beast_family` = 6 AND `pet_spell_list_id` = 0 AND `entry` IN (62043, 91963, 91964);

-- Crab (8)
UPDATE `creature_template` SET `pet_spell_list_id` = 9509
WHERE `beast_family` = 8 AND `pet_spell_list_id` = 0
AND `entry` NOT IN (1, 11, 18, 3503, 80969, 80970, 90974, 112180, 604250, 1001000);

-- Raptor (11) - 分等级分配
UPDATE `creature_template` SET `pet_spell_list_id` = 9500
WHERE `beast_family` = 11 AND `pet_spell_list_id` = 0
AND `entry` IN (685, 686, 687, 856, 1015, 1016, 1018, 1023, 1353, 2559);
UPDATE `creature_template` SET `pet_spell_list_id` = 9502
WHERE `beast_family` = 11 AND `pet_spell_list_id` = 0
AND `entry` IN (3255, 3632, 3633, 3636, 3637, 4351, 4355, 4357);
UPDATE `creature_template` SET `pet_spell_list_id` = 9504
WHERE `beast_family` = 11 AND `pet_spell_list_id` = 0
AND `entry` IN (6506, 6508, 9683, 14988, 62224, 62642);

-- Tallstrider (12)
UPDATE `creature_template` SET `pet_spell_list_id` = 9507
WHERE `beast_family` = 12 AND `pet_spell_list_id` = 0
AND `entry` IN (2955, 2956, 3244, 61695, 61716, 61789);

-- Hyena (25)
UPDATE `creature_template` SET `pet_spell_list_id` = 9508
WHERE `beast_family` = 25 AND `pet_spell_list_id` = 0
AND `entry` IN (4127, 4128, 4129, 4248, 4249, 4250, 4316, 4534, 4660, 5829, 5984, 5985, 6867, 10979, 14228, 60369, 61658);

-- ============================================================================
-- Crocolisk Death Roll: petcreateinfo_spell
-- ============================================================================

INSERT IGNORE INTO `petcreateinfo_spell` (`entry`, `spell1`, `spell2`, `spell3`, `spell4`)
SELECT `ct`.`entry`, 17254, 36569, 0, 0
FROM `creature_template` `ct`
WHERE `ct`.`beast_family` = 6
AND NOT EXISTS (
  SELECT 1 FROM `petcreateinfo_spell` `pcs` WHERE `pcs`.`entry` = `ct`.`entry`
);

-- ============================================================================
-- Rank 修正: 根据生物等级分配正确的技能等级 (之前全部指向 Rank 1)
-- ============================================================================

-- 影响: Crocolisk(6) Death Roll R1-R6 / Crab(8) Bubble Barrier R1-R4 / Raptor(11) Savage Rend R1-R6

-- PART A: 等级化 (原 02_fix_spell_ranks.sql)

-- Crocolisk Death Roll
UPDATE `pet_spell_data` SET `spell_id2` = 36549 WHERE `entry` = 5849 AND `spell_id2` = 36548;
UPDATE `pet_spell_data` SET `spell_id2` = 36550 WHERE `entry` = 5851 AND `spell_id2` = 36548;
UPDATE `pet_spell_data` SET `spell_id2` = 36550 WHERE `entry` = 5852 AND `spell_id2` = 36548;
UPDATE `pet_spell_data` SET `spell_id2` = 36550 WHERE `entry` = 5853 AND `spell_id2` = 36548;
UPDATE `pet_spell_data` SET `spell_id2` = 36551 WHERE `entry` = 5854 AND `spell_id2` = 36548;
UPDATE `pet_spell_data` SET `spell_id2` = 36551 WHERE `entry` = 5855 AND `spell_id2` = 36548;
UPDATE `pet_spell_data` SET `spell_id2` = 36552 WHERE `entry` = 5857 AND `spell_id2` = 36548;
UPDATE `pet_spell_data` SET `spell_id2` = 36551 WHERE `entry` = 5858 AND `spell_id2` = 36548;
UPDATE `pet_spell_data` SET `spell_id2` = 36550 WHERE `entry` = 9495 AND `spell_id2` = 36548;
UPDATE `pet_spell_data` SET `spell_id2` = 36549 WHERE `entry` = 9496 AND `spell_id2` = 36548;
UPDATE `pet_spell_data` SET `spell_id2` = 36552 WHERE `entry` = 9497 AND `spell_id2` = 36548;
UPDATE `pet_spell_data` SET `spell_id2` = 36552 WHERE `entry` = 9498 AND `spell_id2` = 36548;
UPDATE `pet_spell_data` SET `spell_id2` = 36553 WHERE `entry` = 9499 AND `spell_id2` = 36548;
UPDATE `pet_spell_data` SET `spell_id2` = 36552 WHERE `entry` = 9513 AND `spell_id2` = 36548;

-- Crab Bubble Barrier
UPDATE `pet_spell_data` SET `spell_id2` = 36524 WHERE `entry` = 5843 AND `spell_id2` = 36523;
UPDATE `pet_spell_data` SET `spell_id2` = 36524 WHERE `entry` = 5844 AND `spell_id2` = 36523;
UPDATE `pet_spell_data` SET `spell_id2` = 36525 WHERE `entry` = 5845 AND `spell_id2` = 36523;
UPDATE `pet_spell_data` SET `spell_id2` = 36525 WHERE `entry` = 5846 AND `spell_id2` = 36523;
UPDATE `pet_spell_data` SET `spell_id2` = 36525 WHERE `entry` = 5807 AND `spell_id2` = 36523;
UPDATE `pet_spell_data` SET `spell_id2` = 36526 WHERE `entry` = 9509 AND `spell_id2` = 36523;
UPDATE `pet_spell_data` SET `spell_id2` = 36524 WHERE `entry` = 9510 AND `spell_id2` = 36523;
UPDATE `pet_spell_data` SET `spell_id2` = 36525 WHERE `entry` = 9511 AND `spell_id2` = 36523;
UPDATE `pet_spell_data` SET `spell_id2` = 36526 WHERE `entry` = 9512 AND `spell_id2` = 36523;

-- Raptor Savage Rend
UPDATE `pet_spell_data` SET `spell_id2` = 36539 WHERE `entry` = 9500 AND `spell_id2` = 36536;
UPDATE `pet_spell_data` SET `spell_id2` = 36537 WHERE `entry` = 9501 AND `spell_id2` = 36536;
UPDATE `pet_spell_data` SET `spell_id2` = 36539 WHERE `entry` = 9502 AND `spell_id2` = 36536;
UPDATE `pet_spell_data` SET `spell_id2` = 36539 WHERE `entry` = 9503 AND `spell_id2` = 36536;
UPDATE `pet_spell_data` SET `spell_id2` = 36541 WHERE `entry` = 9504 AND `spell_id2` = 36536;
UPDATE `pet_spell_data` SET `spell_id2` = 36541 WHERE `entry` = 9505 AND `spell_id2` = 36536;

-- PART B: 宽范围拆分 (原 04_wide_range_fix.sql)

-- 创建间隙新条目
INSERT IGNORE INTO `pet_spell_data` (`entry`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`) VALUES
(61976, 17255, 36548, 0, 0),
(61977, 17256, 36549, 0, 0),
(61978, 17257, 36550, 0, 0),
(61979, 17260, 36552, 0, 0),
(61980, 16827, 36523, 0, 0),
(61981, 16828, 36523, 0, 0),
(61982, 16832, 36526, 0, 0),
(61983, 16827, 36536, 0, 0),
(61984, 16828, 36536, 0, 0),
(61985, 16829, 36537, 0, 0),
(61986, 16830, 36538, 0, 0),
(61987, 16831, 36538, 0, 0),
(61988, 16831, 36539, 0, 0);

-- 更新现有条目的基础技能等级
UPDATE `pet_spell_data` SET `spell_id1` = 17258 WHERE `entry` = 9495;
UPDATE `pet_spell_data` SET `spell_id1` = 17260 WHERE `entry` = 9497;
UPDATE `pet_spell_data` SET `spell_id1` = 16830 WHERE `entry` = 9510;
UPDATE `pet_spell_data` SET `spell_id1` = 16831 WHERE `entry` = 9511;
UPDATE `pet_spell_data` SET `spell_id1` = 16831 WHERE `entry` = 9500;
UPDATE `pet_spell_data` SET `spell_id1` = 16832, `spell_id2` = 36540 WHERE `entry` = 9502;
UPDATE `pet_spell_data` SET `spell_id2` = 36540 WHERE `entry` = 9504;

-- 重新分配 creature_template.pet_spell_list_id (鳄鱼)
UPDATE `creature_template` SET `pet_spell_list_id` = 61976 WHERE `entry` = 3231;
UPDATE `creature_template` SET `pet_spell_list_id` = 5853 WHERE `entry` IN (1152, 1151, 1084);
UPDATE `creature_template` SET `pet_spell_list_id` = 5851 WHERE `entry` IN (4342, 62259);
UPDATE `creature_template` SET `pet_spell_list_id` = 5852 WHERE `entry` IN (2635, 1082, 14233);
UPDATE `creature_template` SET `pet_spell_list_id` = 61977 WHERE `entry` IN (2476, 62043);
UPDATE `creature_template` SET `pet_spell_list_id` = 61978 WHERE `entry` IN (62345, 1150, 62258);
UPDATE `creature_template` SET `pet_spell_list_id` = 5857 WHERE `entry` IN (61516, 91964);
UPDATE `creature_template` SET `pet_spell_list_id` = 61979 WHERE `entry` IN (60501, 60843, 91963);

-- 重新分配 (螃蟹)
UPDATE `creature_template` SET `pet_spell_list_id` = 61980 WHERE `entry` IN (61704, 3107, 2231);
UPDATE `creature_template` SET `pet_spell_list_id` = 5836 WHERE `entry` IN (3228, 2234);
UPDATE `creature_template` SET `pet_spell_list_id` = 5837 WHERE `entry` IN (6250, 830);
UPDATE `creature_template` SET `pet_spell_list_id` = 61981 WHERE `entry` IN (2235, 831);
UPDATE `creature_template` SET `pet_spell_list_id` = 5840 WHERE `entry` = 2233;
UPDATE `creature_template` SET `pet_spell_list_id` = 5841 WHERE `entry` IN (3814, 2236);
UPDATE `creature_template` SET `pet_spell_list_id` = 61982 WHERE `entry` = 91931;

-- 重新分配 (迅猛龙)
UPDATE `creature_template` SET `pet_spell_list_id` = 61983 WHERE `entry` = 3122;
UPDATE `creature_template` SET `pet_spell_list_id` = 61984 WHERE `entry` IN (3123, 3227);
UPDATE `creature_template` SET `pet_spell_list_id` = 61985 WHERE `entry` IN (1015, 3255, 3632, 3633, 3637, 3636);
UPDATE `creature_template` SET `pet_spell_list_id` = 61986 WHERE `entry` IN (1016, 1023, 1018, 1353, 2559, 1021, 1022, 1017, 1019, 1140, 855);
UPDATE `creature_template` SET `pet_spell_list_id` = 61987 WHERE `entry` IN (685, 856, 686, 62223, 2560, 4351, 62224, 62642);
UPDATE `creature_template` SET `pet_spell_list_id` = 61988 WHERE `entry` IN (687, 4355, 4357);

-- ============================================================================
-- 补充说明: 现有宠物补发 (非 schema 迁移, 服务器运维脚本)
-- 如果已有宠物需要补发种族技能, 在对应服务器上执行:
--
-- INSERT IGNORE INTO character_db.pet_spell (guid, spell)
-- SELECT cp.id, 36533 FROM character_pet cp
--   JOIN world_db.creature_template ct ON cp.entry = ct.entry
--   WHERE ct.beast_family = 3
--   AND NOT EXISTS (SELECT 1 FROM pet_spell ps WHERE ps.guid = cp.id AND ps.spell = 36533);
-- (对其他6家族重复, 替换beast_family和法术ID)
-- 注意: pet_spell_data 不支持热重载, 需重启 mangosd
-- ============================================================================
