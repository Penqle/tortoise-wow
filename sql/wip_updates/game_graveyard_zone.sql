-- ==============================================
-- FILE: game_graveyard_zone.sql
-- Fix: 暴风城监狱 (zone 717) 死亡后灵魂飞到菲拉斯
-- 根因: ghost_zone=717 的 safeLocId=106 (菲拉斯)
-- 修复: 改为 safeLocId=41 (暴风城)
-- 来源: bug fix/2026-06-03-graveyard-zone-bindings/
-- 热重载: .reload game_graveyard_zone
-- ==============================================

UPDATE game_graveyard_zone
SET id = 41
WHERE ghost_zone = 717 AND id = 106;
