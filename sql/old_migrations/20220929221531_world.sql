-- Fix aura description of Dream's Herald.
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2202
UPDATE `spell_template` SET `auraDescription`='Movement and attack speed lowered by 20% and taking periodic Nature damage.' WHERE `entry`=48004;

-- Fix description of Serrated Blades.
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2183
UPDATE `spell_template` SET `description`='Causes your attacks to ignore 1.67 of your target\'s Armor per level and increases the damage dealt by your Rupture ability by $s1%.' WHERE `entry`=14171;
UPDATE `spell_template` SET `description`='Causes your attacks to ignore 3.34 of your target\'s Armor per level and increases the damage dealt by your Rupture ability by $s1%.' WHERE `entry`=14172;
UPDATE `spell_template` SET `description`='Causes your attacks to ignore 5 of your target\'s Armor per level and increases the damage dealt by your Rupture ability by $s1%.' WHERE `entry`=14173;
