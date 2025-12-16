-- New texts for Melris Malagan.
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (92023, 'Hey, where is everybody?', NULL, 0, 0, 0, 6, 0, 0, 0, 0, 0);
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (92026, 'Can somebody help me? I\'m looking for the shell people.', NULL, 1, 0, 0, 22, 0, 0, 0, 0, 0);
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (92027, 'I gave my savings to these people in exchange for shells, and they promised they\'d double it within a week.', NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (92028, 'But now they\'re not here. I, uh... I need some change.', NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (92029, 'Care to trade some shells for change?', NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (92030, 'Please, sir, have you got some change? I can pay you back in shells.', NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (92031, 'I\'m not crazy, I swear. These shells are worth a lot of money.', NULL, 1, 0, 0, 55, 0, 0, 0, 0, 0);
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (92032, 'Shells! I want to trade some shells!', NULL, 1, 0, 0, 22, 0, 0, 0, 0, 0);

-- Update existing texts for Melris Malagan.
UPDATE `broadcast_text` SET `male_text`='It was not a scam, Justine. I am going to be rich very soon.' WHERE `entry`=47018;
UPDATE `broadcast_text` SET `male_text`='Cover for me, will you? I need to go withdraw some cash over at the Shell Co office.' WHERE `entry`=47019;

-- Reduce run speed of Melris Malagan.
UPDATE `creature_template` SET `speed_run`=1.07143 WHERE `entry`=12480;

-- Updated waypoints for Melris Malagan.
DELETE FROM `creature_movement_template` WHERE `entry`=12480;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES 
(12480, 1, -8824.71, 629.821, 94.0246, 4.03171, 1800000, 0, 0),
(12480, 2, -8824.71, 629.823, 94.0253, 4.0318, 3000, 2.27, 12480),
(12480, 3, -8825.25, 621.915, 94.0459, 100, 0, 0, 0),
(12480, 4, -8817.68, 613.269, 95.2444, 100, 0, 0, 0),
(12480, 5, -8810.23, 604.741, 96.1484, 100, 0, 0, 0),
(12480, 6, -8803.79, 597.369, 96.8496, 100, 0, 0, 0),
(12480, 7, -8796.33, 589.56, 97.4177, 100, 0, 0, 0),
(12480, 8, -8787.57, 594.738, 97.4886, 100, 0, 0, 0),
(12480, 9, -8779.62, 601.217, 97.3019, 100, 0, 0, 0),
(12480, 10, -8771.17, 607.62, 97.1654, 100, 0, 0, 0),
(12480, 11, -8761.92, 599.627, 97.0468, 100, 0, 0, 0),
(12480, 12, -8749.56, 586.693, 97.3858, 100, 0, 0, 0),
(12480, 13, -8743.22, 580.37, 97.4678, 100, 0, 0, 0),
(12480, 14, -8739.01, 573.933, 97.4133, 100, 0, 0, 0),
(12480, 15, -8744.14, 566.585, 97.3962, 100, 0, 0, 0),
(12480, 16, -8746.59, 558.925, 97.4026, 100, 0, 0, 0),
(12480, 17, -8739.42, 550.51, 100.034, 100, 0, 0, 0),
(12480, 18, -8731.71, 542.225, 101.113, 100, 0, 0, 0),
(12480, 19, -8723.81, 532.898, 100.081, 100, 0, 0, 0),
(12480, 20, -8718.26, 525.3, 98.3069, 100, 0, 0, 0),
(12480, 21, -8710.95, 520.823, 97.3647, 100, 0, 0, 0),
(12480, 22, -8700.49, 529.253, 97.7001, 100, 0, 0, 0),
(12480, 23, -8691.38, 537.635, 97.8308, 100, 0, 0, 0),
(12480, 24, -8681.66, 546.583, 97.5592, 100, 0, 0, 0),
(12480, 25, -8673.74, 550.958, 97.3062, 100, 0, 0, 0),
(12480, 26, -8663.18, 552.738, 96.9232, 100, 0, 0, 0),
(12480, 27, -8656.81, 553.224, 96.9475, 100, 0, 0, 0),
(12480, 28, -8648.51, 546.3, 97.6832, 100, 0, 0, 0),
(12480, 29, -8639.81, 538.352, 99.2895, 100, 0, 0, 0),
(12480, 30, -8631.54, 530.663, 100.661, 100, 0, 0, 0),
(12480, 31, -8623.71, 523.497, 102.04, 100, 0, 0, 0),
(12480, 32, -8612.87, 514.258, 103.427, 100, 0, 0, 0),
(12480, 33, -8606.73, 518.951, 105.139, 100, 0, 0, 0),
(12480, 34, -8597.76, 527.127, 106.388, 100, 0, 0, 0),
(12480, 35, -8585.48, 536.786, 103.413, 100, 0, 0, 0),
(12480, 36, -8577.03, 541.561, 101.785, 100, 0, 0, 0),
(12480, 37, -8570.72, 535.259, 101.545, 100, 0, 0, 0),
(12480, 38, -8563.14, 526.542, 100.846, 100, 0, 0, 0),
(12480, 39, -8556.09, 517.993, 99.7041, 100, 0, 0, 0),
(12480, 40, -8550.94, 510.991, 98.4502, 100, 0, 0, 0),
(12480, 41, -8544.07, 502.924, 98.5379, 100, 0, 0, 0),
(12480, 42, -8536.41, 507.963, 98.4349, 100, 0, 0, 0),
(12480, 43, -8526.32, 516.304, 98.3672, 100, 0, 0, 0),
(12480, 44, -8514.14, 526.37, 98.3021, 100, 0, 0, 0),
(12480, 45, -8504.32, 534.48, 97.6214, 100, 0, 0, 0),
(12480, 46, -8495.92, 543.69, 97.2653, 100, 0, 0, 0),
(12480, 47, -8487.64, 552.249, 97.6348, 100, 0, 0, 0),
(12480, 48, -8479.59, 560.552, 97.4542, 100, 0, 0, 0),
(12480, 49, -8470.41, 570.039, 96.2414, 100, 0, 0, 0),
(12480, 50, -8459.79, 577.866, 94.6739, 100, 0, 0, 0),
(12480, 51, -8448.44, 587.264, 93.9806, 100, 0, 0, 0),
(12480, 52, -8440.86, 596.457, 93.7913, 100, 0, 0, 0),
(12480, 53, -8434.44, 606.202, 94.981, 100, 0, 0, 0),
(12480, 54, -8431.4, 613.048, 95.1213, 100, 0, 0, 0),
(12480, 55, -8430.24, 621.091, 95.3812, 100, 0, 0, 0),
(12480, 56, -8421.23, 624.586, 95.6074, 100, 0, 0, 0),
(12480, 57, -8410.35, 623.293, 95.5997, 100, 0, 0, 0),
(12480, 58, -8398.37, 624.307, 95.3031, 100, 0, 0, 0),
(12480, 59, -8386.25, 625.073, 95.2035, 100, 0, 0, 0),
(12480, 60, -8374.94, 625.787, 94.7816, 100, 0, 0, 0),
(12480, 61, -8365.63, 625.899, 95.022, 100, 0, 0, 0),
(12480, 62, -8356.7, 625.165, 95.1471, 100, 0, 0, 0),
(12480, 63, -8348.14, 623.024, 95.2001, 100, 0, 0, 0),
(12480, 64, -8341.27, 614.787, 99.4358, 100, 0, 0, 0),
(12480, 65, -8334.85, 607.09, 99.6021, 100, 0, 0, 0),
(12480, 66, -8329.8, 599.684, 99.6021, 100, 0, 0, 0),
(12480, 67, -8335.51, 593.098, 99.6021, 100, 0, 0, 0),
(12480, 68, -8338.18, 585.925, 99.6021, 100, 0, 0, 0),
(12480, 69, -8331.47, 576.397, 99.6021, 100, 5000, 0, 12481),
(12480, 70, -8339.28, 588.234, 99.6027, 100, 0, 0, 0),
(12480, 71, -8329.07, 600.276, 99.6027, 100, 0, 0, 0),
(12480, 72, -8338.41, 611.925, 99.602, 100, 5000, 0, 12482),
(12480, 73, -8349.44, 626.307, 95.2, 100, 0, 0, 0),
(12480, 74, -8343.99, 636.169, 95.19, 100, 8000, 0, 12483),
(12480, 75, -8349.02, 642.505, 95.319, 0.6, 3000, 0, 12484),
(12480, 76, -8386.37, 630.245, 94.806, 100, 0, 0, 0),
(12480, 77, -8392.84, 633.661, 94.954, 0.5, 6000, 0, 12485),
(12480, 78, -8406.63, 624.694, 95.24, 100, 0, 0, 12486),
(12480, 79, -8423.17, 624.242, 95.604, 100, 1000, 0, 4);

-- New waypoint scripts for Melris Malagan.
DELETE FROM `creature_movement_scripts` WHERE `id`=12481;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(12481, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92023, 0, 0, 0, 0, 0, 0, 0, 0, 'Melris Malagan - Say Text');
DELETE FROM `creature_movement_scripts` WHERE `id`=12482;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(12482, 1, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Melris Malagan - Set Run'),
(12482, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92026, 0, 0, 0, 0, 0, 0, 0, 0, 'Melris Malagan - Say Text');
DELETE FROM `creature_movement_scripts` WHERE `id`=12483;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(12483, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92027, 0, 0, 0, 0, 0, 0, 0, 0, 'Melris Malagan - Say Text'),
(12483, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92028, 0, 0, 0, 0, 0, 0, 0, 0, 'Melris Malagan - Say Text');
DELETE FROM `creature_movement_scripts` WHERE `id`=12484;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(12484, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92029, 0, 0, 0, 0, 0, 0, 0, 0, 'Melris Malagan - Say Text');
DELETE FROM `creature_movement_scripts` WHERE `id`=12485;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(12485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92030, 0, 0, 0, 0, 0, 0, 0, 0, 'Melris Malagan - Say Text'),
(12485, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92031, 0, 0, 0, 0, 0, 0, 0, 0, 'Melris Malagan - Say Text');
DELETE FROM `creature_movement_scripts` WHERE `id`=12486;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(12486, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92032, 0, 0, 0, 0, 0, 0, 0, 0, 'Melris Malagan - Say Text');
