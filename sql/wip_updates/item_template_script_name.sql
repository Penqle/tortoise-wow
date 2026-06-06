-- ==============================================
-- FILE: item_template_script_name.sql
-- Fix: 物品 50000 改名卡 + 10 个种族转换代币 script_name 缺失
-- 根因: item_template.script_name 为 NULL
--       C++ 注册的脚本无法绑定 → 右键无效果
-- 修复: 设置正确的 script_name
-- 来源: bug fix/2026-06-04-rename-card-script-missing/
--       bug fix/2026-06-05-fix-racechange-tokens/
-- 需重启 mangosd 生效
-- ==============================================

-- 改名卡 (50000)
UPDATE item_template 
SET script_name = 'item_character_rename' 
WHERE entry = 50000;

-- 种族转换代币 (10 个)
UPDATE item_template 
SET script_name = 'shop_racechange' 
WHERE entry IN (50603, 50604, 50605, 50606, 50607, 50608, 50609, 50610, 50612, 50613);
