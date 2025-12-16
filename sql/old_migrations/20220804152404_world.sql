replace into skill_line_ability (id, skill_id, spell_id, race_mask, class_mask, req_skill_value, superseded_by_spell, learn_on_get_skill, max_value, min_value, req_train_points) values (36364, 165, 47035, 0, 0, 1, 0, 0, 340, 300, 0);

-- Jamey wants new cute mounts to simp for girls:
replace into item_template values
(83475, 15, 4, 'Lovely Pink Pony', '', 13108, 3, 80, 1, 0, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46499, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, ''),
(83476, 15, 4, 'Lovely Pink Furline', '', 23606, 3, 80, 1, 0, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46499, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, ''),
(83477, 15, 4, 'Lovely Pink Talbuk', '', 23358, 3, 80, 1, 0, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46499, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, '');

replace into creature_template (entry, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, phase_quest_id, script_name) VALUES (50595, 18815, 0, 0, 0, 'Lovely Pink Talbuk', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

replace into creature_display_info_addon (display_id) values (18815);

replace into spell_template (entry, school, category, castUI, dispel, mechanic, attributes, attributesEx, attributesEx2, attributesEx3, attributesEx4, stances, stancesNot, targets, targetCreatureType, requiresSpellFocus, casterAuraState, targetAuraState, castingTimeIndex, recoveryTime, categoryRecoveryTime, interruptFlags, auraInterruptFlags, channelInterruptFlags, procFlags, procChance, procCharges, maxLevel, baseLevel, spellLevel, durationIndex, powerType, manaCost, manCostPerLevel, manaPerSecond, manaPerSecondPerLevel, rangeIndex, speed, modelNextSpell, stackAmount, totem1, totem2, reagent1, reagent2, reagent3, reagent4, reagent5, reagent6, reagent7, reagent8, reagentCount1, reagentCount2, reagentCount3, reagentCount4, reagentCount5, reagentCount6, reagentCount7, reagentCount8, equippedItemClass, equippedItemSubClassMask, equippedItemInventoryTypeMask, effect1, effect2, effect3, effectDieSides1, effectDieSides2, effectDieSides3, effectBaseDice1, effectBaseDice2, effectBaseDice3, effectDicePerLevel1, effectDicePerLevel2, effectDicePerLevel3, effectRealPointsPerLevel1, effectRealPointsPerLevel2, effectRealPointsPerLevel3, effectBasePoints1, effectBasePoints2, effectBasePoints3, effectBonusCoefficient1, effectBonusCoefficient2, effectBonusCoefficient3, effectMechanic1, effectMechanic2, effectMechanic3, effectImplicitTargetA1, effectImplicitTargetA2, effectImplicitTargetA3, effectImplicitTargetB1, effectImplicitTargetB2, effectImplicitTargetB3, effectRadiusIndex1, effectRadiusIndex2, effectRadiusIndex3, effectApplyAuraName1, effectApplyAuraName2, effectApplyAuraName3, effectAmplitude1, effectAmplitude2, effectAmplitude3, effectMultipleValue1, effectMultipleValue2, effectMultipleValue3, effectChainTarget1, effectChainTarget2, effectChainTarget3, effectItemType1, effectItemType2, effectItemType3, effectMiscValue1, effectMiscValue2, effectMiscValue3, effectTriggerSpell1, effectTriggerSpell2, effectTriggerSpell3, effectPointsPerComboPoint1, effectPointsPerComboPoint2, effectPointsPerComboPoint3, spellVisual1, spellVisual2, spellIconId, activeIconId, spellPriority, name, nameFlags, nameSubtext, nameSubtextFlags, description, descriptionFlags, auraDescription, auraDescriptionFlags, manaCostPercentage, startRecoveryCategory, startRecoveryTime, minTargetLevel, maxTargetLevel, spellFamilyName, spellFamilyFlags, maxAffectedTargets, dmgClass, preventionType, stanceBarOrder, dmgMultiplier1, dmgMultiplier2, dmgMultiplier3, minFactionId, minReputation, requiredAuraVision, customFlags) VALUES (46539, 0, 0, 0, 0, 21, 269582608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 31, 128, 0, 0, 101, 0, 0, 0, 1, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 6, 6, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, -1, -1, -1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 78, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50595, 0, 0, 0, 0, 0, 0, 0, 0, 1703, 0, 115, 0, 0, 'Lovely Pink Talbuk', 16712190, '', 16712190, 'Summons and dismisses a rideable talbuk. This mount changes based on your Riding skill.', 16712190, 'Increases speed based on your Riding skill.', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);

update skill_line_ability set spell_id = 46539 where id = 36294;

-- Hardcore mount reward:

-- update item_template set name = 'Mysterious Warp Stalker' where entry = 80692;
-- update creature_template set display_id1 = 18567, name = 'Mysterious Warp Stalker' where entry = 80160;
-- update spell_template set name = 'Mysterious Warp Stalker', description = 'Summons and dismisses a rideable Warp Stalker. This mount changes depending on your Riding skill.', spellvisual1 = 1705, spelliconid = 214 where entry = 46216;

-- Misc. DB fixes:

update item_template set spelltrigger_1 = 1, spelltrigger_3 = 0 where entry = 65003;

-- Misc spell fixes from Moon:

UPDATE spell_template SET `castingTimeIndex` = 6 WHERE `entry` = 47330;
UPDATE spell_template SET `castingTimeIndex` = 6 WHERE `entry` = 47331;
UPDATE spell_template SET `castingTimeIndex` = 6 WHERE `entry` = 47332;
UPDATE spell_template SET `castingTimeIndex` = 6 WHERE `entry` = 47333;
UPDATE spell_template SET `castingTimeIndex` = 6 WHERE `entry` = 47334;
UPDATE spell_template SET `castingTimeIndex` = 6 WHERE `entry` = 47335;
UPDATE spell_template SET `castingTimeIndex` = 6 WHERE `entry` = 47336;
UPDATE spell_template SET `effectBasePoints1` = 86 WHERE `entry` = 45599;
UPDATE spell_template SET `effectBasePoints1` = 104 WHERE `entry` = 45960;
UPDATE spell_template SET `effect1` = 17 WHERE `entry` = 45599;
UPDATE spell_template SET `effect1` = 17 WHERE `entry` = 45960;
UPDATE spell_template SET `spellIconId` = 2264 WHERE `entry` = 49509;
UPDATE spell_template SET `spellIconId` = 2266 WHERE `entry` = 46216;
UPDATE spell_template SET `spellIconId` = 2240 WHERE `entry` = 45652;
UPDATE spell_template SET `spellIconId` = 2275 WHERE `entry` = 47262;
UPDATE spell_template SET `spellIconId` = 2240 WHERE `entry` = 45664;
UPDATE spell_template SET `spellIconId` = 2277 WHERE `entry` = 45513;
UPDATE spell_template SET `spellIconId` = 2157 WHERE `entry` = 47340;
UPDATE spell_template SET `spellIconId` = 2273 WHERE `entry` = 45514;
UPDATE spell_template SET `spellIconId` = 2273 WHERE `entry` = 45519;
UPDATE spell_template SET `spellIconId` = 2273 WHERE `entry` = 45520;
UPDATE spell_template SET `spellIconId` = 2240 WHERE `entry` = 47337;
UPDATE spell_template SET `spellIconId` = 2253 WHERE `entry` = 46203;