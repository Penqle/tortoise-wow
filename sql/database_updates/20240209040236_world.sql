-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1144

-- Set Arcanite Dragonling damage to constant 71. Reference: https://www.youtube.com/watch?v=xi2Rvi4VfCs
UPDATE `creature_template` SET `dmg_min` = '71', `dmg_max` = '71' WHERE (`entry` = '12473');

-- Set Mechanical Dragonling health to 400. NOTE, that I guessed HP, since there is no information on internet or youtube about his actual HP
-- Mithril Dragonling has 502 HP, and since it's an upgrade of Mechanical Dragonling, that means it should has less HP
UPDATE `creature_template` SET `health_min` = '400', `health_max` = '400' WHERE (`entry` = '2678');

-- Set Mithril Dragonling damage from 10-11 to 41
-- Mechanical Dragonling has 14 - 15, but Mithril should has more damage
UPDATE `creature_template` SET `dmg_min` = '41', `dmg_max` = '41' WHERE (`entry` = '8615');

-- Set Mithril Dragonling script that will trigger https://www.wowhead.com/classic/spell=8873/flame-breath
UPDATE `creature_template` SET `script_name` = 'npc_mithril_dragonling' WHERE (`entry` = '8615');
