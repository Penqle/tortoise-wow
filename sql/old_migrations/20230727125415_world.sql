-- Dwarves of Bael Hardul
delete from quest_template where entry = 41127;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41127,2,406,19,16,0,0,'Dwarves of Bael Hardul','Our steadfast dwarven allies have recently settled an old Third War outpost in the Stonetalon Mountains. Their leader is my old friend, Whitepeak. I’m sure he would appreciate your help in resettling Stonetalon for the Alliance.$B$BThe outpost is called Bael Hardul, if my memory serves. To find it, you must go through the Talondeep Pass, then go south into the mountains. There is a secret path that leads to the outpost.$B$BPlease send my best regards to Whitepeak if you find him.','Report to Lead Explorer Whitepeak in the mountain base of Bael Hardul. It is located in the southern Windshear Crag, near the Bramblethorn Pass.','Aye? I did not expect a visitor today.','Aye, so Delgren sent ya, did he? Ha, that lad\'s a good one, fought by me side in the Third War, he did, under the command of Lady Jaina, bless her heart.$B$BBut enough of me ramblin\' about the past like an old dwarf. There be plenty of work to be done, and we best get to it, sharpish! No time to waste, laddie!',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 540,1350,275,47,100,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values ( 3663, 41127);
replace into creature_involvedrelation	(id, quest) values (60997, 41127);

-- Shard De-Harmonization
delete from quest_template where entry = 41128;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41128,2,616,60,55,0,1,'Shard De-Harmonization','The transmutation process of Bright Dream Shards can always be undone, reverting the much more powerful material into its weaker components. If you desire me to undo any harmonization, speak with me, and I shall make it so.','Collect 1 Bright Dream Shard for Lantho Talonmoon at Nordanaar in Hyjal.','So you\'ve returned, do you have those shards ready for me?','Excellent work, the harmonization process does not take me long, especially with all this practice. If you find any more, come and let me know.',61199,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 61198,3,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61325, 41128);
replace into creature_involvedrelation	(id, quest) values (61325, 41128);

-- Plans: Bloody Belt Buckle
delete from quest_template where entry = 41129;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41129,2,977,60,60,0,0,'Plans: Bloody Belt Buckle','If you desire to stand out from the competition, I may have just the thing for you. Some time ago, I designed a pattern for a rather ornate buckle that is infused with great power.$B$BSuch an item may be useful for those doing battle in the arena.','Bring 25 Tokens of Blood to Bradley Steel at the Gurubashi Arena in Stranglethorn Vale.','So, made your mind up?','May this belt buckle serve you well. Use it wisely, and it can be the difference between life and death.',61794,25,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 61803,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61325, 41129);
replace into creature_involvedrelation	(id, quest) values (61325, 41129);

replace into item_template values
 ('61803', '9', '4', 'Plans: Bloody Belt Buckle', '', '1097', '3', '0', '1', '50000', '12500', '0', '-1', '-1', '65',
 '0', '164', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57195', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61804', '0', '0', 'Sigil of Resilience', '', '9636', '3', '0', '1', '0', '0', '0', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57185', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61805', '9', '4', 'Plans: Towerforge Demolisher', '', '634', '4', '0', '1', '50000', '12500', '0', '-1', '-1', '65',
 '0', '164', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57194', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61806', '9', '4', 'Plans: Towerforge Pauldrons', '', '634', '4', '0', '1', '50000', '12500', '0', '-1', '-1', '65',
 '0', '164', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57192', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61807', '9', '4', 'Plans: Towerforge Breastplate', '', '634', '4', '0', '1', '50000', '12500', '0', '-1', '-1', '65',
 '0', '164', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57190', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61808', '9', '4', 'Plans: Towerforge Crown', '', '634', '4', '0', '1', '50000', '12500', '0', '-1', '-1', '65',
 '0', '164', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57188', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61809', '9', '4', 'Plans: Towerforge Crown', '', '634', '4', '0', '1', '50000', '12500', '0', '-1', '-1', '65',
 '0', '164', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57188', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61810', '7', '0', 'Bloody Belt Buckle', '', '16456', '3', '0', '1', '2600', '650', '0', '-1', '-1', '60',
 '0', '164', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '57186', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

-- Spell and skill fixes.
UPDATE `spell_template` SET `description` = 'Reduce the mana of nearby enemies by $s2 every $t2 and mana regeneration is reduced by $s1%.', `auraDescription` = 'Draining $s2 mana from enemies every $t2. Mana regeneration reduced by $ s1%.' WHERE `entry` = 56502;
UPDATE `spell_template` SET `reagent4` = 0, `reagentCount4` = 0 WHERE `entry` = 57169;
UPDATE `skill_line_ability` SET `skill_id` = 164, `spell_id` = 57196, `race_mask` = 0, `class_mask` = 0, `req_skill_value` = 1, `superseded_by_spell` = 0, `learn_on_get_skill` = 0, `max_value` = 320, `min_value` = 310, `req_train_points` = 0 WHERE `id` = 36474;
UPDATE `skill_line_ability` SET `skill_id` = 164, `spell_id` = 57193, `race_mask` = 0, `class_mask` = 0, `req_skill_value` = 1, `superseded_by_spell` = 0, `learn_on_get_skill` = 0, `max_value` = 320, `min_value` = 310, `req_train_points` = 0 WHERE `id` = 36473;
UPDATE `skill_line_ability` SET `skill_id` = 164, `spell_id` = 57191, `race_mask` = 0, `class_mask` = 0, `req_skill_value` = 1, `superseded_by_spell` = 0, `learn_on_get_skill` = 0, `max_value` = 320, `min_value` = 310, `req_train_points` = 0 WHERE `id` = 36472;
UPDATE `skill_line_ability` SET `skill_id` = 164, `spell_id` = 57189, `race_mask` = 0, `class_mask` = 0, `req_skill_value` = 1, `superseded_by_spell` = 0, `learn_on_get_skill` = 0, `max_value` = 320, `min_value` = 310, `req_train_points` = 0 WHERE `id` = 36471;
UPDATE `skill_line_ability` SET `skill_id` = 164, `spell_id` = 57187, `race_mask` = 0, `class_mask` = 0, `req_skill_value` = 1, `superseded_by_spell` = 0, `learn_on_get_skill` = 0, `max_value` = 320, `min_value` = 310, `req_train_points` = 0 WHERE `id` = 36470;
UPDATE `skill_line_ability` SET `skill_id` = 164, `spell_id` = 57181, `race_mask` = 0, `class_mask` = 0, `req_skill_value` = 1, `superseded_by_spell` = 0, `learn_on_get_skill` = 0, `max_value` = 350, `min_value` = 325, `req_train_points` = 0 WHERE `id` = 36469;
UPDATE `skill_line_ability` SET `skill_id` = 333, `spell_id` = 57518, `race_mask` = 0, `class_mask` = 0, `req_skill_value` = 1, `superseded_by_spell` = 0, `learn_on_get_skill` = 0, `max_value` = 360, `min_value` = 320, `req_train_points` = 0 WHERE `id` = 36468;

-- NPC Gorug add quest flags.
update creature_template set npc_flags = 7 where entry = 50099;
-- NPC Bradley steel add quest/gossip flags, gossip text : "If you're looking to make a name for yourself, Blood Ring is just the place."
set @gossip_menu_id = 41537; set @magic_number = 61616;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'If you\'re looking to make a name for yourself, Blood Ring is just the place.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set npc_flags = 7, gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- NPC Gordon Hardfoot add vendor flags, and add the following items to his sell list 61786, 61787, 61788, 61789.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61621, 61786, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61621, 61787, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61621, 61788, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61621, 61789, 0, 0, 0, 0);
-- NPC Taovan Darkwell add vendor flags and add the following items to his sell list 61786, 61787, 61788, 61789.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61622, 61786, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61622, 61787, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61622, 61788, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61622, 61789, 0, 0, 0, 0);
-- NPC Lord Ivar Pyrewood set scale to 1.
update creature_template set scale = 1 where entry = 61614;
-- Rename npc High Taskmaster Grigor to Overlord Grigor.
update creature_template set name = 'Overlord Grigor' where entry = 61615;

-- Item 7071 rename to Iron Buckle.
update item_template set name = 'Iron Buckle' where entry = 7071;
-- Rename item 61786 to Plans: Copper Belt Buckle.
update item_template set name = 'Plans: Copper Belt Buckle' where entry = 61786;
-- Rename item 61787 to Plans: Bronze Belt Buckle.
update item_template set name = 'Plans: Bronze Belt Buckle' where entry = 61787;
-- Rename item 61788 to Plans: Iron Belt Buckle.
update item_template set name = 'Plans: Iron Belt Buckle' where entry = 61788;
-- Rename item 61789 to Plans: Mithril Belt Buckle.
update item_template set name = 'Plans: Mithril Belt Buckle' where entry = 61789;
-- Rename item 61790 to Plans: Thorium Belt Buckle.
update item_template set name = 'Plans: Thorium Belt Buckle' where entry = 61790;
-- Rename item 61791 to Plans: Arcanite Belt Buckle.
update item_template set name = 'Plans: Arcanite Belt Buckle' where entry = 61791;
-- Rename item 61792 to Plans: Dreamsteel Belt Buckle.
update item_template set name = 'Plans: Dreamsteel Belt Buckle' where entry = 61792;

-- Quest Cartel Gold Donations add short description : "Bring 10 Gold to Clemence the Counter in Booty Bay."
update quest_template set objectives = 'Bring 10 Gold to Clemence the Counter in Booty Bay.' where entry = 41115;
-- Quest 41111 rename to Plans: Dreamsteel Belt Buckle.
update quest_template set title = 'Plans: Dreamsteel Belt Buckle' where entry = 41111;
-- Quest Manuscript on Hydromancy II, make sure this quest is given and finished from NPC Magus Halister.
delete from creature_questrelation where quest = 41114;
delete from creature_involvedrelation where quest = 41114;
replace into creature_questrelation		(id, quest) values (60731, 41114);
replace into creature_involvedrelation	(id, quest) values (60731, 41114);
-- Quest Tokens of Blood, change quest requirement to 15 Arena Marks of Honor ((Entry 61793))
update quest_template set reqitemid1 = 61793, reqitemcount1 = 15 where entry = 41118;
-- Quest Donations of Blood 41123 rename to Donations to Vizlow.
update quest_template set title = 'Donations to Vizlow' where entry = 41123;

-- New GOs.
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2020058, 5, 32954, 'World Generic Passive Doodads Sholazar_BambooA.mdx', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2020059, 5, 32955, 'World Generic Passive Doodads Sholazar_BambooB.mdx', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');