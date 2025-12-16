-- Expanding the toy collection:

-- Orb of Deception
SET @name = 'Orb of Deception';
SET @item_id = 1973;
SET @spell_id = 16739;
SET @skill_entry = 16040;
SET @spell_icon = 1595;

REPlACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (@item_id, @spell_id);
UPDATE `item_template` SET `spellid_1` = 46096 WHERE `entry` = @item_id;
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (@skill_entry, 1008, @spell_id, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `spell_template` SET `name` = @name, `spelliconid` = @spell_icon WHERE `entry` = @spell_id;


-- Carved Ogre Idol
SET @name = 'Carved Ogre Idol';
SET @item_id = 23716;
SET @spell_id = 30167;
SET @skill_entry = 16041;
SET @spell_icon =  2320;

REPlACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (@item_id, @spell_id);
UPDATE `item_template` SET `spellid_1` = 46096 WHERE `entry` = @item_id;
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (@skill_entry, 1008, @spell_id, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `spell_template` SET `name` = @name, `spelliconid` = @spell_icon WHERE `entry` = @spell_id;


-- Everlasting Firework
SET @name = 'Everlasting Firework';
SET @item_id = 23714;
SET @spell_id = 25465;
SET @skill_entry = 16042;
SET @spell_icon = 2319;

REPlACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (@item_id, @spell_id);
UPDATE `item_template` SET `spellid_1` = 46096 WHERE `entry` = @item_id;
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (@skill_entry, 1008, @spell_id, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `spell_template` SET `name` = @name, `spelliconid` = @spell_icon WHERE `entry` = @spell_id;

REPLACE INTO `spell_template` (`entry`, `school`, `category`, `castUI`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `attributesEx4`, `stances`, `stancesNot`, `targets`, `targetCreatureType`, `requiresSpellFocus`, `casterAuraState`, `targetAuraState`, `castingTimeIndex`, `recoveryTime`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `channelInterruptFlags`, `procFlags`, `procChance`, `procCharges`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `manCostPerLevel`, `manaPerSecond`, `manaPerSecondPerLevel`, `rangeIndex`, `speed`, `modelNextSpell`, `stackAmount`, `totem1`, `totem2`, `reagent1`, `reagent2`, `reagent3`, `reagent4`, `reagent5`, `reagent6`, `reagent7`, `reagent8`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `reagentCount4`, `reagentCount5`, `reagentCount6`, `reagentCount7`, `reagentCount8`, `equippedItemClass`, `equippedItemSubClassMask`, `equippedItemInventoryTypeMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectDicePerLevel1`, `effectDicePerLevel2`, `effectDicePerLevel3`, `effectRealPointsPerLevel1`, `effectRealPointsPerLevel2`, `effectRealPointsPerLevel3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectMechanic2`, `effectMechanic3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectImplicitTargetB3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectAmplitude1`, `effectAmplitude2`, `effectAmplitude3`, `effectMultipleValue1`, `effectMultipleValue2`, `effectMultipleValue3`, `effectChainTarget1`, `effectChainTarget2`, `effectChainTarget3`, `effectItemType1`, `effectItemType2`, `effectItemType3`, `effectMiscValue1`, `effectMiscValue2`, `effectMiscValue3`, `effectTriggerSpell1`, `effectTriggerSpell2`, `effectTriggerSpell3`, `effectPointsPerComboPoint1`, `effectPointsPerComboPoint2`, `effectPointsPerComboPoint3`, `spellVisual1`, `spellVisual2`, `spellIconId`, `activeIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `minTargetLevel`, `maxTargetLevel`, `spellFamilyName`, `spellFamilyFlags`, `maxAffectedTargets`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `minFactionId`, `minReputation`, `requiredAuraVision`, `customFlags`) VALUES (7545, 0, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 6, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Increased 1H Mace', 4128894, '', 8323196, 'Increased Maces +$s1.', 4128894, '', 4128892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);

-- Music Scrolls:

UPDATE `item_template` SET `spellid_1` = 46096, description = '' WHERE `name` like '%music:%';

REPlACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (70043, 57531); -- Music: Winds of Kamio
REPlACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (70080, 57532); -- Music: Emerald Dream
REPlACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (70084, 57536); -- Music: Jaguero Isle
REPlACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (70083, 57535); -- Music: Hyjal Summit
REPlACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (70082, 57534); -- Music: Hourglass of Eternity
REPlACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (70081, 57533); -- Music: Bells of the Dawn
REPlACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (70085, 57537); -- Music: Stratholme's Best Days
REPlACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (70086, 57538); -- Music: Titanic Mystery
REPlACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (70087, 57539); -- Music: Aerie Peak
REPlACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (70088, 57540); -- Music: Hateforge Quarry Interior
REPlACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (70090, 57541); -- Music: Bastion
REPlACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (70091, 57542); -- Music: Hateforge Quarry Exterior
REPlACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (70092, 57544); -- Music: Stormwind Vault
REPlACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (70094, 57545); -- Music: Dun Argath
REPlACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (70095, 57546); -- Music: Snowing in the Vale

UPDATE `spell_template` SET `spelliconid` = 1733, attributes = 0, `name` = 'Jukebox: Winds of Kamio' WHERE `entry` = 57531;
UPDATE `spell_template` SET `spelliconid` = 1733, attributes = 0, `name` = 'Jukebox: Emerald Dream' WHERE `entry` = 57532;
UPDATE `spell_template` SET `spelliconid` = 1733, attributes = 0, `name` = 'Jukebox: Bells of the Dawn' WHERE `entry` = 57533;
UPDATE `spell_template` SET `spelliconid` = 1733, attributes = 0, `name` = 'Jukebox: Hourglass of Eternity' WHERE `entry` = 57534;
UPDATE `spell_template` SET `spelliconid` = 1733, attributes = 0, `name` = 'Jukebox: Hyjal Summit' WHERE `entry` = 57535;
UPDATE `spell_template` SET `spelliconid` = 1733, attributes = 0, `name` = 'Jukebox: Jaguero Isle' WHERE `entry` = 57536;
UPDATE `spell_template` SET `spelliconid` = 1733, attributes = 0, `name` = 'Jukebox: Stratholme''s Best Days' WHERE `entry` = 57537;
UPDATE `spell_template` SET `spelliconid` = 1733, attributes = 0, `name` = 'Jukebox: Titanic Mystery' WHERE `entry` = 57538;
UPDATE `spell_template` SET `spelliconid` = 1733, attributes = 0, `name` = 'Jukebox: Aerie Peak' WHERE `entry` = 57539;
UPDATE `spell_template` SET `spelliconid` = 1733, attributes = 0, `name` = 'Jukebox: Hateforge Quarry' WHERE `entry` = 57540;
UPDATE `spell_template` SET `spelliconid` = 1733, attributes = 0, `name` = 'Jukebox: Bastion' WHERE `entry` = 57541;
UPDATE `spell_template` SET `spelliconid` = 1733, attributes = 0, `name` = 'Jukebox: Ιntraworld Ιmmortality' WHERE `entry` = 57542;
UPDATE `spell_template` SET `spelliconid` = 1733, attributes = 0, `name` = 'Jukebox: Sparkwater Port' WHERE `entry` = 57543;
UPDATE `spell_template` SET `spelliconid` = 1733, attributes = 0, `name` = 'Jukebox: Stormwind Vault' WHERE `entry` = 57544;
UPDATE `spell_template` SET `spelliconid` = 1733, attributes = 0, `name` = 'Jukebox: Dun Argath' WHERE `entry` = 57545;
UPDATE `spell_template` SET `spelliconid` = 1733, attributes = 0, `name` = 'Jukebox: Snowing in the Vale' WHERE `entry` =  57546;

UPDATE `spell_template` SET `description` = 'Feel the rhythm of the Winds of Kamio.' WHERE `entry` = 57531;
UPDATE `spell_template` SET `description` = 'Feel the rhythm of the Emerald Dream.' WHERE `entry` = 57532;
UPDATE `spell_template` SET `description` = 'Feel the rhythm of the Bells of the Dawn.' WHERE `entry` = 57533;
UPDATE `spell_template` SET `description` = 'Feel the rhythm of the Hourglass of Eternity.' WHERE `entry` = 57534;
UPDATE `spell_template` SET `description` = 'Feel the rhythm of the Hyjal Summit.' WHERE `entry` = 57535;
UPDATE `spell_template` SET `description` = 'Feel the rhythm of the Jaguero Isle.' WHERE `entry` = 57536;
UPDATE `spell_template` SET `description` = 'Feel the rhythm of the Stratholme\'s Best Days.' WHERE `entry` = 57537;
UPDATE `spell_template` SET `description` = 'Feel the rhythm of the Titanic Mystery.' WHERE `entry` = 57538;
UPDATE `spell_template` SET `description` = 'Feel the rhythm of the Aerie Peak.' WHERE `entry` = 57539;
UPDATE `spell_template` SET `description` = 'Feel the rhythm of the Hateforge Quarry.' WHERE `entry` = 57540;
UPDATE `spell_template` SET `description` = 'Feel the rhythm of the Bastion' WHERE `entry` = 57541;
UPDATE `spell_template` SET `description` = 'Feel the rhythm of the Ιntraworld Ιmmortality.' WHERE `entry` = 57542;
UPDATE `spell_template` SET `description` = 'Feel the rhythm of the Sparkwater Port.' WHERE `entry` = 57543;
UPDATE `spell_template` SET `description` = 'Feel the rhythm of the Stormwind Vault.' WHERE `entry` = 57544;
UPDATE `spell_template` SET `description` = 'Feel the rhythm of the Dun Argath.' WHERE `entry` = 57545;
UPDATE `spell_template` SET `description` = 'Feel the rhythm of the Snowing in the Vale.' WHERE `entry` = 57546;

REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (16043, 1008, 57531, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (16044, 1008, 57532, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (16045, 1008, 57533, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (16046, 1008, 57534, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (16047, 1008, 57535, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (16048, 1008, 57536, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (16049, 1008, 57537, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (16050, 1008, 57538, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (16051, 1008, 57539, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (16052, 1008, 57540, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (16053, 1008, 57541, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (16054, 1008, 57542, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (16055, 1008, 57543, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (16056, 1008, 57544, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (16057, 1008, 57545, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (16059, 1008, 57546, 0, 0, 0, 0, 0, 0, 0, 0);