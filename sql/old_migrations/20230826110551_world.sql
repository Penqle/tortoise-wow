-- Change display id of 61426 to 20492, 20495 and enable serverside.
-- Change display id of 61238 to 20493 and enable serverside.
-- Change display id of 61405 to 20495 and enable serverside.
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20492, 0, 0, 0, 0),
(20493, 0, 0, 0, 0),
(20495, 0, 0, 0, 0),
(20496, 0, 0, 0, 0);
update creature_template set display_id1 = 20492, display_id2 = 20495 where entry = 61426;
update creature_template set display_id1 = 20493 where entry = 61238;
update creature_template set display_id1 = 20495 where entry = 61405;

-- Change faction of npc 13699 to 994.
update creature_template set faction = 994 where entry = 13699;

-- New NPC: Raven, display id 20496 (enable serverside), faction 31, level 1, critter, scale 1.
REPLACE INTO creature_template VALUES
(61643, 20496, 0, 0, 0, 0, 'Raven', '', 0, 1, 1, 8, 8, 0, 0, 20, 31, 0, 1, 0.857143, 1, 18, 5, 0, 0, 0, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, 0, '');

-- Quest 40801 should allow you to reads gossips of npc 61143 from quest 40807 and it should require clicking through them to complete the quest in addition to current objective.
-- Quest 40807 should allow you to reads gossips of npc 61147 from quest 40801 and it should require clicking through them to complete the quest in addition to current objective.
UPDATE quest_template SET ReqCreatureOrGOId1 = 60032, ReqCreatureOrGOId2 = 60033, ReqCreatureOrGOCount1 = 1, ReqCreatureOrGOCount2 = 1, objectivetext1 = 'Listen to what Brother Ironglade and Commander Starwind have to say', objectivetext2 = 'Listen to what Commander Starwind and Brother Ironglade have to say' WHERE entry in (40801,40807);
