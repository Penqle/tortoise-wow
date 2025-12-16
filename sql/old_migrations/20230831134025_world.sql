-- Quest The Binding of Xanthar (41015) set start npc to Hanvar the Righteous (entry 61568).
update creature_template set npc_flags = 3 where entry = 61568;
delete from creature_questrelation where quest = 41015;
delete from creature_involvedrelation where quest = 41015;
replace into creature_questrelation		(id, quest) values (61568, 41015);
replace into creature_involvedrelation	(id, quest) values (61568, 41015);
-- Quest 41062 restrict to the following classes Mage, Warlock, Priest, Druid so only these classes can accept the quest.
update quest_template set requiredclasses = 1424 where entry = 41062;