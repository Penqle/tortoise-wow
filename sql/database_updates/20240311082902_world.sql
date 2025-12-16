-- Remove 40 yard forced leash from Gillijim's Isle mobs.
UPDATE `creature_template` SET `leash_range`=0 WHERE `entry` IN (91838, 91961, 91963, 91966, 92203, 92139, 92141, 92148, 92151, 92152, 92155, 92156, 92157, 92165, 92166, 92169, 92174, 92204);
