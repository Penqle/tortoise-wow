-- ==============================================
-- FILE: creature_template_npc_flags.sql
-- Fix: 达纳苏斯飞行管理员交互提示"太远了"
-- 根因: NPC 11042 (Sylvanna Forestmoon) 的 npc_flags
--       缺少 UNIT_NPC_FLAG_FLIGHTMASTER (8) 标志
-- 修复: npc_flags = 19 | 8 = 27
-- 来源: bug fix/2026-06-03-flight-master-too-far/
-- ==============================================

UPDATE creature_template 
SET npc_flags = npc_flags | 8 
WHERE entry = 11042;
