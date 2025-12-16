-- Don't allow interacting with Dry Fire Wood unless on quest.
UPDATE `gameobject_template` SET `flags`=4 WHERE `entry`=1772000;
UPDATE `gameobject_loot_template` SET `groupid`=0 WHERE `entry`=1772000 && `item`=70030;
