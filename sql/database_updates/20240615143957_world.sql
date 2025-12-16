-- Kolkar Truthseeker set mana to 981.
update creature_template set unit_class = 2, mana_min = 981, mana_max = 981 where entry = 61966;
-- Boss Daghelm (Entry 61982), play soundfile 60441 on pull with the following yell "These are the weapons that will defeat the scourge!" , play soundfile 60442 on death with the following yell line "The weapons... In the hands of our enemies..."
update creature_template set ai_name = 'EventAI' where entry = 61982;
replace INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
(30235, 'These are the weapons that will defeat the scourge!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30236, 'The weapons... In the hands of our enemies...',	   NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

delete from creature_ai_events where id in (2200050,2200051);
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(2200050, 61982, 0, 4, 0, 100, 0, 0, 0, 0, 0, 2200050, 0, 0, 'Boss Daghelm - Say on Aggro (sound)'),
(2200051, 61982, 0, 6, 0, 100, 0, 0, 0, 0, 0, 2200051, 0, 0, 'Boss Daghelm - Say upon Death (sound)');

delete from creature_ai_scripts where id in (2200050,2200051);
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2200050, 0, 0, 16, 60441, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Boss Daghelm - Say on Aggro (sound)'),
(2200051, 0, 0, 16, 60442, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Boss Daghelm - Say upon Death (sound)'),
(2200050, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30235, 0, 0, 0, 0, 0, 0, 0, 0, 'Boss Daghelm - Say on Aggro'),
(2200051, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30236, 0, 0, 0, 0, 0, 0, 0, 0, 'Boss Daghelm - Say upon Death');
-- Boss Duke Dreadmoore (Entry 61972) play soundfile 60443 on pull with the following yell "I am the will of Naxxramas!", play soundfile 60444 on death with the following yell line "You will learn nothing from me fools!"
update creature_template set ai_name = 'EventAI' where entry = 61972;
replace INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
(30237, 'I am the will of Naxxramas!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30238, 'You will learn nothing from me fools!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

delete from creature_ai_events where id in (2200052,2200053);
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(2200052, 61972, 0, 4, 0, 100, 0, 0, 0, 0, 0, 2200052, 0, 0, 'Boss Duke Dreadmoore - Say on Aggro (sound)'),
(2200053, 61972, 0, 6, 0, 100, 0, 0, 0, 0, 0, 2200053, 0, 0, 'Boss Duke Dreadmoore - Say upon Death (sound)');

delete from creature_ai_scripts where id in (2200052,2200053);
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2200052, 0, 0, 16, 60443, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Boss Duke Dreadmoore - Say on Aggro (sound)'),
(2200053, 0, 0, 16, 60444, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Boss Duke Dreadmoore - Say upon Death (sound)'),
(2200052, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30237, 0, 0, 0, 0, 0, 0, 0, 0, 'Boss Duke Dreadmoore - Say on Aggro'),
(2200053, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30238, 0, 0, 0, 0, 0, 0, 0, 0, 'Boss Duke Dreadmoore - Say upon Death');
-- Boss Masterpiece Harvester (Entry 61963)  play soundfile 60445 on pull with the following yell "Conducting routine sub-measure 3b, KILL!", play soundfile 60446 on death with the following yell line "Core power unresponsive.. R-r-restoring backup... Failure..."
update creature_template set ai_name = 'EventAI' where entry = 61963;
replace INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
(30239, 'Conducting routine sub-measure 3b, KILL!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30240, 'Core power unresponsive... R-r-restoring backup... Failure...', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

delete from creature_ai_events where id in (2200054,2200055);
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(2200054, 61963, 0, 4, 0, 100, 0, 0, 0, 0, 0, 2200054, 0, 0, 'Boss Masterpiece Harvester - Say on Aggro (sound)'),
(2200055, 61963, 0, 6, 0, 100, 0, 0, 0, 0, 0, 2200055, 0, 0, 'Boss Masterpiece Harvester - Say upon Death (sound)');

delete from creature_ai_scripts where id in (2200054,2200055);
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2200054, 0, 0, 16, 60445, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Boss Masterpiece Harvester - Say on Aggro (sound)'),
(2200055, 0, 0, 16, 60446, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Boss Masterpiece Harvester - Say upon Death (sound)'),
(2200054, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30239, 0, 0, 0, 0, 0, 0, 0, 0, 'Boss Masterpiece Harvester - Say on Aggro'),
(2200055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30240, 0, 0, 0, 0, 0, 0, 0, 0, 'Boss Masterpiece Harvester - Say upon Death');
-- Prelate Ironmane (Entry 61969) play soundfile 60448 on pull with the following yell "What, you come for confession?", play soundfile 60447 on death with the following yell line : "Free... At last.."
update creature_template set ai_name = 'EventAI' where entry = 61969;
replace INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
(30241, 'What, you come for confession?', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30242, 'Free... At last...', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

delete from creature_ai_events where id in (2200056,2200057);
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(2200056, 61969, 0, 4, 0, 100, 0, 0, 0, 0, 0, 2200056, 0, 0, 'Prelate Ironmane - Say on Aggro (sound)'),
(2200057, 61969, 0, 6, 0, 100, 0, 0, 0, 0, 0, 2200057, 0, 0, 'Prelate Ironmane - Say upon Death (sound)');

delete from creature_ai_scripts where id in (2200056,2200057);
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2200056, 0, 0, 16, 60448, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Prelate Ironmane - Say on Aggro (sound)'),
(2200057, 0, 0, 16, 60447, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Prelate Ironmane - Say upon Death (sound)'),
(2200056, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30241, 0, 0, 0, 0, 0, 0, 0, 0, 'Prelate Ironmane - Say on Aggro'),
(2200057, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30242, 0, 0, 0, 0, 0, 0, 0, 0, 'Prelate Ironmane - Say upon Death');
-- Jared Voss (Entry 61961) play soundfile 60449 on pull with the following yell "What?! You're not the ones from Stranglethorn!" play soundfile 60450 on death with the following yell line: "I was going to make a fortune on this work!"
update creature_template set ai_name = 'EventAI' where entry = 61961;
replace INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
(30243, 'What?! You\'re not the ones from Stranglethorn!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30244, 'I was going to make a fortune on this work!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

delete from creature_ai_events where id in (2200058,2200059);
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(2200058, 61961, 0, 4, 0, 100, 0, 0, 0, 0, 0, 2200058, 0, 0, 'Jared Voss - Say on Aggro (sound)'),
(2200059, 61961, 0, 6, 0, 100, 0, 0, 0, 0, 0, 2200059, 0, 0, 'Jared Voss - Say upon Death (sound)');

delete from creature_ai_scripts where id in (2200058,2200059);
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2200058, 0, 0, 16, 60449, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jared Voss - Say on Aggro (sound)'),
(2200059, 0, 0, 16, 60450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jared Voss - Say upon Death (sound)'),
(2200058, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30243, 0, 0, 0, 0, 0, 0, 0, 0, 'Jared Voss - Say on Aggro'),
(2200059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30244, 0, 0, 0, 0, 0, 0, 0, 0, 'Jared Voss - Say upon Death');
-- Brother Wystan (Entry 61983) play soundfile 60451 on pull with the following yell "Do you feel it? The Radiance of the light." play soundfile 60452 on death with the following yell line : "My faith... Was not strong enough."
update creature_template set ai_name = 'EventAI' where entry = 61983;
replace INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
(30245, 'Do you feel it? The Radiance of the light.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30246, 'My faith... Was not strong enough.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

delete from creature_ai_events where id in (2200060,2200061);
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(2200060, 61983, 0, 4, 0, 100, 0, 0, 0, 0, 0, 2200060, 0, 0, 'Brother Wystan - Say on Aggro (sound)'),
(2200061, 61983, 0, 6, 0, 100, 0, 0, 0, 0, 0, 2200061, 0, 0, 'Brother Wystan - Say upon Death (sound)');

delete from creature_ai_scripts where id in (2200060,2200061);
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2200060, 0, 0, 16, 60451, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Brother Wystan - Say on Aggro (sound)'),
(2200061, 0, 0, 16, 60452, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Brother Wystan - Say upon Death (sound)'),
(2200060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30245, 0, 0, 0, 0, 0, 0, 0, 0, 'Brother Wystan - Say on Aggro'),
(2200061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30246, 0, 0, 0, 0, 0, 0, 0, 0, 'Brother Wystan - Say upon Death');
-- Boss Zandara Windhoof (Entry 61968), play soundfile 60453 on pull wit hthe following yell "This is our birthright, you have no place here!" , play soundfile 60454 on death with the following yell "I will never learn the secrets..."
update creature_template set ai_name = 'EventAI' where entry = 61968;
replace INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
(30247, 'This is our birthright, you have no place here!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30248, 'I will never learn the secrets...', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

delete from creature_ai_events where id in (2200062,2200063);
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(2200062, 61968, 0, 4, 0, 100, 0, 0, 0, 0, 0, 2200062, 0, 0, 'Boss Zandara Windhoof - Say on Aggro (sound)'),
(2200063, 61968, 0, 6, 0, 100, 0, 0, 0, 0, 0, 2200063, 0, 0, 'Boss Zandara Windhoof - Say upon Death (sound)');

delete from creature_ai_scripts where id in (2200062,2200063);
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2200062, 0, 0, 16, 60453, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Boss Zandara Windhoof - Say on Aggro (sound)'),
(2200063, 0, 0, 16, 60454, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Boss Zandara Windhoof - Say upon Death (sound)'),
(2200062, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30247, 0, 0, 0, 0, 0, 0, 0, 0, 'Boss Zandara Windhoof - Say on Aggro'),
(2200063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30248, 0, 0, 0, 0, 0, 0, 0, 0, 'Boss Zandara Windhoof - Say upon Death');