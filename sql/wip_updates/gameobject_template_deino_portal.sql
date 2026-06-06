-- ==============================================
-- FILE: gameobject_template_deino_portal.sql
-- Fix: NPC Deino 传送门无反应
-- 根因: gameobject_template 中缺少 GO 3000240/3000241
--       C++ SummonGameObject() 找不到模板 → 静默失败
-- 修复: 新增两条 GO 模板记录 (视觉效果 + 可点击传送)
-- 来源: bug fix/2026-06-04-deino-portal-missing-go/
-- 需重启 mangosd 生效
-- ==============================================

-- GO 3000240 - Visual portal effect
INSERT INTO gameobject_template
(entry, type, displayId, name, faction, flags, size, 
 data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10,
 data11, data12, data13, data14, data15, data16, data17, data18, data19, data20,
 data21, data22, data23, mingold, maxgold, phase_quest_id, script_name)
VALUES
(3000240, 1, 4395, 'Amani Alor Portal (Visual)', 0, 0, 1.0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, '');

-- GO 3000241 - Clickable portal with teleport script
INSERT INTO gameobject_template
(entry, type, displayId, name, faction, flags, size, 
 data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10,
 data11, data12, data13, data14, data15, data16, data17, data18, data19, data20,
 data21, data22, data23, mingold, maxgold, phase_quest_id, script_name)
VALUES
(3000241, 1, 4395, 'Amani Alor Portal (Clickable)', 0, 0, 1.0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 'go_portal_amanialor');
