REPLACE INTO `areatrigger_tavern` (`id`, `name`) VALUES (204, 'Stonetalon Mountains - Bael Hardul Inn');
REPLACE INTO `areatrigger_template` (`id`, `map_id`, `x`, `y`, `z`, `radius`) VALUES (204, 1, 928.15, -830.01, 166.1, 20);

-- 60920 (Oaken Braid bands,) (rounded petrified bark - not on database, https://dev.turtle-wow.org/#!/itemcreator/WzAsNCw2LCJSb3VuZGVkIFBldHJpZmllZCBCYXJrIiwiIiwxODQ4OCwyLDAsMSwxMjU4MCwzMTQ1LDE0LC0xLC0xLDM2LDAsMCwwLDAsMCwwLDAsMCwwLDEsMCw0LDYsNyw1LDAsbnVsbCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMTYsNzI1LDAsMCwwLDAsMCwwLDAsMCwwLDAsLTEsMCwtMSwwLDAsMCwwLC0xLDAsLTEsMCwwLDAsMCwtMSwwLC0xLDAsMCwwLDAsLTEsMCwtMSwwLDAsMCwwLC0xLDAsLTEsMSwwLDAsMCwwLDAsMiw0LDAsMCwwLDAsMCwwLDAsNywwLDAsMCwwLDEsIk5VTEwiXQ==) , 60921 (Prancing Dryad Dress-Skirt, already correct)

UPDATE `quest_template` SET `RewChoiceItemId1` = 60920 WHERE `entry` = 40677;

replace into item_template values
 ('91765', '4', '6', 'Rounded Petrified Bark', '', '18488', '2', '0', '1', '12580', '3145', '14', '-1', '-1', '36',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '6', '7', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '725', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '4', '0', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);
 
UPDATE `quest_template` SET `RewChoiceItemId3` = 91765 WHERE `entry` = 40677;
 
UPDATE `quest_template` SET `Details` = '"<As you place the plates on the pedestal, a pillar of light suddenly erupts forth and surrounds the pedestal.>\n\nInitiating unlock sequence.\n\nPlates present, scanning for item validation.\n\nPlates authentication complete, unlocking the gates.\n\nActivating Gate Keeper to greet the guests.' WHERE `entry` = 40107;

UPDATE `quest_template` SET `Objectives` = 'Collect a Dark Iron Rifle, a Magma Condensor, a Intricate Arcanite Barrel and a Molten Fragment for Bixxle Screwfuse at Bixxle\'s Storehouse in Tel\'Abim.' WHERE `entry` = 40762;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2628

UPDATE `gameobject_template` SET `data9` = 47 WHERE `entry` = 153464;

-- Remove weird Desolace cerature link:

DELETE FROM `creature_linking` WHERE `guid` = 27697 AND `master_guid` = 27973;
DELETE FROM `creature_linking` WHERE `master_guid` = 27973;

-- Make Stolen Elwynn Pumpkin usable only when on quest:

UPDATE `gameobject_template` SET `flags`=36 WHERE `entry` = 1000082;
UPDATE `quest_template` SET `ReqCreatureOrGOId1`= -1000082 WHERE `entry` = 60041;

-- GUID 4004852 should not be interactable / have visible doodad to players who are not on quest https://database.turtle-wow.org/?quest=80107

UPDATE `gameobject_template` SET `flags`=36 WHERE `entry` = 3000209;
UPDATE `quest_template` SET `ReqCreatureOrGOId1`= -3000209 WHERE `entry` = 80107;