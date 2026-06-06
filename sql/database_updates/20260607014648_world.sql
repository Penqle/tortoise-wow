-- ==============================================
-- FILE: 20260607014648_world.sql
-- GENERATED: 20260607014648
-- 来源: wip_updates/ (合并 8 个修复项)
-- ==============================================
-- 包含以下修复:
-- 1. item_template_food_type - 宠物喂食 food_type
-- 2. game_graveyard_zone - 暴风城监狱墓地绑定
-- 3. creature_template_npc_flags - 飞行管理员 npc_flags
-- 4. gameobject_template_deino_portal - Deino 传送门
-- 5. item_template_script_name - 改名卡 + 种族转换代币
-- 6. shop_items_description_loc4 - 商城中文描述修正
-- 7. item_template_disenchant_id - 分解 ID
-- 8. creature_new_flight_masters - 新飞行管理员 spawn

-- ==============================================
-- Fix 1: 宠物喂食 food_type
-- ==============================================
-- 肉类 (Meat)
UPDATE item_template SET food_type = 1 
WHERE food_type = 0 AND class = 0 AND subclass = 0 
AND (name LIKE '%Jerky%' OR name LIKE '%Meat%' OR name LIKE '%Haunch%' 
OR name LIKE '%Steak%' OR name LIKE '%Shank%' OR name LIKE '%Ribs%' 
OR name LIKE '%Kabob%' OR name LIKE '%Flank%' OR name LIKE '%Pork%' 
OR name LIKE '%Boar%' OR name LIKE '%Bear%' OR name LIKE '%Wolf%' 
OR name LIKE '%Lion%' OR name LIKE '%Crocolisk%' OR name LIKE '%Kodo%' 
OR name LIKE '%Coyote%' OR name LIKE '%Hog%' OR name LIKE '%Mutton%');

-- 鱼类 (Fish)
UPDATE item_template SET food_type = 2 
WHERE food_type = 0 AND class = 0 AND subclass = 0 
AND (name LIKE '%Fish%' OR name LIKE '%Mackerel%' OR name LIKE '%Trout%' 
OR name LIKE '%Salmon%' OR name LIKE '%Bass%' OR name LIKE '%Tuna%' 
OR name LIKE '%Snapper%' OR name LIKE '%Grouper%' OR name LIKE '%Lobster%' 
OR name LIKE '%Shrimp%' OR name LIKE '%Crab%' OR name LIKE '%Clam%');

-- 奶酪 (Cheese)
UPDATE item_template SET food_type = 3 
WHERE food_type = 0 AND class = 0 AND subclass = 0 
AND (name LIKE '%Sharp%' OR name LIKE '%Mild%' OR name LIKE '%Bleu%' 
OR name LIKE '%Cheddar%' OR name LIKE '%Brie%' OR name LIKE '%Swiss%' 
OR name LIKE '%Gouda%' OR name LIKE '%Cheese%');

-- 面包 (Bread)
UPDATE item_template SET food_type = 4 
WHERE food_type = 0 AND class = 0 AND subclass = 0 
AND (name LIKE '%Bread%' OR name LIKE '%Loaf%' OR name LIKE '%Muffin%' 
OR name LIKE '%Biscuit%' OR name LIKE '%Baguette%');

-- 蘑菇 (Fungus)
UPDATE item_template SET food_type = 5 
WHERE food_type = 0 AND class = 0 AND subclass = 0 
AND (name LIKE '%Mushroom%' OR name LIKE '%Morel%' OR name LIKE '%Truffle%' 
OR name LIKE '%Fungus%' OR name LIKE '%Mold%');

-- 水果 (Fruit)
UPDATE item_template SET food_type = 6 
WHERE food_type = 0 AND class = 0 AND subclass = 0 
AND (name LIKE '%Apple%' OR name LIKE '%Banana%' OR name LIKE '%Melon%' 
OR name LIKE '%Grape%' OR name LIKE '%Orange%' OR name LIKE '%Pear%' 
OR name LIKE '%Peach%' OR name LIKE '%Cherry%' OR name LIKE '%Strawberry%' 
OR name LIKE '%Watermelon%' OR name LIKE '%Pumpkin%');

-- 生肉 (Raw Meat)
UPDATE item_template SET food_type = 7 
WHERE food_type = 0 AND class = 7 AND subclass = 0 
AND (name LIKE '%Meat%' OR name LIKE '%Flank%' OR name LIKE '%Ribs%' 
OR name LIKE '%Flesh%');

-- 生鱼 (Raw Fish)
UPDATE item_template SET food_type = 8 
WHERE food_type = 0 AND class = 7 AND subclass = 0 
AND (name LIKE '%Fish%' OR name LIKE '%Mackerel%' OR name LIKE '%Trout%' 
OR name LIKE '%Salmon%' OR name LIKE '%Bass%');

-- ==============================================
-- Fix 2: 暴风城监狱墓地绑定
-- 热重载: .reload game_graveyard_zone
-- ==============================================
UPDATE game_graveyard_zone
SET id = 41
WHERE ghost_zone = 717 AND id = 106;

-- ==============================================
-- Fix 3: 飞行管理员 npc_flags
-- ==============================================
UPDATE creature_template 
SET npc_flags = npc_flags | 8 
WHERE entry = 11042;

-- ==============================================
-- Fix 4: Deino 传送门 GO 模板
-- 需重启 mangosd 生效
-- ==============================================
INSERT INTO gameobject_template
(entry, type, displayId, name, faction, flags, size, 
 data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10,
 data11, data12, data13, data14, data15, data16, data17, data18, data19, data20,
 data21, data22, data23, mingold, maxgold, phase_quest_id, script_name)
VALUES
(3000240, 1, 4395, 'Amani Alor Portal (Visual)', 0, 0, 1.0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, ''),
(3000241, 1, 4395, 'Amani Alor Portal (Clickable)', 0, 0, 1.0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 'go_portal_amanialor');

-- ==============================================
-- Fix 5: 改名卡 + 种族转换代币 script_name
-- 需重启 mangosd 生效
-- ==============================================
UPDATE item_template 
SET script_name = 'item_character_rename' 
WHERE entry = 50000;

UPDATE item_template 
SET script_name = 'shop_racechange' 
WHERE entry IN (50603, 50604, 50605, 50606, 50607, 50608, 50609, 50610, 50612, 50613);

-- ==============================================
-- Fix 6: 商城种族转换中文描述修正
-- ==============================================
UPDATE shop_items SET description_loc4 = '种族转换：地精' WHERE id = 14 AND item = 50613;
UPDATE shop_items SET description_loc4 = '种族转换：高等精灵' WHERE id = 15 AND item = 50612;

-- ==============================================
-- Fix 7: 分解 ID
-- 需重启 mangosd 生效
-- ==============================================
UPDATE item_template
SET disenchant_id = 
  CASE quality
    WHEN 2 THEN
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
    WHEN 3 THEN
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
    WHEN 4 THEN
      CASE
        WHEN item_level BETWEEN 1 AND 44 THEN 61
        WHEN item_level BETWEEN 45 AND 54 THEN 62
        WHEN item_level BETWEEN 55 AND 59 THEN 63
        WHEN item_level >= 60 THEN 64
        ELSE 0
      END
    ELSE disenchant_id
  END
WHERE (class = 2 OR class = 4)
  AND quality BETWEEN 2 AND 4
  AND disenchant_id = 0;

-- ==============================================
-- Fix 8: 新飞行管理员 spawn
-- 需重启 mangosd 生效
-- ==============================================
INSERT INTO creature (guid,id,id2,id3,id4,map,position_x,position_y,position_z,orientation,spawntimesecsmin,spawntimesecsmax,wander_distance,health_percent,mana_percent,movement_type,spawn_flags,visibility_mod)
VALUES
(3622006,52093,0,0,0,0,-5421.91,-2930.01,347.25,0,600,600,0,100,100,0,0,0),
(3622007,92943,0,0,0,0,1857.56,-3658.47,143.73,0,600,600,0,100,100,0,0,0),
(3622008,2226,0,0,0,0,2008.80,2842.16,3.00,0,600,600,0,100,100,0,0,0),
(3622009,1573,0,0,0,0,-5047.71,474.75,418.61,0,600,600,0,100,100,0,0,0),
(3622010,16227,0,0,0,1,-570.74,-7849.85,52.11,0,600,600,0,100,100,0,0,0),
(3622011,92942,0,0,0,1,818.91,-5006.31,19.91,0,600,600,0,100,100,0,0,0),
(3622012,11138,0,0,0,1,8908.09,-5937.13,11.13,0,600,600,0,100,100,0,0,0),
(3622013,11139,0,0,0,1,8185.64,-6489.25,26.87,0,600,600,0,100,100,0,0,0);
