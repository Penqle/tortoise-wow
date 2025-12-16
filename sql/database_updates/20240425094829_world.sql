-- Move Item ID 80716 to loot group 1 for NPC ID 3927, with a 25% chance to drop 1 item, reduce Item ID 6314's drop chance to 25%.
delete from creature_loot_template where entry = 3927 and item = 80716;
replace INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30132, 3748, 50, 1, 1, 1, 0);
replace INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30132, 6314, 25, 1, 1, 1, 0);
replace INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30132, 80716, 25, 1, 1, 1, 0);

-- Plans: Blue Starfire - 56024, add to vendor npc 61914 sell list.
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61914, 0, 56024, 0, 0, 0, 0);
-- Plans: Ocean's Wrath - 70144, add to vendor npc 3499 sell list.
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (3499, 0, 70144, 0, 0, 0, 0);
-- Plans: Skyfire Jewel - 70128, add to vendor npc 11189 sell list.
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (11189, 0, 70128, 0, 0, 0, 0);
-- Plans: Goldcrest Amulet - 70115, add to vendor npc 61574 sell list.
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61574, 0, 70115, 0, 0, 0, 0);
-- Plans: Pure Shining Moonstone - 70168, add to vendor npc 3537 sell list.
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (3537, 0, 70168, 0, 0, 0, 0);
-- Plans: Dark Iron Signet Ring - 70178 sold by Lokhtos Darkbargainer (entry 12944), should require friendly reputation to be seen).
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (12944, 0, 70178, 0, 0, 0, 289);
-- Plans: Orb of Clairvoyance - 70216 sold by 10856, 10857, and 11536, set reputation requirement on the item 70216 honored with argent dawn.
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (10856, 0, 70216, 0, 0, 0, 7175);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (10857, 0, 70216, 0, 0, 0, 7175);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (11536, 0, 70216, 0, 0, 0, 7175);

-- NPC IDs 61965, 61968, 61961, 61963, 61969 remove all immunities.
update creature_template set mechanic_immune_mask = 0, immunity_flags = 0 where entry in (61965, 61968, 61961, 61963, 61969);
