-- Kara40 quest rewards:
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, random_property, required_reputation_faction, required_reputation_rank) values (55133, 'Claw of the Mageweaver', '', 2, 13, 1, 4, 6666, 1, 60, 1, -1, -1, 1038929, 259732, 22, 6, 0, 0, 1, 1, 0, 70, 140, 1600, 0, 0, 75, 0, 0, 0, 83, 0, 65, 0, 0, 0, 0, 0, 0, 7, 11, 7597, 1, 0, 0, -1, 0, -1, 9336, 1, 0, 0, -1, 0, -1, 17178, 1, 0, 0, -1, 0, -1, 0, 0, 0);

replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (55134, 'Rod of Permafrost', '', 2, 19, 1, 4, 6666, 1, 60, 1, -1, -1, 736417, 184104, 26, 0, 0, 0, 1, 1, 0, 119, 222, 1500, 4, 0, 75, 0, 0, 0, 83, 100, 65, 0, 0, 0, 0, 0, 0, 5, 14, 17890, 1, 0, 0, -1, 0, -1, 0, 0, 0);

replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (55135, 'Shard of Leyflow', '', 4, 0, 1, 4, 6666, 1, 60, 1, -1, -1, 823454, 205863, 12, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, 0, 65, 0, 0, 0, 0, 0, 25, 21640, 1, 0, 0, -1, 0, -1, 0, 0, 0);

-- Kara40 item fixes:
-- More fixes woo
update item_template set display_id =  9854 where entry = 55473;
update item_template set spellid_3 = 51072 where entry = 55117; -- Girdle of the Faded Primals
update item_template set display_id = 7162 where entry = 55087; -- Jewel of Wild Magics
update item_template set display_id = 66267 where entry = 55096; -- Phase-shifting Crossbow
update item_template set allowable_class = -1 where entry = 55114; -- Totem of Broken Earth
update item_template set display_id = 68089 where entry = 55112; -- Pendant of Forgiven Mistakes
update item_template set display_id = 9110 where entry = 55131; -- Shieldrender Stone
update item_template set display_id = 68086 where entry = 55091; -- Loop of Infused Renewal
-- Remains of the Lost
update item_template set set_id = 646 where entry = 60809;
update item_template set set_id = 646 where entry = 60790;
update item_template set set_id = 646, name = 'Loop of the Lost' where entry = 60798;
update item_template set set_id = 646 where entry = 22253;
-- Dreadslayer
update item_template set set_id = 648 where entry = 55108;
update item_template set set_id = 648 where entry = 55113;
-- Medivh Rings
update item_template set set_id = 647, max_count = 1 where entry = 55094;
update item_template set set_id = 647, max_count = 1 where entry = 61251;

-- Spell fixes:
update spell_template SET description = 'Increase the duration of Corruption and Shadow Word: Pain by $/1000;S1 $lsec:secs;.' WHERE entry = 51058; -- Eye of Dormant Corruption Warlock
update spell_template SET description = '' WHERE entry = 51059; -- Eye of Dormant Corruption Priest

update spell_template SET description = 'Your rogue and druid opening moves deal 5% more damage.' WHERE entry = 51056; -- Improved Opening Moves Druid
update spell_template SET description = '' WHERE entry = 51057; -- Improved Opening Moves Rogue

update spell_template SET description = 'Reduces the time between periodic ticks of your class-specific bleed effects $s1%.' WHERE entry = 51013; -- Faster Bleeds 5 (Druid)
update spell_template SET description = '' WHERE entry = 51014; -- Faster Bleeds 5 (Rogue)
update spell_template SET description = '' WHERE entry = 51015; -- Faster Bleeds 5 (Warrior)

update spell_template SET description = 'Your melee attacks have a 20% chance to strike an additional nearby opponent. This effect is disabled while shapeshifted.' WHERE entry = 51088; -- Hunter's Sweep

update spell_template SET description = 'Your landing damaging spells have a 7% chance to incur the wrath of Insomnius, dealing $51054s1 Nature damage. This effect benefits greatly from spellpower.' WHERE entry = 51055; -- Insomnius' Retribution Passive

update spell_template SET description = 'Successfully parrying an attack grants you $51052s1 Attack Power for $51052d. This effect stacks up to 2 times.' WHERE entry = 51055; -- Insomnius' Retribution Passive

update spell_template SET effectBasePoints1 = -28 WHERE entry = 51050; -- Nullified
update spell_template SET description = 'When struck by a harmful spell, the caster of that spell has a 5% chance to deal 27% reduced damage for $51050d.' WHERE entry = 51051; -- Nullified Passive

update spell_template SET description = 'Your Lightning Bolt has a 10% chance to shock your enemy for $51147s1 damage. This effect generates no threat.' WHERE entry = 51148; -- Totem of Static Charge
