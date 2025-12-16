-- NPC Chronar needs to be marked as elite

-- NPC Drifting Avatar of Sand needs to be marked as elite

-- NPC Time-Lord Epochronos needs to be marked as elite

-- NPC Mossheart needs to be marked as elite

-- NPC Rotmaw needs to be marked as elite

-- NPC Antnormi needs to be marked as a boss with a skull

UPDATE creature_template SET rank = 1 WHERE entry in (2996, 18044, 18116, 9012, 5327);
UPDATE creature_template SET rank = 4 WHERE entry = 65125;

-- Item Shard of Midnight (Entry 61658), change display ID to 2935

UPDATE item_template SET display_id = 2935 WHERE entry = 61658;

-- NPC Refrik add weapon 15268

REPLACE INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (91933, 15268, 0, 0);
UPDATE `creature_template` SET `equipment_id` = 91933 WHERE `entry` = 61567;

-- Item Obsidian Phylactery (entry 61657) must drop from Amnennar the Coldbringer (Entry 7358) at 100% drop chance for the quest "The Powers Beyond (Entry 40995)"

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (7358, 61657, -100, 0, 1, 1, 0);

-- last paragraph of the competion text of the quest 'The Greymane Stone' change to : 

-- This endeavor is far above you and me. We have fulfilled our mission, and now we must deliver the Scepter to our superiors.

UPDATE `quest_template` SET `OfferRewardText` = 'Yes, indeed! Behold, the Shard of Midnight, at last in my possession.$B$B<Dark Bishop meticulously adjusts the scepter, delicately affixing the crystal atop its pinnacle.>$B$BThe task is accomplished. The unholy forces once wielded by Garalon Greymane can be harnessed anew, but only by those who possess the fortitude to withstand their malevolence.$B$BThis endeavor is far above you and me. We have fulfilled our mission, and now we must deliver the Scepter to our superiors.' WHERE `entry` = 40996;

-- Add item https://dev.turtle-wow.org/#!/itemcreator/WzAsMTUsMCwiU2NyaWJibGVkIENvb2tpbmcgTm90ZXMiLCIiLDg5MjcsNCwwLDEsMCwwLDAsLTEsLTEsNjUsMCwwLDAsMCwwLDAsMCwwLDAsMSwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwtMSwwLC0xLDAsMCwwLDAsLTEsMCwtMSwwLDAsMCwwLC0xLDAsLTEsMCwwLDAsMCwtMSwwLC0xLDAsMCwwLDAsLTEsMCwtMSwxLDAsMCwwLDAsMCwwLDEsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMSwiTlVMTCJd

-- As a drop to 61191, 61192, 61193, 61194, 61211, 61205 at 0.3%
-- and to 61210 at 1% drop chance

replace into item_template values
 ('51326', '15', '0', 'Scribbled Cooking Notes', '', '8927', '4', '0', '1', '0', '0', '0', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 

(61191, 51326, 0.3, 7, 1, 1, 0),
(61192, 51326, 0.3, 7, 1, 1, 0),
(61193, 51326, 0.3, 7, 1, 1, 0),
(61194, 51326, 0.3, 7, 1, 1, 0),
(61211, 51326, 0.3, 7, 1, 1, 0),
(61205, 51326, 0.3, 7, 1, 1, 0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 

(61210, 51326, 1, 7, 1, 1, 0);