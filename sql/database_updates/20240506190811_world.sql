-- Assign Echo of Medivh script.
UPDATE `spell_template` SET `effectMiscValue1`=0 WHERE  `entry`=51117;
UPDATE `spell_template` SET `effectBasePoints1`=1999 WHERE `entry`=51119;
UPDATE `spell_template` SET `effectApplyAuraName1`=0, `effectTriggerSpell1`=51117 WHERE `entry`=51118;
UPDATE `spell_template` SET `mechanic`=11, `effectBonusCoefficient1`=0, `effectApplyAuraName1`=33 WHERE `entry`=51117;
UPDATE `spell_template` SET `auraDescription`='Decreases movement speed by $s1% and all stats by $s3% for $d.' WHERE `entry`=51117;
UPDATE `creature_template` SET `ai_name`='', `script_name`='npc_echo_of_medivh' WHERE `entry`=61958;

