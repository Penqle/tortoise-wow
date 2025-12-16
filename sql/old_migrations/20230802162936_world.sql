-- hange NPC 80940 to displayid 
-- Change the weapon of NPC 11500 to 1911 

UPDATE `creature_template` SET `display_id1` = 352 WHERE `entry` = 80940;

UPDATE spell_template SET EffectBasePoints2 = 2, EffectBasePoints3 = 4 WHERE entry = 8815; -- Haste 2
UPDATE spell_template SET EffectBasePoints2 = 3, EffectBasePoints3 = 6 WHERE entry = 13680; -- Haste 3
UPDATE spell_template SET EffectBasePoints2 = 4, EffectBasePoints3 = 8 WHERE entry = 13681; -- Haste 4
UPDATE spell_template SET EffectBasePoints2 = 5, EffectBasePoints3 = 10 WHERE entry = 13682; -- Haste 5
UPDATE spell_template SET EffectBasePoints2 = 10, EffectBasePoints3 = 20 WHERE entry = 18065; -- Haste 10

-- Add graveyard for hyjal and emerald sanctum:

DELETE FROM `game_graveyard_zone` WHERE `id` = 947;

REPLACE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES (947, 616, 0);
REPLACE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES (947, 5097, 0);

-- Undead Hunter trainer in Brill and maybe UC are missing custom spells. 


DELETE FROM `npc_trainer` WHERE `entry` IN (60484, 60483, 60485, 60487, 60486);

REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES 

(60484, 796, 2200, 0, 0, 20), (60484, 1117, 600, 0, 0, 12), (60484, 1424, 2200, 0, 0, 20), (60484, 1547, 10, 0, 0, 1), (60484, 1549, 1800, 0, 0, 16), (60484, 1552, 2200, 0, 0, 20), (60484, 1563, 1800, 0, 0, 50), (60484, 1564, 18000, 0, 0, 40), (60484, 1567, 1200, 0, 0, 14), (60484, 1603, 10000, 0, 0, 32), (60484, 2003, 100, 0, 0, 4), (60484, 2898, 14000, 0, 0, 36), (60484, 2899, 1200, 0, 0, 14), (60484, 2979, 600, 0, 0, 12), (60484, 3047, 6000, 0, 0, 22), (60484, 3048, 100, 0, 0, 6), (60484, 3049, 7000, 0, 0, 26), (60484, 3128, 200, 0, 0, 8), (60484, 3663, 8000, 0, 0, 28), (60484, 3664, 14000, 0, 0, 36), (60484, 5117, 200, 0, 0, 8), (60484, 5131, 2200, 0, 0, 20), (60484, 5298, 100, 0, 0, 6), (60484, 5338, 2000, 0, 0, 18), (60484, 5385, 8000, 0, 0, 30), (60484, 6198, 1200, 0, 0, 14), (60484, 6385, 400, 0, 0, 10), (60484, 6791, 2200, 0, 0, 20), (60484, 6792, 7000, 0, 0, 24), (60484, 6999, 8000, 0, 0, 30), (60484, 8738, 18000, 0, 0, 40), (60484, 13160, 18000, 0, 0, 40), (60484, 13162, 8000, 0, 0, 30), (60484, 13164, 100, 0, 0, 4), (60484, 13545, 26000, 0, 0, 44), (60484, 13546, 40000, 0, 0, 52), (60484, 13547, 50000, 0, 0, 60), (60484, 13556, 400, 0, 0, 10), (60484, 13557, 2000, 0, 0, 18), (60484, 13558, 7000, 0, 0, 26), (60484, 13559, 12000, 0, 0, 34), (60484, 13560, 24000, 0, 0, 42), (60484, 13561, 36000, 0, 0, 50), (60484, 13562, 48000, 0, 0, 58), (60484, 13799, 1800, 0, 0, 16), (60484, 13811, 8000, 0, 0, 28), (60484, 13814, 12000, 0, 0, 34), (60484, 14332, 200, 0, 0, 8), (60484, 14333, 1800, 0, 0, 16), (60484, 14334, 7000, 0, 0, 24), (60484, 14335, 10000, 0, 0, 32), (60484, 14336, 18000, 0, 0, 40), (60484, 14337, 32000, 0, 0, 48), (60484, 14338, 46000, 0, 0, 56), (60484, 14339, 16000, 0, 0, 38), (60484, 14340, 5000, 0, 0, 60), (60484, 14341, 8000, 0, 0, 30), (60484, 14342, 26000, 0, 0, 44), (60484, 14343, 48000, 0, 0, 58), (60484, 14344, 12000, 0, 0, 34), (60484, 14345, 32000, 0, 0, 48), (60484, 14346, 2200, 0, 0, 20), (60484, 14347, 10000, 0, 0, 32), (60484, 14348, 24000, 0, 0, 42), (60484, 14349, 40000, 0, 0, 52), (60484, 14350, 28000, 0, 0, 46), (60484, 14351, 46000, 0, 0, 56), (60484, 14352, 600, 0, 0, 12), (60484, 14353, 2200, 0, 0, 20), (60484, 14354, 8000, 0, 0, 28), (60484, 14355, 14000, 0, 0, 36), (60484, 14356, 26000, 0, 0, 44), (60484, 14357, 40000, 0, 0, 52), (60484, 14358, 50000, 0, 0, 60), (60484, 14359, 24000, 0, 0, 42), (60484, 14360, 42000, 0, 0, 54), (60484, 14361, 36000, 0, 0, 50), (60484, 14362, 48000, 0, 0, 58), (60484, 14364, 7000, 0, 0, 26), (60484, 14365, 14000, 0, 0, 36), (60484, 14366, 28000, 0, 0, 46), (60484, 14367, 46000, 0, 0, 56), (60484, 14368, 18000, 0, 0, 40), (60484, 14370, 50000, 0, 0, 60), (60484, 14372, 26000, 0, 0, 44), (60484, 14373, 42000, 0, 0, 54), (60484, 14374, 2000, 0, 0, 18), (60484, 14375, 8000, 0, 0, 28), (60484, 14376, 16000, 0, 0, 38), (60484, 14377, 32000, 0, 0, 48), (60484, 14378, 48000, 0, 0, 58), (60484, 14431, 6000, 0, 0, 22), (60484, 14432, 18000, 0, 0, 40), (60484, 14434, 48000, 0, 0, 58), (60484, 14445, 8000, 0, 0, 30), (60484, 14446, 28000, 0, 0, 46), (60484, 15637, 8000, 0, 0, 30), (60484, 15638, 18000, 0, 0, 40), (60484, 15639, 36000, 0, 0, 50), (60484, 15640, 50000, 0, 0, 60), (60484, 20044, 28000, 0, 0, 46), (60484, 20155, 10000, 0, 0, 32), (60484, 20156, 36000, 0, 0, 50), (60484, 20157, 7000, 0, 0, 26), (60484, 20158, 18000, 0, 0, 40), (60484, 20159, 7000, 0, 0, 24), (60484, 20160, 400, 0, 0, 10), (60484, 20161, 2000, 0, 0, 18), (60484, 20191, 46000, 0, 0, 56), (60484, 20738, 600, 0, 0, 12), (60484, 20931, 400, 0, 0, 28), (60484, 20932, 700, 0, 0, 36), (60484, 20933, 1300, 0, 0, 44), (60484, 20934, 2000, 0, 0, 52), (60484, 20935, 2500, 0, 0, 60), (60484, 20938, 2500, 0, 0, 60), (60484, 20940, 1800, 0, 0, 50), (60484, 20941, 2500, 0, 0, 60), (60484, 20942, 1200, 0, 0, 42), (60484, 20943, 2100, 0, 0, 54), (60484, 47296, 10000, 0, 0, 30), (60484, 47319, 14000, 0, 0, 36), (60484, 47320, 22000, 0, 0, 42), (60484, 47321, 28000, 0, 0, 48), (60484, 47322, 40000, 0, 0, 54), (60484, 47323, 46000, 0, 0, 60),

(60483, 796, 2200, 0, 0, 20), (60483, 1117, 600, 0, 0, 12), (60483, 1424, 2200, 0, 0, 20), (60483, 1547, 10, 0, 0, 1), (60483, 1549, 1800, 0, 0, 16), (60483, 1552, 2200, 0, 0, 20), (60483, 1563, 1800, 0, 0, 50), (60483, 1564, 18000, 0, 0, 40), (60483, 1567, 1200, 0, 0, 14), (60483, 1603, 10000, 0, 0, 32), (60483, 2003, 100, 0, 0, 4), (60483, 2898, 14000, 0, 0, 36), (60483, 2899, 1200, 0, 0, 14), (60483, 2979, 600, 0, 0, 12), (60483, 3047, 6000, 0, 0, 22), (60483, 3048, 100, 0, 0, 6), (60483, 3049, 7000, 0, 0, 26), (60483, 3128, 200, 0, 0, 8), (60483, 3663, 8000, 0, 0, 28), (60483, 3664, 14000, 0, 0, 36), (60483, 5117, 200, 0, 0, 8), (60483, 5131, 2200, 0, 0, 20), (60483, 5298, 100, 0, 0, 6), (60483, 5338, 2000, 0, 0, 18), (60483, 5385, 8000, 0, 0, 30), (60483, 6198, 1200, 0, 0, 14), (60483, 6385, 400, 0, 0, 10), (60483, 6791, 2200, 0, 0, 20), (60483, 6792, 7000, 0, 0, 24), (60483, 6999, 8000, 0, 0, 30), (60483, 8738, 18000, 0, 0, 40), (60483, 13160, 18000, 0, 0, 40), (60483, 13162, 8000, 0, 0, 30), (60483, 13164, 100, 0, 0, 4), (60483, 13545, 26000, 0, 0, 44), (60483, 13546, 40000, 0, 0, 52), (60483, 13547, 50000, 0, 0, 60), (60483, 13556, 400, 0, 0, 10), (60483, 13557, 2000, 0, 0, 18), (60483, 13558, 7000, 0, 0, 26), (60483, 13559, 12000, 0, 0, 34), (60483, 13560, 24000, 0, 0, 42), (60483, 13561, 36000, 0, 0, 50), (60483, 13562, 48000, 0, 0, 58), (60483, 13799, 1800, 0, 0, 16), (60483, 13811, 8000, 0, 0, 28), (60483, 13814, 12000, 0, 0, 34), (60483, 14332, 200, 0, 0, 8), (60483, 14333, 1800, 0, 0, 16), (60483, 14334, 7000, 0, 0, 24), (60483, 14335, 10000, 0, 0, 32), (60483, 14336, 18000, 0, 0, 40), (60483, 14337, 32000, 0, 0, 48), (60483, 14338, 46000, 0, 0, 56), (60483, 14339, 16000, 0, 0, 38), (60483, 14340, 5000, 0, 0, 60), (60483, 14341, 8000, 0, 0, 30), (60483, 14342, 26000, 0, 0, 44), (60483, 14343, 48000, 0, 0, 58), (60483, 14344, 12000, 0, 0, 34), (60483, 14345, 32000, 0, 0, 48), (60483, 14346, 2200, 0, 0, 20), (60483, 14347, 10000, 0, 0, 32), (60483, 14348, 24000, 0, 0, 42), (60483, 14349, 40000, 0, 0, 52), (60483, 14350, 28000, 0, 0, 46), (60483, 14351, 46000, 0, 0, 56), (60483, 14352, 600, 0, 0, 12), (60483, 14353, 2200, 0, 0, 20), (60483, 14354, 8000, 0, 0, 28), (60483, 14355, 14000, 0, 0, 36), (60483, 14356, 26000, 0, 0, 44), (60483, 14357, 40000, 0, 0, 52), (60483, 14358, 50000, 0, 0, 60), (60483, 14359, 24000, 0, 0, 42), (60483, 14360, 42000, 0, 0, 54), (60483, 14361, 36000, 0, 0, 50), (60483, 14362, 48000, 0, 0, 58), (60483, 14364, 7000, 0, 0, 26), (60483, 14365, 14000, 0, 0, 36), (60483, 14366, 28000, 0, 0, 46), (60483, 14367, 46000, 0, 0, 56), (60483, 14368, 18000, 0, 0, 40), (60483, 14370, 50000, 0, 0, 60), (60483, 14372, 26000, 0, 0, 44), (60483, 14373, 42000, 0, 0, 54), (60483, 14374, 2000, 0, 0, 18), (60483, 14375, 8000, 0, 0, 28), (60483, 14376, 16000, 0, 0, 38), (60483, 14377, 32000, 0, 0, 48), (60483, 14378, 48000, 0, 0, 58), (60483, 14431, 6000, 0, 0, 22), (60483, 14432, 18000, 0, 0, 40), (60483, 14434, 48000, 0, 0, 58), (60483, 14445, 8000, 0, 0, 30), (60483, 14446, 28000, 0, 0, 46), (60483, 15637, 8000, 0, 0, 30), (60483, 15638, 18000, 0, 0, 40), (60483, 15639, 36000, 0, 0, 50), (60483, 15640, 50000, 0, 0, 60), (60483, 20044, 28000, 0, 0, 46), (60483, 20155, 10000, 0, 0, 32), (60483, 20156, 36000, 0, 0, 50), (60483, 20157, 7000, 0, 0, 26), (60483, 20158, 18000, 0, 0, 40), (60483, 20159, 7000, 0, 0, 24), (60483, 20160, 400, 0, 0, 10), (60483, 20161, 2000, 0, 0, 18), (60483, 20191, 46000, 0, 0, 56), (60483, 20738, 600, 0, 0, 12), (60483, 20931, 400, 0, 0, 28), (60483, 20932, 700, 0, 0, 36), (60483, 20933, 1300, 0, 0, 44), (60483, 20934, 2000, 0, 0, 52), (60483, 20935, 2500, 0, 0, 60), (60483, 20938, 2500, 0, 0, 60), (60483, 20940, 1800, 0, 0, 50), (60483, 20941, 2500, 0, 0, 60), (60483, 20942, 1200, 0, 0, 42), (60483, 20943, 2100, 0, 0, 54), (60483, 47296, 10000, 0, 0, 30), (60483, 47319, 14000, 0, 0, 36), (60483, 47320, 22000, 0, 0, 42), (60483, 47321, 28000, 0, 0, 48), (60483, 47322, 40000, 0, 0, 54), (60483, 47323, 46000, 0, 0, 60),

(60485, 796, 2200, 0, 0, 20), (60485, 1117, 600, 0, 0, 12), (60485, 1424, 2200, 0, 0, 20), (60485, 1547, 10, 0, 0, 1), (60485, 1549, 1800, 0, 0, 16), (60485, 1552, 2200, 0, 0, 20), (60485, 1563, 1800, 0, 0, 50), (60485, 1564, 18000, 0, 0, 40), (60485, 1567, 1200, 0, 0, 14), (60485, 1603, 10000, 0, 0, 32), (60485, 2003, 100, 0, 0, 4), (60485, 2898, 14000, 0, 0, 36), (60485, 2899, 1200, 0, 0, 14), (60485, 2979, 600, 0, 0, 12), (60485, 3047, 6000, 0, 0, 22), (60485, 3048, 100, 0, 0, 6), (60485, 3049, 7000, 0, 0, 26), (60485, 3128, 200, 0, 0, 8), (60485, 3663, 8000, 0, 0, 28), (60485, 3664, 14000, 0, 0, 36), (60485, 5117, 200, 0, 0, 8), (60485, 5131, 2200, 0, 0, 20), (60485, 5298, 100, 0, 0, 6), (60485, 5338, 2000, 0, 0, 18), (60485, 5385, 8000, 0, 0, 30), (60485, 6198, 1200, 0, 0, 14), (60485, 6385, 400, 0, 0, 10), (60485, 6791, 2200, 0, 0, 20), (60485, 6792, 7000, 0, 0, 24), (60485, 6999, 8000, 0, 0, 30), (60485, 8738, 18000, 0, 0, 40), (60485, 13160, 18000, 0, 0, 40), (60485, 13162, 8000, 0, 0, 30), (60485, 13164, 100, 0, 0, 4), (60485, 13545, 26000, 0, 0, 44), (60485, 13546, 40000, 0, 0, 52), (60485, 13547, 50000, 0, 0, 60), (60485, 13556, 400, 0, 0, 10), (60485, 13557, 2000, 0, 0, 18), (60485, 13558, 7000, 0, 0, 26), (60485, 13559, 12000, 0, 0, 34), (60485, 13560, 24000, 0, 0, 42), (60485, 13561, 36000, 0, 0, 50), (60485, 13562, 48000, 0, 0, 58), (60485, 13799, 1800, 0, 0, 16), (60485, 13811, 8000, 0, 0, 28), (60485, 13814, 12000, 0, 0, 34), (60485, 14332, 200, 0, 0, 8), (60485, 14333, 1800, 0, 0, 16), (60485, 14334, 7000, 0, 0, 24), (60485, 14335, 10000, 0, 0, 32), (60485, 14336, 18000, 0, 0, 40), (60485, 14337, 32000, 0, 0, 48), (60485, 14338, 46000, 0, 0, 56), (60485, 14339, 16000, 0, 0, 38), (60485, 14340, 5000, 0, 0, 60), (60485, 14341, 8000, 0, 0, 30), (60485, 14342, 26000, 0, 0, 44), (60485, 14343, 48000, 0, 0, 58), (60485, 14344, 12000, 0, 0, 34), (60485, 14345, 32000, 0, 0, 48), (60485, 14346, 2200, 0, 0, 20), (60485, 14347, 10000, 0, 0, 32), (60485, 14348, 24000, 0, 0, 42), (60485, 14349, 40000, 0, 0, 52), (60485, 14350, 28000, 0, 0, 46), (60485, 14351, 46000, 0, 0, 56), (60485, 14352, 600, 0, 0, 12), (60485, 14353, 2200, 0, 0, 20), (60485, 14354, 8000, 0, 0, 28), (60485, 14355, 14000, 0, 0, 36), (60485, 14356, 26000, 0, 0, 44), (60485, 14357, 40000, 0, 0, 52), (60485, 14358, 50000, 0, 0, 60), (60485, 14359, 24000, 0, 0, 42), (60485, 14360, 42000, 0, 0, 54), (60485, 14361, 36000, 0, 0, 50), (60485, 14362, 48000, 0, 0, 58), (60485, 14364, 7000, 0, 0, 26), (60485, 14365, 14000, 0, 0, 36), (60485, 14366, 28000, 0, 0, 46), (60485, 14367, 46000, 0, 0, 56), (60485, 14368, 18000, 0, 0, 40), (60485, 14370, 50000, 0, 0, 60), (60485, 14372, 26000, 0, 0, 44), (60485, 14373, 42000, 0, 0, 54), (60485, 14374, 2000, 0, 0, 18), (60485, 14375, 8000, 0, 0, 28), (60485, 14376, 16000, 0, 0, 38), (60485, 14377, 32000, 0, 0, 48), (60485, 14378, 48000, 0, 0, 58), (60485, 14431, 6000, 0, 0, 22), (60485, 14432, 18000, 0, 0, 40), (60485, 14434, 48000, 0, 0, 58), (60485, 14445, 8000, 0, 0, 30), (60485, 14446, 28000, 0, 0, 46), (60485, 15637, 8000, 0, 0, 30), (60485, 15638, 18000, 0, 0, 40), (60485, 15639, 36000, 0, 0, 50), (60485, 15640, 50000, 0, 0, 60), (60485, 20044, 28000, 0, 0, 46), (60485, 20155, 10000, 0, 0, 32), (60485, 20156, 36000, 0, 0, 50), (60485, 20157, 7000, 0, 0, 26), (60485, 20158, 18000, 0, 0, 40), (60485, 20159, 7000, 0, 0, 24), (60485, 20160, 400, 0, 0, 10), (60485, 20161, 2000, 0, 0, 18), (60485, 20191, 46000, 0, 0, 56), (60485, 20738, 600, 0, 0, 12), (60485, 20931, 400, 0, 0, 28), (60485, 20932, 700, 0, 0, 36), (60485, 20933, 1300, 0, 0, 44), (60485, 20934, 2000, 0, 0, 52), (60485, 20935, 2500, 0, 0, 60), (60485, 20938, 2500, 0, 0, 60), (60485, 20940, 1800, 0, 0, 50), (60485, 20941, 2500, 0, 0, 60), (60485, 20942, 1200, 0, 0, 42), (60485, 20943, 2100, 0, 0, 54), (60485, 47296, 10000, 0, 0, 30), (60485, 47319, 14000, 0, 0, 36), (60485, 47320, 22000, 0, 0, 42), (60485, 47321, 28000, 0, 0, 48), (60485, 47322, 40000, 0, 0, 54), (60485, 47323, 46000, 0, 0, 60),

(60486, 796, 2200, 0, 0, 20), (60486, 1117, 600, 0, 0, 12), (60486, 1424, 2200, 0, 0, 20), (60486, 1547, 10, 0, 0, 1), (60486, 1549, 1800, 0, 0, 16), (60486, 1552, 2200, 0, 0, 20), (60486, 1563, 1800, 0, 0, 50), (60486, 1564, 18000, 0, 0, 40), (60486, 1567, 1200, 0, 0, 14), (60486, 1603, 10000, 0, 0, 32), (60486, 2003, 100, 0, 0, 4), (60486, 2898, 14000, 0, 0, 36), (60486, 2899, 1200, 0, 0, 14), (60486, 2979, 600, 0, 0, 12), (60486, 3047, 6000, 0, 0, 22), (60486, 3048, 100, 0, 0, 6), (60486, 3049, 7000, 0, 0, 26), (60486, 3128, 200, 0, 0, 8), (60486, 3663, 8000, 0, 0, 28), (60486, 3664, 14000, 0, 0, 36), (60486, 5117, 200, 0, 0, 8), (60486, 5131, 2200, 0, 0, 20), (60486, 5298, 100, 0, 0, 6), (60486, 5338, 2000, 0, 0, 18), (60486, 5385, 8000, 0, 0, 30), (60486, 6198, 1200, 0, 0, 14), (60486, 6385, 400, 0, 0, 10), (60486, 6791, 2200, 0, 0, 20), (60486, 6792, 7000, 0, 0, 24), (60486, 6999, 8000, 0, 0, 30), (60486, 8738, 18000, 0, 0, 40), (60486, 13160, 18000, 0, 0, 40), (60486, 13162, 8000, 0, 0, 30), (60486, 13164, 100, 0, 0, 4), (60486, 13545, 26000, 0, 0, 44), (60486, 13546, 40000, 0, 0, 52), (60486, 13547, 50000, 0, 0, 60), (60486, 13556, 400, 0, 0, 10), (60486, 13557, 2000, 0, 0, 18), (60486, 13558, 7000, 0, 0, 26), (60486, 13559, 12000, 0, 0, 34), (60486, 13560, 24000, 0, 0, 42), (60486, 13561, 36000, 0, 0, 50), (60486, 13562, 48000, 0, 0, 58), (60486, 13799, 1800, 0, 0, 16), (60486, 13811, 8000, 0, 0, 28), (60486, 13814, 12000, 0, 0, 34), (60486, 14332, 200, 0, 0, 8), (60486, 14333, 1800, 0, 0, 16), (60486, 14334, 7000, 0, 0, 24), (60486, 14335, 10000, 0, 0, 32), (60486, 14336, 18000, 0, 0, 40), (60486, 14337, 32000, 0, 0, 48), (60486, 14338, 46000, 0, 0, 56), (60486, 14339, 16000, 0, 0, 38), (60486, 14340, 5000, 0, 0, 60), (60486, 14341, 8000, 0, 0, 30), (60486, 14342, 26000, 0, 0, 44), (60486, 14343, 48000, 0, 0, 58), (60486, 14344, 12000, 0, 0, 34), (60486, 14345, 32000, 0, 0, 48), (60486, 14346, 2200, 0, 0, 20), (60486, 14347, 10000, 0, 0, 32), (60486, 14348, 24000, 0, 0, 42), (60486, 14349, 40000, 0, 0, 52), (60486, 14350, 28000, 0, 0, 46), (60486, 14351, 46000, 0, 0, 56), (60486, 14352, 600, 0, 0, 12), (60486, 14353, 2200, 0, 0, 20), (60486, 14354, 8000, 0, 0, 28), (60486, 14355, 14000, 0, 0, 36), (60486, 14356, 26000, 0, 0, 44), (60486, 14357, 40000, 0, 0, 52), (60486, 14358, 50000, 0, 0, 60), (60486, 14359, 24000, 0, 0, 42), (60486, 14360, 42000, 0, 0, 54), (60486, 14361, 36000, 0, 0, 50), (60486, 14362, 48000, 0, 0, 58), (60486, 14364, 7000, 0, 0, 26), (60486, 14365, 14000, 0, 0, 36), (60486, 14366, 28000, 0, 0, 46), (60486, 14367, 46000, 0, 0, 56), (60486, 14368, 18000, 0, 0, 40), (60486, 14370, 50000, 0, 0, 60), (60486, 14372, 26000, 0, 0, 44), (60486, 14373, 42000, 0, 0, 54), (60486, 14374, 2000, 0, 0, 18), (60486, 14375, 8000, 0, 0, 28), (60486, 14376, 16000, 0, 0, 38), (60486, 14377, 32000, 0, 0, 48), (60486, 14378, 48000, 0, 0, 58), (60486, 14431, 6000, 0, 0, 22), (60486, 14432, 18000, 0, 0, 40), (60486, 14434, 48000, 0, 0, 58), (60486, 14445, 8000, 0, 0, 30), (60486, 14446, 28000, 0, 0, 46), (60486, 15637, 8000, 0, 0, 30), (60486, 15638, 18000, 0, 0, 40), (60486, 15639, 36000, 0, 0, 50), (60486, 15640, 50000, 0, 0, 60), (60486, 20044, 28000, 0, 0, 46), (60486, 20155, 10000, 0, 0, 32), (60486, 20156, 36000, 0, 0, 50), (60486, 20157, 7000, 0, 0, 26), (60486, 20158, 18000, 0, 0, 40), (60486, 20159, 7000, 0, 0, 24), (60486, 20160, 400, 0, 0, 10), (60486, 20161, 2000, 0, 0, 18), (60486, 20191, 46000, 0, 0, 56), (60486, 20738, 600, 0, 0, 12), (60486, 20931, 400, 0, 0, 28), (60486, 20932, 700, 0, 0, 36), (60486, 20933, 1300, 0, 0, 44), (60486, 20934, 2000, 0, 0, 52), (60486, 20935, 2500, 0, 0, 60), (60486, 20938, 2500, 0, 0, 60), (60486, 20940, 1800, 0, 0, 50), (60486, 20941, 2500, 0, 0, 60), (60486, 20942, 1200, 0, 0, 42), (60486, 20943, 2100, 0, 0, 54), (60486, 47296, 10000, 0, 0, 30), (60486, 47319, 14000, 0, 0, 36), (60486, 47320, 22000, 0, 0, 42), (60486, 47321, 28000, 0, 0, 48), (60486, 47322, 40000, 0, 0, 54), (60486, 47323, 46000, 0, 0, 60),

(60487, 796, 2200, 0, 0, 20), (60487, 1117, 600, 0, 0, 12), (60487, 1424, 2200, 0, 0, 20), (60487, 1547, 10, 0, 0, 1), (60487, 1549, 1800, 0, 0, 16), (60487, 1552, 2200, 0, 0, 20), (60487, 1563, 1800, 0, 0, 50), (60487, 1564, 18000, 0, 0, 40), (60487, 1567, 1200, 0, 0, 14), (60487, 1603, 10000, 0, 0, 32), (60487, 2003, 100, 0, 0, 4), (60487, 2898, 14000, 0, 0, 36), (60487, 2899, 1200, 0, 0, 14), (60487, 2979, 600, 0, 0, 12), (60487, 3047, 6000, 0, 0, 22), (60487, 3048, 100, 0, 0, 6), (60487, 3049, 7000, 0, 0, 26), (60487, 3128, 200, 0, 0, 8), (60487, 3663, 8000, 0, 0, 28), (60487, 3664, 14000, 0, 0, 36), (60487, 5117, 200, 0, 0, 8), (60487, 5131, 2200, 0, 0, 20), (60487, 5298, 100, 0, 0, 6), (60487, 5338, 2000, 0, 0, 18), (60487, 5385, 8000, 0, 0, 30), (60487, 6198, 1200, 0, 0, 14), (60487, 6385, 400, 0, 0, 10), (60487, 6791, 2200, 0, 0, 20), (60487, 6792, 7000, 0, 0, 24), (60487, 6999, 8000, 0, 0, 30), (60487, 8738, 18000, 0, 0, 40), (60487, 13160, 18000, 0, 0, 40), (60487, 13162, 8000, 0, 0, 30), (60487, 13164, 100, 0, 0, 4), (60487, 13545, 26000, 0, 0, 44), (60487, 13546, 40000, 0, 0, 52), (60487, 13547, 50000, 0, 0, 60), (60487, 13556, 400, 0, 0, 10), (60487, 13557, 2000, 0, 0, 18), (60487, 13558, 7000, 0, 0, 26), (60487, 13559, 12000, 0, 0, 34), (60487, 13560, 24000, 0, 0, 42), (60487, 13561, 36000, 0, 0, 50), (60487, 13562, 48000, 0, 0, 58), (60487, 13799, 1800, 0, 0, 16), (60487, 13811, 8000, 0, 0, 28), (60487, 13814, 12000, 0, 0, 34), (60487, 14332, 200, 0, 0, 8), (60487, 14333, 1800, 0, 0, 16), (60487, 14334, 7000, 0, 0, 24), (60487, 14335, 10000, 0, 0, 32), (60487, 14336, 18000, 0, 0, 40), (60487, 14337, 32000, 0, 0, 48), (60487, 14338, 46000, 0, 0, 56), (60487, 14339, 16000, 0, 0, 38), (60487, 14340, 5000, 0, 0, 60), (60487, 14341, 8000, 0, 0, 30), (60487, 14342, 26000, 0, 0, 44), (60487, 14343, 48000, 0, 0, 58), (60487, 14344, 12000, 0, 0, 34), (60487, 14345, 32000, 0, 0, 48), (60487, 14346, 2200, 0, 0, 20), (60487, 14347, 10000, 0, 0, 32), (60487, 14348, 24000, 0, 0, 42), (60487, 14349, 40000, 0, 0, 52), (60487, 14350, 28000, 0, 0, 46), (60487, 14351, 46000, 0, 0, 56), (60487, 14352, 600, 0, 0, 12), (60487, 14353, 2200, 0, 0, 20), (60487, 14354, 8000, 0, 0, 28), (60487, 14355, 14000, 0, 0, 36), (60487, 14356, 26000, 0, 0, 44), (60487, 14357, 40000, 0, 0, 52), (60487, 14358, 50000, 0, 0, 60), (60487, 14359, 24000, 0, 0, 42), (60487, 14360, 42000, 0, 0, 54), (60487, 14361, 36000, 0, 0, 50), (60487, 14362, 48000, 0, 0, 58), (60487, 14364, 7000, 0, 0, 26), (60487, 14365, 14000, 0, 0, 36), (60487, 14366, 28000, 0, 0, 46), (60487, 14367, 46000, 0, 0, 56), (60487, 14368, 18000, 0, 0, 40), (60487, 14370, 50000, 0, 0, 60), (60487, 14372, 26000, 0, 0, 44), (60487, 14373, 42000, 0, 0, 54), (60487, 14374, 2000, 0, 0, 18), (60487, 14375, 8000, 0, 0, 28), (60487, 14376, 16000, 0, 0, 38), (60487, 14377, 32000, 0, 0, 48), (60487, 14378, 48000, 0, 0, 58), (60487, 14431, 6000, 0, 0, 22), (60487, 14432, 18000, 0, 0, 40), (60487, 14434, 48000, 0, 0, 58), (60487, 14445, 8000, 0, 0, 30), (60487, 14446, 28000, 0, 0, 46), (60487, 15637, 8000, 0, 0, 30), (60487, 15638, 18000, 0, 0, 40), (60487, 15639, 36000, 0, 0, 50), (60487, 15640, 50000, 0, 0, 60), (60487, 20044, 28000, 0, 0, 46), (60487, 20155, 10000, 0, 0, 32), (60487, 20156, 36000, 0, 0, 50), (60487, 20157, 7000, 0, 0, 26), (60487, 20158, 18000, 0, 0, 40), (60487, 20159, 7000, 0, 0, 24), (60487, 20160, 400, 0, 0, 10), (60487, 20161, 2000, 0, 0, 18), (60487, 20191, 46000, 0, 0, 56), (60487, 20738, 600, 0, 0, 12), (60487, 20931, 400, 0, 0, 28), (60487, 20932, 700, 0, 0, 36), (60487, 20933, 1300, 0, 0, 44), (60487, 20934, 2000, 0, 0, 52), (60487, 20935, 2500, 0, 0, 60), (60487, 20938, 2500, 0, 0, 60), (60487, 20940, 1800, 0, 0, 50), (60487, 20941, 2500, 0, 0, 60), (60487, 20942, 1200, 0, 0, 42), (60487, 20943, 2100, 0, 0, 54), (60487, 47296, 10000, 0, 0, 30), (60487, 47319, 14000, 0, 0, 36), (60487, 47320, 22000, 0, 0, 42), (60487, 47321, 28000, 0, 0, 48), (60487, 47322, 40000, 0, 0, 54), (60487, 47323, 46000, 0, 0, 60);

-- NPC Greymane Enforcer set scale to 1

UPDATE `creature_template` SET `scale` = 1 WHERE `entry` = 61397;

-- Item Wolfwood Sash (Entry 61727) change display ID to 

UPDATE `item_template` SET `display_id` = 26502 WHERE `entry` = 61727;

-- Quest A Demonic Missive (Entry 41090) set previous quest to "Find Melanastrasza" (entry 41106)	

UPDATE `quest_template` SET `PrevQuestId` = 41106 WHERE `entry` = 41090;

-- Change droprate of item Vilemusk Hoof (Entry 61704) to 98% for the quest Vilemusk Infiltration (entry 41047)

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -98 WHERE `entry` = 61340 AND `item` = 61704;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -98 WHERE `entry` = 61339 AND `item` = 61704;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -98 WHERE `entry` = 61338 AND `item` = 61704;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -98 WHERE `entry` = 61341 AND `item` = 61704;

-- Change droprate of item Shimmering Ooze (entry 61638) to 34% for the quest The Runestone of Cenarius (Entry 40984)

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -34 WHERE `entry` = 61334 AND `item` = 61638;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -34 WHERE `entry` = 61335 AND `item` = 61638;

-- Change droprate of item Barkskin Pendant (entry 61442) to 76% for the quest Barkskin Vengeance and Continued Barkskin Vengeance

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -76 WHERE `item` = 61442;

-- Change droprate of item Misthoof Hide (Entry 61712) and Great Beak (Entry 61711) to 98% for the quest Culling Wildlife (Entry 41021)

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -98 WHERE `item` = 61712;

-- Change droprate of item Misthoof Antler (Entry 61637) to 52% for the quest The Runestone of Cenarius (Entry 40984) 

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -52 WHERE `item` = 61637;

-- Quest item 'Barkskin Pendant', 'Misthoof Hide', 'Corrupted Dream Shard', 'Great Beak', 'Shadeflayer Tribal Bracelet' should NOT be shared as a drop between party members, only a single one should drop.

UPDATE `item_template` SET `flags` = 0 WHERE `entry` IN (61442, 61707, 61711, 61712);

-- Quest Honor in Blood Ring (Entry 41109) change short description to "Bring 15 Arena Marks of Honor to Grenthor at the Gurubashi Arena in Stranglethorn Vale."

-- Quest Victory in Blood Ring (Entry 41110) change short description to "Win a battle in Blood Ring and report to Grenthor at the Gurubashi Arena in Stranglethorn Vale."

UPDATE `quest_template` SET `objectives` = 'Bring 15 Arena Marks of Honor to Grenthor at the Gurubashi Arena in Stranglethorn Vale.' WHERE `entry` = 41109;
UPDATE `quest_template` SET `objectives` = 'Win a battle in Blood Ring and report to Grenthor at the Gurubashi Arena in Stranglethorn Vale.' WHERE `entry` = 41110;

-- fix enchanted leather armor kit and libram of focus
update spell_template SET EffectBasePoints1 = 13, EffectBasePoints2 = 14 WHERE entry = 22843; -- Arcanum of Focus (Effect)
update spell_template SET description = 'Permanently adds +14 to your Healing and Damage from spells to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.' WHERE entry = 22844; -- Arcanum of Focus (Enchant)
update spell_template SET name = 'Spell Power +9', description = 'Permanently adds +9 to your Healing and Damage from spells to an item worn on the chest, legs, hands or feet. Only usable on items level 60 and above.' WHERE entry = 57136; -- Enchanted Armor Kit
update spell_template SET description = 'Permanently adds +9 to your Healing and Damage from spells to an item worn on the chest, legs, hands or feet. Only usable on items level 60 and above.' WHERE entry = 57135; -- Enchanted Armor Kit

-- too much sp
update spell_template SET EffectBasePoints1 = 11, EffectBasePoints2 = 12 WHERE entry = 22843; -- Arcanum of Focus (Effect)

-- Arcanum of Focus (Enchant)
update spell_template SET description = 'Permanently adds +12 to your Healing and Damage from spells to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.' WHERE entry = 22844; 

-- Creatures in Gilneas should have their respawn rates set to 5mins (They are currently 2min) 

UPDATE `creature` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 300 WHERE `guid` > 2575112 and `spawntimesecsmin` = 120 and `map` < 3; 

-- Quest Blooming Hyjalroot (entry 40870), replace instance of 'fifteen' in main description to 'eight'

-- Change required amount of Hyjalroot item to 8

-- change short description to 'Collect 8 Hyjalroot from around the region of Hyjal for Enthos at Noradnaar in Hyjal.'

UPDATE `quest_template` SET `Objectives` = 'Collect 8 Hyjalroot from around the region of Hyjal for Enthos at Nordanaar in Hyjal.' WHERE `entry` = 40870;
UPDATE `quest_template` SET `ReqItemCount1` = 8 WHERE `entry` = 40870;

-- Quest Stockpiling Hyjalroot(entry 40871), replace instance of 'fifteen' in main description to 'eight'

-- Change required amount of Hyjalroot item to 8

-- change short description to 'Collect 8 Hyjalroot from around the region of Hyjal for Enthos at Noradnaar in Hyjal.'

UPDATE `quest_template` SET `Objectives` = 'Collect 8 Hyjalroot from around the region of Hyjal for Enthos at Nordanaar in Hyjal.' WHERE `entry` = 40871;
UPDATE `quest_template` SET `ReqItemCount1` = 8 WHERE `entry` = 40871;

-- had to revert because too op for healers:
update spell_template SET EffectBasePoints2 = 1, EffectBasePoints3 = 1, description = 'Increases your attack and casting speed by $s1%.' WHERE entry = 13679; -- Haste 1
update spell_template SET EffectBasePoints2 = 2, EffectBasePoints3 = 2, description = 'Increases your attack and casting speed by $s1%.' WHERE entry = 8815; -- Haste 2
update spell_template SET EffectBasePoints2 = 3, EffectBasePoints3 = 3, description = 'Increases your attack and casting speed by $s1%.' WHERE entry = 13680; -- Haste 3
update spell_template SET EffectBasePoints2 = 4, EffectBasePoints3 = 4, description = 'Increases your attack and casting speed by $s1%.' WHERE entry = 13681; -- Haste 4
update spell_template SET EffectBasePoints2 = 5, EffectBasePoints3 = 5, description = 'Increases your attack and casting speed by $s1%.' WHERE entry = 13682; -- Haste 5
update spell_template SET EffectBasePoints2 = 10, EffectBasePoints3 = 10, description = 'Increases your attack and casting speed by $s1%.' WHERE entry = 18065; -- Haste 10
-- fix enchanted leather armor kit and libram of focus
update spell_template SET EffectBasePoints1 = 11, EffectBasePoints2 = 12 WHERE entry = 22843; -- Arcanum of Focus (Effect)
update spell_template SET description = 'Permanently adds +12 Healing and Damage from spells to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.' WHERE entry = 22844; -- Arcanum of Focus (Enchant)
update spell_template SET name = 'Spell Power +9', description = 'Permanently adds +9 Healing and Damage from spells to an item worn on the chest, legs, hands or feet. Only usable on items level 60 and above.' WHERE entry = 57136; -- Enchanted Armor Kit
update spell_template SET description = 'Permanently adds +9 Healing and Damage from spells to an item worn on the chest, legs, hands or feet. Only usable on items level 60 and above.' WHERE entry = 57135; -- Enchanted Armor Kit

UPDATE `broadcast_text` SET `male_text` = 'The Gilnean Brigade has finally returned home. We are here to reclaim these lands in the name of Greymane.' WHERE `entry` = 61265;

-- Darius:

REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (91246, 'Gilneas has seen darker days. With newfound allies, such as you, hope remains.$B$BI feared the Alliance would\'ve abandoned us, but here we stand.$B$BI will bend no knee to these Alteraci scum.$B$BWe will prevail.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (61066, 91246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

UPDATE `gossip_menu` SET `text_id` = 61066 WHERE `entry` = 41359 AND `text_id` = 61259;

-- gobject 2020049 should drop both 61763 and 61764 once looted

DELETE FROM `gameobject_loot_template` WHERE `entry` = 2020049;
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (2020049, 61764, -100, 1, 1, 1, 0);
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (2020049, 61763, -100, 2, 1, 1, 0);

-- equip.

UPDATE `creature_template` SET `equipment_id` = 1911 WHERE `entry` = 11500;

-- Delete current pools:

DELETE FROM `pool_gameobject` WHERE `pool_entry` IN (50000, 50001);
DELETE FROM `pool_template` WHERE `entry` IN (50000, 50001);

-- Fixed Potent Venom having weird visual effect.

UPDATE `spell_template` SET `spellVisual1` = 0 WHERE `entry` = 45417;


-- New non-collidable tents:

UPDATE `gameobject_template` SET `displayId` = 33257 WHERE `entry` = 1000001;
UPDATE `gameobject_template` SET `displayId` = 33258 WHERE `entry` = 1000236;

UPDATE `gameobject_template` SET `type` = 14 WHERE `entry` = 1000001;
UPDATE `gameobject_template` SET `type` = 14 WHERE `entry` = 1000236;

DELETE FROM `quest_template` WHERE `entry` = 70059;
DELETE FROM `creature_template` WHERE `entry` = 70030;

-- Quest things:

UPDATE quest_template SET NextQuestInChain = 40843 WHERE entry = 40842;
UPDATE quest_template SET NextQuestInChain = 40859 WHERE entry = 40858;
UPDATE quest_template SET NextQuestInChain = 40868 WHERE entry = 40867;
UPDATE quest_template SET NextQuestInChain = 40869 WHERE entry = 40868;
UPDATE quest_template SET NextQuestInChain = 41132 WHERE entry = 41131;
UPDATE quest_template SET NextQuestInChain = 41133 WHERE entry = 41132;
UPDATE quest_template SET NextQuestInChain = 41134 WHERE entry = 41133;
UPDATE quest_template SET NextQuestInChain = 40927 WHERE entry = 40926;
UPDATE quest_template SET NextQuestInChain = 40930 WHERE entry = 40929;
UPDATE quest_template SET NextQuestInChain = 40931 WHERE entry = 40930;
UPDATE quest_template SET NextQuestInChain = 40933 WHERE entry = 40932;
UPDATE quest_template SET NextQuestInChain = 40935 WHERE entry = 40934;
UPDATE quest_template SET NextQuestInChain = 40938 WHERE entry = 40937;
UPDATE quest_template SET NextQuestInChain = 40941 WHERE entry = 40940;
UPDATE quest_template SET NextQuestInChain = 40942 WHERE entry = 40941;
UPDATE quest_template SET NextQuestInChain = 40943 WHERE entry = 40942;
UPDATE quest_template SET NextQuestInChain = 40947 WHERE entry = 40946;
UPDATE quest_template SET NextQuestInChain = 40970 WHERE entry = 40969;
UPDATE quest_template SET NextQuestInChain = 40971 WHERE entry = 40970;
UPDATE quest_template SET NextQuestInChain = 40981 WHERE entry = 40980;
UPDATE quest_template SET NextQuestInChain = 40982 WHERE entry = 40981;
UPDATE quest_template SET NextQuestInChain = 40845 WHERE entry = 40844;
UPDATE quest_template SET NextQuestInChain = 40847 WHERE entry = 40846;
UPDATE quest_template SET NextQuestInChain = 40849 WHERE entry = 40848;
UPDATE quest_template SET NextQuestInChain = 40878 WHERE entry = 40877;
UPDATE quest_template SET NextQuestInChain = 40879 WHERE entry = 40878;
UPDATE quest_template SET NextQuestInChain = 40880 WHERE entry = 40879;
UPDATE quest_template SET NextQuestInChain = 40881 WHERE entry = 40880;
UPDATE quest_template SET NextQuestInChain = 40882 WHERE entry = 40881;
UPDATE quest_template SET NextQuestInChain = 40994 WHERE entry = 40993;
UPDATE quest_template SET NextQuestInChain = 40995 WHERE entry = 40994;
UPDATE quest_template SET NextQuestInChain = 40996 WHERE entry = 40995;
UPDATE quest_template SET NextQuestInChain = 40997 WHERE entry = 40996;
UPDATE quest_template SET NextQuestInChain = 40949 WHERE entry = 40948;
UPDATE quest_template SET NextQuestInChain = 40950 WHERE entry = 40949;
UPDATE quest_template SET NextQuestInChain = 40951 WHERE entry = 40950;
UPDATE quest_template SET NextQuestInChain = 40952 WHERE entry = 40951;
UPDATE quest_template SET NextQuestInChain = 40953 WHERE entry = 40952;
UPDATE quest_template SET NextQuestInChain = 40954 WHERE entry = 40953;
UPDATE quest_template SET NextQuestInChain = 40955 WHERE entry = 40954;
UPDATE quest_template SET NextQuestInChain = 40956 WHERE entry = 40955;
UPDATE quest_template SET NextQuestInChain = 41028 WHERE entry = 41027;
UPDATE quest_template SET NextQuestInChain = 41029 WHERE entry = 41028;
UPDATE quest_template SET NextQuestInChain = 41030 WHERE entry = 41029;
UPDATE quest_template SET NextQuestInChain = 41023 WHERE entry = 41022;
UPDATE quest_template SET NextQuestInChain = 41024 WHERE entry = 41023;

DELETE FROM quest_template WHERE entry = 40751;
DELETE FROM creature_questrelation WHERE quest = 40751;
DELETE FROM creature_involvedrelation WHERE quest = 40751;

-- Quest Lost and Found ((entry 40999) turn into a ((RAID)) quest so it is doable in a raid group. 

UPDATE `quest_template` SET `Type` = 62 WHERE `entry` = 40999;
UPDATE `quest_template` SET `QuestFlags` = 64 WHERE `entry` = 40999;

-- NPC Snarlclaw (Entry 61405) had his display ID overwritten, revert to 1947

UPDATE `creature_template` SET `display_id1` = 1947 WHERE `entry` = 61405;

-- Bonecruncher should the same loottable as NPC ID 2720, remove Scrap Metal from him as a drop.
-- After that, Bonecruncher 61555 should drop the following items with the listed drop chances from the same loottable:
-- Light Ogre Belt: 40%
-- Old Hunter's Boots: 40%
-- Brawling Trophy: 20%

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 
(61555, 1529, 0.02, 0, 1, 1, 0),
(61555, 1645, 2.2422, 0, 1, 1, 0),
(61555, 1685, 0.02, 0, 1, 1, 0),
(61555, 1705, 0.02, 0, 1, 1, 0),
(61555, 1708, 0.02, 0, 1, 1, 0),
(61555, 1710, 0.02, 0, 1, 1, 0),
(61555, 2772, 0.42, 0, 1, 1, 0),
(61555, 2775, 0.02, 0, 1, 1, 0),
(61555, 2776, 0.04, 0, 1, 1, 0),
(61555, 2838, 0.18, 0, 1, 1, 0),
(61555, 3356, 0.02, 0, 1, 1, 0),
(61555, 3357, 0.02, 0, 1, 1, 0),
(61555, 3358, 0.02, 0, 1, 1, 0),
(61555, 3395, 0.02, 0, 1, 1, 0),
(61555, 3676, 0.02, 0, 1, 1, 0),
(61555, 3818, 0.02, 0, 1, 1, 0),
(61555, 3821, 0.02, 0, 1, 1, 0),
(61555, 3827, 0.02, 0, 1, 1, 0),
(61555, 3831, 0.02, 0, 1, 1, 0),
(61555, 3832, 0.02, 0, 1, 1, 0),
(61555, 3858, 0.02, 0, 1, 1, 0),
(61555, 3864, 0.042, 0, 1, 1, 0),
(61555, 3868, 0.02, 0, 1, 1, 0),
(61555, 3869, 0.02, 0, 1, 1, 0),
(61555, 3874, 0.02, 0, 1, 1, 0),
(61555, 3914, 0.06, 0, 1, 1, 0),
(61555, 3927, 0.04, 0, 1, 1, 0),
(61555, 3928, 1.5835, 0, 1, 1, 0),
(61555, 4300, 0.02, 0, 1, 1, 0),
(61555, 4305, 0.02, 0, 1, 1, 0),
(61555, 4306, 9.6693, 0, 1, 2, 0),
(61555, 4338, 24.0891, 0, 1, 2, 0),
(61555, 4339, 0.02, 0, 1, 1, 0),
(61555, 4416, 0.02, 0, 1, 1, 0),
(61555, 4417, 0.02, 0, 1, 1, 0),
(61555, 4419, 0.32, 0, 1, 1, 0),
(61555, 4421, 0.58, 0, 1, 1, 0),
(61555, 4422, 0.38, 0, 1, 1, 0),
(61555, 4424, 0.48, 0, 1, 1, 0),
(61555, 4599, 4.8487, 0, 1, 1, 0),
(61555, 4601, 0.04, 0, 1, 1, 0),
(61555, 4602, 0.02, 0, 1, 1, 0),
(61555, 4608, 0.04, 0, 1, 1, 0),
(61555, 4637, 0.1541, 0, 1, 1, 0),
(61555, 6149, 1.54, 0, 1, 1, 0),
(61555, 7084, 0.02, 0, 1, 1, 0),
(61555, 7085, 0.02, 0, 1, 1, 0),
(61555, 7453, 0.02, 0, 1, 1, 0),
(61555, 7909, 0.0561, 0, 1, 1, 0),
(61555, 7910, 0.1, 0, 1, 1, 0),
(61555, 7911, 0.06, 0, 1, 1, 0),
(61555, 7912, 0.58, 0, 1, 1, 0),
(61555, 7975, 0.02, 0, 1, 1, 0),
(61555, 7990, 0.02, 0, 1, 1, 0),
(61555, 7992, 0.02, 0, 1, 1, 0),
(61555, 8029, 0.02, 0, 1, 1, 0),
(61555, 8386, 0.02, 0, 1, 1, 0),
(61555, 8387, 0.02, 0, 1, 1, 0),
(61555, 8389, 0.02, 0, 1, 1, 0),
(61555, 9262, 0.014, 0, 1, 1, 0),
(61555, 9293, 0.02, 0, 1, 1, 0),
(61555, 9297, 0.02, 0, 1, 1, 0),
(61555, 9298, 0.02, 0, 1, 1, 0),
(61555, 10300, 0.02, 0, 1, 1, 0),
(61555, 10301, 0.02, 0, 1, 1, 0),
(61555, 10302, 0.02, 0, 1, 1, 0),
(61555, 10312, 0.02, 0, 1, 1, 0),
(61555, 10315, 0.02, 0, 1, 1, 0),
(61555, 10603, 0.02, 0, 1, 1, 0),
(61555, 10604, 0.02, 0, 1, 1, 0),
(61555, 11202, 0.02, 0, 1, 1, 0),
(61555, 11204, 0.02, 0, 1, 1, 0),
(61555, 11208, 0.02, 0, 1, 1, 0),
(61555, 13068, 0.02, 0, 1, 1, 0),
(61555, 30025, 0.5, 0, -30025, 1, 0),
(61555, 30026, 0.01, 0, -30026, 1, 0),
(61555, 30027, 0.5, 0, -30027, 1, 0),
(61555, 30028, 0.01, 0, -30028, 1, 0),
(61555, 30029, 0.5, 0, -30029, 1, 0),
(61555, 30030, 0.01, 0, -30030, 1, 0),
(61555, 30036, 0.0025, 0, -30036, 1, 0),
(61555, 30048, 2.5, 0, -30048, 1, 0),
(61555, 30049, 0.5, 0, -30049, 1, 0),
(61555, 30072, 0.5, 0, -30072, 1, 0),
(61555, 30073, 0.0025, 0, -30073, 1, 0),

(61555, 61583, 40, 2, 1, 1, 0),
(61555, 61587, 40, 2, 1, 1, 0),
(61555, 61585, 20, 2, 1, 1, 0),

(61555, 30074, 0.01, 0, -30074, 1, 0);

-- Note to myself: remove Island From from Speedy's box
DELETE FROM `item_loot_template` WHERE `item` = 50079;
-- Zul'Gurub should require level 60 to enter, similiar to Ruins of Ahn'Qiraj.
UPDATE `areatrigger_teleport` SET `required_level` = 60 WHERE `id` = 3928;

-- Remove graveyard for Goblin's starting location:

DELETE FROM `game_graveyard_zone` WHERE `id` = 944;
DELETE FROM `world_safe_locs_facing` WHERE `id` = 944;