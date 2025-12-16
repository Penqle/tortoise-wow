update spell_template SET description = 'Your Water Shield ability grants an additional 6 mana per 5 sec. while active.' WHERE entry = 47357; 
-- Calming River

-- A solid chest in Gilneas, Dawnstone mine reports an error saying "You are not high enough level", this was tested on a level 41. It should very much open.

UPDATE `gameobject` SET `id` = 4149 WHERE `guid` = 5016092;

-- I just picked this up on the forum, apparently the repeatable Dalaran Reputation quest "Minor Magical Defenses"

UPDATE `quest_template` SET `Method` = 0, `SpecialFlags` = 1 WHERE `entry` = 40709;
UPDATE `quest_template` SET `Method` = 0, `SpecialFlags` = 1 WHERE `entry` = 40710;
UPDATE `quest_template` SET `Method` = 0, `SpecialFlags` = 1 WHERE `entry` = 40711;

UPDATE `quest_template` SET `RequestItemsText` = `details` WHERE `entry` = 40709;
UPDATE `quest_template` SET `RequestItemsText` = `details` WHERE `entry` = 40710;
UPDATE `quest_template` SET `RequestItemsText` = `details` WHERE `entry` = 40711;