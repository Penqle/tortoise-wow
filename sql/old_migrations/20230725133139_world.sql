REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (52132, 'Vagrant''s Endeavor is a unique gameplay mode that challenges players to embrace a minimalist approach to their character''s gear. In this mode, players are restricted to wearing only items of poor and uncommon quality, with no option to use enchants. This creates a thrilling and immersive experience as players must rely on their skill and strategy rather than relying on powerful gear.\n\nAs players progress and reach level 60, the resctition for gearing will be removed, and they are rewarded with a special companion known as the Forworn Mule. This adorable bank pet not only adds a touch of charm to the gameplay, but also serves as a helpful assistant by providing additional storage space for players'' belongings.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (52132, 52132, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Remove 5 copper cost from glyphs, causes issues for new characters.

UPDATE`item_template` SET `name` = 'Glyph of War', `buy_price` = 1, `sell_price` = 0 WHERE `entry` = 80060;
UPDATE`item_template` SET `name` = 'Glyph of Self-Restraint', `buy_price` = 1, `sell_price` = 0 WHERE `entry` = 50745;
UPDATE`item_template` SET `name` = 'Glyph of Exhaustion', `buy_price` = 1, `sell_price` = 0 WHERE `entry` = 50520;
UPDATE`item_template` SET `name` = 'Glyph of the Turtle', `buy_price` = 1, `sell_price` = 0 WHERE `entry` = 51230;
UPDATE`item_template` SET `name` = 'Glyph of the Honorless', `buy_price` = 1, `sell_price` = 0 WHERE `entry` = 50746;
UPDATE`item_template` SET `name` = 'Glyph of the Vagrant', `buy_price` = 1, `sell_price` = 0 WHERE `entry` = 51029;
UPDATE`item_template` SET `buy_price` = 1, `sell_price` = 0 WHERE `entry` = 50745;

-- rename item Blood Ring Mark of Honor (61793) to Arena Mark of Honor

UPDATE item_template SET name = 'Arena Mark of Honor' WHERE entry = 61793;

-- Change Blood Ring Mark of Honor (61793) item limit to 100 capacity instead of 200

UPDATE item_template SET stackable = 100 WHERE entry = 61793;

-- Quest Shard Harmonization and Mass Harmonization set XP to 0

UPDATE`quest_template` SET `RewXP` = 0 WHERE `entry` = 40813;
UPDATE`quest_template` SET `RewXP` = 0 WHERE `entry` = 40973;

-- Item 61790 and 61791 change to no binding 

UPDATE item_template SET bonding = 0 WHERE entry IN (61790, 61791);

-- Removed Green Woolen Vest quest reward from Once Upon a Sheep quest.

UPDATE `quest_template` SET `RewItemId2` = 0, `RewItemCount2` = 0 WHERE `entry` = 60005;

-- Add Glyph of Self Restraint to Glyph Masters with button to explain it also

REPLACE INTO `npc_vendor_template` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) 
VALUES (101, 0, 50745, 0, 0, 0, 0);
