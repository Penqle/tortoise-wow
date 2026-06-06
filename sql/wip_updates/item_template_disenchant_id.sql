-- ==============================================
-- FILE: item_template_disenchant_id.sql
-- Fix: 附魔分解无法对绿色/蓝色/紫色装备使用
-- 根因: item_template.disenchant_id 全为 0
--       Spell::CheckCast 以 SPELL_FAILED_CANT_BE_DISENCHANTED 拒绝
-- 修复: 按品质+物品等级映射到正确的 disenchant_loot_template entry ID
-- 来源: bug fix/2026-06-05-fix-disenchant-id/
-- 需重启 mangosd 生效
-- ==============================================

UPDATE item_template
SET disenchant_id = 
  CASE quality
    WHEN 2 THEN -- Uncommon (Green)
      CASE
        WHEN item_level BETWEEN 1 AND 14 THEN 21
        WHEN item_level BETWEEN 15 AND 19 THEN 22
        WHEN item_level BETWEEN 20 AND 24 THEN 23
        WHEN item_level BETWEEN 25 AND 29 THEN 24
        WHEN item_level BETWEEN 30 AND 34 THEN 25
        WHEN item_level BETWEEN 35 AND 39 THEN 26
        WHEN item_level BETWEEN 40 AND 44 THEN 27
        WHEN item_level BETWEEN 45 AND 49 THEN 28
        WHEN item_level BETWEEN 50 AND 54 THEN 29
        WHEN item_level BETWEEN 55 AND 59 THEN 30
        WHEN item_level >= 60 THEN 31
        ELSE 0
      END
    WHEN 3 THEN -- Rare (Blue)
      CASE
        WHEN item_level BETWEEN 1 AND 14 THEN 1
        WHEN item_level BETWEEN 15 AND 19 THEN 2
        WHEN item_level BETWEEN 20 AND 24 THEN 3
        WHEN item_level BETWEEN 25 AND 29 THEN 4
        WHEN item_level BETWEEN 30 AND 34 THEN 5
        WHEN item_level BETWEEN 35 AND 39 THEN 6
        WHEN item_level BETWEEN 40 AND 44 THEN 7
        WHEN item_level BETWEEN 45 AND 49 THEN 8
        WHEN item_level BETWEEN 50 AND 54 THEN 9
        WHEN item_level BETWEEN 55 AND 59 THEN 10
        WHEN item_level >= 60 THEN 11
        ELSE 0
      END
    WHEN 4 THEN -- Epic (Purple)
      CASE
        WHEN item_level BETWEEN 1 AND 44 THEN 61
        WHEN item_level BETWEEN 45 AND 54 THEN 62
        WHEN item_level BETWEEN 55 AND 59 THEN 63
        WHEN item_level >= 60 THEN 64
        ELSE 0
      END
    ELSE disenchant_id
  END
WHERE (class = 2 OR class = 4)  -- Weapon or Armor
  AND quality BETWEEN 2 AND 4
  AND disenchant_id = 0;
