REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES 
(16000, 1008, 45840, 0, 0, 0, 0, 0, 0, 0, 0), -- Toy Train Set / Item 51255
(16001, 1008, 46038, 0, 0, 0, 0, 0, 0, 0, 0), -- Winter Veil Tree / Item 51250
(16002, 1008, 29999, 0, 0, 0, 0, 0, 0, 0, 0), -- Goblin Radio / Item 10585
(16003, 1008, 46001, 0, 0, 0, 0, 0, 0, 0, 0), -- Mailbox / Item 50011
(16004, 1008, 46002, 0, 0, 0, 0, 0, 0, 0, 0); -- Brainwashing / Item 51715

REPLACE INTO `spell_template` (`entry`, `school`, `category`, `castUI`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `attributesEx4`, `stances`, `stancesNot`, `targets`, `targetCreatureType`, `requiresSpellFocus`, `casterAuraState`, `targetAuraState`, `castingTimeIndex`, `recoveryTime`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `channelInterruptFlags`, `procFlags`, `procChance`, `procCharges`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `manCostPerLevel`, `manaPerSecond`, `manaPerSecondPerLevel`, `rangeIndex`, `speed`, `modelNextSpell`, `stackAmount`, `totem1`, `totem2`, `reagent1`, `reagent2`, `reagent3`, `reagent4`, `reagent5`, `reagent6`, `reagent7`, `reagent8`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `reagentCount4`, `reagentCount5`, `reagentCount6`, `reagentCount7`, `reagentCount8`, `equippedItemClass`, `equippedItemSubClassMask`, `equippedItemInventoryTypeMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectDicePerLevel1`, `effectDicePerLevel2`, `effectDicePerLevel3`, `effectRealPointsPerLevel1`, `effectRealPointsPerLevel2`, `effectRealPointsPerLevel3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectMechanic2`, `effectMechanic3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectImplicitTargetB3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectAmplitude1`, `effectAmplitude2`, `effectAmplitude3`, `effectMultipleValue1`, `effectMultipleValue2`, `effectMultipleValue3`, `effectChainTarget1`, `effectChainTarget2`, `effectChainTarget3`, `effectItemType1`, `effectItemType2`, `effectItemType3`, `effectMiscValue1`, `effectMiscValue2`, `effectMiscValue3`, `effectTriggerSpell1`, `effectTriggerSpell2`, `effectTriggerSpell3`, `effectPointsPerComboPoint1`, `effectPointsPerComboPoint2`, `effectPointsPerComboPoint3`, `spellVisual1`, `spellVisual2`, `spellIconId`, `activeIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `minTargetLevel`, `maxTargetLevel`, `spellFamilyName`, `spellFamilyFlags`, `maxAffectedTargets`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `minFactionId`, `minReputation`, `requiredAuraVision`, `customFlags`) VALUES (46096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 222, 0, 115, 0, 0, 'Add Toy to Collection', 16712190, 'Collection', 16712190, 'Adds a toy to the player\'s you collection.', 16712190, '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0);

UPDATE `item_template` SET `spellid_1` = 46096 WHERE `entry` IN (51255, 51250, 10585, 50011, 51715);
UPDATE `spell_template` SET `nameSubText` = 'Toy' WHERE `entry` IN (45840, 46038, 29999, 46001, 46002);

DROP TABLE IF EXISTS `collection_toy`;
CREATE TABLE `collection_toy`  (
  `itemId` int(10) UNSIGNED NOT NULL,
  `spellId` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`itemId`, `spellId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (51255, 45840);
REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (51250, 46038);
REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (10585, 29999);
REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (50011, 46001);
REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (51715, 46002);

UPDATE `spell_template` SET `spellIconId` = 2279 WHERE `entry` = 45840;
UPDATE `spell_template` SET `spellIconId` = 1733 WHERE `entry` = 29999;
UPDATE `spell_template` SET `spellIconId` = 2312 WHERE `entry` = 46001;

-- More toys for the collection:

UPDATE `item_template` SET `spellid_1` = 46096 WHERE `entry` IN (81059, 21540, 81116, 17712, 51020, 20030, 13342, 91794);

-- REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (20030, ID_MISSING); -- PET ROCK
-- REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (91794, ID_MISSING); -- Lunar Lantern
REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (81059, 45030); -- Fox Spirit Stone
REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (21540, 26265); -- Elune's Lantern
REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (81116, 56067); -- Picnic Basket
REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (17712, 21848); -- Snowman Suit
REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (51020, 26389); -- Strawberry Schnapps
REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (13342, 17468); -- Pet Fish

UPDATE `spell_template` SET `name` = 'Elune\'s Lantern' WHERE `entry` = 26265;
UPDATE `spell_template` SET `name` = 'Spectral Fox Whistle' WHERE `entry` = 45030;
UPDATE `spell_template` SET `name` = 'Strawberry Schnapps' WHERE `entry` = 26389;

UPDATE `spell_template` SET `spellIconId` = 2037 WHERE `entry` = 45030; -- Fox Spirit Stone
UPDATE `spell_template` SET `spellIconId` = 1878 WHERE `entry` = 26265; -- Elune's Lantern
UPDATE `spell_template` SET `spellIconId` = 1911 WHERE `entry` = 56067; -- Picnic Basket
UPDATE `spell_template` SET `spellIconId` = 2089 WHERE `entry` = 21848; -- Snowman Suit
UPDATE `spell_template` SET `spellIconId` = 1359 WHERE `entry` =  26389; -- Strawberry Schnapps
UPDATE `spell_template` SET `spellIconId` = 2279 WHERE `entry` = 17468; -- Pet Fish

REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES 
(16005, 1008, 45030, 0, 0, 0, 0, 0, 0, 0, 0),
(16006, 1008, 26265, 0, 0, 0, 0, 0, 0, 0, 0),
(16007, 1008, 56067, 0, 0, 0, 0, 0, 0, 0, 0),
(16008, 1008, 21848, 0, 0, 0, 0, 0, 0, 0, 0),
(16009, 1008, 26389, 0, 0, 0, 0, 0, 0, 0, 0),
(16010, 1008, 17468, 0, 0, 0, 0, 0, 0, 0, 0);

UPDATE `spell_template` SET `nameSubText` = 'Toy' WHERE `entry` IN (45030, 26265, 56067, 21848, 26389, 17468,  26389);

-- Move illusions to the toy tab.
-- 50017, 51200, 50439, 50408, 51201, 51203, 51205, 51206, 51207, 51208, 51065, 51066, 51067, 51253, 51209, 53008, 51836, 80694, 80648, 81145, 50435, 50436, 50437, 50438, 80175, 51215, 51210, 91792

UPDATE `item_template` SET `name` = 'Illusion: Blood Elf', `description` = 'This disguise will work until logout.' WHERE `entry` = 50017;
UPDATE `item_template` SET `name` = 'Illusion: Goblin', `description` = 'This disguise will work until logout.' WHERE `entry` = 51200;
UPDATE `item_template` SET `name` = 'Illusion: Harpy', `description` = 'This disguise will work until logout.' WHERE `entry` = 50439;
UPDATE `item_template` SET `name` = 'Illusion: Dryad', `description` = 'This disguise will work until logout.' WHERE `entry` = 50408;
UPDATE `item_template` SET `name` = 'Illusion: Worgen', `description` = 'This disguise will work until logout.' WHERE `entry` = 51201;
UPDATE `item_template` SET `name` = 'Illusion: High Elf', `description` = 'This disguise will work until logout.' WHERE `entry` = 51203;
UPDATE `item_template` SET `name` = 'Illusion: Ghost', `description` = 'This disguise will work until logout.' WHERE `entry` = 51205;
UPDATE `item_template` SET `name` = 'Illusion: Banshee', `description` = 'This disguise will work until logout.' WHERE `entry` = 51206;
UPDATE `item_template` SET `name` = 'Illusion: Serpent Lord', `description` = 'This disguise will work until logout.' WHERE `entry` = 51207;
UPDATE `item_template` SET `name` = 'Illusion: Succubus', `description` = 'This disguise will work until logout.' WHERE `entry` = 51208;
UPDATE `item_template` SET `name` = 'Illusion: Shadow', `description` = 'This disguise will work until logout.' WHERE `entry` = 51065;
UPDATE `item_template` SET `name` = 'Illusion: Flamewaker', `description` = 'This disguise will work until logout.' WHERE `entry` = 51066;
UPDATE `item_template` SET `name` = 'Illusion: Bone Serpent', `description` = 'This disguise will work until logout.' WHERE `entry` = 51067;
UPDATE `item_template` SET `name` = 'Illusion: Furbolg', `description` = 'This disguise will work until logout.' WHERE `entry` = 51253;
UPDATE `item_template` SET `name` = 'Illusion: Rat', `description` = 'This disguise will work until logout.' WHERE `entry` = 51209;
UPDATE `item_template` SET `name` = 'Illusion: Two-headed Ogre', `description` = 'This disguise will work until logout.' WHERE `entry` = 53008;
UPDATE `item_template` SET `name` = 'Illusion: Murloc', `description` = 'More than a fish, more than a man.' WHERE `entry` = 51836;
UPDATE `item_template` SET `name` = 'Illusion: Scourge', `description` = 'This disguise will work until logout.' WHERE `entry` = 80694;
UPDATE `item_template` SET `name` = 'Illusion: Gnoll', `description` = 'This disguise will work until logout.' WHERE `entry` = 80648;
UPDATE `item_template` SET `name` = 'Illusion: Pandaren', `description` = 'This disguise will work until logout.' WHERE `entry` = 81145;
UPDATE `item_template` SET `name` = 'Illusion: Dreadlord', `description` = 'This disguise will work until logout.' WHERE `entry` = 50435;
UPDATE `item_template` SET `name` = 'Illusion: Smolderthorn Berserker', `description` = 'This disguise will work until logout.' WHERE `entry` = 50436;
UPDATE `item_template` SET `name` = 'Illusion: Naga Explorer', `description` = 'This disguise will work until logout.' WHERE `entry` = 50437;
UPDATE `item_template` SET `name` = 'Illusion: Naga Siren', `description` = 'This disguise will work until logout.' WHERE `entry` = 50438;
UPDATE `item_template` SET `name` = 'Illusion: Chromie', `description` = 'Time works differently in Azeroth. It might be a good idea to check the time.' WHERE `entry` = 80175;
UPDATE `item_template` SET `name` = 'Illusion: Satyr', `description` = 'This disguise will work until logout.' WHERE `entry` = 51215;
UPDATE `item_template` SET `name` = 'Illusion: Green Dragonkin', `description` = 'This disguise will work until logout.' WHERE `entry` = 51210;
UPDATE `item_template` SET `name` = 'Illusion: Tiny Celestial Dragon', `description` = '' WHERE `entry` = 91792;


REPLACE INTO `spell_template` (`entry`, `school`, `category`, `castUI`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `attributesEx4`, `stances`, `stancesNot`, `targets`, `targetCreatureType`, `requiresSpellFocus`, `casterAuraState`, `targetAuraState`, `castingTimeIndex`, `recoveryTime`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `channelInterruptFlags`, `procFlags`, `procChance`, `procCharges`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `manCostPerLevel`, `manaPerSecond`, `manaPerSecondPerLevel`, `rangeIndex`, `speed`, `modelNextSpell`, `stackAmount`, `totem1`, `totem2`, `reagent1`, `reagent2`, `reagent3`, `reagent4`, `reagent5`, `reagent6`, `reagent7`, `reagent8`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `reagentCount4`, `reagentCount5`, `reagentCount6`, `reagentCount7`, `reagentCount8`, `equippedItemClass`, `equippedItemSubClassMask`, `equippedItemInventoryTypeMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectDicePerLevel1`, `effectDicePerLevel2`, `effectDicePerLevel3`, `effectRealPointsPerLevel1`, `effectRealPointsPerLevel2`, `effectRealPointsPerLevel3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectMechanic2`, `effectMechanic3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectImplicitTargetB3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectAmplitude1`, `effectAmplitude2`, `effectAmplitude3`, `effectMultipleValue1`, `effectMultipleValue2`, `effectMultipleValue3`, `effectChainTarget1`, `effectChainTarget2`, `effectChainTarget3`, `effectItemType1`, `effectItemType2`, `effectItemType3`, `effectMiscValue1`, `effectMiscValue2`, `effectMiscValue3`, `effectTriggerSpell1`, `effectTriggerSpell2`, `effectTriggerSpell3`, `effectPointsPerComboPoint1`, `effectPointsPerComboPoint2`, `effectPointsPerComboPoint3`, `spellVisual1`, `spellVisual2`, `spellIconId`, `activeIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `minTargetLevel`, `maxTargetLevel`, `spellFamilyName`, `spellFamilyFlags`, `maxAffectedTargets`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `minFactionId`, `minReputation`, `requiredAuraVision`, `customFlags`) VALUES (46003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 222, 0, 115, 0, 0, 'Add Illusion to Collection', 16712190, 'Collection', 16712190, 'Adds an illusion to the player\'s illusion collection.', 16712190, '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0);

REPLACE INTO `spell_template` (`entry`, `school`, `category`, `castUI`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `attributesEx4`, `stances`, `stancesNot`, `targets`, `targetCreatureType`, `requiresSpellFocus`, `casterAuraState`, `targetAuraState`, `castingTimeIndex`, `recoveryTime`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `channelInterruptFlags`, `procFlags`, `procChance`, `procCharges`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `manCostPerLevel`, `manaPerSecond`, `manaPerSecondPerLevel`, `rangeIndex`, `speed`, `modelNextSpell`, `stackAmount`, `totem1`, `totem2`, `reagent1`, `reagent2`, `reagent3`, `reagent4`, `reagent5`, `reagent6`, `reagent7`, `reagent8`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `reagentCount4`, `reagentCount5`, `reagentCount6`, `reagentCount7`, `reagentCount8`, `equippedItemClass`, `equippedItemSubClassMask`, `equippedItemInventoryTypeMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectDicePerLevel1`, `effectDicePerLevel2`, `effectDicePerLevel3`, `effectRealPointsPerLevel1`, `effectRealPointsPerLevel2`, `effectRealPointsPerLevel3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectMechanic2`, `effectMechanic3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectImplicitTargetB3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectAmplitude1`, `effectAmplitude2`, `effectAmplitude3`, `effectMultipleValue1`, `effectMultipleValue2`, `effectMultipleValue3`, `effectChainTarget1`, `effectChainTarget2`, `effectChainTarget3`, `effectItemType1`, `effectItemType2`, `effectItemType3`, `effectMiscValue1`, `effectMiscValue2`, `effectMiscValue3`, `effectTriggerSpell1`, `effectTriggerSpell2`, `effectTriggerSpell3`, `effectPointsPerComboPoint1`, `effectPointsPerComboPoint2`, `effectPointsPerComboPoint3`, `spellVisual1`, `spellVisual2`, `spellIconId`, `activeIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `minTargetLevel`, `maxTargetLevel`, `spellFamilyName`, `spellFamilyFlags`, `maxAffectedTargets`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `minFactionId`, `minReputation`, `requiredAuraVision`, `customFlags`) VALUES 

(31960, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31961, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31962, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31963, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31964, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31965, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31966, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31967, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31968, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31969, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31970, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31971, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31972, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31973, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31974, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31975, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31976, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31977, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31978, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31979, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31980, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31981, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31982, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31983, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31984, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31985, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31986, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0),
(31987, 0, 0, 0, 0, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 'Illusion', 16712190, '', 16712190, 'Alters your appearance! Active until cancelled.', 16712190, 'Appearance altered.', 16712190, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0);

UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Blood Elf' 				WHERE `entry` = 31960 ; -- ITEM ID: 50017;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Goblin' 					WHERE `entry` = 31961 ; -- ITEM ID: 51200;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Harpy' 					WHERE `entry` = 31962 ; -- ITEM ID: 50439;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Dryad' 					WHERE `entry` = 31963 ; -- ITEM ID: 50408;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Worgen' 					WHERE `entry` = 31964 ; -- ITEM ID: 51201;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: High Elf' 				WHERE `entry` = 31965 ; -- ITEM ID: 51203;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Ghost' 					WHERE `entry` = 31966 ; -- ITEM ID: 51205;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Banshee'					WHERE `entry` = 31967 ; -- ITEM ID: 51206;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Serpent Lord'				WHERE `entry` = 31968 ; -- ITEM ID: 51207;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Succubus' 				WHERE `entry` = 31969 ; -- ITEM ID: 51208;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Shadow'					WHERE `entry` = 31970 ; -- ITEM ID: 51065;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Flamewaker' 				WHERE `entry` = 31971 ; -- ITEM ID: 51066;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Bone Serpent' 			WHERE `entry` = 31972 ; -- ITEM ID: 51067;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Furbolg' 					WHERE `entry` = 31973 ; -- ITEM ID: 51253;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Rat' 						WHERE `entry` = 31974 ; -- ITEM ID: 51209;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Two-headed Ogre'			WHERE `entry` = 31975 ; -- ITEM ID: 53008;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Murloc' 					WHERE `entry` = 31976 ; -- ITEM ID: 51836;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Scourge' 					WHERE `entry` = 31977 ; -- ITEM ID: 80694;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Gnoll' 					WHERE `entry` = 31978 ; -- ITEM ID: 80648;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Pandaren' 				WHERE `entry` = 31979 ; -- ITEM ID: 81145;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Dreadlord' 				WHERE `entry` = 31980 ; -- ITEM ID: 50435;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Smolderthorn Berserker' 	WHERE `entry` = 31981 ; -- ITEM ID: 50436;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Naga Explorer' 			WHERE `entry` = 31982 ; -- ITEM ID: 50437;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Naga Siren' 				WHERE `entry` = 31983 ; -- ITEM ID: 50438;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Chromie' 					WHERE `entry` = 31984 ; -- ITEM ID: 80175;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Satyr' 					WHERE `entry` = 31985 ; -- ITEM ID: 51215;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Green Dragonkin'			WHERE `entry` = 31986 ; -- ITEM ID: 51210;
UPDATE `spell_template` SET `nameSubText` = 'Toy', `spellIconId` = 497, `name` = 'Illusion: Tiny Celestial Dragon'	WHERE `entry` = 31987 ; -- ITEM ID: 91792;

REPLACE INTO `collection_toy` (`spellId`, `itemId`) VALUES 
(31960, 50017),
(31961, 51200),
(31962, 50439),
(31963, 50408),
(31964, 51201),
(31965, 51203),
(31966, 51205),
(31967, 51206),
(31968, 51207),
(31969, 51208),
(31970, 51065),
(31971, 51066),
(31972, 51067),
(31973, 51253),
(31974, 51209),
(31975, 53008),
(31976, 51836),
(31977, 80694),
(31978, 80648),
(31979, 81145),
(31980, 50435),
(31981, 50436),
(31982, 50437),
(31983, 50438),
(31984, 80175),
(31985, 51215),
(31986, 51210),
(31987, 91792);

REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES 
(16011, 1008, 31960, 0, 0, 0, 0, 0, 0, 0, 0), 
(16012, 1008, 31961, 0, 0, 0, 0, 0, 0, 0, 0), 
(16013, 1008, 31962, 0, 0, 0, 0, 0, 0, 0, 0), 
(16014, 1008, 31963, 0, 0, 0, 0, 0, 0, 0, 0), 
(16015, 1008, 31964, 0, 0, 0, 0, 0, 0, 0, 0), 
(16016, 1008, 31965, 0, 0, 0, 0, 0, 0, 0, 0), 
(16017, 1008, 31966, 0, 0, 0, 0, 0, 0, 0, 0), 
(16018, 1008, 31967, 0, 0, 0, 0, 0, 0, 0, 0), 
(16019, 1008, 31968, 0, 0, 0, 0, 0, 0, 0, 0), 
(16020, 1008, 31969, 0, 0, 0, 0, 0, 0, 0, 0), 
(16021, 1008, 31970, 0, 0, 0, 0, 0, 0, 0, 0), 
(16022, 1008, 31971, 0, 0, 0, 0, 0, 0, 0, 0), 
(16023, 1008, 31972, 0, 0, 0, 0, 0, 0, 0, 0), 
(16024, 1008, 31973, 0, 0, 0, 0, 0, 0, 0, 0), 
(16025, 1008, 31974, 0, 0, 0, 0, 0, 0, 0, 0), 
(16026, 1008, 31975, 0, 0, 0, 0, 0, 0, 0, 0), 
(16027, 1008, 31976, 0, 0, 0, 0, 0, 0, 0, 0), 
(16028, 1008, 31977, 0, 0, 0, 0, 0, 0, 0, 0), 
(16029, 1008, 31978, 0, 0, 0, 0, 0, 0, 0, 0), 
(16030, 1008, 31979, 0, 0, 0, 0, 0, 0, 0, 0), 
(16031, 1008, 31980, 0, 0, 0, 0, 0, 0, 0, 0), 
(16032, 1008, 31981, 0, 0, 0, 0, 0, 0, 0, 0), 
(16033, 1008, 31982, 0, 0, 0, 0, 0, 0, 0, 0), 
(16034, 1008, 31983, 0, 0, 0, 0, 0, 0, 0, 0), 
(16035, 1008, 31984, 0, 0, 0, 0, 0, 0, 0, 0), 
(16036, 1008, 31985, 0, 0, 0, 0, 0, 0, 0, 0), 
(16037, 1008, 31986, 0, 0, 0, 0, 0, 0, 0, 0), 
(16038, 1008, 31987, 0, 0, 0, 0, 0, 0, 0, 0);
