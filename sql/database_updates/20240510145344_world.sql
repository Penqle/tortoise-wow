-- Learn Of My Past
delete from quest_template where entry = 41320;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40033,41320,2,16,52,30,10,2,'Learn Of My Past','I have a perilous journey behind me, stranger. One that transcends worlds; yes, worlds. Riftwalkers possess ancient magic, sorcery foreign to Azeroth. Large amounts of energy are necessary to perform this art, and less experienced riftwalkers often utilize the draenethyst crystals, the manifested lifeblood of our home world, for this. It was wise of Sanv K\'la to have you seek me out, as I am both shocked and exhausted from what I endured on my excursion to my home world… to Draenor.$B$BSit, and listen to what I have to say.','Listen to Akh Z\'ador\'s story.','Please, make yourself comfortable.','As you can see, what I have witnessed paints a grim picture for my brethren at the Harborage. I have led them to this world in search for safety, and now our past threatens to haunt us once more. I need to prevent this, yet alone I am unable to. Dear stranger, will you assist me like you assisted Sanv K\'la?',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,13800,2300, 0,0,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');
-- **Additional notes:** When on this quest, Akh Z'ador has the following gossip options, depleting all fulfills the quest objective (Learned of the past). Players have to /sit to enable the gossip.
replace into creature_questrelation		(id, quest) values (91782, 41320);
replace into creature_involvedrelation  (id, quest) values (91782, 41320);

update creature_template set npc_flags = 3 where entry = 91782;

delete from conditions where condition_entry = 41320;
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (41320, 9, 41320, 0, 0, 0, 0);

REPLACE INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (60077, 30184, 0, 41320);
replace into broadcast_text (entry, Male_Text) values (30184, 'The raw intensity seeping out of the ground is incredible. If I didn\'t know better, I\'d say the land is bursting at the seams with magic.');
replace into npc_text (ID, BroadcastTextID0) values (30184, 30184);

replace into broadcast_text (entry, Male_Text)	values (30194, 'Riftwalker, share your story with me.');
replace into npc_text (ID, BroadcastTextID0)	values (30194, 30194);

REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(60077, 0, 0, 'Riftwalker, share your story with me.', 30194, 1, 1, 30185, 0, 0, 0, 0, '', 0, 41320);


REPLACE INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (30185, 30185, 0, 0);
replace into broadcast_text (entry, Male_Text) values (30185, 'I am of the Tribe of Sanv. Decades ago, when the orcish horde wrought destruction upon what remained of Draenor, our chieftain, the Rift Lord Sanv Tas\'dal ordered the tribesmen to escape the dying world and seek refuge on another one. Sanv K\'la and his brethren were under my guidance, using my riftmagic to tear open a gateway to Azeroth, your homeworld. Ironically enough, we escaped to the same place the orcs invaded.');
replace into npc_text (ID, BroadcastTextID0) values (30185, 30185);

replace into broadcast_text (entry, Male_Text)	values (30186, 'What happened to your other tribesmen?');
replace into npc_text (ID, BroadcastTextID0)	values (30186, 30186);

REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(30185, 0, 0, 'What happened to your other tribesmen?', 30186, 1, 1, 30187, 0, 0, 0, 0, '', 0, 0);


REPLACE INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (30187, 30187, 0, 0);
replace into broadcast_text (entry, Male_Text) values (30187, 'That is what I wished to uncover when I disappeared from the Harborage. Sanv Tas\'dal is the most powerful riftwalker of the tribe since eons, so I had no doubt he would convene with us eventually. However, over the years I grew doubtful and began searching for him with my riftwalking. Leaving Sanv K\'la and the others behind was painful, but for their and my own sake I needed to go.');
replace into npc_text (ID, BroadcastTextID0) values (30187, 30187);

replace into broadcast_text (entry, Male_Text)	values (30188, 'What did you uncover?');
replace into npc_text (ID, BroadcastTextID0)	values (30188, 30188);

REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(30187, 0, 0, 'What did you uncover?', 30188, 1, 1, 30189, 0, 0, 0, 0, '', 0, 0);


REPLACE INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (30189, 30189, 0, 0);
replace into broadcast_text (entry, Male_Text) values (30189, 'Something I should\'ve sensed way sooner. During my communication attempt with the remaining tribe on Draenor, I saw a glimpse of what the red wastes are nowadays. The land is crying in pain, the elements are raging and demons run abound. But what had happened to my drive shook me to my core. Now servants to the Burning Legion, practically enslaving themselves to them and abusing our sacred, ancient riftwalking for their cause. Unable to process what unfolded before my vision, I failed to notice Sanv Tas\'dal locating me within the fabric of the Twisting Nether, interrupting my focus.');
replace into npc_text (ID, BroadcastTextID0) values (30189, 30189);

replace into broadcast_text (entry, Male_Text)	values (30190, 'And then?');
replace into npc_text (ID, BroadcastTextID0)	values (30190, 30190);

REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(30189, 0, 0, 'And then?', 30190, 1, 1, 30191, 0, 0, 0, 0, '', 0, 0);


REPLACE INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (30191, 30191, 0, 0);
replace into broadcast_text (entry, Male_Text) values (30191, 'Interrupting a riftwalker is in most cases a death sentence. Luckily, I could escape such fate. Instead, I was thrown through the Twisting Nether to this foreign place - with no means to return. Now that Sanv Tas\'dal knows about my tribe\'s continued existence, I have now doubt in my mind that he will attempt to manipulate the Harborage into submission to the Legion.');
replace into npc_text (ID, BroadcastTextID0) values (30191, 30191);

replace into broadcast_text (entry, Male_Text)	values (30192, 'Continue.');
replace into npc_text (ID, BroadcastTextID0)	values (30192, 30192);

REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(30191, 0, 0, 'Continue.', 30192, 1, 1, 30193, 0, 30191, 0, 0, '', 0, 0);


REPLACE INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (30193, 30193, 0, 0);
replace into broadcast_text (entry, Male_Text) values (30193, '$N, your assistance is vital to my tribe\'s freedom. Please, aid me and you\'ll be forever in my people\'s debt.');
replace into npc_text (ID, BroadcastTextID0) values (30193, 30193);

REPLACE INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (30191, 0, 0, 7, 41320, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Akh Z\'ador - Complete Quest Learn Of My Past');

-- Rift Fatigue: Mind
delete from quest_template where entry = 41321;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41320,41321,2,16,52,30,0,0,'Rift Fatigue: Mind','Before we can tackle the saving of my tribe, we need to prepare, both myself and my belongings. Riftwalking is very taxing on the user\'s mind, an interrupted riftwalk even more so. Without my mental strength returned, a rescue will not be possible. $B$BMy people have discovered that a creature\'s brain can accelerate one\'s mental recovery immensely, if devoured. The more intelligent the beast, the quicker you feel renewed. Down at the shore I saw serpent people slither around, some of them casting spells on their own. Bring me a few undamaged brains from these spellcasters.$B$BLet us hope your world\'s species are as smart as I envision them to be.','Bring Akh Z\'ador in Azshara three Siren Brains for his ‘mental recovery\'.','It has been a long time since I\'ve tasted brains.','<Akh Z\'ador takes the slimy, bloody brains and chomps them piece by piece. It is revolting to look at.>$B$BHm, a bit on the spongy side, but not disgusting. I\'ve had worse, trust me. Thank you, $N, I can feel the mental weakness fading already.',41380,3,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,31800,5300, 0,0,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (91782, 41321);
replace into creature_involvedrelation  (id, quest) values (91782, 41321);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41380,10923,'Siren Brain',12,1,2048,1,-1,-1,1,3,-1,-1,-1,-1,4,'',0,3);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(6195, 41380, -30, 0, 1, 1, 0);

-- Rift Fatigue: Body
delete from quest_template where entry = 41322;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41320,41322,2,16,52,30,0,0,'Rift Fatigue: Body','Being exposed to the currents of the Twisting Nether is a dangerous act, its ramifications are still felt on my body. The draenei have ancient recipes, passed on between generations, to combat the side effects of prolonged riftwalking. While I do not have access to the traditional ingredients, I am sure the native wildlife here are fit enough to create a substitute cure.$B$BWhen I ventured east to scout the area, I encountered intimidating creatures with big, meaty claws - their flesh should bring enough sustenance. To the west, not far actually, furry beings gather herbs of intense smell. Judging from their scent, I am certain they harbor medicinal properties. Bring me enough of both and I can cook a remedy for my tired body.','Akh Z\'ador in Azshara requires herbs from the furbolgs to the west and flesh of the makrura to the east.','Despite knowing many of my people\'s recipes, I am not a good cook. You can ask anyone in the Harborage, even Noburo was considered a better cook than me!','Zesty and spicy - a combination typical for draenei cuisine. Thank you for providing me with enough food to regain my vitality. Your kindness goes a long way, and I wish I could repay you with a traditional meal of my people, one prepared with ingredients from Draenor. But I digress, sentimentalities are of no use here.',41381,6,41382,10,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,31800,5300, 0,0,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (91782, 41322);
replace into creature_involvedrelation  (id, quest) values (91782, 41322);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41381,2627,'Zesty Makrura Claw',12,1,2048,1,-1,-1,1,6,-1,-1,-1,-1,4,'',0,3),
(41382,7395,' Timbermaw Herb Bundle',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0,3);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(6135, 41381, -40, 0, 1, 1, 0),
(6137, 41381, -40, 0, 1, 1, 0),
(6370, 41381, -40, 0, 1, 1, 0);

REPLACE INTO gameobject_template VALUES
(2020100, 3, 644, 'Timbermaw Herb Basket', 0, 4, 1, 43, 2020100, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020100,41382,-100,0,1,1,0);

-- The Riftwalker's Cane
delete from quest_template where entry = 41323;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41323,2,1477,54,30,0,0,'The Riftwalker\'s Cane','Now that I feel rejuvenated, our next step is retrieving my most prized possession: my riftwalker staff. When I was stranded on the auburn grass of these cliffs, I was surrounded by rabid creatures left and right. One of them, horned fiends wielding sinister hexes and curses, their features reminding me of the terrors of the Burning Legion. While I lay defenseless on the ground, they approached me like predators descending on a wounded animal. Barely able to escape, I had left my riftwalker staff behind - a mishap hurting me deeply.$B$BRegardless, even if we recover it, my failed riftwalk rendered it drained and useless. I need to infuse it with an echo of power - from an expert of forbidden arts. Back in the Swamp of Sorrows, a submerged temple towers over the canopies. Within, a masterly witcher resides exerting authority over dead trolls and dragons. End his influence over the temple and swamp; and bring a figment of his power to me.','Return with Akh Z\'ador\'s Riftwalker Cane and the Mojo of Jammal\'an to Akh Z\'ador in Azshara.','I am not naive to think our escape to Azeroth would shield us from every evil there is, yet I cannot feel disheartened by the fact a breeding ground of depravity would have its heart right at the center of our new home.','My cane! I\'ve only seen it this disheveled after we escaped Draenor years ago. Eternal gratitude to you, $N. And this… mojo, you call it? This swirling energy is completely foreign to me. Your world will probably never cease to bewilder me.$B$B<Akh Z\'ador hits his chest with his fist in respect for your deeds.>',41383,1,41384,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,44100,6300, 0,0,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (91782, 41323);
replace into creature_involvedrelation  (id, quest) values (91782, 41323);
update quest_template set nextquestinchain = 41324	 where entry = 41323;
update quest_template set type = 81					 where entry = 41323;

update quest_template set NextQuestId = 41323, ExclusiveGroup = -41321, NextQuestInChain = 41323 where entry in (41321,41322);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41383,18437,'Akh Z\'ador\'s Riftwalker Cane',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3),
(41384,23286,'Mojo of Jammal\'an',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(6200, 41383, -15, 0, 1, 1, 0),
(6201, 41383, -15, 0, 1, 1, 0),
(6202, 41383, -15, 0, 1, 1, 0),
(5710, 41384, -100, 0, 1, 1, 0);

-- Novice In A Barren Land
delete from quest_template where entry = 41324;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41323,41324,2,16,54,30,0,0,'Novice In A Barren Land','For now, this is all you can do here. Attuning my riftwalker staff to this new power will take longer than we have time, so I need you to continue onwards. While I energize the cane, you will go to the Blasted Lands, the desolate wastes south of the Swamp of Sorrows. Overlooking the red deserts, on top of a hill, my apprentice Kas\'tal awaits. I ordered him to survey suspicious fluctuations near the Dark Portal, before all of this transpired. He is surely troubled and worried about me, assure him that there is no reason to fear for my safety anymore.$B$BOnce you find him, tell him I will meet him and you in the Harborage, so we can prepare ourselves for any eventualities that hopefully will not come to pass.','Search for Akh Z\'ador\'s apprentice in the Blasted Lands.','','Master Akh Z\'ador sends you?! What a relief! Me and the tribe were worried sick, and had already feared the worst. Losing a close friend, trusted leader and masterful riftwalker like himself would\'ve been too much for any of us to bear.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,13800,2300, 0,0,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (91782, 41324);
replace into creature_involvedrelation  (id, quest) values (60850, 41324);