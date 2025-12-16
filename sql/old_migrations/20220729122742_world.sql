-- Add spell power scaling to Retribution Aura.
UPDATE `spell_template` SET `effectBonusCoefficient1`=0.033 WHERE `name` = "Retribution Aura" && `effectApplyAuraName1`=15;
-- Change damage class of Holy Strike to Melee so it procs seals and does 2x damage on crit. Add no resistance attribute.
UPDATE `spell_template` SET `dmgClass`=2, `attributesEx4`= (`attributesEx4` | 1) WHERE `name` = 'Holy Strike' && `effect1`=58;
-- Lasting Defense change effect type to Energize
UPDATE `spell_template` SET `effect1`=30, `effectApplyAuraName1`=0 WHERE `entry`=45813;
-- Fix Crusader Strike being considered a Judgement and removing other Judgements.
UPDATE `spell_template` SET `spellFamilyFlags`=34359738368 WHERE `name`='Crusader Strike' && `spellFamilyFlags`=536870912;


