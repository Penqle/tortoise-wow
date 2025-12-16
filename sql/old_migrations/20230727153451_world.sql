-- Change starting weapon for goblin hunters to 2508, give them 200x 2516 as ammunition, and skill in guns:

DELETE FROM `playercreateinfo_item` WHERE `race` = 9 AND `class` = 3 AND `itemid` = 2504;
DELETE FROM `playercreateinfo_item` WHERE `race` = 9 AND `class` = 3 AND `itemid` = 2512;

REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (9, 3, 2508, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (9, 3,2516, 200);

DELETE FROM `playercreateinfo_spell` WHERE `race` = 9 AND `class` = 3 AND `spell` =  264;

REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (9, 3, 266, 'Guns');

-- The following items need to be labeled as 'Trade Goods' you can steal this tag from the item Mithril Spurs (entry 7969) if you need a reference.

-- Copper Buckle (61779)
-- Bronze Buckle (61780)
-- Iron Buckle (61781)
-- Mithril Buckle (61782)
-- Thorium Buckle (61783)
-- Arcanite Buckle (61784)
-- Dreamsteel Buckle (61785)
-- Thorium Spurs (61182) 

UPDATE `item_template` SET `class` = 7 WHERE `entry` = 61779;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 61780;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 61781;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 61782;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 61783;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 61784;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 61785;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 61182;

-- Tel'abim:
-- 5016415, 5016416, 5016417, 5016418, 5016419, 5016420, 5016421, 5016422, 5016423, 5016424, 5016425, 5016426, 5016427, 5016428, 5016429, 5016430, 5016431
-- Hyjal:
-- 5016432, 5016433, 5016434, 5016435, 5016436, 5016437, 5016438, 5016439, 5016440, 5016441, 5016442, 5016443, 5016444, 5016445, 5016446, 5016447, 5016448, 5016449, 5016450, 5016451, 5016452, 5016453, 5016454, 5016455, 5016456, 5016457, 5016458, 5016459, 5016460, 5016461, 5016462, 5016463, 5016464, 5016465, 5016466, 5016467, 5016468, 5016469, 5016470, 5016471, 5016472, 5016473, 5016474, 5016475

REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`, `flags`, `instance`) VALUES 

(50000, 1, 'Black Lotus - Tel''Abim', 0, 0),
(50001, 1, 'Black Lotus - Hyjal', 0, 0);

DELETE FROM `pool_gameobject` WHERE `pool_entry` IN (50000, 50001);

REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`, `flags`) VALUES 

(5016415, 50000, 0, 'Black Lotus - Tel''Abim', 0),
(5016416, 50000, 0, 'Black Lotus - Tel''Abim', 0),
(5016417, 50000, 0, 'Black Lotus - Tel''Abim', 0),
(5016418, 50000, 0, 'Black Lotus - Tel''Abim', 0),
(5016419, 50000, 0, 'Black Lotus - Tel''Abim', 0),
(5016420, 50000, 0, 'Black Lotus - Tel''Abim', 0),
(5016421, 50000, 0, 'Black Lotus - Tel''Abim', 0),
(5016422, 50000, 0, 'Black Lotus - Tel''Abim', 0),
(5016423, 50000, 0, 'Black Lotus - Tel''Abim', 0),
(5016424, 50000, 0, 'Black Lotus - Tel''Abim', 0),
(5016425, 50000, 0, 'Black Lotus - Tel''Abim', 0),
(5016426, 50000, 0, 'Black Lotus - Tel''Abim', 0),
(5016427, 50000, 0, 'Black Lotus - Tel''Abim', 0),
(5016428, 50000, 0, 'Black Lotus - Tel''Abim', 0),
(5016429, 50000, 0, 'Black Lotus - Tel''Abim', 0),
(5016430, 50000, 0, 'Black Lotus - Tel''Abim', 0),
(5016431, 50000, 0, 'Black Lotus - Tel''Abim', 0),

(5016432, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016433, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016434, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016435, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016436, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016437, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016438, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016439, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016440, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016441, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016442, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016443, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016444, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016445, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016446, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016447, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016448, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016449, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016450, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016451, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016452, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016453, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016454, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016455, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016456, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016457, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016458, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016459, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016460, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016461, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016462, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016463, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016464, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016465, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016466, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016467, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016468, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016469, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016470, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016471, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016472, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016473, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016474, 50001, 0, 'Black Lotus - Hyjal', 0),
(5016475, 50001, 0, 'Black Lotus - Hyjal', 0);

UPDATE `gameobject` SET `spawntimesecsmin` = 3600, `spawntimesecsmax` = 3600 WHERE `guid` IN (5016432, 5016433, 5016434, 5016435, 5016436, 5016437, 5016438, 5016439, 5016440, 5016441, 5016442, 5016443, 5016444, 5016445, 5016446, 5016447, 5016448, 5016449, 5016450, 5016451, 5016452, 5016453, 5016454, 5016455, 5016456, 5016457, 5016458, 5016459, 5016460, 5016461, 5016462, 5016463, 5016464, 5016465, 5016466, 5016467, 5016468, 5016469, 5016470, 5016471, 5016472, 5016473, 5016474, 5016475, 5016415, 5016416, 5016417, 5016418, 5016419, 5016420, 5016421, 5016422, 5016423, 5016424, 5016425, 5016426, 5016427, 5016428, 5016429, 5016430, 5016431);