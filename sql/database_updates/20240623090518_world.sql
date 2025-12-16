-- Spell ID 51274 should have no visual effect when equipped.
UPDATE `spell_template` SET `spellVisual1`=0 WHERE `entry`=51274;

-- Spell ID 51142 needs a more arcane looking icon, probably something like the arcane explosion icon.
UPDATE `spell_template` SET `spellIconId`=122 WHERE `entry`=51142;

-- Spell ID 45078 shouldn't be interrupted on damage, its range should be increased from 5 yards to 30 yards, make it an instant cast, make sure it has a 0.05 spellpower scaling coefficient and make sure the debuffed target damages every enemy within 8 yards of it.
UPDATE `spell_template` SET `castingTimeIndex`=1, `interruptFlags`=5, `rangeIndex`=4 WHERE `entry`=45078;
UPDATE `spell_template` SET `effectBonusCoefficient1`=0.05, `effectRadiusIndex1`=14 WHERE `entry`=45077;

-- Change the Shieldrender Talisman spell to correctly indicate that it has a 7% chance to proc, this percentage is not pulled from the spell and is hardwritten, so it has to be fixed by hand.
UPDATE `spell_template` SET `description`='Your physical attacks have a 7% chance to make your next attack within 5 seconds to ignore all armor.' WHERE `entry`=51146;

-- Make sure Spell ID 48003 and 21978 counts multi-target damaging spells as only one instance of damage in terms of proccing (ex. Blizzard, Chain Lightning, a damaging shadow spell proccing Blackout etc.), also there were reports of Mind Blast having a 90% chance of proccing especially the first spell proc, please make sure this is not the case for either of them and poke me if you have any questions.
REPLACE INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES (21978, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
REPLACE INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES (48003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

-- Change Spell ID 16560's damage reflect's damage scaling to 0.01 spellpower.
UPDATE `spell_template` SET `effectBonusCoefficient1`=0.01 WHERE `entry`=16560;

-- Change Spell ID 13494 to say the following: "Energize the weapon, making it swing 20% faster for 30 sec.". This means that the attack speed increase is reduced to 20% and it no longer functions in shapeshifting forms.
UPDATE `spell_template` SET `attributes`=65536, `effectBasePoints1`=19, `description`='Energize the weapon, making it swing $s1% faster for $d1.' WHERE `entry`=13494;

-- Change Spell ID 46696 to say the following: "Energize the weapon, making it swing 20% faster for 30 sec. Requires a Hypertech Battery Pack to activate.". This means that the attack speed increase is reduced to 20% and it no longer functions in shapeshifting forms. The battery pack cost stays the same.
UPDATE `spell_template` SET `attributes`=65536, `effectBasePoints1`=19, `description`='Energize the weapon, making it swing $s1% faster for $d1. Requires a battery to activate.' WHERE `entry`=46696;

-- Change Spell ID 46611 to also teach Spell ID 46608 in addition to 46610. The spell text should read: "Teaches you how to make a Battery-Powered Crowd Pummeler and a Hypertech Battery Pack."
REPLACE INTO `spell_template` (`entry`, `school`, `category`, `castUI`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `attributesEx4`, `stances`, `stancesNot`, `targets`, `targetCreatureType`, `requiresSpellFocus`, `casterAuraState`, `targetAuraState`, `castingTimeIndex`, `recoveryTime`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `channelInterruptFlags`, `procFlags`, `procChance`, `procCharges`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `manCostPerLevel`, `manaPerSecond`, `manaPerSecondPerLevel`, `rangeIndex`, `speed`, `modelNextSpell`, `stackAmount`, `totem1`, `totem2`, `reagent1`, `reagent2`, `reagent3`, `reagent4`, `reagent5`, `reagent6`, `reagent7`, `reagent8`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `reagentCount4`, `reagentCount5`, `reagentCount6`, `reagentCount7`, `reagentCount8`, `equippedItemClass`, `equippedItemSubClassMask`, `equippedItemInventoryTypeMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectDicePerLevel1`, `effectDicePerLevel2`, `effectDicePerLevel3`, `effectRealPointsPerLevel1`, `effectRealPointsPerLevel2`, `effectRealPointsPerLevel3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectMechanic2`, `effectMechanic3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectImplicitTargetB3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectAmplitude1`, `effectAmplitude2`, `effectAmplitude3`, `effectMultipleValue1`, `effectMultipleValue2`, `effectMultipleValue3`, `effectChainTarget1`, `effectChainTarget2`, `effectChainTarget3`, `effectItemType1`, `effectItemType2`, `effectItemType3`, `effectMiscValue1`, `effectMiscValue2`, `effectMiscValue3`, `effectTriggerSpell1`, `effectTriggerSpell2`, `effectTriggerSpell3`, `effectPointsPerComboPoint1`, `effectPointsPerComboPoint2`, `effectPointsPerComboPoint3`, `spellVisual1`, `spellVisual2`, `spellIconId`, `activeIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `minTargetLevel`, `maxTargetLevel`, `spellFamilyName`, `spellFamilyFlags`, `maxAffectedTargets`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `minFactionId`, `minReputation`, `requiredAuraVision`, `customFlags`) VALUES (46611, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 36, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46608, 46610, 0, 0, 0, 0, 222, 0, 1, 0, 0, 'Battery-Powered Crowd Pummeler', 16712190, '', 16712190, 'Teaches you how to make a Battery-Powered Crowd Pummeler and a Hypertech Battery Pack.', 16712190, '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0);

-- Spell ID 46610 should require 1 Item ID 7191 to craft instead of 4 and 1 Item ID 60098 instead of 5.
UPDATE `spell_template` SET `reagentCount2`=1, `reagentCount4`=1 WHERE `entry`=46610;

-- Spell ID 46608 should require 1 Item ID 4404 to craft instead of 2 and 1 Item ID 10558 instead of 2.
UPDATE `spell_template` SET `reagentCount1`=1, `reagentCount3`=1 WHERE `entry`=46608;

-- Spell ID 51063 should have no visual when applied/item with the spell is equipped and the "by" should be removed from the description as the damage increase is a flat value.
UPDATE `spell_template` SET `spellVisual1`=0, `description`='Increase damage done by Earth Shock up to $s1. Earth Shock now slows attack speed by 15% for 8 sec.' WHERE `entry`=51063;

-- Spell ID 51062 should have no visual when applied, have an earthy icon (You can steal from Spell ID 10604) and be a physical debuff instead of magic debuff.
UPDATE `spell_template` SET `school`=0, `dispel`=0, `spellVisual1`=0, `spellIconId`=66, `dmgClass`=0, `preventionType`=0 WHERE `entry`=51062;
