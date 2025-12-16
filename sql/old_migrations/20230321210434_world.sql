-- This spawn should be of Door (179549) not Conservatory Door (176907).
UPDATE `gameobject` SET `id`=179549, `position_x`=351.568, `position_y`=88.6734, `position_z`=-36.393, `orientation`=1.5708, `rotation0`=0, `rotation1`=0, `rotation2`=0.707107, `rotation3`=0.707107 WHERE `guid`=397136;

-- This spawn should be of Conservatory Door (176907) not Door (179549).
UPDATE `gameobject` SET `id`=176907, `position_x`=131.286, `position_y`=-278.89, `position_z`=-56.5211, `orientation`=3.14159, `rotation0`=0, `rotation1`=0, `rotation2`=-1, `rotation3`=0 WHERE `guid`=363231;

-- Correct template data for doors.
UPDATE `gameobject_template` SET `faction`=114, `flags`=32 WHERE  `entry`=176907;
UPDATE `gameobject_template` SET `flags`=34 WHERE  `entry`=179549;
