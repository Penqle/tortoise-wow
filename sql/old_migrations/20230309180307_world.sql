UPDATE `quest_template` SET `QuestFlags` = 8 WHERE `entry` = 40091;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2968

UPDATE `item_template` SET `stackable` = 10 WHERE `entry` = 13460;
UPDATE `item_template` SET `stackable` = 10 WHERE `entry` = 6051;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2967
update item_template set spellid_1 = 13441 where entry = 61068; -- Dark Iron Desecrator

-- Set respawn time of Forgotten Tome (https://database.turtle-wow.org/?object=2010823) to 5 seconds:
UPDATE gameobject SET spawntimesecsmin = 5, spawntimesecsmax = 5 WHERE id = 2010823;

UPDATE quest_template SET
Details = 'Venture to Darkshire, and ask the Night Watch about the whereabouts of F.W. If he was right with his suspicions, they would know where to find him.$B$BI pray to the Light that he still hasn''t moved out of Duskwood.$B$BQuestion him, and if you find him guilty... do not wait for Stormwind''s justice. Kill him, avenge the people of Westfall.',
OfferRewardText = 'F.W.? I know of no-one by those initials, but I have a hunch of who it could be, if what you told me is true.'
WHERE entry = 40484;

UPDATE quest_template SET
Details = 'A few months ago, a mysterious blind man moved into an abandoned shack south of Darkshire. A goblin accompanied him, helping him with everyday tasks in exchange for mentorship. He was a renowned engineer, of some kind.$B$BStrange couple, that''s for sure, though they professed to only be seeking shelter.$B$BWith all our concerns across Duskwood, I was only able to spare a single Watcher to surveil their dealings, and what little I’ve heard has done nothing to quell my suspicions.$B$BIf you venture there and find out what you can as you go about your errand, you would render a fine service to the Night Watch.'
WHERE entry = 40485;

UPDATE item_template SET flags = 2048 WHERE entry = 4527;
UPDATE item_template SET stackable = 30 WHERE entry =5798;

-- whoops, alchemists stone
update item_template set spellid_1 = 17619, spelltrigger_1 = 1 where entry = 13503; -- Alchemists' Stone

UPDATE `quest_template` SET `RewXP` = 4000 WHERE `entry` = 50311;
UPDATE `quest_template` SET `RewXP` = 4000 WHERE `entry` = 50313;

-- Remove old duplicate vendor entries
delete from npc_vendor where item in (80060, 50520, 51230);
delete from npc_vendor where entry = 101;

-- Insert new entries to vendor template
replace into npc_vendor_template values (101, 0, 50520, 0, 0, 0, 0);
replace into npc_vendor_template values (101, 0, 51230, 0, 0, 0, 80000);
replace into npc_vendor_template values (101, 0, 80060, 0, 0, 0, 0);

-- Set vendor template for glyph masters
update creature_template set vendor_id = 101 where entry between 51540 and 51547;

UPDATE quest_template SET
Details = 'Greetings mon! It never hurts to be prepared, even with powerful regeneration powers like we have. We don''t really know why, but sometimes those powers fail in the middle of battle and we''ll need a crutch.$B$BThere''s a purple flower that grows around Ashenvale that some call rosemary, but I think it''s better to call it useful. We can turn that flower into a powerful salve that empowers our regeneration for a short time. Like potions, but better!$B$BGrab a handful and bring them back to me.',
Objectives = 'Collect 10 Rosemary Flowers and 10 Toad Oils, then bring everything to Warleader Zol''majin'
WHERE entry = 80304;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2980
UPDATE `item_template` SET `display_id` = 50659 WHERE `entry` = 51792;