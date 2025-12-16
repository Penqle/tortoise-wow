/*

COPY ENGLISH TEXTS TO EXISTING ROWS

*/

-- Area Locales
UPDATE
    locales_area T1, area_template T2
SET
    T1.NameLoc0 = T2.name
WHERE
    T1.entry = T2.entry;
    
-- Broadcast Text Locales
UPDATE
    locales_broadcast_text T1, broadcast_text T2
SET
    T1.male_text_loc0 = T2.male_text, T1.female_text_loc0 = T2.female_text
WHERE
    T1.entry = T2.entry;

-- Creature Locales
UPDATE
    locales_creature T1, creature_template T2
SET
    T1.name_loc0 = T2.name, T1.subname_loc0 = T2.subname
WHERE
    T1.entry = T2.entry;

-- Faction Locales
UPDATE
    locales_faction T1, faction T2
SET
    T1.name_loc0 = T2.name1, T1.description_loc0 = T2.description1
WHERE
    T1.entry = T2.id;

-- GameObject Locales
UPDATE
    locales_gameobject T1, gameobject_template T2
SET
    T1.name_loc0 = T2.name
WHERE
    T1.entry = T2.entry;

-- Gossip Menu Option Locales
UPDATE
    locales_gossip_menu_option T1, gossip_menu_option T2
SET
    T1.option_text_loc0 = T2.option_text, T1.box_text_loc0 = T2.box_text
WHERE
    T1.menu_id = T2.menu_id && T1.id = T2.id;

-- Item Locales
UPDATE
    locales_item T1, item_template T2
SET
    T1.name_loc0 = T2.name, T1.description_loc0 = T2.description
WHERE
    T1.entry = T2.entry;

-- Page Text Locales
UPDATE
    locales_page_text T1, page_text T2
SET
    T1.Text_loc0 = T2.text
WHERE
    T1.entry = T2.entry;

-- Point of Interest Locales
UPDATE
    locales_points_of_interest T1, points_of_interest T2
SET
    T1.icon_name_loc0 = T2.icon_name
WHERE
    T1.entry = T2.entry;
    
-- Quest Locales
UPDATE
    locales_quest T1, quest_template T2
SET
    T1.Title_loc0 = T2.Title, T1.Details_loc0 = T2.Details, T1.Objectives_loc0 = T2.Objectives, T1.OfferRewardText_loc0 = T2.OfferRewardText, T1.RequestItemsText_loc0 = T2.RequestItemsText, T1.EndText_loc0 = T2.EndText, T1.ObjectiveText1_loc0 = T2.ObjectiveText1, T1.ObjectiveText2_loc0 = T2.ObjectiveText2, T1.ObjectiveText3_loc0 = T2.ObjectiveText3, T1.ObjectiveText4_loc0 = T2.ObjectiveText4
WHERE
    T1.entry = T2.entry;

-- Spell Locales
UPDATE
    locales_spell T1, spell_template T2
SET
    T1.name_loc0 = T2.name, T1.nameSubtext_loc0 = T2.nameSubtext, T1.description_loc0 = T2.description, T1.auraDescription_loc0 = T2.auraDescription
WHERE
    T1.entry = T2.entry;

-- Taxi Node Locales
UPDATE
    locales_taxi_node T1, taxi_nodes T2
SET
    T1.name_loc0 = T2.name
WHERE
    T1.entry = T2.id;

/*

INSERT NEW LOCALE ROWS

*/

-- Area Locales
INSERT IGNORE INTO `locales_area` (`Entry`, `NameLoc0`) SELECT `entry` as 'Entry', `name` as 'NameLoc0' FROM `area_template`;

-- Broadcast Text Locales
INSERT IGNORE INTO `locales_broadcast_text` (`entry`, `male_text_loc0`, `female_text_loc0`) SELECT `entry` as 'entry', `male_text` as 'male_text_loc0', `female_text` as 'female_text_loc0' FROM `broadcast_text`;

-- Creature Locales
INSERT IGNORE INTO `locales_creature` (`entry`, `name_loc0`, `subname_loc0`) SELECT `entry` as 'entry', `name` as 'name_loc0', `subname` as 'subname_loc0' FROM `creature_template`;

-- Faction Locales
INSERT IGNORE INTO `locales_faction` (`entry`, `name_loc0`, `description_loc0`) SELECT `id` as 'entry', `name1` as 'name_loc0', `description1` as 'description_loc0' FROM `faction`;

-- GameObject Locales
INSERT IGNORE INTO `locales_gameobject` (`entry`, `name_loc0`) SELECT `entry` as 'entry', `name` as 'name_loc0' FROM `gameobject_template` WHERE (`name` NOT LIKE "%.mdx%") && (`name` NOT LIKE "%.wmo%") && (`name` NOT LIKE "%.m2%") && (`name` NOT LIKE "%DOODADS%");

-- Gossip Menu Option Locales
INSERT IGNORE INTO `locales_gossip_menu_option` (`menu_id`, `id`, `option_text_loc0`, `box_text_loc0`) SELECT `menu_id` as 'menu_id', `id` as 'id', `option_text` as 'option_text_loc0', `box_text` AS 'box_text_loc0' FROM `gossip_menu_option` WHERE `option_broadcast_text`=0;

-- Item Locales
INSERT IGNORE INTO `locales_item` (`entry`, `name_loc0`, `description_loc0`) SELECT `entry` as 'entry', `name` as 'name_loc0', `description` as 'description_loc0' FROM `item_template` WHERE `name` NOT LIKE "%Monster - %";

-- Page Text Locales
INSERT IGNORE INTO `locales_page_text` (`entry`, `Text_loc0`) SELECT `entry` as 'entry', `text` as 'Text_loc0' FROM `page_text`;

-- Point of Interest Locales
INSERT IGNORE INTO `locales_points_of_interest` (`entry`, `icon_name_loc0`) SELECT `entry` as 'entry', `icon_name` as 'icon_name_loc0' FROM `points_of_interest`;

-- Quest Locales
INSERT IGNORE INTO `locales_quest` (`entry`, `Title_loc0`, `Details_loc0`, `Objectives_loc0`, `OfferRewardText_loc0`, `RequestItemsText_loc0`, `EndText_loc0`, `ObjectiveText1_loc0`, `ObjectiveText2_loc0`, `ObjectiveText3_loc0`, `ObjectiveText4_loc0`) SELECT `entry` as 'entry', `Title` as 'Title_loc0', `Details` as 'Details_loc0', `Objectives` as 'Objectives_loc0', `OfferRewardText` as 'OfferRewardText_loc0', `RequestItemsText` as 'RequestItemsText_loc0', `EndText` as 'EndText_loc0', `ObjectiveText1` as 'ObjectiveText1_loc0', `ObjectiveText2` as 'ObjectiveText2_loc0', `ObjectiveText3` as 'ObjectiveText3_loc0', `ObjectiveText4` as 'ObjectiveText4_loc0' FROM `quest_template`;

-- Spell Locales
INSERT IGNORE INTO `locales_spell` (`entry`, `name_loc0`, `nameSubtext_loc0`, `description_loc0`, `auraDescription_loc0`) SELECT `entry` as 'entry', `name` as 'name_loc0', `nameSubtext` as 'nameSubtext_loc0', `description` as 'description_loc0', `auraDescription` as 'auraDescription_loc0' FROM `spell_template`;

-- Taxi Node Locales
INSERT IGNORE INTO `locales_taxi_node` (`entry`, `name_loc0`) SELECT `id` as 'entry', `name` as 'name_loc0' FROM `taxi_nodes`;

/*

DELETE USELESS ROWS

*/

-- Area Locales
DELETE FROM `locales_area` WHERE `Entry` NOT IN (SELECT DISTINCT `entry` FROM `area_template`);

-- Broadcast Text Locales
DELETE FROM `locales_broadcast_text` WHERE `entry` NOT IN (SELECT DISTINCT `entry` FROM `broadcast_text`);

-- Creature Locales
DELETE FROM `locales_creature` WHERE `entry` NOT IN (SELECT DISTINCT `entry` FROM `creature_template`);

-- Faction Locales
DELETE FROM `locales_faction` WHERE `entry` NOT IN (SELECT DISTINCT `id` FROM `faction`);

-- GameObject Locales
DELETE FROM `locales_gameobject` WHERE `entry` NOT IN (SELECT DISTINCT `entry` FROM `gameobject_template`);

-- Gossip Menu Option Locales
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` NOT IN (SELECT DISTINCT `menu_id` FROM `gossip_menu_option`);
DELETE FROM `locales_gossip_menu_option` WHERE `option_text_loc0` IS NULL;

-- Item Locales
DELETE FROM `locales_item` WHERE `entry` NOT IN (SELECT DISTINCT `entry` FROM `item_template`);

-- Page Text Locales
DELETE FROM `locales_page_text` WHERE `entry` NOT IN (SELECT DISTINCT `entry` FROM `page_text`);

-- Point of Interest Locales
DELETE FROM `locales_points_of_interest` WHERE `entry` NOT IN (SELECT DISTINCT `entry` FROM `points_of_interest`);

-- Quest Locales
DELETE FROM `locales_quest` WHERE `entry` NOT IN (SELECT DISTINCT `entry` FROM `quest_template`);

-- Spell Locales
DELETE FROM `locales_spell` WHERE `entry` NOT IN (SELECT DISTINCT `entry` FROM `spell_template`);

-- Taxi Node Locales
DELETE FROM `locales_taxi_node` WHERE `entry` NOT IN (SELECT DISTINCT `id` FROM `taxi_nodes`);
