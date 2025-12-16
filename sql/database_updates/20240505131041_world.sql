-- Make creature 61385 a vendor, copy vendor list from npc 465.
update creature_template set npc_flags = 7 where entry = 61385;
-- New vendor list: Darrow Shademore.
replace into `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61385, 2, 159, 0, 0, 0, 0);
replace into `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61385, 14, 414, 0, 0, 0, 0);
replace into `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61385, 15, 422, 0, 0, 0, 0);
replace into `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61385, 3, 1179, 0, 0, 0, 0);
replace into `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61385, 4, 1205, 0, 0, 0, 0);
replace into `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61385, 6, 1645, 0, 0, 0, 0);
replace into `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61385, 16, 1707, 0, 0, 0, 0);
replace into `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61385, 5, 1708, 0, 0, 0, 0);
replace into `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61385, 1, 1939, 0, 0, 0, 0);
replace into `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61385, 13, 2070, 0, 0, 0, 0);
replace into `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61385, 9, 2593, 0, 0, 0, 0);
replace into `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61385, 11, 2594, 0, 0, 0, 0);
replace into `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61385, 12, 2595, 0, 0, 0, 0);
replace into `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61385, 10, 2596, 0, 0, 0, 0);
replace into `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61385, 8, 2723, 0, 0, 0, 0);
replace into `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61385, 17, 3927, 0, 0, 0, 0);
replace into `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61385, 7, 8766, 0, 0, 0, 0);
replace into `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61385, 18, 8932, 0, 0, 0, 0);
