-- Make Huge Keg of Rum only usable when on quest.
UPDATE `gameobject_template` SET `flags`=36 WHERE `entry`=2010836;
UPDATE `quest_template` SET `ReqCreatureOrGOId1`=-2010836 WHERE `entry`=40178;
