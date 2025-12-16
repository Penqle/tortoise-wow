-- Delete gold veins in Burning Steppes.
DELETE FROM `pool_template` WHERE `entry`=1333;
DELETE FROM `gameobject` WHERE `guid` IN (5842, 5869, 5927, 5928, 5941);
DELETE FROM `pool_gameobject` WHERE `guid` IN (5842, 5869, 5927, 5928, 5941);
