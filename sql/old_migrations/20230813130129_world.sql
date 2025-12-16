-- Quest The Key to Karazhan II (Entry 40818) change to RAID quest

UPDATE `quest_template` SET `QuestFlags` = 62 WHERE `entry` = 40818;

-- QUEST The Key to Karazhan VIII (Entry 40827) change to DUNGEON quest

UPDATE `quest_template` SET `Type` = 81 WHERE `entry` = 40827;

-- QUEST The Key to Karazhan IX (Entry 40828) change to RAID quest

UPDATE `quest_template` SET `Type` = 62, `QuestFlags` = 64 WHERE `entry` = 40828;

-- QUEST The Key to Karazhan X (Entry 40829) has the objective "quest_40829_dummy_trigger slain" when it should say 'Upper Karazhan Tower Key Reforged.' 

UPDATE `quest_template` SET `ObjectiveText1` = 'Upper Karazhan Tower Key Reforged' WHERE `entry` = 40829;

-- NPC Shattercage Magiskull reduce HP to 39807

UPDATE `creature_template` SET `health_min` = 39807, `health_max` = 39807 WHERE `entry` = 61199;

-- new icons for kara10
update item_template set display_id = 67821 where entry = 61262; -- Royal Signet of Blackwald II
update item_template set display_id = 67822 where entry = 61270; -- Pendant of Shadra's Chosen
update item_template set display_id = 67823 where entry = 61294; -- Dark Rider's Signet
update item_template set display_id = 67824, name = 'Medivh\'s Foresight' where entry = 61251; -- Azora's Mind
update item_template set display_id = 67826 where entry = 61527; -- Breath of Solnius
update item_template set display_id = 67825 where entry = 61194; -- The Heart of Dreams
-- fix
update item_template set stat_value2 = 0, inventory_type = 6 where entry = 61273; -- Earthbreaker Belt
update item_template set spellid_2 = 9332, spellid_3 = 0 where entry = 61280; -- Granitized Bracers
update item_template set spellid_4 = 9330, stat_value1 = 11, stat_value2 = 30, armor = 683 where entry = 60365; -- Bloody Gladiator's Helm
update item_template set bonding = 1 where entry = 61248; -- Beasthunter's Blunderbuss
update item_template set bonding = 1 where entry = 61277; -- Fist of the Forgotten Order
update item_template set bonding = 1 where entry = 61276; -- Hyperchromatic Deflector
update item_template set bonding = 1 where entry = 61178; -- Plans: Thorium Spurs
update item_template set bonding = 2 where entry = 61564; -- Chromie's Broken Pocket Watch
update item_template set name = 'Anasterian\'s Legacy' where entry = 61453; -- Anastarian's Legacy
update item_template set description = '' where entry = 61570; -- Old Champion's Helmet
update item_template set spellid_2 = 0 where entry = 13503; -- Alchemists' Stone

-- Fix SpellID 48100 to say "110 Attack Power" instead of "111 to 110 attack power" in the description.

UPDATE `spell_template` SET `description` = 'Your Shock spells have a chance to grant 100 Attack Power for $48101d.' WHERE `entry` = 48100;

-- Fix "A Friend in Glenshire" quest.

UPDATE `quest_template` SET `ZoneOrSort` = 85 WHERE `entry` = 40086;

-- https://database.turtle-wow.org/?item=69006
-- https://database.turtle-wow.org/?item=69004
-- remove sell and buy price, can be bought with turtle tokens and turned into ingame currency

UPDATE `item_template` SET `buy_price` = 0, `sell_price` = 0 WHERE `entry` = 69006;
UPDATE `item_template` SET `buy_price` = 0, `sell_price` = 0 WHERE `entry` = 69004;

-- Gilneas City needs a Meeting Stone made to be placed next to the portal, how did we forget about this?

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES (1872030, 23, 5494, 'Meeting Stone', 35, 0, 1, 43, 49, 5208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
	