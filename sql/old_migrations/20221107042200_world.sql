-- Assign minimum levels to open world chests.
UPDATE `gameobject_template` SET `data9`=0 WHERE `type`=3 && `data9` != 0;
UPDATE `gameobject_template` SET `data9`=4 WHERE `entry`=106318; -- Durotar
UPDATE `gameobject_template` SET `data9`=8 WHERE `entry`=3714; -- The Barrens
UPDATE `gameobject_template` SET `data9`=8 WHERE `entry`=106319; -- The Barrens
UPDATE `gameobject_template` SET `data9`=13 WHERE `entry`=111095; -- Silverpine Forest
UPDATE `gameobject_template` SET `data9`=14 WHERE `entry`=2849; -- Stonetalon Mountains
UPDATE `gameobject_template` SET `data9`=14 WHERE `entry`=75293; -- The Deadmines
UPDATE `gameobject_template` SET `data9`=15 WHERE `entry`=105570; -- Alterac Mountains
UPDATE `gameobject_template` SET `data9`=19 WHERE `entry`=2850; -- Duskwood
UPDATE `gameobject_template` SET `data9`=22 WHERE `entry`=3715; -- Stonetalon Mountains
UPDATE `gameobject_template` SET `data9`=23 WHERE `entry`=2852; -- Ashenvale
UPDATE `gameobject_template` SET `data9`=24 WHERE `entry`=4096; -- Hillsbrad Foothills
UPDATE `gameobject_template` SET `data9`=29 WHERE `entry`=2855; -- Thousand Needles
UPDATE `gameobject_template` SET `data9`=29 WHERE `entry`=105578; -- Arathi Highlands
UPDATE `gameobject_template` SET `data9`=29 WHERE `entry`=105579; -- Arathi Highlands
UPDATE `gameobject_template` SET `data9`=32 WHERE `entry`=105581; -- Arathi Highlands
UPDATE `gameobject_template` SET `data9`=33 WHERE `entry`=2857; -- Badlands
UPDATE `gameobject_template` SET `data9`=39 WHERE `entry`=4149; -- Searing Gorge
UPDATE `gameobject_template` SET `data9`=42 WHERE `entry`=153451; -- Tanaris
UPDATE `gameobject_template` SET `data9`=45 WHERE `entry`=153463; -- Western Plaguelands
UPDATE `gameobject_template` SET `data9`=49 WHERE `entry`=153453; -- Burning Steppes
UPDATE `gameobject_template` SET `data9`=50 WHERE `entry`=153468; -- Western Plaguelands
UPDATE `gameobject_template` SET `data9`=52 WHERE `entry`=153454; -- Winterspring
UPDATE `gameobject_template` SET `data9`=52 WHERE `entry`=153464; -- Western Plaguelands
