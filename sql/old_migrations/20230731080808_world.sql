-- apply last 3 brot spells
update item_template set spellid_2 = 47355, spellid_3 = 0, spellid_4 = 0, spellid_1 = 0  where entry = 60784; -- Breastplate of Beast Mastery	
update item_template set spellid_1 = 47356, spelltrigger_1 = 1, description = '' where entry = 61699; -- Idol of Savagery
update item_template set spellid_1 = 47357, spelltrigger_1 = 1, description = '', name = 'Totem of the Calming River' where entry = 61698; -- Totem of the Flowing Timeways
-- fix boots of displacement
update item_template set spelltrigger_2 = 1 where entry = 23073; -- Boots of Displacement

-- NPC Axis Spinpistol (Entry 80940) change display ID to 12957

UPDATE `creature_template` SET `display_id1` = 12957 WHERE `entry` = 80940;

-- Change the displayid of NPC Ganum Highmountain (Entry 11500) to 18727 (He was using the same displayid as the Tauren Quartermaster instead of the one he was meant to use)
-- Change the weapon of NPC Ganum Highmountain (Entry 11500) to 1911 (Monster - Tool Wrench small)

UPDATE `creature_template` SET `display_id1` = 18727 WHERE `entry` = 11500;
UPDATE `creature_equip_template` SET `equipentry1` = 1911 WHERE `entry` = 1911;

-- Quest 41109 change start and finish npc to Grenthor , change short description to "Bring 15 Arena Marks of Honor to Vizlow at the Gurubashi Arena in Stranglethorn Vale."

-- Quest 41110 change start and finish npc to Grenthor, change short description to "Win a battle in Blood Ring and report to Vizlow at the Gurubashi Arena in Stranglethorn Vale."

-- Quest 41118 change start and finish npc to Frixxle Blastvalve, change short description to : "Bring 15 Arena Marks of Honor to Frixxle Blastvalve at the Gurubashi Arena in Stranglethorn Vale."

UPDATE `quest_template` SET `objectives` = 'Bring 15 Arena Marks of Honor to Vizlow at the Gurubashi Arena in Stranglethorn Vale.' WHERE `entry` = 41109;
UPDATE `quest_template` SET `objectives` = 'Win a battle in Blood Ring and report to Vizlow at the Gurubashi Arena in Stranglethorn Vale.' WHERE `entry` = 41110;
UPDATE `quest_template` SET `objectives` = 'Bring 15 Arena Marks of Honor to Frixxle Blastvalve at the Gurubashi Arena in Stranglethorn Vale.' WHERE `entry` = 41118;

delete from creature_questrelation where quest in (41109, 41110, 41118);
delete from creature_involvedrelation where quest in (41109, 41110, 41118);

replace into creature_questrelation		(id, quest) values (61638, 41109);
replace into creature_involvedrelation	(id, quest) values (61638, 41109);

replace into creature_questrelation		(id, quest) values (61638, 41110);
replace into creature_involvedrelation	(id, quest) values (61638, 41110);

replace into creature_questrelation		(id, quest) values (61639, 41118);
replace into creature_involvedrelation	(id, quest) values (61639, 41118);