REPLACE INTO `broadcast_text` (`entry`, `male_text`) VALUES (61000, 'Pumpkins, huh? The only gnolls I know that camp not so far away from here are the Riverpaw Gnolls.');
DELETE FROM `gossip_scripts` WHERE `id`=50050;
INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(50050, 0, 0, 8, 51299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Terry Palin - Quest Credit for The Pumpkin Thieves'),
(50050, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61000, 0, 0, 0, 0, 0, 0, 0, 0, 'Terry Palin - Say Text');