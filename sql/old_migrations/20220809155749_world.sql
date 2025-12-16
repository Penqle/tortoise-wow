-- Auto select display ids for creatures.
UPDATE `creature` SET `display_id`=0 WHERE `guid` NOT IN (80127, 80137, 80145, 80262, 80881, 81391);

-- Restore HC's drake:
update spell_template set name = 'Immortal Champion\'s Drake' where entry = 46211;

update spell_template set name = 'Mysterious Warp Stalker', description = 'Summons and dismisses a rideable Warp Stalker. This mount changes depending on your Riding skill.', spellvisual1 = 1705, spelliconid = 214 where entry = 46215;