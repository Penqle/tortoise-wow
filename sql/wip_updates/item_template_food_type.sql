-- ==============================================
-- FILE: item_template_food_type.sql
-- Fix: 宠物喂食"没有喜欢食物"问题
-- 根因: item_template.food_type 全为 0，Pet::HaveInDiet() 返回 false
-- 修复: 按食物名称分类设置 food_type (1-8)
-- 来源: bug fix/2026-06-03-fix-pet-food/
-- ==============================================

-- 1. 肉类 (Meat) - 熟肉制品
UPDATE item_template SET food_type = 1 
WHERE food_type = 0 AND class = 0 AND subclass = 0 
AND (name LIKE '%Jerky%' OR name LIKE '%Meat%' OR name LIKE '%Haunch%' 
OR name LIKE '%Steak%' OR name LIKE '%Shank%' OR name LIKE '%Ribs%' 
OR name LIKE '%Kabob%' OR name LIKE '%Flank%' OR name LIKE '%Pork%' 
OR name LIKE '%Boar%' OR name LIKE '%Bear%' OR name LIKE '%Wolf%' 
OR name LIKE '%Lion%' OR name LIKE '%Crocolisk%' OR name LIKE '%Kodo%' 
OR name LIKE '%Coyote%' OR name LIKE '%Hog%' OR name LIKE '%Mutton%');

-- 2. 鱼类 (Fish) - 熟鱼/海鲜
UPDATE item_template SET food_type = 2 
WHERE food_type = 0 AND class = 0 AND subclass = 0 
AND (name LIKE '%Fish%' OR name LIKE '%Mackerel%' OR name LIKE '%Trout%' 
OR name LIKE '%Salmon%' OR name LIKE '%Bass%' OR name LIKE '%Tuna%' 
OR name LIKE '%Snapper%' OR name LIKE '%Grouper%' OR name LIKE '%Lobster%' 
OR name LIKE '%Shrimp%' OR name LIKE '%Crab%' OR name LIKE '%Clam%');

-- 3. 奶酪 (Cheese)
UPDATE item_template SET food_type = 3 
WHERE food_type = 0 AND class = 0 AND subclass = 0 
AND (name LIKE '%Sharp%' OR name LIKE '%Mild%' OR name LIKE '%Bleu%' 
OR name LIKE '%Cheddar%' OR name LIKE '%Brie%' OR name LIKE '%Swiss%' 
OR name LIKE '%Gouda%' OR name LIKE '%Cheese%');

-- 4. 面包 (Bread)
UPDATE item_template SET food_type = 4 
WHERE food_type = 0 AND class = 0 AND subclass = 0 
AND (name LIKE '%Bread%' OR name LIKE '%Loaf%' OR name LIKE '%Muffin%' 
OR name LIKE '%Biscuit%' OR name LIKE '%Baguette%');

-- 5. 蘑菇 (Fungus)
UPDATE item_template SET food_type = 5 
WHERE food_type = 0 AND class = 0 AND subclass = 0 
AND (name LIKE '%Mushroom%' OR name LIKE '%Morel%' OR name LIKE '%Truffle%' 
OR name LIKE '%Fungus%' OR name LIKE '%Mold%');

-- 6. 水果 (Fruit)
UPDATE item_template SET food_type = 6 
WHERE food_type = 0 AND class = 0 AND subclass = 0 
AND (name LIKE '%Apple%' OR name LIKE '%Banana%' OR name LIKE '%Melon%' 
OR name LIKE '%Grape%' OR name LIKE '%Orange%' OR name LIKE '%Pear%' 
OR name LIKE '%Peach%' OR name LIKE '%Cherry%' OR name LIKE '%Strawberry%' 
OR name LIKE '%Watermelon%' OR name LIKE '%Pumpkin%');

-- 7. 生肉 (Raw Meat) - 原材料
UPDATE item_template SET food_type = 7 
WHERE food_type = 0 AND class = 7 AND subclass = 0 
AND (name LIKE '%Meat%' OR name LIKE '%Flank%' OR name LIKE '%Ribs%' 
OR name LIKE '%Flesh%');

-- 8. 生鱼 (Raw Fish) - 原材料
UPDATE item_template SET food_type = 8 
WHERE food_type = 0 AND class = 7 AND subclass = 0 
AND (name LIKE '%Fish%' OR name LIKE '%Mackerel%' OR name LIKE '%Trout%' 
OR name LIKE '%Salmon%' OR name LIKE '%Bass%');
