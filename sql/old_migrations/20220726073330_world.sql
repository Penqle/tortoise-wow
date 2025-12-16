
UPDATE `item_template` SET `bonding`='1' WHERE  `entry`=60541;
UPDATE `creature` SET `spawntimesecsmin`='480', `spawntimesecsmax`='480' WHERE  `id`=60697;
UPDATE `quest_template` SET `ReqCreatureOrGOId1`='60737', `ReqCreatureOrGOCount1`='1' WHERE  `entry`=40489;
update creature set spawntimesecsmin = 300, spawntimesecsmax = 360 where guid > 2569245 and spawntimesecsmin = 25;