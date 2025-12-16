-- make more Draenei Exile be feared during the start of the encounter, currently it is only one
DELETE FROM `gossip_scripts` WHERE `id`=60114;
INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(60114, 0, 0, 4, 147, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Sanv K\'la - Remove Gossip Flag'),
(60114, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30197, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Sanv K\'la - Say Text'),
(60114, 2, 0, 10, 61985, 60000, 1, 100, 0, 0, 0, 0, 8, 0, -1, 1, -10109.4, -2819.28, 22.004, 0.587, 0, 'Fate Of The Harborage: Summon Creature Sanv Tas\'dal'),
(60114, 5, 0, 68, 60114, 2, 11198, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Draenei Exile - Start Script for All'),
(60114, 5, 0, 68, 60114, 2, 60421, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Draenei Exile - Start Script for All'),
(60114, 5, 0, 68, 60114, 2, 60422, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Draenei Exile - Start Script for All'),
(60114, 5, 0, 68, 60114, 2, 60423, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Draenei Exile - Start Script for All'),
(60114, 5, 0, 68, 60114, 2, 60424, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Draenei Exile - Start Script for All'),
(60114, 12, 0, 0, 0, 0, 0, 0, 61985, 100, 8, 2, 30198, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Sanv Tas\'dal - Say Text'),
(60114, 22, 0, 0, 0, 0, 0, 0, 61985, 100, 8, 2, 30199, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Sanv Tas\'dal - Say Text'),
(60114, 32, 0, 0, 0, 0, 0, 0, 61985, 100, 8, 2, 30200, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Sanv Tas\'dal - Say Text'),
(60114, 42, 0, 0, 0, 0, 0, 0, 61985, 100, 8, 2, 30201, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Sanv Tas\'dal - Say Text'),
(60114, 52, 0, 0, 0, 0, 0, 0, 61985, 100, 8, 2, 30202, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Sanv Tas\'dal - Say Text'),
(60114, 52, 0, 22, 14, 0, 0, 0, 61985, 100, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Sanv Tas\'dal - Set Faction to Monster'),
(60114, 120, 0, 4, 147, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Sanv K\'la - Add Gossip Flag');

-- increase the HP of the summoned version of Akh Z'ador that appears in the boss fight, he is currently taking damage from the Arcane Explosion of the boss and dies very quickly
UPDATE `creature_template` SET `health_min`=20590, `health_max`=21380 WHERE `entry`=91782;

-- new instance of Akh Z'ador is not saying his gossip at the end of the fight ("The evil shadow of my former master is cast into the void again. Friends, speak with Sanv K’la, while I regain my strength.")
DELETE FROM `generic_scripts` WHERE `id`=60116;
INSERT INTO `generic_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(60116, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 30206, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Sanv Tas\'dal - Say Text'),
(60116, 8, 0, 0, 1, 0, 0, 0, 91782, 50, 8, 2, 30207, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Akh Z\'ador - Say Text'),
(60116, 23, 0, 18, 0, 0, 0, 0, 91782, 50, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Akh Z\'ador - Despawn Creature');
