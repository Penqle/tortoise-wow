DELETE FROM quest_template WHERE entry = 40013;
DELETE FROM quest_template WHERE entry = 40012;
DELETE FROM quest_template WHERE entry = 40010;

DELETE FROM creature_template WHERE entry = 15;

-- 61341- Vilemusk hellcaller
-- 61339- Vilemusk Felsworn 
-- 61340- Vilemusk Shadowstalker
-- No money drops on any of these satyrs

UPDATE `creature_template` SET `gold_min` = 445 WHERE `entry` = 61341;
UPDATE `creature_template` SET `gold_max` = 586 WHERE `entry` = 61341;

UPDATE `creature_template` SET `gold_min` = 445 WHERE `entry` = 61339;
UPDATE `creature_template` SET `gold_max` = 586 WHERE `entry` = 61339;

UPDATE `creature_template` SET `gold_min` = 445 WHERE `entry` = 61340;
UPDATE `creature_template` SET `gold_max` = 586 WHERE `entry` = 61340;

-- change display id of 61192 to 20492

UPDATE `creature_template` SET `display_id1` = 20492 WHERE `entry` = 61192;

-- make item 69000 drop from 61418 with 1,5% chance (new loottable)

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61418, 69000, 1.5, 4, 1, 1, 0);

UPDATE `broadcast_text` SET `male_text` = 'Vagrant\'s Endeavor is a unique gameplay mode that challenges players to embrace a minimalist approach to their character\'s gear. In this mode, players are restricted to wearing only items of poor and common quality, with no option to use enchants. This creates a thrilling and immersive experience as players must rely on their skill and strategy rather than relying on powerful gear.\n\nAs players progress and reach level 60, the restriction for gearing will be removed, and they are rewarded with a special companion known as the Forworn Mule. This adorable bank pet not only adds a touch of charm to the gameplay, but also serves as a helpful assistant by providing additional storage space for players\' belongings.' WHERE `entry` = 52132;