-- Misc. fixes from task list:
update item_template set bonding = 1 where entry = 60541;
update creature_loot_template SET groupid = 6 WHERE entry = 60630 AND item = 60756;