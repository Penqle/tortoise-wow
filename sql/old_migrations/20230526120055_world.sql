-- Saltjaw Basilisk in Gilligim's Isle droping items from basilisk in Blasted Lands #3310.
delete from creature_loot_template where item = 8394 and entry in (91963,91964);
delete from creature_loot_template where item = 10593 and entry in (91963,91964,91968);