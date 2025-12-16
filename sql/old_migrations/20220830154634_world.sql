-- Hungry Vault Rat does not have any events defined so it should not use EventAI.
UPDATE `creature_template` SET `ai_name`='AggressorAI' WHERE `entry`=93106;
