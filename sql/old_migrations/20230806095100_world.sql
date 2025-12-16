-- ITEM 50079 (Island Frog) set drop to the following NPCS with a drop chance of 0.08%
-- 91857
-- 91858
-- 91860
-- 91833
-- 91844
-- 91835
-- 92146
-- 91962
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(91857, 50079, 0.08, 9, 1, 1, 0),
(91858, 50079, 0.08, 9, 1, 1, 0),
(91860, 50079, 0.08, 9, 1, 1, 0),
(91833, 50079, 0.08, 9, 1, 1, 0),
(91844, 50079, 0.08, 9, 1, 1, 0),
(91835, 50079, 0.08, 9, 1, 1, 0),
(92146, 50079, 0.08, 9, 1, 1, 0),
(91962, 50079, 0.08, 9, 1, 1, 0);
-- ITEM 54000 (Azure Frog) set drop to the following NPCS with a drop chance of 0.08%
-- 60909
-- 60910
-- 10659
-- 10660
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(60909, 54000, 0.08, 9, 1, 1, 0),
(60910, 54000, 0.08, 9, 1, 1, 0),
(10659, 54000, 0.08, 9, 1, 1, 0),
(10660, 54000, 0.08, 9, 1, 1, 0);
-- ITEM 54001 (Dream Frog) set drop to the following NPCS with a drop chance of 0.08%
-- 60742
-- 60743
-- 60744
-- 60745
-- 60746
-- 61212
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(60742, 54001, 0.08, 9, 1, 1, 0),
(60743, 54001, 0.08, 9, 1, 1, 0),
(60744, 54001, 0.08, 9, 1, 1, 0),
(60745, 54001, 0.08, 9, 1, 1, 0),
(60746, 54001, 0.08, 9, 1, 1, 0),
(61212, 54001, 0.08, 9, 1, 1, 0);
-- ITEM 54003 (Infinite Frog) set drop to the following NPCS with a drop chance of 0.03% , change item 54003 to be bind on use
-- 65100
-- 65101
-- 65102
-- 65103
-- 65104
-- 65105
update item_template set bonding = 3 where entry = 54003;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(65100, 54003, 0.03, 8, 1, 1, 0),
(65101, 54003, 0.03, 8, 1, 1, 0),
(65102, 54003, 0.03, 8, 1, 1, 0),
(65103, 54003, 0.03, 8, 1, 1, 0),
(65104, 54003, 0.03, 8, 1, 1, 0),
(65105, 54003, 0.03, 8, 1, 1, 0);
-- ITEM 54004 (Poison Frog) set drop to the following NPCS with a drop chance of 0.09%, change item 54004 to be bind on use
-- 8603
-- 8522
-- 8521
-- 8598
-- 8543
-- 8540
-- 8532
-- 8605
update item_template set bonding = 3 where entry = 54004;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(8603, 54004, 0.09, 9, 1, 1, 0),
(8522, 54004, 0.09, 9, 1, 1, 0),
(8521, 54004, 0.09, 9, 1, 1, 0),
(8598, 54004, 0.09, 9, 1, 1, 0),
(8543, 54004, 0.09, 9, 1, 1, 0),
(8540, 54004, 0.09, 9, 1, 1, 0),
(8532, 54004, 0.09, 9, 1, 1, 0),
(8605, 54004, 0.09, 9, 1, 1, 0);
-- ITEM 54005 (Snow Frog) set drop to the following NPCS with a drop chance of 0.03% , change item 54005 to be bind on use
-- 7438
-- 7439
-- 7440
-- 7441
-- 7442
update item_template set bonding = 3 where entry = 54005;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(7438, 54005, 0.03, 9, 1, 1, 0),
(7439, 54005, 0.03, 9, 1, 1, 0),
(7440, 54005, 0.03, 9, 1, 1, 0),
(7441, 54005, 0.03, 9, 1, 1, 0),
(7442, 54005, 0.03, 9, 1, 1, 0);
-- ITEM 54007 (Gold Frog) set drop to the following NPCS with a drop chance of 0.05%, change item 54007 to be bind on use
-- 61083
-- 61084
-- 61085
-- 61086
-- 61087
-- 61088
-- 61129
-- 61130
-- 61131
-- 61079
update item_template set bonding = 3 where entry = 54007;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61083, 54007, 0.05, 9, 1, 1, 0),
(61084, 54007, 0.05, 9, 1, 1, 0),
(61085, 54007, 0.05, 9, 1, 1, 0),
(61086, 54007, 0.05, 9, 1, 1, 0),
(61087, 54007, 0.05, 9, 1, 1, 0),
(61088, 54007, 0.05, 9, 1, 1, 0),
(61129, 54007, 0.05, 9, 1, 1, 0),
(61130, 54007, 0.05, 9, 1, 1, 0),
(61131, 54007, 0.05, 9, 1, 1, 0),
(61079, 54007, 0.05, 9, 1, 1, 0);
-- ITEM 54002 (Bullfrog) add to the vendor list of Dirge Quikcleave (entry 8125) with 1 stock and a respawn of 1 hr
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES
(8125, 54002, 1, 3600, 0, 0);
-- Item 54008 add to the sell list of creature 11874 (Masat T'andr) with a stock of 2 and a respawn rate of 1hr
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES
(11874, 54008, 2, 3600, 0, 0);
-- Enable gameobjects: (These are displayid entries, you need to create new ones)
-- 33259 - world\generic\PVP\OilRigs\BF2_OilTower_01.m2
-- 33260 - world\generic\PVP\OilRigs\BF2_OilTower_02.m2
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2020060, 5, 33259, 'World Generic PVP OilRigs BF2_OilTower_01.mdx', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2020061, 5, 33260, 'World Generic PVP OilRigs BF2_OilTower_02.mdx', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- NPC Rashi Goldtongue <DJ> - Displayid 20440 - faction 855 - level 42 - Gossip text: Yo pal! Welcome to my studio! it is a little crowded but I make due. You are talkin' to Rashi Goldtongue, the DJ broadcasting live from Everlook! Tune in to my show sometime aight?
REPLACE INTO `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `phase_quest_id`, `script_name`) VALUES
(61641, 20440, 0, 0, 0, 0, 'DJ Rashi Goldtongue', 'Everlook Broadcasting Co.', 0, 42, 42, 2882, 2882, 0, 0, 2246, 855, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 64, 79, 0, 172, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 58.7664, 80.8038, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `phase_quest_id`, `script_name`) VALUES (61642, 7192, 7193, 7194, 0, 0, 'Radio Technician', NULL, 0, 30, 30, 1002, 1002, 0, 0, 1200, 35, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 1, 1, 0, 0, 3, 4429, 0, 0, 0, 0, 0, 0, '');

UPDATE `creature_template` SET `movement_type` = 0 WHERE `entry` = 61642;

set @gossip_menu_id = 41540; set @magic_number = 61641;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Yo pal! Welcome to my studio! It is a little crowded, but I make due.\n\nYou are talkin\' to Rashi Goldtongue, the DJ broadcasting live from Everlook! Tune in to my show sometime, aight?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

UPDATE `spell_template` SET `school` = 3, `category` = 0, `castUI` = 0, `dispel` = 1, `mechanic` = 0, `attributes` = 0, `attributesEx` = 0, `attributesEx2` = 0, `attributesEx3` = 0, `attributesEx4` = 0, `stances` = 0, `stancesNot` = 0, `targets` = 0, `targetCreatureType` = 0, `requiresSpellFocus` = 0, `casterAuraState` = 0, `targetAuraState` = 0, `castingTimeIndex` = 1, `recoveryTime` = 0, `categoryRecoveryTime` = 0, `interruptFlags` = 0, `auraInterruptFlags` = 0, `channelInterruptFlags` = 0, `procFlags` = 87376, `procChance` = 100, `procCharges` = 1, `maxLevel` = 0, `baseLevel` = 0, `spellLevel` = 0, `durationIndex` = 8, `powerType` = 0, `manaCost` = 0, `manCostPerLevel` = 0, `manaPerSecond` = 0, `manaPerSecondPerLevel` = 0, `rangeIndex` = 1, `speed` = 0, `modelNextSpell` = 0, `stackAmount` = 0, `totem1` = 0, `totem2` = 0, `reagent1` = 0, `reagent2` = 0, `reagent3` = 0, `reagent4` = 0, `reagent5` = 0, `reagent6` = 0, `reagent7` = 0, `reagent8` = 0, `reagentCount1` = 0, `reagentCount2` = 0, `reagentCount3` = 0, `reagentCount4` = 0, `reagentCount5` = 0, `reagentCount6` = 0, `reagentCount7` = 0, `reagentCount8` = 0, `equippedItemClass` = -1, `equippedItemSubClassMask` = 0, `equippedItemInventoryTypeMask` = 0, `effect1` = 6, `effect2` = 6, `effect3` = 0, `effectDieSides1` = 1, `effectDieSides2` = 1, `effectDieSides3` = 0, `effectBaseDice1` = 1, `effectBaseDice2` = 1, `effectBaseDice3` = 0, `effectDicePerLevel1` = 0, `effectDicePerLevel2` = 0, `effectDicePerLevel3` = 0, `effectRealPointsPerLevel1` = 0, `effectRealPointsPerLevel2` = 0, `effectRealPointsPerLevel3` = 0, `effectBasePoints1` = -501, `effectBasePoints2` = -501, `effectBasePoints3` = 0, `effectBonusCoefficient1` = 1, `effectBonusCoefficient2` = -1, `effectBonusCoefficient3` = -1, `effectMechanic1` = 0, `effectMechanic2` = 0, `effectMechanic3` = 0, `effectImplicitTargetA1` = 1, `effectImplicitTargetA2` = 1, `effectImplicitTargetA3` = 0, `effectImplicitTargetB1` = 0, `effectImplicitTargetB2` = 0, `effectImplicitTargetB3` = 0, `effectRadiusIndex1` = 0, `effectRadiusIndex2` = 0, `effectRadiusIndex3` = 0, `effectApplyAuraName1` = 107, `effectApplyAuraName2` = 107, `effectApplyAuraName3` = 0, `effectAmplitude1` = 0, `effectAmplitude2` = 0, `effectAmplitude3` = 0, `effectMultipleValue1` = 0, `effectMultipleValue2` = 0, `effectMultipleValue3` = 0, `effectChainTarget1` = 0, `effectChainTarget2` = 0, `effectChainTarget3` = 0, `effectItemType1` = 4294967295, `effectItemType2` = 4294967295, `effectItemType3` = 0, `effectMiscValue1` = 10, `effectMiscValue2` = 21, `effectMiscValue3` = 0, `effectTriggerSpell1` = 0, `effectTriggerSpell2` = 0, `effectTriggerSpell3` = 0, `effectPointsPerComboPoint1` = 0, `effectPointsPerComboPoint2` = 0, `effectPointsPerComboPoint3` = 0, `spellVisual1` = 0, `spellVisual2` = 0, `spellIconId` = 10, `activeIconId` = 0, `spellPriority` = 0, `name` = 'Nature\'s Grace', `nameFlags` = 16712190, `nameSubtext` = '', `nameSubtextFlags` = 16712190, `description` = '', `descriptionFlags` = 16712190, `auraDescription` = 'The casting time and global cooldown of your next spell is reduced by $/1000;S1 sec.', `auraDescriptionFlags` = 16712190, `manaCostPercentage` = 0, `startRecoveryCategory` = 0, `startRecoveryTime` = 0, `minTargetLevel` = 0, `maxTargetLevel` = 0, `spellFamilyName` = 7, `spellFamilyFlags` = 0, `maxAffectedTargets` = 0, `dmgClass` = 1, `preventionType` = 1, `stanceBarOrder` = 0, `dmgMultiplier1` = 1, `dmgMultiplier2` = 0, `dmgMultiplier3` = 0, `minFactionId` = 0, `minReputation` = 0, `requiredAuraVision` = 0, `customFlags` = 0 WHERE `entry` = 16886;
UPDATE `spell_template` SET `auraDescription` = 'Increases speed based on your Riding skill.' WHERE `entry` = 23510;

-- fix
update spell_template SET name = 'Armor +32/Stamina +4', description = 'Permanently increase the armor value of an item worn on the chest, legs, hands or feet by 32 and Stamina by 4. Only usable on items level 25 and above.' WHERE entry = 10344; -- Armor +32 (Thick Armor Kit)

UPDATE `spell_template` SET `effectBonusCoefficient2` = 1 WHERE `entry` = 16886;