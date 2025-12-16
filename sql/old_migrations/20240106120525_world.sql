-- Pet summoning spells should not appear on Bleakheart Hellcaller's pet bar when charmed.
UPDATE `creature_template` SET `spell_id1`=0, `spell_id2`=0 WHERE `entry`=3771;
