-- Creature entry 61988 add ghostly visual.
update creature_template set auras = '9617' where entry = 61988;
-- Dissipating spectre, replace spell 25820 with 28447.
update creature_ai_scripts set datalong = 28447 where id = 2200049 and datalong = 25820;