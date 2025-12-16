UPDATE creature_template SET `leash_range` = 75 WHERE entry = 50112;

UPDATE item_template SET Max_Count = 1 WHERE entry = 61209;
UPDATE item_template SET Max_Count = 0 WHERE entry = 41076;
UPDATE spell_template SET Description = 'Teaches you how to create an Eternal Dreamstone Shard' WHERE entry = 57519;

UPDATE quest_template SET RewRepFaction1 = 69 WHERE entry = 41212;
