-- Black Lotuc drop from low-level herbs: 2 > 4%
UPDATE gameobject_loot_template SET chanceorquestchance = 4 WHERE chanceorquestchance = 2 AND item = 13468;