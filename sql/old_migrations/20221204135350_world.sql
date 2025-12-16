-- Add missing Redstone Crystalhide and Basilisk spawns.
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `wander_distance`, `movement_type`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES 
(400307, 5991, 0, -11417.5, -2851.7, 0.802566, 6.26173, 0, 0, 300, 300),
(400308, 5990, 0, -11348.7, -3182.68, 10.3161, 3.60764, 15.6944, 1, 300, 300),
(400309, 5990, 0, -11314.9, -3147.68, 5.83146, 3.9492, 30, 1, 300, 300),
(400310, 5990, 0, -11282.9, -3115.09, 3.99122, 5.6737, 30, 1, 300, 300),
(400311, 5990, 0, -11251.3, -3083.35, 3.61227, 4.91067, 30, 1, 300, 300),
(400312, 5990, 0, -11250.1, -3148.64, 3.73673, 1.82926, 26.0751, 1, 300, 300),
(400313, 5990, 0, -11217.1, -3182.31, 8.21967, 2.20353, 24.5224, 1, 300, 300),
(400314, 5990, 0, -11216.6, -3117.09, 4.67171, 5.50633, 23.1246, 1, 300, 300),
(400315, 5990, 0, -11184.7, -3216.66, 9.31987, 2.27613, 18.3826, 1, 300, 300);
UPDATE `creature` SET `id2`=5991, `position_x`=-11815.7, `position_y`=-2952.12, `position_z`=7.61431, `orientation`=0.611966 WHERE `guid`=3841;
UPDATE `creature` SET `id2`=5991, `position_x`=-11517.5, `position_y`=-3084.68, `position_z`=-1.76611, `orientation`=2.44373 WHERE `guid`=3931;
UPDATE `creature` SET `id2`=5991, `position_x`=-11515.9, `position_y`=-3016.36, `position_z`=10.9705, `orientation`=0.768863 WHERE `guid`=2644;
UPDATE `creature` SET `id2`=5991, `position_x`=-11483.5, `position_y`=-2782.68, `position_z`=-0.979481, `orientation`=3.26661 WHERE `guid`=3832;
UPDATE `creature` SET `id2`=5991, `position_x`=-11447.5, `position_y`=-2950.21, `position_z`=6.28305, `orientation`=5.18024 WHERE `guid`=3880;
UPDATE `creature` SET `id2`=5991, `position_x`=-11419, `position_y`=-2981.24, `position_z`=0.687047, `orientation`=3.72527 WHERE `guid`=3876;
UPDATE `creature` SET `id2`=5991, `position_x`=-11384.6, `position_y`=-2817.58, `position_z`=-2.24922, `orientation`=0.478931 WHERE `guid`=3833;
UPDATE `creature` SET `id2`=5991, `position_x`=-11382.9, `position_y`=-2949.19, `position_z`=3.19465, `orientation`=0.770896 WHERE `guid`=3919;
UPDATE `creature` SET `id2`=5991, `position_x`=-11382.6, `position_y`=-2883.59, `position_z`=1.4664, `orientation`=4.61755 WHERE `guid`=3917;
UPDATE `creature` SET `id2`=5991, `position_x`=-11350, `position_y`=-2784.99, `position_z`=7.01573, `orientation`=1.80368 WHERE `guid`=3915;
UPDATE `creature` SET `id2`=5991, `position_x`=-11318.4, `position_y`=-2746.01, `position_z`=9.21466, `orientation`=1.74202 WHERE `guid`=3914;
UPDATE `creature` SET `id2`=5990, `position_x`=-11213.4, `position_y`=-3313.36, `position_z`=8.59832, `orientation`=3.89787 WHERE `guid`=3940;
UPDATE `creature` SET `id2`=5990, `position_x`=-11150.6, `position_y`=-3315.79, `position_z`=4.74817, `orientation`=2.36488 WHERE `guid`=3942;
