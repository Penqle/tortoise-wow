-- ==============================================
-- FILE: fix_survival_skill.sql
-- Fix: Survival 专业技能熟练度无法正常获取/重置 Bug
-- 根因:
--   1) UpdateGatherSkill 中 SKILL_SURVIVAL2 被注释 (Player.cpp)
--   2) 46051 (Apprentice Survivalist) basePoints2=1 导致 step=2, max=150 (应为 step=1, max=75)
--   3) 46057 (Artisan Survivalist, step=4, max=300) 未加入任何训练师
-- 修复:
--   - 46051 basePoints2 1→0 (step=1, max=75)
--   - 添加 46057 到 Expert 训练师 (63071, 63072)
-- GENERATED: 20260608223118
-- ==============================================

-- 1) 修复 46051 Apprentice Survivalist: basePoints=1→0
--    之前: step=2, max=150 (实际是 Journeyman 级别)
--    之后: step=1, max=75  (Apprentice 标准)
UPDATE `spell_template` SET `effectBasePoints2` = 0 WHERE `entry` = 46051;

-- 2) 添加 Artisan Survivalist (46057) 到 Expert 训练师
--    46057: step=4 (effectBasePoints2=3, effectBaseDice2=1 → step=4), max=300
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
(63071, 46057, 350, 142, 225, 35),
(63072, 46057, 350, 142, 225, 35);

-- ==============================================
-- 修复后技能等级链:
--   46051 (Apprentice): step=1, max=75   (需 skill 0)
--   46052 (Journeyman): step=2, max=150  (需 skill 50)
--   46055 (Expert):     step=3, max=225  (需 skill 125)
--   46057 (Artisan):    step=4, max=300  (需 skill 225)
-- ==============================================
