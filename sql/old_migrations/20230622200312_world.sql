-- Re-implemented Solnius's loot table:

DELETE FROM `creature_loot_template` WHERE `entry` = 60748;

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 

-- Group ID 1 (100% drop chance)
(60748, 61215, 100, 1, 1, 1, 0), -- Head of Solnius
-- Group ID 2 (always drop one of those)
(60748, 61217, 20,  2, 1, 1, 0), -- Formula: Enchant Chest - Mighty Mana
(60748, 61218, 20,  2, 1, 1, 0), -- Recipe: Elixir of Greater Nature Power
(60748, 61424, 20,  2, 1, 1, 0), -- Plans: Dreamsteel Mantle
(60748, 61428, 20,  2, 1, 1, 0), -- Pattern: Dreamhide Mantle
(60748, 61432, 20,  2, 1, 1, 0), -- Pattern: Dreamthread Mantle
-- Group ID 3 (druid class item, 20% drop chance)
(60748, 61444, 20,  3, 1, 1, 0), -- Smoldering Dream Essence
-- Group ID 4 (always drop one of those)
(60748, 17962, 20,  4, 1, 1, 0), -- Blue Sack of Gems
(60748, 17963, 20,  4, 1, 1, 0), -- Green Sack of Gems
(60748, 17964, 20,  4, 1, 1, 0), -- Gray Sack of Gems
(60748, 17965, 20,  4, 1, 1, 0), -- Yellow Sack of Gems
(60748, 17969, 20,  4, 1, 1, 0), -- Red Sack of Gems
-- Group ID 5 (22 slot bag, 15% drop chance)
(60748, 61196, 15,  5, 1, 1, 0), -- Bag of the Vast Conscious
-- Group ID 6 (three random epic drop of 16 total)
(60748, 61203, 6.25,  6, 1, 1, 0), -- Libram of the Dreamguard
(60748, 61237, 6.25,  6, 1, 1, 0), -- Mallet of the Awakening 
(60748, 61238, 6.25,  6, 1, 1, 0), -- Scaleshield of Emerald Flight
(60748, 61239, 6.25,  6, 1, 1, 0), -- Ancient Jade Leggings
(60748, 61204, 6.25,  6, 1, 1, 0), -- Totem of the Stonebreaker
(60748, 61205, 6.25,  6, 1, 1, 0), -- Ring of Nature's Duality
(60748, 61206, 6.25,  6, 1, 1, 0), -- Robe of the Dreamways
(60748, 61207, 6.25,  6, 1, 1, 0), -- Jadestone Helmet
(60748, 61208, 6.25,  6, 1, 1, 0), -- Staff of the Dreamer
(60748, 61209, 6.25,  6, 1, 1, 0), -- Shard of Nightmare
(60748, 61210, 6.25,  6, 1, 1, 0), -- Veil of Nightmare
(60748, 61211, 6.25,  6, 1, 1, 0), -- Sandals of Lucidity
(60748, 61212, 6.25,  6, 1, 1, 0), -- Sanctum Bark Wraps
(60748, 61213, 6.25,  6, 1, 1, 0),  -- Talonwind Gauntlets
(60748, 61214, 6.25,  6, 1, 1, 0),  -- Mantle of the Wakener
(60748, 61448, 6.25,  6, 1, 1, 0),  -- Axe of Dorment Slumber
-- Group ID 7 (three random epic drop of 16 total)
(60748, 61203, 6.25,  7, 1, 1, 0), -- Libram of the Dreamguard
(60748, 61237, 6.25,  7, 1, 1, 0), -- Mallet of the Awakening 
(60748, 61238, 6.25,  7, 1, 1, 0), -- Scaleshield of Emerald Flight
(60748, 61239, 6.25,  7, 1, 1, 0), -- Ancient Jade Leggings
(60748, 61204, 6.25,  7, 1, 1, 0), -- Totem of the Stonebreaker
(60748, 61205, 6.25,  7, 1, 1, 0), -- Ring of Nature's Duality
(60748, 61206, 6.25,  7, 1, 1, 0), -- Robe of the Dreamways
(60748, 61207, 6.25,  7, 1, 1, 0), -- Jadestone Helmet
(60748, 61208, 6.25,  7, 1, 1, 0), -- Staff of the Dreamer
(60748, 61209, 6.25,  7, 1, 1, 0), -- Shard of Nightmare
(60748, 61210, 6.25,  7, 1, 1, 0), -- Veil of Nightmare
(60748, 61211, 6.25,  7, 1, 1, 0), -- Sandals of Lucidity
(60748, 61212, 6.25,  7, 1, 1, 0), -- Sanctum Bark Wraps
(60748, 61213, 6.25,  7, 1, 1, 0),  -- Talonwind Gauntlets
(60748, 61214, 6.25,  7, 1, 1, 0),  -- Mantle of the Wakener
(60748, 61448, 6.25,  7, 1, 1, 0),  -- Axe of Dorment Slumber
-- Group ID 9 (three random epic drop of 16 total)
(60748, 61203, 6.25,  8, 1, 1, 0), -- Libram of the Dreamguard
(60748, 61237, 6.25,  8, 1, 1, 0), -- Mallet of the Awakening 
(60748, 61238, 6.25,  8, 1, 1, 0), -- Scaleshield of Emerald Flight
(60748, 61239, 6.25,  8, 1, 1, 0), -- Ancient Jade Leggings
(60748, 61204, 6.25,  8, 1, 1, 0), -- Totem of the Stonebreaker
(60748, 61205, 6.25,  8, 1, 1, 0), -- Ring of Nature's Duality
(60748, 61206, 6.25,  8, 1, 1, 0), -- Robe of the Dreamways
(60748, 61207, 6.25,  8, 1, 1, 0), -- Jadestone Helmet
(60748, 61208, 6.25,  8, 1, 1, 0), -- Staff of the Dreamer
(60748, 61209, 6.25,  8, 1, 1, 0), -- Shard of Nightmare
(60748, 61210, 6.25,  8, 1, 1, 0), -- Veil of Nightmare
(60748, 61211, 6.25,  8, 1, 1, 0), -- Sandals of Lucidity
(60748, 61212, 6.25,  8, 1, 1, 0), -- Sanctum Bark Wraps
(60748, 61213, 6.25,  8, 1, 1, 0),  -- Talonwind Gauntlets
(60748, 61214, 6.25,  8, 1, 1, 0),  -- Mantle of the Wakener
(60748, 61448, 6.25,  8, 1, 1, 0),  -- Axe of Dorment Slumber
-- Group ID 9, 10 (random BOE blues) 
(60748, 30044, 100, 0, -30044, 1, 0),
(60748, 30044, 100, 0, -30044, 1, 0);

DELETE FROM `reference_loot_template` WHERE `entry` = 60000;

-- Restored Solnius' gossip text:

REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (60748, 'Do you know where you are walking mortal? This place has been here long before your races existence. The Emerald Sanctum is a hallowed ground. Your mere steps upon the verdant grass tarnishes the beauty of this place. Your vile smell lingers upon the air.$B$BYou must leave, it will not be long until the rest of the Green Dragonflight is awoken.$B$BOur eternal duty has arrived, and as The Awakener, I have put out the call to stir those lost in slumber. They will arrive, it is only a matter of time now, and you will not get in the way, $r.$B$BDarkness swirls, festering upon the sleepless realm, I will put an end to it.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (92950, 60748, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Random speech for Gilneas NPCs, they should have a 25% chance to say one of the following lines:

REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES 

(60350, 'You will die before the might of Gilneas.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60351, 'You won''t leave here alive, outsider!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60352, 'I fight for my king, you fight for your life!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60353, 'My sword is stained with the blood of my enemies, and yours will soon join them.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60354, 'You and the other rebels will be hunted like the cattle you are.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60355, 'You will find no mercy here, just the wrath of Greymane.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60356, 'For the Crown!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60357, 'In the name of Genn Greymane!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature_ai_events` WHERE `id` BETWEEN 899706 AND 899718;

REPLACE INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES 

(899706, 61363, 0, 2, 0, 25, 0, 90, 1, 0, 0, 899706, 0, 0, 'Gilneas NPC (Greymane) - Say at 90% HP'),
(899707, 61364, 0, 2, 0, 25, 0, 90, 1, 0, 0, 899707, 0, 0, 'Gilneas NPC (Greymane) - Say at 90% HP'),
(899708, 61365, 0, 2, 0, 25, 0, 90, 1, 0, 0, 899706, 0, 0, 'Gilneas NPC (Greymane) - Say at 90% HP'),
(899709, 61366, 0, 2, 0, 25, 0, 90, 1, 0, 0, 899707, 0, 0, 'Gilneas NPC (Greymane) - Say at 90% HP'),
(899710, 61388, 0, 2, 0, 25, 0, 90, 1, 0, 0, 899706, 0, 0, 'Gilneas NPC (Greymane) - Say at 90% HP'),
(899711, 61389, 0, 2, 0, 25, 0, 90, 1, 0, 0, 899707, 0, 0, 'Gilneas NPC (Greymane) - Say at 90% HP'),
(899712, 61390, 0, 2, 0, 25, 0, 90, 1, 0, 0, 899706, 0, 0, 'Gilneas NPC (Greymane) - Say at 90% HP'),
(899713, 61391, 0, 2, 0, 25, 0, 90, 1, 0, 0, 899707, 0, 0, 'Gilneas NPC (Greymane) - Say at 90% HP'),
(899714, 61393, 0, 2, 0, 25, 0, 90, 1, 0, 0, 899706, 0, 0, 'Gilneas NPC (Greymane) - Say at 90% HP'),
(899715, 61394, 0, 2, 0, 25, 0, 90, 1, 0, 0, 899707, 0, 0, 'Gilneas NPC (Greymane) - Say at 90% HP'),
(899716, 61395, 0, 2, 0, 25, 0, 90, 1, 0, 0, 899706, 0, 0, 'Gilneas NPC (Greymane) - Say at 90% HP'),
(899717, 61396, 0, 2, 0, 25, 0, 90, 1, 0, 0, 899707, 0, 0, 'Gilneas NPC (Greymane) - Say at 90% HP'),
(899718, 61397, 0, 2, 0, 25, 0, 90, 1, 0, 0, 899706, 0, 0, 'Gilneas NPC (Greymane) - Say at 90% HP');

DELETE FROM `creature_ai_scripts` WHERE `id` = 899706;
DELETE FROM `creature_ai_scripts` WHERE `id` = 899707;

REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES 
(899706, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60350, 60351, 60352, 60353, 0, 0, 0, 0, 0, 'Genn Greymane - Say at 90% HP'),
(899707, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60354, 60355, 60356, 60357, 0, 0, 0, 0, 0, 'Genn Greymane - Say at 90% HP');

UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 61363;
UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 61364;
UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 61365;
UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 61366;
UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 61388;
UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 61389;
UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 61390;
UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 61391;
UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 61393;
UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 61394;
UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 61395;
UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 61396;
UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 61397;

-- NPC 61417 should have a 25% chance to say one of the following lines:

REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES 

(60358, 'In the name of the Light!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60359, 'Justice shall be served.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60360, 'Back to the shadows!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature_ai_events` WHERE `id` = 899719;

REPLACE INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES 

(899719, 61417, 0, 2, 0, 50, 0, 90, 1, 0, 0, 899708, 0, 0, 'Gilneas NPC (Ravenwood) - Say at 90% HP');

DELETE FROM `creature_ai_scripts` WHERE `id` = 899708;

REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES 
(899708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60358, 60359, 60360, 0, 0, 0, 0, 0, 0, 'Gilneas NPC (Ravenwood) - Say at 90% HP');

UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 61417;

-- Item 8546, Powerful Smelling Salts, needs a 5 hour cooldown:

UPDATE `item_template` SET `spellcooldown_1` = 18000000 WHERE `entry` = 8546;