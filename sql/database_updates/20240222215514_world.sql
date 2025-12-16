-- NPC Brandon Fencer, change display ID to 3360
UPDATE `creature_template` SET `display_id1` = 3360 WHERE `entry` = 61906;
-- NPC Otto Fencer, change display ID to 4336
UPDATE `creature_template` SET `display_id1` = 4336 WHERE `entry` = 61905;
-- NPC Ranellius Pureheart, add subname <Journeyman Jewelcrafter>
UPDATE `creature_template` SET `subname` = 'Journeyman Jewelcrafter' WHERE `entry` = 61916;
-- NPC Ethennar Somberfall, add subname <>
UPDATE `creature_template` SET `subname` = 'Expert Jewelcrafter' WHERE `entry` = 61917;
-- NPC Ethennar Somberfall, change display ID to 16182
UPDATE `creature_template` SET `display_id1` = 16182 WHERE `entry` = 61917;
-- Add item 55155 (jewelers kit) to the following vendors 61909, 61905, 61914, 61915
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES 
(61909, 0, 55155, 0, 0, 0, 0),
(61905, 0, 55155, 0, 0, 0, 0),
(61914, 0, 55155, 0, 0, 0, 0),
(61915, 0, 55155, 0, 0, 0, 0),
(61909, 0, 55245, 0, 0, 0, 0),
(61909, 0, 55246, 0, 0, 0, 0),
(61909, 0, 55247, 0, 0, 0, 0),  
(61905, 0, 55245, 0, 0, 0, 0),
(61905, 0, 55246, 0, 0, 0, 0),
(61905, 0, 55247, 0, 0, 0, 0),  
(61914, 0, 55245, 0, 0, 0, 0),
(61914, 0, 55246, 0, 0, 0, 0),
(61914, 0, 55247, 0, 0, 0, 0),  
(61915, 0, 55245, 0, 0, 0, 0),
(61915, 0, 55246, 0, 0, 0, 0),
(61915, 0, 55247, 0, 0, 0, 0);