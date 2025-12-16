-- Iron Determination
delete from quest_template where entry = 41387;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41387,2,17,55,55,0,0,'Iron Determination','So you step before me. Surely to seek tutelage in the art of war - why else would you search for the master of arms. You are one among many who wish to reach expertise in the martial arts, but will you be one of the few to actually achieve it? I\'ve lost count on how many gullible and naive warriors think they are worthy of my teachings, only to fail at the slightest challenge. Unless your worth is proven to me, I cannot be sure you are suitable for what\'s to come.$B$BHigh up the mountains to the north lies a defiled forest called Felwood. Even further north you will find the Irontree Cavern; from within this cave a root, cold as iron and equally heavy, is what I require of you. Pick the root and bring it safely to me.','Return with an Ironvine Root to Mathias Brightheart on Fray Island.','This ordeal will show me if you got what it takes.','The Ironvine Root is an aggressive plant. When uprooted it clings around its captor, trying to drag it to the ground, ultimately wearing them down. You, however, did not bend to this natural force. Your mind was clear, your will iron. The last person to pass this test was my apprentice Sakgoth, many years ago. Perhaps I have found someone extraordinary in you. The upcoming trials will tell if I am correct in my assumption.$B$B<Mathias takes a dagger and with a swift cut you almost couldn\'t see, he removes the gripping vines from your body.>$B$BWe shouldn\'t let it get to waste, you can brew excellent tea with this root.',41425,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,19800,3300, 0,0,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (62031, 41387);
replace into creature_involvedrelation	(id, quest) values (62031, 41387);
update quest_template set nextquestinchain = 41388	 where entry = 41387;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41425,19497,'Ironvine Root',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

REPLACE INTO gameobject_template VALUES
(2020115, 3, 391, 'Celia\'s Journal', 0, 4, 1, 43, 2020115, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020115,41425,-100,0,1,1,0);

update gameobject set spawntimesecsmin = 1800, spawntimesecsmax = 1800 where id = 2020115;

-- Wisdom From Failure
delete from quest_template where entry = 41388;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1,objectivetext2,objectivetext3,objectivetext4) values (41387,41388,2,17,55,55,0,0,'Wisdom From Failure','Apologies for my brash demeanour, but I have to make sure you are cut out for the path of war. You may be experienced in the martial arts, but following my path takes more than what you\'ve accomplished so far.$B$BAs previously mentioned, many ambitious people stood where you are now, but only a few succeeded. It is important to learn from mistakes, our own and those of others. Speak with my former pupils, and they will share stories of failure. Only if you really understand their faults will you proceed. Speak with Sakgoth and Klannoc on this island and Ka\'fai in Tanaris. I heard the thrill of the desert lured him to the city of Gadgetzan. Once you\'ve done so, return and answer my questions about their tellings.','Pass Mathias Brightheart\'s test.','No lesson is the same. Comprehending the connection between them and the mistakes made allows you to grasp their wisdom.','Commendable. Taking these lessons to heart is imperative for your future success on this road you\'ve taken.',0,0,0,0,0,0,0,0, 60057,1,60058,1,60059,1,60060,1, 0,0, 0,16800,2800, 0,0,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'Passed the test','Listened to Sakgoth','Listened to Klannoc','Listened to Ka\'fai');

replace into creature_questrelation		(id, quest) values (62031, 41388);
replace into creature_involvedrelation	(id, quest) values (62031, 41388);
update quest_template set nextquestinchain = 41389	 where entry = 41388;

REPLACE INTO `creature_template` VALUES
(60057, 328, 0, 0, 0, 0, 'quest_41388_dummy_triger_1', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(60058, 328, 0, 0, 0, 0, 'quest_41388_dummy_triger_2', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(60059, 328, 0, 0, 0, 0, 'quest_41388_dummy_triger_3', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(60060, 328, 0, 0, 0, 0, 'quest_41388_dummy_triger_4', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Add new NPC called Ka\'fai, display ID 11745, faction 35, level 48, humanoid, scale 1, gossip text : "Ka\'fai: De sands be cruel and without compromise. Perfect ground for training."
replace INTO `creature_template` VALUES
(62063, 11745, 0, 0, 0, 0, 'Ka\'fai', NULL, 0, 48, 48, 2398, 2398, 0, 0, 2753, 35, 1, 1, 1.14286, 1, 20, 5, 0, 0, 1, 74, 96, 0, 208, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 62.744, 86.273, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41642; set @magic_number = 62063;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'De sands be cruel and without compromise. Perfect ground for training.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Add the following gossip text to Klannoc Macleod (6236): The salty air invigorates me everso. How can I help you?
replace into gossip_menu (entry, text_id, condition_id) VALUES (41643, 30277, '0'); 
replace into broadcast_text (entry, Male_Text) values (30277, 'The salty air invigorates me everso. How can I help you?');
replace into npc_text (ID, BroadcastTextID0) values (30277, 30277);
update creature_template set gossip_menu_id = 41643, npc_flags = 3 where entry = 6236;

update creature_template set script_name = 'npc_mathias_brightheart' where entry = 62031;
update creature_template set script_name = 'npc_sakgoth' where entry = 62032;
update creature_template set script_name = 'npc_klannoc_macleod' where entry = 6236;
update creature_template set script_name = 'npc_kafai' where entry = 62063;

-- When on this quest, Mathias Brightheart (62031) has the following gossip options:
REPLACE INTO `broadcast_text` VALUES (30256, 'Let\'s begin.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Mathias Brightheart:
set @magic_number = 30257;
REPLACE INTO `npc_text` VALUES		 (@magic_number, @magic_number, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` VALUES (@magic_number, 'What lesson could Sakgoth teach you?', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `broadcast_text` VALUES (30258, 'If he were stronger, he would have succeeded.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` VALUES (30259, 'His pride misguided him.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` VALUES (30260, 'Overpowering your enemy is the only way to victory.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Clicking (<His pride misguided him.>) opens the next gossip option:
-- Mathias Brightheart:
set @magic_number = 30261;
REPLACE INTO `npc_text` VALUES		 (@magic_number, @magic_number, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` VALUES (@magic_number, 'Correct. What lesson could Klannoc teach you?', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `broadcast_text` VALUES (30262, 'Everyone should be ready to defend themselves.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` VALUES (30263, 'Giving in to the battle frenzy makes you stronger.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` VALUES (30264, 'Don\'t lose sight of what you wield a weapon for.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
 
-- Clicking (<Don\'t lose sight of what you wield a weapon for.>) opens the next gossip option:
-- Mathias Brightheart: 
set @magic_number = 30265;
REPLACE INTO `npc_text` VALUES		 (@magic_number, @magic_number, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` VALUES (@magic_number, 'Correct. What lesson could Ka\'fai teach you?', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `broadcast_text` VALUES (30266, 'To practice your skills at any given time.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` VALUES (30267, 'Stay disciplined and don\'t forget your obligations.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` VALUES (30268, 'The art of war is the most important thing.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Clicking (<Stay disciplined and don\'t forget your obligations.>) opens the next gossip option and completes the quest objective (Passed the test):
-- Mathias Brightheart:
set @magic_number = 30269;
REPLACE INTO `npc_text` VALUES		 (@magic_number, @magic_number, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` VALUES (@magic_number, 'Excellent, it seems you listened well.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Choosing ANY OTHER OPTION results in the following gossip option:
-- Mathias Brightheart:
set @magic_number = 30270;
REPLACE INTO `npc_text` VALUES		 (@magic_number, @magic_number, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` VALUES (@magic_number, 'Incorrect. I suggest you listen more intently next time.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- When on this quest, Sakgoth Ironjaw (62032) has the following gossip option, clicking it completes the quest objective (Listened to Sakgoth):
REPLACE INTO `broadcast_text` VALUES (30271, 'Master Brightheart wishes I seek stories of failure. Are you willing to share one?', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Sakgoth: 
set @magic_number = 30272;
REPLACE INTO `npc_text` VALUES		 (@magic_number, @magic_number, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` VALUES (@magic_number, 'A personal question, but I dare not scrutinize the master\'s intentions. There is no better teacher than one\'s own mistakes, he would agree, but there is much to learn from the faults of others.$B$BNot long after I went under his patronage, I was tested by a seemingly simple task: retrieve an idol of war from the resident quilboar. Having fought many of these beasts during the Warchief\'s conquest of Durotar, I thought better than to heed Mathias\' advice about the chieftain holding the idol. During the battle, I underestimated my opponent, ultimately suffering a grave wound and accidentally destroying the idol in the process. While I survived, a deep sense of shame overcame me.$B$B$N, while I should have listened to the master, this is not the lesson I had to learn. I let my pride cloud my judgement; which is a hazard for not only me, but my compatriots, too.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- When on this quest, Klannoc Macleod (6236) has the following gossip option, clicking the second one completes the quest objective (Listened to Klannoc):
-- 30271 Gossip option

-- Klannoc:
set @magic_number = 30273;
REPLACE INTO `npc_text` VALUES		 (@magic_number, @magic_number, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` VALUES (@magic_number, 'A new student of the master? Been a while since we had one of those. And he told you to ask me such a delicate question? Normally I\'d scoff at the thought and shush you away, but I will not stand in the master\'s way.$B$BI was like you once, young and ambitious. Overzealous, even. I thought highly of my skill with the sword and the fact master Mathias took me in only made it worse. All the more frustrated I was when the first task he assigned me to was a delivery. A delivery! I was flabbergasted, to put it lightly.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `broadcast_text` VALUES (30274, 'What did happen?', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

set @magic_number = 30275;
REPLACE INTO `npc_text` VALUES		 (@magic_number, @magic_number, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` VALUES (@magic_number, 'The crate was filled with medicinal herbs and potions, valuable stuff, and I was to bring it to a hermit living in the Dustwallow Marsh. Nothing too frightening, but someone greedy got wind of it and hired brigands to ambush me at the old man\'s house. The bandits were nothing I couldn\'t handle, so in my juvenile zeal I rushed head on, dispatching them in blind fury. With the bandits seemingly slain and my blood still pumping, I turned to the hermit, only to see him dead on the ground, with the crate gone. In my rage I lost sight of what was important - I let the thrill of battle get to me, and another had to pay his life for it.$B$B$N, my recklessness cost another man his life. On the path of war we\'re walking, you ought not to endanger anyone\'s life. Ask yourself: Why wield a weapon if not to protect those who cannot?', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- When on this quest, Ka\'fai has the following gossip option, clicking it completes the quest objective (Listened to Ka\'fai):
-- 30271 Gossip option

-- Ka\'fai:
set @magic_number = 30276;
REPLACE INTO `npc_text` VALUES		 (@magic_number, @magic_number, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` VALUES (@magic_number, 'Ah, de old master. Yes, he taught Ka\'fai many things, but many things I had be learning myself. Life be a good teacher after all.$B$BOne story Ka\'fai never forgets is one of discipline. I had be a careless troll, till this day I do be not knowing why de old master took me in. Perhaps he had be seeing more in me than I did. De master asked me to bring a flower from de jungle of Feralas. Told me it be urgent. Back then I had not be caring about some silly flower. Found it much more entertaining to duel with de warriors in Camp Mojache. When I eventually be searching and finding the flower, I be seeing it withered already. Now understanding what de maste be meaning, I had be taking the flower either way. Back on de island, he had told me de flower is picked by his pupils, to honor those who be coming before me.$B$B$N, be not forgetting your duties and fulfill them with diligence. Your own desires can and should be waiting.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Proof
delete from quest_template where entry = 41389;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41388,41389,2,17,58,55,0,0,'Proof','Here, take the glass marble and bring it to Sakgoth. It is proof of your deeds and signals you as his equal. Be ever vigilant and remember what you learned. I am excited to witness your further growth!','Hand the Glass Marble to Sakgoth in the next room.','Just what happened up there? It smells like burned flesh in there.','The master is an enigmatic man, and I will most likely never fully understand the ways of his mind. Luckily that\'s not what we are here for, right?$B$BThis pearl you brought, truly something else. Every student of the master\'s receives a personal gift from him - and technically me - as proof of their accomplishments. Mine is the stinger of a scorpid I\'ve slain in the Thousand Needles. And for you... what do you think of a pendant?',41426,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 41426,1, 0,5400,900, 0,0,0,0,0,0,0,0, 0,0,0, 41427,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (62031, 41389);
replace into creature_involvedrelation	(id, quest) values (62032, 41389);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41426,12310,'Glass Marble',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4);

replace INTO `item_template` (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES
(41427, 4, 0, 'Testimony of Resolve', 'Proof of your passage into Master Brightheart\'s patronage.', 13103, 1, 0, 1, 295, 73, 2, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
update item_template set bonding = 1 where entry = 41427;

-- Drones In Westfall
delete from quest_template where entry = 41390;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41390,2,40,20,14,0,0,'Drones In Westfall','Hey, you. Headed to Westfall, by chance? The SI:7 is on a big lead about the Defias\' machinations involving individuals outside of Westfall. We suspect they\'re dealing with some sort of highly volatile chemical that could pose a threat to not only Stormwind, but the rest of the Eastern Kingdoms as well. We could use some... \'additional muscle\', per say, as this job may very well not be the stealthy type of deal.$B$BOne of our agents is situated down in Westfall at the bridge leading to Duskwood, near the abandoned mage tower. I want you to go and meet her, and be quick about it. There has been a sudden turn of events worth investigating. Kearnen is her name; and once you find her, do as she says.','Meet with Agent Kearnen in southern Westfall.','','Renzik sent you? Good. I could use a bit more manpower.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,1200,200, 72,100,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values ( 6946, 41390);
replace into creature_involvedrelation	(id, quest) values ( 7024, 41390);
update quest_template set nextquestinchain = 41391	 where entry = 41390;
update quest_template set requiredraces = 589		 where entry = 41390;

-- Venture Delivery
delete from quest_template where entry = 41391;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41390,41391,2,40,20,14,0,0,'Venture Delivery','I\'ve been spying on this tower for quite some time and anything happening around it is unfathomably strange. The Defias are sparse here, but certainly well equipped. That alone is concerning enough, yet what puzzles me the most are those zombies patrolling the parameter. Every now and again, some of the Defias enter the tower; but instead of them leaving again, a completely new specimen of these zombies shows its ugly face.$B$BI\'d like to investigate further of the internal machinations of this tower, but I am waiting on reinforcements from the SI:7. What you are here for is fairly simple, but all the more crucial. At the dock near the tower, I noticed a shady goblin mooring her rowboat full of crates. Surely a delivery of some sorts, what we need however are documents, preferably with names of the people involved in these operations. Deal with her how you like, but bring any valuable info directly back to Renzik in the SI:7 headquarters.','Recover valuable documents from the goblin and bring them to Renzik the \'Shiv\' in Stormwind.','Back so soon? I hope not with empty hands...','Jared Voss? I hate that this name rings several bells. If what is in this document is true, then we should make haste immediately.',41428,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,5460,910, 72,100,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values ( 7024, 41391);
replace into creature_involvedrelation	(id, quest) values ( 6946, 41391);
update quest_template set nextquestinchain = 41392	 where entry = 41391;
update quest_template set requiredraces = 589		 where entry = 41391;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41428,8628,'Order of Alchemical Compounds',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'Under an extensive list of herbs and other components, the name Jared Voss is listed under \'client\'.',0,7);

replace INTO `creature_template` VALUES
(62064, 11675, 0, 0, 0, 0, 'Blitzy Pouchcutter', NULL, 0, 21, 21, 531, 531, 0, 0, 888, 27, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 24, 32, 0, 94, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 33.264, 45.738, 100, 7, 0, 62064, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20569; set @weapon_1 = 2092; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 62064;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

-- Creature loot table: Blitzy Pouchcutter.
delete from creature_loot_template where entry = 62064;
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 41428, -100, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 30023, 0.01, 0, -30023, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 30012, 0.01, 0, -30012, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 857, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 4349, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 3612, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 14169, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 55249, 0.02, 5, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 4348, 0.02, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 5575, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 5578, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 6348, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 6716, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 7360, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 7363, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 14126, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 15505, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 4347, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 1705, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 2409, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 14728, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 3608, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 4297, 0.04, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 5972, 0.05, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 6390, 0.05, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 1210, 0.06, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 15019, 0.08, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 6391, 0.08, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 6375, 0.08, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 15496, 0.08, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 14368, 0.12, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 1712, 0.36, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 1478, 0.36, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 3012, 0.4, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 30011, 0.5, 0, -30011, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 30022, 0.5, 0, -30022, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 30009, 0.5, 0, -30009, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 1206, 0.64, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 954, 0.78, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 3385, 0.8734, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 1205, 2.1834, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 929, 2.4017, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 30008, 2.5, 0, -30008, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 4542, 4.6943, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 4306, 5.0218, 0, 1, 1, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 2589, 13.5371, 0, 1, 3, 0);
replace into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (62064, 2592, 24.2358, 0, 1, 2, 0);

-- Turning Off The Tap
delete from quest_template where entry = 41392;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41391,41392,2,40,20,14,0,0,'Turning Off The Tap','Jared Voss is the son of William Voss, a highly skilled and educated alchemist. His father had an alchemy shop here in the Old Town, beloved by many. When Stormwind was burnt down a second time, his family\'s home was among those burned to ashes. During its rebuild by the Stonemason\'s Guild, Voss naturally assumed his house to be restored, given his importance as Stormwind\'s most renowned alchemist. Ironically, it would not come to pass.$B$BStormwind\'s nobility had different plans of reconstructing the city and in the end, Voss and his family became homeless. With a growing hatred in his heart, he condemned those responsible for their fate. We\'re assuming Voss sent his son to the Stonemason\'s before his death, who shared his disdain. It seems Jared succeeded his father in both hate and abilities.$B$B$N, Voss cannot be allowed to operate any longer. According to the list you brought, he dwells in the Deadmines. Liquidate him and bring me samples of his newest brew.','Infiltrate the Deadmines in Westfall and acquire Voss\' Sizzling Brew.','Don\'t waste time. I\'m not as patient as Master Shaw.','By the mines of Kezan! This smells horrible. One whiff of it and any grown sailor will fall over in a heartbeat. $N, excellent job. While we were able to secure this end of the operations, we still have to investigate where exactly they\'re getting all the supplies from, as I am sure the Venture Co. is simply a middle man. Still, so far you did great and for that I\'ve got a reward for you. Stay clear of trouble, adventurer, wouldn\'t want to see you getting killed.',41429,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,9300,1550, 72,100,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 70239,1,70240,1,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values ( 6946, 41392);
replace into creature_involvedrelation	(id, quest) values ( 6946, 41392);
update quest_template set requiredraces = 589		 where entry = 41392;
update quest_template set type = 81					 where entry = 41392;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41429,22785,'Voss\' Sizzling Brew',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61961, 41429, -100, 0, 1, 1, 0);

REPLACE INTO item_template (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES
 ('70239', '4', '0', 'Operative Cloak', '', '23022', '2', '0', '1', '2392', '598', '16', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '4', '6', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '19', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '0', '1', NULL);

REPLACE INTO item_template (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES
 ('70240', '4', '1', 'Cuffs of Integrity', '', '16936', '2', '0', '1', '2060', '515', '9', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '17', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '25', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '0', '1', NULL);

REPLACE INTO item_template (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES
 ('70241', '0', '0', 'Amberglaze Donut', '', '68246', '1', '0', '1', '200', '50', '0', '-1', '-1', '35',
 '25', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '1127', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', NULL);

-- Item 70226 Ancient Warfare Text remove bindings , it currently has bind on equip, remove this.
update item_template set bonding = 0 where entry = 70226;