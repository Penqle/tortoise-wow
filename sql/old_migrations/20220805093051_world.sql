-- Hardcore mount reward:

update item_template set name = 'Immortal Champion\'s Charger', display_id = 30608 where entry = 80692;
update creature_template set display_id1 = 18228, name = 'Immortal Champion\'s Charger' where entry = 80160;
update spell_template set name = 'Immortal Champion\'s Charger', description = 'Summons and dismisses a rideable steed. This mount changes depending on your Riding skill.', spellvisual1 = 1706 where entry = 46216;
update spell_template set spelliconid = 1179 where entry = 46216;

delete from item_template where entry = 81090;
delete from creature_loot_template where item = 81090;
delete from mount_spells where itemid = 81090;
update creature_template set name = 'Dark Rider\'s Steed [Deprecated]' where entry = 80168;
