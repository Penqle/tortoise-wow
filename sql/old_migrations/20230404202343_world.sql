-- Remove wrong aura state requirements from Swiftmend.
UPDATE `spell_template` SET `targetAuraState`=0 WHERE `entry`=18562;
