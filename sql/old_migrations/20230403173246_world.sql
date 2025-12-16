UPDATE `gameobject` SET `spawntimesecsmin` = 5, `spawntimesecsmax` = 5 WHERE `guid` = 1746;

-- Things from QA:

UPDATE gameobject SET spawntimesecsmin = 5, spawntimesecsmax = 5 WHERE id = 125477;
UPDATE gameobject SET spawntimesecsmin = 5, spawntimesecsmax = 5 WHERE id = 113757;
UPDATE gameobject SET spawntimesecsmin = 5, spawntimesecsmax = 5 WHERE id = 142088;

UPDATE creature_template SET fire_res = 0, frost_res = 0, shadow_res = 0, arcane_res = 0, nature_res = 240 WHERE entry IN (92117, 92127);
UPDATE creature_template SET fire_res = 0, frost_res = 0, shadow_res = 0, arcane_res = 0, nature_res = 100 WHERE entry = 5761;
