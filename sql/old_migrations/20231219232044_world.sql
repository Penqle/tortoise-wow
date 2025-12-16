-- Events list for Crushridge Ogre
DELETE FROM `creature_ai_events` WHERE `creature_id`=2252;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (225201, 2252, 0, 4, 0, 10, 0, 0, 0, 0, 0, 225201, 0, 0, 'Crushridge Ogre - Random Say on Aggro');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (225202, 2252, 0, 6, 0, 100, 0, 0, 0, 0, 0, 225202, 0, 0, 'Crushridge Ogre - Cast Spell Crushridge Death on Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=225202;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(225202, 0, 0, 15, 9144, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Crushridge Ogre - Cast Spell Crushridge Death');

-- Events list for Crushridge Brute
DELETE FROM `creature_ai_events` WHERE `creature_id`=2253;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (225301, 2253, 0, 4, 0, 10, 0, 0, 0, 0, 0, 225301, 0, 0, 'Crushridge Brute - Random Say on Aggro');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (225302, 2253, 0, 6, 0, 100, 0, 0, 0, 0, 0, 225302, 0, 0, 'Crushridge Brute - Cast Spell Crushridge Death on Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=225302;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(225302, 0, 0, 15, 9144, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Crushridge Brute - Cast Spell Crushridge Death');

-- Events list for Crushridge Mage
DELETE FROM `creature_ai_events` WHERE `creature_id`=2255;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (225501, 2255, 0, 4, 0, 10, 0, 0, 0, 0, 0, 225501, 0, 0, 'Crushridge Mage - Random Say on Aggro');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (225502, 2255, 0, 6, 0, 100, 0, 0, 0, 0, 0, 225502, 0, 0, 'Crushridge Mage - Cast Spell Crushridge Death on Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=225502;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(225502, 0, 0, 15, 9144, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Crushridge Mage - Cast Spell Crushridge Death');

-- Events list for Crushridge Enforcer
DELETE FROM `creature_ai_events` WHERE `creature_id`=2256;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (225601, 2256, 0, 4, 0, 10, 0, 0, 0, 0, 0, 225601, 0, 0, 'Crushridge Enforcer - Random Say on Aggro');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (225602, 2256, 0, 6, 0, 100, 0, 0, 0, 0, 0, 225602, 0, 0, 'Crushridge Enforcer - Cast Spell Crushridge Death on Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=225601;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(225601, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1925, 1926, 1927, 0, 0, 0, 0, 0, 0, 'Crushridge Enforcer - Say Text');
DELETE FROM `creature_ai_scripts` WHERE `id`=225602;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(225602, 0, 0, 15, 9144, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Crushridge Enforcer - Cast Spell Crushridge Death');
UPDATE `creature_template` SET `ai_name`='EventAI' WHERE `entry`=2256;

-- Events list for Crushridge Plunderer
DELETE FROM `creature_ai_events` WHERE `creature_id`=2416;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (241601, 2416, 0, 4, 0, 10, 0, 0, 0, 0, 0, 241601, 0, 0, 'Crushridge Plunderer - Random Say on Aggro');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (241602, 2416, 0, 6, 0, 100, 0, 0, 0, 0, 0, 241602, 0, 0, 'Crushridge Plunderer - Cast Spell Crushridge Death on Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=241602;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(241602, 0, 0, 15, 9144, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Crushridge Plunderer - Cast Spell Crushridge Death');

-- Events list for Crushridge Warmonger
DELETE FROM `creature_ai_events` WHERE `creature_id`=2287;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (228701, 2287, 0, 4, 0, 10, 0, 0, 0, 0, 0, 228701, 0, 0, 'Crushridge Warmonger - Random Say on Aggro');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (228702, 2287, 0, 2, 0, 100, 0, 50, 0, 0, 0, 228702, 0, 0, 'Crushridge Warmonger - Call for Help at 50% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (228703, 2287, 0, 6, 0, 100, 0, 0, 0, 0, 0, 228703, 0, 0, 'Crushridge Warmonger - Cast Spell Crushridge Death on Death');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (228704, 2287, 0, 8, 0, 100, 0, 9144, -1, 0, 0, 228704, 0, 0, 'Crushridge Warmonger - Enrage on Hit By Spell Crushridge Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=228702;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(228702, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 'Crushridge Warmonger - Call for Help'),
(228702, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1064, 0, 0, 0, 0, 0, 0, 0, 0, 'Crushridge Warmonger - Say Text');
DELETE FROM `creature_ai_scripts` WHERE `id`=228703;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(228703, 0, 0, 15, 9144, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Crushridge Warmonger - Cast Spell Crushridge Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=228704;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(228704, 0, 0, 15, 8269, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Crushridge Warmonger - Cast Spell Enrage'),
(228704, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1151, 0, 0, 0, 0, 0, 0, 0, 0, 'Crushridge Warmonger - Say Text');

-- Define spell targets.
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `conditionId`, `inverseEffectMask`) VALUES (9144, 1, 2287, 0, 0);

-- Events list for Stromgarde Troll Hunter
DELETE FROM `creature_ai_events` WHERE `creature_id`=2583;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (258301, 2583, 0, 6, 0, 100, 0, 0, 0, 0, 0, 258301, 0, 0, 'Stromgarde Troll Hunter - Cast Spell Stromgarde Death on Death');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (258302, 2583, 0, 2, 0, 100, 1, 50, 0, 12000, 18000, 258302, 0, 0, 'Stromgarde Troll Hunter - Cast Flash Heal at 50% HP');
DELETE FROM `creature_ai_scripts` WHERE `id`=258301;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(258301, 0, 0, 15, 8894, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stromgarde Troll Hunter - Cast Spell Stromgarde Death');

-- Events list for Stromgarde Defender
DELETE FROM `creature_ai_events` WHERE `creature_id`=2584;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (258401, 2584, 0, 6, 0, 100, 0, 0, 0, 0, 0, 258401, 0, 0, 'Stromgarde Defender - Cast Spell Stromgarde Death on Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=258401;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(258401, 0, 0, 15, 8894, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stromgarde Defender - Cast Spell Stromgarde Death');
UPDATE `creature_template` SET `ai_name`='EventAI' WHERE `entry`=2584;

-- Events list for Stromgarde Vindicator
DELETE FROM `creature_ai_events` WHERE `creature_id`=2585;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (258501, 2585, 0, 8, 0, 100, 0, 8894, -1, 0, 0, 258501, 0, 0, 'Stromgarde Vindicator - Cast Vegeance on Hit By Spell Stromgarde Death');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (258502, 2585, 0, 6, 0, 100, 0, 0, 0, 0, 0, 258502, 0, 0, 'Stromgarde Vindicator - Cast Spell Stromgarde Death on Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=258501;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(258501, 0, 0, 15, 8602, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stromgarde Vindicator - Cast Spell Vengeance'),
(258501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1151, 0, 0, 0, 0, 0, 0, 0, 0, 'Stromgarde Vindicator - Say Text');
DELETE FROM `creature_ai_scripts` WHERE `id`=258502;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(258502, 0, 0, 15, 8894, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stromgarde Vindicator - Cast Spell Stromgarde Death');

-- Events list for Stromgarde Cavalryman
DELETE FROM `creature_ai_events` WHERE `creature_id`=2738;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (273801, 2738, 0, 4, 0, 100, 0, 0, 0, 0, 0, 273801, 0, 0, 'Stromgarde Cavalryman - Cast Rushing Charge on Aggro');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (273802, 2738, 0, 6, 0, 100, 0, 0, 0, 0, 0, 273802, 0, 0, 'Stromgarde Cavalryman - Cast Spell Stromgarde Death on Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=273802;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(273802, 0, 0, 15, 8894, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stromgarde Cavalryman - Cast Spell Stromgarde Death');

-- Events list for Refuge Pointe Defender
DELETE FROM `creature_ai_events` WHERE `creature_id`=10696;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1069601, 10696, 0, 4, 0, 100, 0, 0, 0, 0, 0, 1069601, 0, 0, 'Refuge Pointe Defender - Cast Defensive Stance on Aggro');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1069602, 10696, 10696, 1, 0, 100, 1, 6000, 9000, 6000, 9000, 1069602, 0, 0, 'Refuge Pointe Defender - Emote Talk OOC');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1069603, 10696, 10696, 6, 0, 100, 0, 0, 0, 0, 0, 1069603, 0, 0, 'Refuge Pointe Defender - Cast Spell Stromgarde Death on Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=1069603;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1069603, 0, 0, 15, 8894, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Refuge Pointe Defender - Cast Spell Stromgarde Death');

-- Define spell targets.
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `conditionId`, `inverseEffectMask`) VALUES (8894, 1, 2585, 0, 0);

-- Events list for Thistlefur Ursa
DELETE FROM `creature_ai_events` WHERE `creature_id`=3921;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (392101, 3921, 0, 1, 0, 100, 0, 1000, 1000, 0, 0, 392101, 0, 0, 'Thistlefur Ursa - Cast Coat of Thistlefur on Spawn');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (392102, 3921, 0, 1, 0, 100, 0, 3000, 3000, 0, 0, 392102, 0, 0, 'Thistlefur Ursa - Cast Battle Stance on Spawn');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (392103, 3921, 0, 9, 0, 100, 1, 0, 5, 23900, 38400, 392103, 0, 0, 'Thistlefur Ursa - Cast Heroic Strike');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (392104, 3921, 0, 2, 0, 100, 0, 15, 0, 0, 0, 392104, 0, 0, 'Thistlefur Ursa - Flee at 15% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (392105, 3921, 0, 6, 0, 100, 0, 0, 0, 0, 0, 392105, 0, 0, 'Thistlefur Ursa - Cast Thistlefur Death on Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=392105;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(392105, 0, 0, 15, 8603, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thistlefur Ursa - Cast Spell Thistlefur Death');

-- Events list for Thistlefur Totemic
DELETE FROM `creature_ai_events` WHERE `creature_id`=3922;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (392201, 3922, 0, 11, 0, 100, 0, 0, 0, 0, 0, 392201, 0, 0, 'Thistlefur Totemic - Cast Coat of Thistlefur on Spawn');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (392202, 3922, 0, 6, 0, 100, 0, 0, 0, 0, 0, 392202, 0, 0, 'Thistlefur Totemic - Cast Thistlefur Death on Death');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (392203, 3922, 0, 2, 0, 100, 0, 15, 0, 0, 0, 392203, 0, 0, 'Thistlefur Totemic - Flee at 15% HP');
DELETE FROM `creature_ai_scripts` WHERE `id`=392202;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(392202, 0, 0, 15, 8603, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thistlefur Totemic - Cast Spell Thistlefur Death');

-- Events list for Thistlefur Den Watcher
DELETE FROM `creature_ai_events` WHERE `creature_id`=3923;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (392301, 3923, 0, 11, 0, 100, 0, 0, 0, 0, 0, 392301, 0, 0, 'Thistlefur Den Watcher - Cast Coat of Thistlefur on Spawn');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (392302, 3923, 0, 2, 0, 100, 1, 30, 0, 11200, 21500, 392302, 0, 0, 'Thistlefur Den Watcher - Cast Frenzied Rage at 30% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (392303, 3923, 0, 2, 0, 100, 0, 15, 0, 0, 0, 392303, 0, 0, 'Thistlefur Den Watcher - Flee at 15% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (392304, 3923, 0, 6, 0, 100, 0, 0, 0, 0, 0, 392304, 0, 0, 'Thistlefur Den Watcher - Cast Thistlefur Death on Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=392304;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(392304, 0, 0, 15, 8603, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thistlefur Den Watcher - Cast Spell Thistlefur Death');

-- Events list for Thistlefur Avenger
DELETE FROM `creature_ai_events` WHERE `creature_id`=3925;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (392501, 3925, 0, 11, 0, 100, 0, 0, 0, 0, 0, 392501, 0, 0, 'Thistlefur Avenger - Cast Coat of Thistlefur on Spawn');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (392502, 3925, 0, 8, 0, 100, 0, 8603, -1, 0, 0, 392502, 0, 0, 'Thistlefur Avenger - Cast Vengeance on Hit By Spell Thistlefur Death');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (392503, 3925, 0, 6, 0, 100, 0, 0, 0, 0, 0, 392503, 0, 0, 'Thistlefur Avenger - Cast Thistlefur Death on Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=392503;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(392503, 0, 0, 15, 8603, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thistlefur Avenger - Cast Spell Thistlefur Death');

-- Events list for Thistlefur Pathfinder
DELETE FROM `creature_ai_events` WHERE `creature_id`=3926;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (392601, 3926, 0, 2, 0, 100, 0, 15, 0, 0, 0, 392601, 0, 0, 'Thistlefur Pathfinder - Flee at 15% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (392602, 3926, 0, 6, 0, 100, 0, 0, 0, 0, 0, 392602, 0, 0, 'Thistlefur Pathfinder - Cast Thistlefur Death on Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=392602;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(392602, 0, 0, 15, 8603, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thistlefur Pathfinder - Cast Spell Thistlefur Death');

-- Define spell targets.
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `conditionId`, `inverseEffectMask`) VALUES (8603, 1, 3925, 0, 0);

-- Events list for Deadwood Den Watcher
DELETE FROM `creature_ai_events` WHERE `creature_id`=7156;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (715601, 7156, 0, 6, 0, 100, 0, 0, 0, 0, 0, 715601, 0, 0, 'Deadwood Den Watcher - Send Script Event on Death');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (715602, 7156, 0, 2, 0, 100, 0, 15, 0, 0, 0, 715602, 0, 0, 'Deadwood Den Watcher - Flee at 15% HP');
DELETE FROM `creature_ai_scripts` WHERE `id`=715601;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(715601, 0, 0, 85, 7157, 7157, 0, 0, 7157, 10, 8, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Den Watcher - Send Script Event');

-- Events list for Deadwood Avenger
DELETE FROM `creature_ai_events` WHERE `creature_id`=7157;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (715701, 7157, 0, 6, 0, 100, 0, 0, 0, 0, 0, 715701, 0, 0, 'Deadwood Avenger - Send Script Event on Death');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (715702, 7157, 0, 31, 0, 100, 0, 7157, 7157, 0, 0, 715702, 0, 0, 'Deadwood Avenger - Cast Enrage on Script Event Happened');
DELETE FROM `creature_ai_scripts` WHERE `id`=715701;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(715701, 0, 0, 85, 7157, 7157, 0, 0, 7157, 10, 8, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Avenger - Send Script Event');
DELETE FROM `creature_ai_scripts` WHERE `id`=715702;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(715702, 0, 0, 15, 8599, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Avenger - Cast Spell Enrage'),
(715702, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1151, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Avenger - Say Text');

-- Events list for Deadwood Shaman
DELETE FROM `creature_ai_events` WHERE `creature_id`=7158;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (715801, 7158, 0, 1, 0, 100, 1, 1000, 1000, 600000, 600000, 715801, 0, 0, 'Deadwood Shaman - Cast Lightning Shield on Spawn');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (715802, 7158, 0, 6, 0, 100, 0, 0, 0, 0, 0, 715802, 0, 0, 'Deadwood Shaman - Send Script Event on Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=715802;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(715802, 0, 0, 85, 7157, 7157, 0, 0, 7157, 10, 8, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Shaman - Send Script Event');

-- Events list for Twilight Avenger
DELETE FROM `creature_ai_events` WHERE `creature_id`=11880;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1188001, 11880, 0, 2, 0, 100, 0, 30, 0, 0, 0, 1188001, 0, 0, 'Twilight Avenger - Cast Enrage at 30% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1188002, 11880, 0, 31, 0, 100, 0, 11880, 11880, 0, 0, 1188002, 0, 0, 'Twilight Avenger - Cast Vegeance on Script Event Happened');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1188003, 11880, 0, 6, 0, 100, 0, 0, 0, 0, 0, 1188003, 0, 0, 'Twilight Avenger - Send Script Event on Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=1188001;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1188001, 0, 0, 15, 8599, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Twilight Avenger - Cast Spell Enrage'),
(1188001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2384, 0, 0, 0, 0, 0, 0, 0, 0, 'Twilight Avenger - Say Text');
DELETE FROM `creature_ai_scripts` WHERE `id`=1188002;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1188002, 0, 0, 15, 8602, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Twilight Avenger - Cast Spell Vengeance'),
(1188002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1151, 0, 0, 0, 0, 0, 0, 0, 0, 'Twilight Avenger - Say Text');
DELETE FROM `creature_ai_scripts` WHERE `id`=1188003;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1188003, 0, 0, 85, 11880, 11880, 0, 0, 11880, 10, 8, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Twilight Avenger - Send Script Event');

-- Events list for Twilight Geolord
DELETE FROM `creature_ai_events` WHERE `creature_id`=11881;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1188101, 11881, 0, 2, 0, 100, 0, 15, 0, 0, 0, 1188101, 0, 0, 'Twilight Geolord - Flee at 15% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1188102, 11881, 0, 6, 0, 100, 0, 0, 0, 0, 0, 1188102, 0, 0, 'Twilight Geolord - Send Script Event on Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=1188102;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1188102, 0, 0, 85, 11880, 11880, 0, 0, 11880, 10, 8, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Twilight Geolord - Send Script Event');

-- Events list for Twilight Overlord
DELETE FROM `creature_ai_events` WHERE `creature_id`=15213;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1521301, 15213, 0, 33, 0, 100, 1, 10000, 10000, 0, 0, 1521301, 0, 0, 'Twilight Overlord - Run Away on Target Frozen');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1521302, 15213, 0, 2, 0, 100, 0, 15, 0, 0, 0, 1521302, 0, 0, 'Twilight Overlord - Flee at 15% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1521303, 15213, 0, 9, 0, 100, 1, 0, 8, 20000, 22000, 1521303, 0, 0, 'Twilight Overlord - Cast Frost Nova');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1521304, 15213, 0, 6, 0, 100, 0, 0, 0, 0, 0, 1521304, 0, 0, 'Twilight Overlord - Send Script Event on Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=1521304;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1521304, 0, 0, 85, 11880, 11880, 0, 0, 11880, 10, 8, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Twilight Overlord - Send Script Event');

