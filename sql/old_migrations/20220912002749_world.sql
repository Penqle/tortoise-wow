-- Fix wrong spell id for Detonate.
UPDATE `creature_ai_scripts` SET `datalong`=20789 WHERE `id` IN (1238101, 1238201);
