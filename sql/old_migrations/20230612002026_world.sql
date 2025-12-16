-- to enable interrupts on Slime Bolt
UPDATE `spell_template` SET `interruptFlags`=15 WHERE `entry`=28311;
-- to enable stuns, silences, and bleeds on Stitched Spewer
UPDATE `creature_template` SET `mechanic_immune_mask`=1022047986 WHERE `entry`=16025;


