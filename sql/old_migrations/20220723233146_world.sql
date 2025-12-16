-- Start fresh after purge:

truncate table migrations;

-- Shaman Two-Handed Maces and Axes should be learned on character creation, didn’t have time to fully figure it out, they won’t mind getting it earlier than level 5. Make sure existing shamans also get them. 

replace into playercreateinfo_spell values (2, 7, 199, 'Two-Handed Maces');
replace into playercreateinfo_spell values (6, 7, 199, 'Two-Handed Maces');
replace into playercreateinfo_spell values (8, 7, 199, 'Two-Handed Maces');

replace into playercreateinfo_spell values (2, 7, 197, 'Two-Handed Axes');
replace into playercreateinfo_spell values (6, 7, 197, 'Two-Handed Axes');
replace into playercreateinfo_spell values (8, 7, 197, 'Two-Handed Axes');

-- Grimoire of Avoidance needs to be added to all Demon Trainer book vendors.

replace into npc_vendor values (5520,  83584, 0, 0, 0, 0);
replace into npc_vendor values (5749,  83584, 0, 0, 0, 0);
replace into npc_vendor values (5750,  83584, 0, 0, 0, 0);
replace into npc_vendor values (5753,  83584, 0, 0, 0, 0);
replace into npc_vendor values (5815,  83584, 0, 0, 0, 0);
replace into npc_vendor values (6027,  83584, 0, 0, 0, 0);
replace into npc_vendor values (6328,  83584, 0, 0, 0, 0);
replace into npc_vendor values (6373,  83584, 0, 0, 0, 0);
replace into npc_vendor values (6374,  83584, 0, 0, 0, 0);
replace into npc_vendor values (6376,  83584, 0, 0, 0, 0);
replace into npc_vendor values (6382,  83584, 0, 0, 0, 0);
replace into npc_vendor values (12776, 83584, 0, 0, 0, 0);

-- Shaman's new class quest fixes:

UPDATE `quest_template` SET `Details` = 'With this serum you may speak with the spirit of the toad, he is a patient, and incredibly wise one. We trolls have been hexin\' our enemies for quite some time, and it is about time for you to pay respects.\n\nN\'ribbi is the one you seek, and he can be found deep in the Dustwallow Marsh.\n\n In the north west of Dustwallow is a place called \'Bluefen\' you can find him at the very edge.\n\nGo there, and speak with him, bring this serum, and offer it to N\'ribbi as tribute.' WHERE `entry` = 40352;

UPDATE `quest_template` SET `OfferRewardText` = 'I have been expecting you.\n\nIt is about time you have arrived. I have heard many tales of your prowess, but now I shall see if such tales are true.' WHERE `entry` = 40530;

UPDATE `quest_template` SET `Objectives` = 'Find the Ancient Wolf Spirit, and complete the ritual.' WHERE `entry` = 40532;

UPDATE `quest_template` SET `RewSpellCast` = 45519 WHERE `entry` = 40534;

-- Misc. random stuff:

update creature_template set scale = 1.5 where entry = 51621;
update creature_template set faction = 189 where entry = 7;
update gameobject_template set faction = 35 where name like '%Mailbox%';
update item_template set display_id = 4738 where name = 'Fishing Boat';

UPDATE skill_line_ability SET learn_on_get_skill = 0 WHERE id = 36284;

-- Embrace of the Fang Rebalance
update item_template set stat_value2 = 4 where entry = 10412; -- Belt of the Fang
update item_template set stat_value2 = 3, required_level = 16, item_level = 21, armor = 49 where entry = 10412; -- Gloves of the Fang
update item_template set stat_type2 = 7 where entry = 10412; -- Armor of the Fang
update item_template set set_id = 162 where entry = 81006; -- Cowl of the Fang
-- Defias Leather Rebalance
update item_template set stat_value2 = 4, stat_value1 = 3, required_level = 16, item_level = 21, armor = 54 where entry = 10402; -- Blackened Defias Boots
update item_template set stat_value2 = 3, stat_value1 = 3, required_level = 16, item_level = 21, armor = 49 where entry = 10401; -- Blackened Defias Gloves
update item_template set stat_value2 = 5, stat_value1 = 4, required_level = 16, item_level = 21, armor = 69 where entry = 10400; -- Blackened Defias Leggings
update item_template set stat_type1 = 7, stat_value1 = 4, allowable_race = -1, set_id = 161, bonding = 1, name = 'Blackened Defias Mask' where entry = 81007; -- Enchanted Defias Mask

-- Hateforge Quarry meeting stone:

replace into gameobject_template (entry, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, phase_quest_id, script_name) values (1772027, 23, 5495, 'Meeting Stone', 35, 0, 1, 50, 60, 5103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Disable this temporary:

update gameobject_template set script_name = '' where script_name = 'go_scarlet_attack_trigger';