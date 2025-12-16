-- Add new start script for Staff of Eldara.
DELETE FROM `quest_start_scripts` WHERE `id`=40247;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(40247, 0, 0, 4, 147, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Staff of Eldara: Iselus - Remove NPC Flags'),
(40247, 0, 1, 15, 23017, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Staff of Eldara: Iselus - Cast Spell Arcane Channeling'),
(40247, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90261, 0, 0, 0, 0, 0, 0, 0, 0, 'Staff of Eldara: Iselus - Say Text'),
(40247, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90262, 0, 0, 0, 0, 0, 0, 0, 0, 'Staff of Eldara: Iselus - Say Text'),
(40247, 33, 0, 15, 24171, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Staff of Eldara: Iselus - Cast Spell Resurrection Impact Visual'),
(40247, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4450, 0, 0, 0, 0, 0, 0, 0, 0, 'Staff of Eldara: Iselus - Say Text'),
(40247, 35, 1, 8, 60335, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Staff of Eldara: Iselus - Grant Kill Credit'),
(40247, 35, 2, 4, 147, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Staff of Eldara: Iselus - Add NPC Flags');
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (90261, 'We Keepers have been active within Azshara to leave the secrets of the region a mystery. We have fallen into shadow, into dissaray unable to even communicate effectively with one another, and spread over large distances. We are surrounded by enemies at all sides and what once was is nothing more then a faded memory of ruins.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (90262, 'It has been a long time since I have had the chance to wield my magic in such a manner, and now, crafting this Staff of Eldara has granted me some glimmer of hope.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `quest_template` SET `StartScript`=40247 WHERE `entry`=40247;

