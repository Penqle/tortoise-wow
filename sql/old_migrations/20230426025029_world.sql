-- Remove party loot flag from E'kos.
UPDATE item_template SET flags = 0 WHERE entry BETWEEN 12430 AND 12436;
