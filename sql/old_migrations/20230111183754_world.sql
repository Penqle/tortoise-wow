-- Fix Yesu'gei not being interactable.
UPDATE `creature_template` SET `faction`=35, `unit_flags`=768, `ai_name`='' WHERE `entry`=61044;
UPDATE `quest_template` SET `RequiredMinRepFaction`=92, `RequiredMinRepValue`=3000 WHERE `entry` IN (40622, 40623, 40624, 40625, 40626, 40627, 40628, 40629);
