-- Make Car Key trinkets Bind on Pickup like Carrot on a Stick.  Players should not be farming these up and selling them, and requiring participation will direct more traffic to the race track.
-- UPDATE item_template SET bonding = 1 WHERE entry IN (50524, 50525);
-- RMJ — Today at 8:50 AM
-- Increase attack delay on https://database.turtle-wow.org/?npc=60722.  These 2-hand mace wielding NPCs are attacking at a 1-hander or dual-wielder speed.
-- RMJ — Today at 11:04 AM
-- Properly capitalize Tel'Abim on gameobjects
UPDATE gameobject_template SET Name = 'Ripe Tel''Abim Banana' WHERE entry = 2010948;
UPDATE gameobject_template SET Name = 'Ripe Tel''Abim Bundle' WHERE entry = 2010949;
UPDATE gameobject_template SET Name = 'Strange Tel''Abim Banana' WHERE entry = 2010962;
 
-- RMJ — Today at 11:13 AM
-- Properly capitalize Tel'Abim on spells
UPDATE spell_template SET Name = 'Danonzo''s Tel''Abim Surprise' WHERE entry = 57047;
UPDATE spell_template SET Name = 'Recipe: Danonzo''s Tel''Abim Surprise',
Description = 'Teaches you how to cook Danonzo''s Tel''Abim Surprise.' WHERE entry = 57048;
UPDATE spell_template SET Name = 'Danonzo''s Tel''Abim Delight' WHERE entry = 57049;
UPDATE spell_template SET Name = 'Recipe: Danonzo''s Tel''Abim Delight',
Description = 'Teaches you how to cook Danonzo''s Tel''Abim Delight.' WHERE entry = 57050;
UPDATE spell_template SET Name = 'Danonzo''s Tel''Abim Medley' WHERE entry = 57051;
UPDATE spell_template SET Name = 'Recipe: Danonzo''s Tel''Abim Medley',
Description = 'Teaches you how to cook Danonzo''s Tel''Abim Medley.' WHERE entry = 57052;
 
-- Properly capitalize Tel'Abim on quests
UPDATE quest_template SET Objectives = 'Gather a Gargantuan Tel''Abim Banana, an Essence of Air, and Soothing Spices for Chef Danonzo Laxjolt at Tel Co. Basecamp in Tel''Abim.' WHERE entry = 40752;
UPDATE quest_template SET Objectives = 'Gather a Gargantuan Tel''Abim Banana, a Mountain Silversage, and Soothing Spices for Chef Danonzo Laxjolt at Tel Co. Basecamp in Tel''Abim.' WHERE entry = 40753;
UPDATE quest_template SET Objectives = 'Gather a Gargantuan Tel''Abim Banana, a Heart of the Wild, and Soothing Spices for Chef Danonzo Laxjolt at Tel Co. Basecamp in Tel''Abim.' WHERE entry = 40754;

-- Set respawn time of https://database.turtle-wow.org/?object=2010936 to 30 seconds
UPDATE gameobject SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 2010936;

-- Increase attack delay on https://database.turtle-wow.org/?npc=60722.  These 2-hand mace wielding NPCs are attacking at a 1-hander or dual-wielder speed.
UPDATE `creature_template` SET `base_attack_time` = 2000 WHERE `entry` = 60722;

-- https://database.turtle-wow.org/?npc=2676
-- has 1.74k hp as a summon at lvl20. Set hp to 500.
-- https://database.turtle-wow.org/?npc=4070
-- has 4.2k armor at lvl20. Set armor to 900.
UPDATE `creature_template` SET `health_min` = 450, `health_max` = 500 WHERE `entry` = 2676;
UPDATE `creature_template` SET `armor` = 900 WHERE `entry` = 4070;

-- Change flag on https://database.turtle-wow.org/?item=51425 to Quest Item rather than Binds when picked up and add a spell to attach for a green "Use: Throw this coin into the fountain in the Stormwind City Trade District."
UPDATE `item_template` SET `class` = 12 WHERE `entry` = 51425;
UPDATE `item_template` SET `bonding` = 4 WHERE `entry` = 51425;

REPLACE INTO `spell_template` (`entry`, `school`, `category`, `castUI`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `attributesEx4`, `stances`, `stancesNot`, `targets`, `targetCreatureType`, `requiresSpellFocus`, `casterAuraState`, `targetAuraState`, `castingTimeIndex`, `recoveryTime`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `channelInterruptFlags`, `procFlags`, `procChance`, `procCharges`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `manCostPerLevel`, `manaPerSecond`, `manaPerSecondPerLevel`, `rangeIndex`, `speed`, `modelNextSpell`, `stackAmount`, `totem1`, `totem2`, `reagent1`, `reagent2`, `reagent3`, `reagent4`, `reagent5`, `reagent6`, `reagent7`, `reagent8`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `reagentCount4`, `reagentCount5`, `reagentCount6`, `reagentCount7`, `reagentCount8`, `equippedItemClass`, `equippedItemSubClassMask`, `equippedItemInventoryTypeMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectDicePerLevel1`, `effectDicePerLevel2`, `effectDicePerLevel3`, `effectRealPointsPerLevel1`, `effectRealPointsPerLevel2`, `effectRealPointsPerLevel3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectMechanic2`, `effectMechanic3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectImplicitTargetB3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectAmplitude1`, `effectAmplitude2`, `effectAmplitude3`, `effectMultipleValue1`, `effectMultipleValue2`, `effectMultipleValue3`, `effectChainTarget1`, `effectChainTarget2`, `effectChainTarget3`, `effectItemType1`, `effectItemType2`, `effectItemType3`, `effectMiscValue1`, `effectMiscValue2`, `effectMiscValue3`, `effectTriggerSpell1`, `effectTriggerSpell2`, `effectTriggerSpell3`, `effectPointsPerComboPoint1`, `effectPointsPerComboPoint2`, `effectPointsPerComboPoint3`, `spellVisual1`, `spellVisual2`, `spellIconId`, `activeIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `minTargetLevel`, `maxTargetLevel`, `spellFamilyName`, `spellFamilyFlags`, `maxAffectedTargets`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `minFactionId`, `minReputation`, `requiredAuraVision`, `customFlags`) VALUES (48304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1657, 0, 0, 'Teresa\'s Copper Coin', 16712190, '', 16712190, 'Throw this coin into the fountain in the Stormwind City Trade District.', 16712190, '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0);
