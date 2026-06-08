-- ==============================================
-- FILE: fix_pet_food_type.sql
-- Fix: 宠物喂食"没有喜欢食物"问题
-- 根因: item_template.food_type 全为 0，Pet::HaveInDiet() 返回 false
-- 修复: 按食物名称分类设置 food_type (1-8)
-- GENERATED: 20260608215346
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

-- ==============================================
-- V2: 补全 LIKE 条件未覆盖的高等级/特殊物品
-- ==============================================

-- 肉类 (Meat) - V2 补全
UPDATE item_template SET food_type = 1 WHERE entry = 21023;  -- Dirge's Kickin' Chimaerok Chops (lv65)
UPDATE item_template SET food_type = 1 WHERE entry = 50739;  -- Roasted Tauren (lv65)
UPDATE item_template SET food_type = 1 WHERE entry = 50741;  -- Gnome Stew (lv65)
UPDATE item_template SET food_type = 1 WHERE entry = 60976;  -- Danonzo's Tel'Abim Surprise (lv65)
UPDATE item_template SET food_type = 1 WHERE entry = 8952;   -- Roasted Quail (lv55)
UPDATE item_template SET food_type = 1 WHERE entry = 20452;  -- Smoked Desert Dumplings (lv55)
UPDATE item_template SET food_type = 1 WHERE entry = 21235;  -- Winter Veil Roast (lv55)
UPDATE item_template SET food_type = 1 WHERE entry = 53015;  -- Gurubashi Gumbo (lv55)
UPDATE item_template SET food_type = 1 WHERE entry = 68513;  -- Fried Strider with a Side of Berries (lv45)
UPDATE item_template SET food_type = 1 WHERE entry = 17408;  -- Spicy Beefstick (lv45)
UPDATE item_template SET food_type = 1 WHERE entry = 19306;  -- Crunchy Frog (lv45)
UPDATE item_template SET food_type = 1 WHERE entry = 12210;  -- Roast Raptor (lv35)
UPDATE item_template SET food_type = 1 WHERE entry = 12212;  -- Jungle Stew (lv35)
UPDATE item_template SET food_type = 1 WHERE entry = 12213;  -- Carrion Surprise (lv35)
UPDATE item_template SET food_type = 1 WHERE entry = 12214;  -- Mystery Stew (lv35)
UPDATE item_template SET food_type = 1 WHERE entry = 6807;   -- Frog Leg Stew (lv35)
UPDATE item_template SET food_type = 1 WHERE entry = 5477;   -- Strider Stew (lv20)
UPDATE item_template SET food_type = 1 WHERE entry = 5478;   -- Dig Rat Stew (lv20)
UPDATE item_template SET food_type = 1 WHERE entry = 733;    -- Westfall Stew (lv15)
UPDATE item_template SET food_type = 1 WHERE entry = 724;    -- Goretusk Liver Pie (lv15)
UPDATE item_template SET food_type = 1 WHERE entry = 3220;   -- Blood Sausage (lv15)
UPDATE item_template SET food_type = 1 WHERE entry = 23326;  -- Midsummer Sausage (lv1)
UPDATE item_template SET food_type = 1 WHERE entry = 23435;  -- Elderberry Pie (lv1)

-- 鱼类 (Fish) - V2 补全
UPDATE item_template SET food_type = 2 WHERE entry = 60977;  -- Danonzo's Tel'Abim Delight (lv65)
UPDATE item_template SET food_type = 2 WHERE entry = 60978;  -- Danonzo's Tel'Abim Medley (lv65)
UPDATE item_template SET food_type = 2 WHERE entry = 42163;  -- Squid Eel Skewer (lv55)
UPDATE item_template SET food_type = 2 WHERE entry = 42164;  -- Deep Sea Stew (lv55)
UPDATE item_template SET food_type = 2 WHERE entry = 8957;   -- Spinefin Halibut (lv55)
UPDATE item_template SET food_type = 2 WHERE entry = 13928;  -- Grilled Squid (lv45)
UPDATE item_template SET food_type = 2 WHERE entry = 13930;  -- Filet of Redgill (lv45)
UPDATE item_template SET food_type = 2 WHERE entry = 13931;  -- Nightfin Soup (lv45)
UPDATE item_template SET food_type = 2 WHERE entry = 13755;  -- Winter Squid (lv45)
UPDATE item_template SET food_type = 2 WHERE entry = 6887;   -- Spotted Yellowtail (lv45)
UPDATE item_template SET food_type = 2 WHERE entry = 9681;   -- Grilled King Crawler Legs (lv45)

-- 面包 (Bread) - V2 补全
UPDATE item_template SET food_type = 4 WHERE entry = 45001;  -- Delicious Pizza (lv65)
UPDATE item_template SET food_type = 4 WHERE entry = 40001;  -- Delicious Pizza (lv65)
UPDATE item_template SET food_type = 4 WHERE entry = 83271;  -- Delicious Birthday Cake (lv65)
UPDATE item_template SET food_type = 4 WHERE entry = 21930;  -- Juicy Kezan Fruitcake (lv65)
UPDATE item_template SET food_type = 4 WHERE entry = 21254;  -- Winter Veil Cookie (lv55)
UPDATE item_template SET food_type = 4 WHERE entry = 21537;  -- Festival Dumplings (lv55)
UPDATE item_template SET food_type = 4 WHERE entry = 16169;  -- Wild Ricecake (lv35)

-- 蘑菇 (Fungus) - V2 补全
UPDATE item_template SET food_type = 5 WHERE entry = 18254;  -- Runn Tum Tuber Surprise (lv55)
UPDATE item_template SET food_type = 5 WHERE entry = 8948;   -- Dried King Bolete (lv55)

-- 水果 (Fruit) - V2 补全
UPDATE item_template SET food_type = 6 WHERE entry = 20031;  -- Essence Mango (lv65)
UPDATE item_template SET food_type = 6 WHERE entry = 83309;  -- Empowering Herbal Salad (lv55)
UPDATE item_template SET food_type = 6 WHERE entry = 21030;  -- Darnassus Kimchi Pie (lv45)
UPDATE item_template SET food_type = 6 WHERE entry = 19994;  -- Harvest Fruit (lv55)
UPDATE item_template SET food_type = 6 WHERE entry = 11415;  -- Mixed Berries (lv55)
UPDATE item_template SET food_type = 6 WHERE entry = 13810;  -- Blessed Sunfruit (lv55)
UPDATE item_template SET food_type = 6 WHERE entry = 8953;   -- Deep Fried Plantains (lv55)

-- 生鱼 (Raw Fish) - V2 补全
UPDATE item_template SET food_type = 8 WHERE entry = 4603;   -- Raw Spotted Yellowtail (lv45)
UPDATE item_template SET food_type = 8 WHERE entry = 13758;  -- Raw Redgill (lv45)
UPDATE item_template SET food_type = 8 WHERE entry = 8959;   -- Raw Spinefin Halibut (lv55)

-- ==============================================
-- 验证
-- ==============================================
-- SELECT food_type, COUNT(*) as cnt, MIN(item_level) min_lv, MAX(item_level) max_lv
-- FROM item_template WHERE food_type > 0
-- GROUP BY food_type ORDER BY food_type;
