UPDATE `quest_template` SET `Details` = 'Look, I have a favor I need to ask, and one that is really important to me. Do you know the meaning of sunk cost fallacy? Well, in my world it\'s completely true. I have spent years, and buckets of gold working on a machine that can sort bananas on being worthy to collect or not. It is able to judge ripeness, age, and all sorts of factors to determine if it is worth our time to collect.\n\nLet\'s just say, the buffoons that I sent it out with, got lost, and left it at the camp to the west of here.\n\nI don\'t have a bunch of people to waste getting ripped apart by Venomflayers to go get it themselves, so why don\'t you do it? Recover the Screwfuse 1000 and be sure to bring it back gently, it should be down the road to the west, at a small abandoned camp.' WHERE `entry` = 40755;
	   
UPDATE `creature_template` SET `faction` = 69 WHERE `entry` = 61057;
UPDATE `creature_template` SET `faction` = 69 WHERE `entry` = 61060;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2680

DELETE FROM `creature_loot_template` WHERE `entry` = '61061';

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 

(61061, 60940, -65, 3, 1, 1, 0),
(61061, 765, 2.88, 0, 1, 1, 0),
(61061, 785, 2.8, 0, 1, 1, 0),
(61061, 818, 0.22, 0, 1, 1, 0),
(61061, 856, 0.75, 0, 1, 1, 0),
(61061, 858, 1.889, 0, 1, 1, 0),
(61061, 954, 0.34, 0, 1, 1, 0),
(61061, 955, 0.5, 0, 1, 1, 0),
(61061, 1179, 2.0071, 0, 1, 1, 0),
(61061, 1180, 0.48, 0, 1, 1, 0),
(61061, 1206, 0.12, 0, 1, 1, 0),
(61061, 1210, 0.32, 0, 1, 1, 0),
(61061, 1705, 0.02, 0, 1, 1, 0),
(61061, 2406, 0.02, 0, 1, 1, 0),
(61061, 2409, 0.04, 0, 1, 1, 0),
(61061, 2447, 2.66, 0, 1, 1, 0),
(61061, 2449, 2.64, 0, 1, 1, 0),
(61061, 2450, 2.9, 0, 1, 1, 0),
(61061, 2452, 2.2432, 0, 1, 1, 0),
(61061, 2453, 2.66, 0, 1, 1, 0),
(61061, 2455, 0.6494, 0, 1, 1, 0),
(61061, 2553, 0.02, 0, 1, 1, 0),
(61061, 2657, 0.02, 0, 1, 1, 0),
(61061, 2771, 0.02, 0, 1, 1, 0),
(61061, 2836, 0.02, 0, 1, 1, 0),
(61061, 2881, 0.02, 0, 1, 1, 0),
(61061, 3012, 0.18, 0, 1, 1, 0),
(61061, 3394, 0.02, 0, 1, 1, 0),
(61061, 3610, 0.02, 0, 1, 1, 0),
(61061, 4292, 0.08, 0, 1, 1, 0),
(61061, 4293, 0.04, 0, 1, 1, 0),
(61061, 4345, 0.02, 0, 1, 1, 0),
(61061, 4346, 0.02, 0, 1, 1, 0),
(61061, 4408, 0.02, 0, 1, 1, 0),
(61061, 4409, 0.02, 0, 1, 1, 0),
(61061, 4410, 0.02, 0, 1, 1, 0),
(61061, 4605, 5.2538, 0, 1, 1, 0),
(61061, 5503, 0.04, 0, 1, 1, 0),
(61061, 5573, 0.04, 0, 1, 1, 0),
(61061, 5574, 0.02, 0, 1, 1, 0),
(61061, 6271, 0.02, 0, 1, 1, 0),
(61061, 6344, 0.04, 0, 1, 1, 0),
(61061, 6347, 0.02, 0, 1, 1, 0),
(61061, 6348, 0.02, 0, 1, 1, 0),
(61061, 6391, 0.02, 0, 1, 1, 0),
(61061, 6716, 0.04, 0, 1, 1, 0),
(61061, 10316, 0.02, 0, 1, 1, 0),
(61061, 11038, 0.02, 0, 1, 1, 0),
(61061, 11039, 0.02, 0, 1, 1, 0),
(61061, 11081, 0.02, 0, 1, 1, 0),
(61061, 30020, 0.5, 0, -30020, 1, 0),
(61061, 30021, 0.5, 0, -30021, 1, 0),
(61061, 30022, 0.5, 0, -30022, 1, 0),
(61061, 30024, 0.5, 0, -30024, 1, 0),
(61061, 30037, 2.5, 0, -30037, 1, 0),
(61061, 30038, 0.5, 0, -30038, 1, 0);

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2682

UPDATE `quest_template` SET `RewItemId1` = 0, `RewItemCount1` = 0 WHERE `entry` = 40701;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2676

UPDATE `page_text` SET `text` = 'Solomon,$B$BThe carrier of this decree has been granted official status as an acting deputy of Stormwind. You may use $g him:her; to find proof of the black dragonflight\'s involvement with the Blackrock orcs. Should such proof be found, this deputy shall return said proof to me in Stormwind, at which time I shall release the order to dispense sufficient military force to aid Lakeshire.$B$BRegards,$B$B$B$BHighlord Bolvar Fordragon\n', `next_page` = 0 WHERE `entry` = 1471;

-- Temporary disable Alliance SC attunement quest chain:

UPDATE `quest_template` SET `Method` = 1 WHERE `entry` = 80700;
UPDATE `quest_template` SET `Method` = 1 WHERE `entry` = 80701;
UPDATE `quest_template` SET `Method` = 1 WHERE `entry` = 80702;
UPDATE `quest_template` SET `Method` = 1 WHERE `entry` = 80730;
UPDATE `quest_template` SET `Method` = 1 WHERE `entry` = 80703;
UPDATE `quest_template` SET `Method` = 1 WHERE `entry` = 80704;
UPDATE `quest_template` SET `Method` = 1 WHERE `entry` = 80705;
UPDATE `quest_template` SET `Method` = 1 WHERE `entry` = 80706;
UPDATE `quest_template` SET `Method` = 1 WHERE `entry` = 80707;
UPDATE `quest_template` SET `Method` = 1 WHERE `entry` = 80708;
UPDATE `quest_template` SET `Method` = 1 WHERE `entry` = 80709;
UPDATE `quest_template` SET `Method` = 1 WHERE `entry` = 80710;
UPDATE `quest_template` SET `Method` = 1 WHERE `entry` = 80711;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2645

UPDATE `quest_template` SET `RewSpell` = 0, `RewSpellCast` = 0 WHERE `entry` = 3861;
UPDATE `gameobject_template` SET `size` = 0.2 WHERE `entry` = 161513;
UPDATE `creature_template` SET `script_name` = 'npc_chicken_cluck' WHERE `entry` = 620;