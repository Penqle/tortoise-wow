-- Create object called 'Goldsmithing Plans' object that looks like model Scrollb02.m2, at a scale of 1.4 , this object should drop the following item 56100 when looted with a drop chance of 100%, the respawn of the object should be 48hours
-- Create object called 'Goldsmithing Plans' object that looks like model Scrollb02.m2, at a scale of 1.4 , this object should drop the following item 56103 when looted with a drop chance of 100%, the respawn of the object should be 48hours
-- Create object called 'Gemology Plans' object should look like model Scrollb03.m2, at a scalle of 1.4, this object should drop the following item 56106 when looted with a drop chance of 100%, the respawn of the object should be 48 hours
-- Create object called 'Gemology Plans' object should look like model Scrollb02.m2, at a scale of 1.4 , this object should drop the following item 56105 when looted with a drop chance of 100%, the respawn of the object should be 48hours
replace INTO `gameobject_template` VALUES
(2020101, 3, 24337, 'Goldsmithing Plans', 0, 0, 1.4, 43, 2020101, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2020102, 3, 24337, 'Goldsmithing Plans', 0, 0, 1.4, 43, 2020102, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2020103, 3, 24338, 'Gemology Plans',     0, 0, 1.4, 43, 2020103, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2020104, 3, 24338, 'Gemology Plans',     0, 0, 1.4, 43, 2020104, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020101,56100,100,0,1,1,0),
(2020102,56103,100,0,1,1,0),
(2020103,56106,100,0,1,1,0),
(2020104,56105,100,0,1,1,0);

update gameobject set spawntimesecsmin = 172800, spawntimesecsmax = 172800 where id = 2020101;
update gameobject set spawntimesecsmin = 172800, spawntimesecsmax = 172800 where id = 2020102;
update gameobject set spawntimesecsmin = 172800, spawntimesecsmax = 172800 where id = 2020103;
update gameobject set spawntimesecsmin = 172800, spawntimesecsmax = 172800 where id = 2020104;

-- Item 56101 set as a drop from creature 9736 with a drop chance of 30% on its own loot group.
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(9736, 56101, 30, 7, 1, 1, 0);
-- Item 56104 set as a drop from creature 9019 with a drop chance of 30% on its own loot group.
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(9019, 56104, 30, 7, 1, 1, 0);
-- Item 56107 set as a drop from creature 1853 with a drop chance of 30% on its own loot group.
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(1853, 56107, 30, 7, 1, 1, 0);