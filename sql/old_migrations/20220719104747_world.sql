-- Fix cooldown of Shadowguard.
UPDATE `spell_proc_event` SET `Cooldown`=3 WHERE `entry`=18137;
