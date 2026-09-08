-- ==============================================
-- FILE: satyr_updates.sql
-- GENERATED: 20260905103856
-- ==============================================

INSERT INTO `creature_display_info_addon`
(
    `display_id`,
    `bounding_radius`,
    `combat_reach`,
    `gender`,
    `display_id_other_gender`
)
VALUES
(21511, 1.5, 1.5, 1, 2010),
(21512, 1.5, 1.5, 1, 2011),
(21514, 1.5, 1.5, 1, 11346),
(21516, 1.5, 1.5, 1, 2007),
(21518, 1.5, 1.5, 1, 2875),
(21519, 1.5, 1.5, 1, 11344),
(21572, 1.5, 1.5, 1, 2012),
(21575, 1.5, 1.5, 1, 6741),
(21576, 1.5, 1.5, 1, 2018),
(21577, 1.5, 1.5, 1, 2017),
(21580, 1.5, 1.5, 1, 11332),
(21582, 1.5, 1.5, 1, 11331),
(21583, 1.5, 1.5, 1, 11337),
(21584, 1.5, 1.5, 1, 11333),
(21585, 1.5, 1.5, 1, 11334),
(21586, 1.5, 1.5, 1, 11335),
(21587, 1.5, 1.5, 1, 8575),
(21588, 1.5, 1.5, 1, 2019),
(21589, 1.5, 1.5, 1, 11336),
(21592, 1.5, 1.5, 1, 10032),
(21593, 1.5, 1.5, 1, 7649),
(21594, 1.5, 1.5, 1, 11340);

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21516
WHERE `display_id` = 2007;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21511
WHERE `display_id` = 2010;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21512
WHERE `display_id` = 2011;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21572
WHERE `display_id` = 2012;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21513
WHERE `display_id` = 2013;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21573
WHERE `display_id` = 2014;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21577
WHERE `display_id` = 2017;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21576
WHERE `display_id` = 2018;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21588
WHERE `display_id` = 2019;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21581
WHERE `display_id` = 2020;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21574
WHERE `display_id` = 2021;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21595
WHERE `display_id` = 2687;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21518
WHERE `display_id` = 2875;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21590
WHERE `display_id` = 2878;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21575
WHERE `display_id` = 6741;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21591
WHERE `display_id` = 6743;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21593
WHERE `display_id` = 7649;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21587
WHERE `display_id` = 8575;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21592
WHERE `display_id` = 10032;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21582
WHERE `display_id` = 11331;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21580
WHERE `display_id` = 11332;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21584
WHERE `display_id` = 11333;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21585
WHERE `display_id` = 11334;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21586
WHERE `display_id` = 11335;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21589
WHERE `display_id` = 11336;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21583
WHERE `display_id` = 11337;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21578
WHERE `display_id` = 11338;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21594
WHERE `display_id` = 11340;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21519
WHERE `display_id` = 11344;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21579
WHERE `display_id` = 11345;

UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 21514
WHERE `display_id` = 11346;

UPDATE `creature_display_info_addon`
SET `gender` = 1,
    `display_id_other_gender` = 0
WHERE `display_id` = 21513;

UPDATE `creature_display_info_addon`
SET `gender` = 1,
    `display_id_other_gender` = 2014
WHERE `display_id` = 21573;

UPDATE `creature_display_info_addon`
SET `gender` = 1,
    `display_id_other_gender` = 2021
WHERE `display_id` = 21574;

UPDATE `creature_display_info_addon`
SET `gender` = 1,
    `display_id_other_gender` = 11338
WHERE `display_id` = 21578;

UPDATE `creature_display_info_addon`
SET `gender` = 1,
    `display_id_other_gender` = 11345
WHERE `display_id` = 21579;

UPDATE `creature_display_info_addon`
SET `gender` = 1,
    `display_id_other_gender` = 2020
WHERE `display_id` = 21581;

UPDATE `creature_display_info_addon`
SET `gender` = 1,
    `display_id_other_gender` = 2878
WHERE `display_id` = 21590;

UPDATE `creature_display_info_addon`
SET `gender` = 1,
    `display_id_other_gender` = 6743
WHERE `display_id` = 21591;

UPDATE `creature_display_info_addon`
SET `gender` = 1,
    `display_id_other_gender` = 2687
WHERE `display_id` = 21595;

UPDATE `creature_template`
SET `display_id2` = 21590
WHERE `entry` IN (
    3752, 6200
    );

UPDATE `creature_template`
SET `display_id2` = 21519
WHERE `entry` = 3754;

UPDATE `creature_template`
SET `display_id2` = 21514
WHERE `entry` = 3755;

UPDATE `creature_template`
SET `display_id2` = 21579
WHERE `entry` = 3757;

UPDATE `creature_template`
SET `display_id2` = 21511
WHERE `entry` = 3758;

UPDATE `creature_template`
SET `display_id2` = 21518
WHERE `entry` = 3759;

UPDATE `creature_template`
SET `display_id2` = 21512
WHERE `entry` = 3762;

UPDATE `creature_template`
SET `display_id2` = 21575
WHERE `entry` IN (
    3763, 4670
    );

UPDATE `creature_template`
SET `display_id2` = 21516
WHERE `entry` = 3765;

UPDATE `creature_template`
SET `display_id2` = 21576
WHERE `entry` = 3767;

UPDATE `creature_template`
SET `display_id2` = 21577
WHERE `entry` IN (
    3770, 92123, 92126
    );

UPDATE `creature_template`
SET `display_id2` = 21513
WHERE `entry` = 3771;

UPDATE `creature_template`
SET `display_id2` = 21574
WHERE `entry` IN (
    4671, 4799, 11452, 11792, 62528
    );

UPDATE `creature_template`
SET `display_id2` = 21573
WHERE `entry` IN (
    4672, 4675, 4798, 11456
    );

UPDATE `creature_template`
SET `display_id2` = 21582
WHERE `entry` IN (
    4673, 6125
    );

UPDATE `creature_template`
SET `display_id2` = 21580
WHERE `entry` IN (
    4674, 6126
    );

UPDATE `creature_template`
SET `display_id2` = 21572
WHERE `entry` = 4788;

UPDATE `creature_template`
SET `display_id2` = 21512
WHERE `entry` IN (
    4789, 60426
    );

UPDATE `creature_template`
SET `display_id2` = 21581
WHERE `entry` IN (
    6127, 11453
    );

UPDATE `creature_template`
SET `display_id2` = 21591
WHERE `entry` IN (
    6201, 62811
    );

UPDATE `creature_template`
SET `display_id2` = 21578
WHERE `entry` IN (
    6202, 11791, 62812, 62881, 62883, 62944
    );

UPDATE `creature_template`
SET `display_id2` = 21588
WHERE `entry` = 7105;

UPDATE `creature_template`
SET `display_id2` = 21587
WHERE `entry` = 7106;

UPDATE `creature_template`
SET `display_id2` = 21583
WHERE `entry` = 7107;

UPDATE `creature_template`
SET `display_id2` = 21584
WHERE `entry` = 7108;

UPDATE `creature_template`
SET `display_id2` = 21585
WHERE `entry` IN (
    7109, 92124, 92125
    );

UPDATE `creature_template`
SET `display_id2` = 21589
WHERE `entry` = 7110;

UPDATE `creature_template`
SET `display_id2` = 21586
WHERE `entry` = 7111;

UPDATE `creature_template`
SET `display_id2` = 21579
WHERE `entry` IN (
    11451, 11790
    );

UPDATE `creature_template`
SET `display_id2` = 21592
WHERE `entry` = 11454;

UPDATE `creature_template`
SET `display_id2` = 21593
WHERE `entry` = 11455;

UPDATE `creature_template`
SET `display_id2` = 21594
WHERE `entry` = 11457;

UPDATE `creature_template`
SET `display_id2` = 21592
WHERE `entry` IN (
    61338, 61339, 61340, 61341
    );

UPDATE `creature_template`
SET `display_id2` = 21595
WHERE `entry` IN (
    62810, 62882, 62884
    );


