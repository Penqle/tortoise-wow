-- ==============================================
-- FILE: a_mailbox_cleanup.sql
-- GENERATED: 20260715124044
-- ==============================================
DELETE FROM `gameobject`
WHERE `guid` IN (
    27799, 20426, 4002900, 4002897, 4002898, 4002899
    );

-- ==============================================
-- FILE: broadcast_text_thunderbluff.sql
-- GENERATED: 20260715124044
-- ==============================================
INSERT INTO `broadcast_text`
(
    `entry`,
    `male_text`,
    `female_text`,
    `chat_type`,
    `sound_id`,
    `language_id`,
    `emote_id1`,
    `emote_id2`,
    `emote_id3`,
    `emote_delay1`,
    `emote_delay2`,
    `emote_delay3`
)
VALUES
(6309801, 'You come to seek guidance, to seek wisdom? Such things can be found from searching within and identifying your inner self. You would be surprised just how much spirit and fortitude lays deep in ones heart.', 'You come to seek guidance, to seek wisdom? Such things can be found from searching within and identifying your inner self. You would be surprised just how much spirit and fortitude lays deep in ones heart.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6320601, 'I am ready to face the chaos of war and prove my strength on the battlefield. [Enable War Mode]', 'I am ready to face the chaos of war and prove my strength on the battlefield. [Enable War Mode]', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6320602, 'Vile Alliance dwarves have infiltrated our sacred grounds in the Thorn Gorge! Enlist yourself to rid these pests out of the lands of the Earthmother!', 'Vile Alliance dwarves have infiltrated our sacred grounds in the Thorn Gorge! Enlist yourself to rid these pests out of the lands of the Earthmother!', 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: creature_equip_template_thunderbluff.sql
-- GENERATED: 20260715124044
-- ==============================================
INSERT INTO `creature_equip_template`
(
    `entry`,
    `equipentry1`,
    `equipentry2`,
    `equipentry3`
)
VALUES
(63206, 22348, 0, 0);

-- ==============================================
-- FILE: creature_template_update_thunderbluff.sql
-- GENERATED: 20260715124044
-- ==============================================
UPDATE `creature_template`
SET `scale` = 1.25,
    `gossip_menu_id` = `entry`,
    `dmg_min` = 91.0177,
    `dmg_max` = 116.716812,
    `attack_power` = 206,
    `unit_flags` = 37376,
    `ranged_dmg_min` = 75.210083,
    `ranged_dmg_max` = 103.413864,
    `ranged_attack_power` = 144
WHERE `entry` = 63098;

UPDATE `creature_template`
SET `scale` = 1.4,
    `gossip_menu_id` = `entry`,
    `dmg_min` = 388.52951,
    `dmg_max` = 502.612976,
    `attack_power` = 258,
    `unit_flags` = 37440,
    `ranged_dmg_min` = 214.436615,
    `ranged_dmg_max` = 299.127228,
    `ranged_attack_power` = 182
WHERE `entry` = 63206;

UPDATE `creature_template`
SET `vendor_id` = 0
WHERE `entry` IN (6746, 3014);

-- ==============================================
-- FILE: creature_thunderbluff.sql
-- GENERATED: 20260715124044
-- ==============================================
INSERT INTO `creature`
(
    `guid`,
    `id`,
    `id2`,
    `id3`,
    `id4`,
    `map`,
    `position_x`,
    `position_y`,
    `position_z`,
    `orientation`,
    `spawntimesecsmin`,
    `spawntimesecsmax`,
    `wander_distance`,
    `health_percent`,
    `mana_percent`,
    `movement_type`,
    `spawn_flags`,
    `visibility_mod`
)
VALUES
(2595999, 63098, 0, 0, 0, 1, -1036.719971, 217.100998, 135.716003, 0.768150, 300, 300, 0, 100, 100, 0, 0, 0),
(2597763, 63206, 0, 0, 0, 1, -1385.959961, -106.376999, 158.934998, 3.7479300498962402, 300, 300, 0, 100, 100, 0, 0, 0);

-- ==============================================
-- FILE: gameobject_thunderbluff.sql
-- GENERATED: 20260715124044
-- ==============================================
INSERT INTO `gameobject`
(
    `guid`,
    `id`,
    `map`,
    `position_x`,
    `position_y`,
    `position_z`,
    `orientation`,
    `rotation0`,
    `rotation1`,
    `rotation2`,
    `rotation3`,
    `spawntimesecsmin`,
    `spawntimesecsmax`,
    `animprogress`,
    `state`,
    `spawn_flags`,
    `visibility_mod`
)
VALUES
(5022167, 143983, 1, -1263.31005859375, 44.592498779296875, 127.7040023803711, 1.7292799949645996, 0, 0, 0.760861702, 0.64891407, 300, 300, 100, 1, 0, 0),
(5022168, 143983, 1, -1107.3199462890625, 33.679901123046875, 140.59800720214844, 3.837290048599243, 0, 0, 0.940108215, -0.340876141, 300, 300, 100, 1, 0, 0),
(5022169, 143983, 1, -1021.1599731445312, 244.28700256347656, 135.2570037841797, 3.868499994277954, 0, 0, 0.934674605, -0.355504405, 300, 300, 100, 1, 0, 0),
(5022170, 143983, 1, -1051.300048828125, -244.21200561523438, 159.02999877929688, 1.8979400396347046, 0, 0, 0.812815951, 0.582520583, 300, 300, 100, 1, 0, 0),
(5022171, 143983, 1, -1403.8800048828125, -85.7051010131836, 158.93499755859375, 0.7316169738769531, 0, 0, 0.357704405, 0.933834867, 300, 300, 100, 1, 0, 0);

-- ==============================================
-- FILE: gossip_menu_option_thunderbluff.sql
-- GENERATED: 20260715124044
-- ==============================================
INSERT INTO `gossip_menu_option`
(
    `menu_id`,
    `id`,
    `option_icon`,
    `option_text`,
    `option_broadcast_text`,
    `option_id`,
    `npc_option_npcflag`,
    `action_menu_id`,
    `action_poi_id`,
    `action_script_id`,
    `box_coded`,
    `box_money`,
    `box_text`,
    `box_broadcast_text`,
    `condition_id`
)
VALUES
(63206, 0, 10, 'I am ready to face the chaos of war and prove my strength on the battlefield. [Enable War Mode]', 6320601, 1, 1, 0, 0, 0, 0, 0, '', 0, 0);

-- ==============================================
-- FILE: gossip_menu_thunderbluff.sql
-- GENERATED: 20260715124044
-- ==============================================
INSERT INTO `gossip_menu`
(
    `entry`,
    `text_id`,
    `script_id`,
    `condition_id`
)
VALUES
(63098, 6309801, 0, 0),
(63206, 6320601, 0, 0);

-- ==============================================
-- FILE: npc_text_thunderbluff.sql
-- GENERATED: 20260715124044
-- ==============================================
INSERT INTO `npc_text`
(
    `ID`,
    `BroadcastTextID0`,
    `Probability0`,
    `BroadcastTextID1`,
    `Probability1`,
    `BroadcastTextID2`,
    `Probability2`,
    `BroadcastTextID3`,
    `Probability3`,
    `BroadcastTextID4`,
    `Probability4`,
    `BroadcastTextID5`,
    `Probability5`,
    `BroadcastTextID6`,
    `Probability6`,
    `BroadcastTextID7`,
    `Probability7`
)
VALUES
(6309801, 6309801, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6320601, 6320602, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0);

-- ==============================================
-- FILE: npc_vendor_thunderbluff.sql
-- GENERATED: 20260715124044
-- ==============================================
INSERT INTO `npc_vendor`
(
    `entry`,
    `slot`,
    `item`,
    `maxcount`,
    `incrtime`,
    `itemflags`,
    `condition_id`
)
VALUES
(6746, 1, 159, 0, 0, 0, 0),
(6746, 2, 414, 0, 0, 0, 0),
(6746, 3, 422, 0, 0, 0, 0),
(6746, 4, 1179, 0, 0, 0, 0),
(6746, 5, 1205, 0, 0, 0, 0),
(6746, 6, 1645, 0, 0, 0, 0),
(6746, 7, 1707, 0, 0, 0, 0),
(6746, 8, 1708, 0, 0, 0, 0),
(6746, 9, 2070, 0, 0, 0, 0),
(6746, 10, 3927, 0, 0, 0, 0),
(6746, 11, 8766, 0, 0, 0, 0),
(6746, 12, 8932, 0, 0, 0, 0),
(3014, 1, 18256, 0, 0, 0, 0),
(3014, 2, 3371, 0, 0, 0, 0),
(3014, 3, 3372, 0, 0, 0, 0),
(3014, 4, 8925, 0, 0, 0, 0),
(3014, 5, 3424, 0, 0, 0, 0),
(3014, 6, 3423, 0, 0, 0, 0),
(3014, 7, 3422, 0, 0, 0, 0),
(3014, 8, 3421, 0, 0, 0, 0),
(3014, 9, 3420, 0, 0, 0, 0),
(3014, 10, 3419, 0, 0, 0, 0);

