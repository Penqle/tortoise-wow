-- Increase Ogre Warbeads drop chacne inside Dire Maul.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-25 WHERE `item`=21982 && `entry` IN (11441, 11444, 11445, 11448, 11450, 14351);
