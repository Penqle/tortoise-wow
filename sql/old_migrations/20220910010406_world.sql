-- Make Shadowguard proc on absorb.
UPDATE `spell_proc_event` SET `procEx`= (1 | 2 | 1024) WHERE `entry`=18137;
