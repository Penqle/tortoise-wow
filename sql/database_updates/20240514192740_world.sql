-- Please change the quest status of the quests Tethered Memories (41341) and The White Stag (41342) to raidquests.
update quest_template set type = 62 where entry in (41341,41342);