-- ==============================================
-- FILE: shop_items_description_loc4.sql
-- Fix: 商城种族转换代币中文描述写反
-- 根因: shop_items 中 id=14 (item=50613, 地精) 和
--       id=15 (item=50612, 高等精灵) 的 description_loc4 互换
-- 修复: 交换两个 description_loc4 的值
-- 来源: bug fix/2026-06-05-fix-racechange-tokens/
-- ==============================================

UPDATE shop_items SET description_loc4 = '种族转换：地精' WHERE id = 14 AND item = 50613;
UPDATE shop_items SET description_loc4 = '种族转换：高等精灵' WHERE id = 15 AND item = 50612;
