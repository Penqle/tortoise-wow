-- ================================================================
-- 野兽戒律 (Bestial Discipline) v2 完整修复
-- Bug: ID 19590/19592 的 Effect 1 (集中值回复) 因 aura 类型错误完全无效
--      且缺少 spell_affect 掩码导致 Effect 2 (CD减免) 无法匹配技能
--      v1 改用 PERIODIC_ENERGIZE+CASTER_PET 但 aura 无法持久化
-- 修复(v2): Effect 1 改用 DUMMY aura 在玩家身上，通过 PetAura 系统
--        (spell_pet_auras) 触发新法术 36000/36001 在宠物身上施加
--        PERIODIC_ENERGIZE，宠物召唤/复活时自动重新施加
-- 日期: 2026-06-11 (v2)
-- ================================================================

-- 备份
CREATE TABLE IF NOT EXISTS _backup_bestial_20260610
SELECT * FROM spell_template WHERE entry IN (19590, 19592);
CREATE TABLE IF NOT EXISTS _backup_bestial_persistence_20260611
SELECT * FROM spell_template WHERE entry IN (19590, 19592);

-- Effect 1: 集中值回复 (v2 - PetAura 持久化方案)
-- v1: effectApplyAuraName1=24(PERIODIC_ENERGIZE), target=5(CASTER_PET)
--     问题: _SaveAuras 过滤 TARGET_UNIT_CASTER_PET, 不在 spell_pet_auras
--           → aura 无法持久化
-- v2: effectApplyAuraName1=4(SPELL_AURA_DUMMY), target=1(CASTER)
--     DUMMY aura 在玩家身上 → HandleAuraDummy 调用 PetAura 系统
--     → 36000/36001 在宠物召唤/复活时自动施加
UPDATE spell_template SET
  effectApplyAuraName1 = 4,
  effectImplicitTargetA1 = 1,
  effectMiscValue1 = 0,
  effectAmplitude1 = 0,
  effectBasePoints1 = 0
WHERE entry IN (19590, 19592);

-- Effect 2: 宠物特殊技能冷却时间减少
-- miscvalue2 = 11(SPELLMOD_COOLDOWN) 已在数据库中正确，无需改
-- 缺少 spell_affect 掩码导致修饰器无法匹配任何技能
-- mask = 0x18000000000 = 1649267441664
-- v1 误用了 0x1800000000(bits 35+36) → 命中 Steady Shot/Piercing Shots 而不是宠技
-- v3 修正: 0x18000000000(bits 39+40) → 覆盖 HUNTER 族宠物技能
-- Bit 40(0x10000000000): Bite, Claw, Screech, Lightning Breath, Thunderstomp etc.
-- Bit 39(0x8000000000): Scorpid Poison, Prowl, Furious Howl, Shell Shield etc.
-- 注: Claw/Growl 的技能族为 ROGUE(7)，此修饰器(族=9)无法跨族匹配

INSERT INTO spell_affect (entry, effectId, SpellFamilyMask)
VALUES
  (19590, 1, 1649267441664),   -- 0x18000000000
  (19592, 1, 1649267441664)
ON DUPLICATE KEY UPDATE SpellFamilyMask = VALUES(SpellFamilyMask);

-- Effect 2: 宠物特殊技能冷却时间减少保留 (已有 spell_affect 掩码)

-- 创建 PetAura 子法术 36000 (Rank1: +2 focus/tick)
INSERT INTO spell_template (
  entry, school, category, castUI, dispel, mechanic,
  attributes, attributesEx, attributesEx2, attributesEx3, attributesEx4,
  stances, stancesNot, targets, targetCreatureType, requiresSpellFocus,
  casterAuraState, targetAuraState, castingTimeIndex, recoveryTime,
  categoryRecoveryTime, interruptFlags, auraInterruptFlags,
  channelInterruptFlags, procFlags, procChance, procCharges,
  maxLevel, baseLevel, spellLevel, durationIndex, powerType,
  manaCost, manCostPerLevel, manaPerSecond, manaPerSecondPerLevel,
  rangeIndex, speed, modelNextSpell, stackAmount,
  totem1, totem2,
  reagent1, reagent2, reagent3, reagent4, reagent5, reagent6, reagent7, reagent8,
  reagentCount1, reagentCount2, reagentCount3, reagentCount4,
  reagentCount5, reagentCount6, reagentCount7, reagentCount8,
  equippedItemClass, equippedItemSubClassMask, equippedItemInventoryTypeMask,
  effect1, effect2, effect3,
  effectDieSides1, effectDieSides2, effectDieSides3,
  effectBaseDice1, effectBaseDice2, effectBaseDice3,
  effectDicePerLevel1, effectDicePerLevel2, effectDicePerLevel3,
  effectRealPointsPerLevel1, effectRealPointsPerLevel2, effectRealPointsPerLevel3,
  effectBasePoints1, effectBasePoints2, effectBasePoints3,
  effectBonusCoefficient1, effectBonusCoefficient2, effectBonusCoefficient3,
  effectMechanic1, effectMechanic2, effectMechanic3,
  effectImplicitTargetA1, effectImplicitTargetA2, effectImplicitTargetA3,
  effectImplicitTargetB1, effectImplicitTargetB2, effectImplicitTargetB3,
  effectRadiusIndex1, effectRadiusIndex2, effectRadiusIndex3,
  effectApplyAuraName1, effectApplyAuraName2, effectApplyAuraName3,
  effectAmplitude1, effectAmplitude2, effectAmplitude3,
  effectMultipleValue1, effectMultipleValue2, effectMultipleValue3,
  effectChainTarget1, effectChainTarget2, effectChainTarget3,
  effectItemType1, effectItemType2, effectItemType3,
  effectMiscValue1, effectMiscValue2, effectMiscValue3,
  effectTriggerSpell1, effectTriggerSpell2, effectTriggerSpell3,
  effectPointsPerComboPoint1, effectPointsPerComboPoint2, effectPointsPerComboPoint3,
  spellVisual1, spellVisual2, spellIconId, activeIconId, spellPriority,
  name, nameFlags, nameSubtext, nameSubtextFlags,
  description, descriptionFlags,
  auraDescription, auraDescriptionFlags,
  manaCostPercentage, startRecoveryCategory, startRecoveryTime,
  minTargetLevel, maxTargetLevel,
  spellFamilyName, spellFamilyFlags, maxAffectedTargets,
  dmgClass, preventionType, stanceBarOrder,
  dmgMultiplier1, dmgMultiplier2, dmgMultiplier3,
  minFactionId, minReputation, requiredAuraVision, customFlags
)
SELECT
  36000,
  school, 0, 0, 0, 0,
  attributes, attributesEx, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0,
  1, 0, 0, 0, 0, 0, 0, 101, 0,
  0, 0, 0, 21, 0,
  0, 0, 0, 0, 1, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  -1, 0, 0,
  6, 0, 0, 1, 0, 0, 1, 1, 0,
  0, 0, 0, 0, 0, 0, 1, 0, 0,
  -1, -1, -1, 0, 0, 0,
  1, 0, 0, 0, 0, 0, 0, 0, 0,
  24, 0, 0, 4000, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0,
  2, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0,
  'Bestial Discipline Focus Effect', 4128894, 'Rank 1', 4128894,
  'Passive: +2 focus every 4s.', 4128894, '', 4128892,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0
FROM spell_template WHERE entry = 19590;

-- 创建 PetAura 子法术 36001 (Rank2: +5 focus/tick)
INSERT INTO spell_template (
  entry, attributes, castingTimeIndex, durationIndex, rangeIndex,
  procChance, effect1, effectDieSides1, effectBaseDice1, effectBasePoints1,
  effectImplicitTargetA1, effectApplyAuraName1, effectAmplitude1, effectMiscValue1,
  spellIconId, name, nameFlags, nameSubtext, nameSubtextFlags,
  description, descriptionFlags, auraDescription, auraDescriptionFlags,
  dmgMultiplier1, equippedItemClass
) VALUES (
  36001, 464, 1, 21, 1,
  101, 6, 1, 1, 4,
  1, 24, 4000, 2,
  263,
  'Bestial Discipline Focus Effect', 4128894, 'Rank 2', 4128894,
  'Passive: +5 focus every 4s.', 4128894, '', 4128892,
  1, -1
);

-- 添加 spell_pet_auras 映射
REPLACE INTO spell_pet_auras (spell, pet, aura) VALUES
(19590, 0, 36000),
(19592, 0, 36001);

-- 验证
SELECT '=== v2 Fix applied ===' AS status;
SELECT entry,
  effectApplyAuraName1 AS aura1,
  effectImplicitTargetA1 AS target1,
  effectMiscValue1 AS misc1,
  effectAmplitude1 AS ampl1,
  effectBasePoints1 AS base1
FROM spell_template WHERE entry IN (19590, 19592);

SELECT '=== New pet aura spells ===' AS '';
SELECT entry,
  effectApplyAuraName1 AS aura,
  effectImplicitTargetA1 AS target,
  effectBasePoints1 AS base,
  effectAmplitude1 AS ampl,
  effectMiscValue1 AS misc
FROM spell_template WHERE entry IN (36000, 36001);

SELECT '=== spell_pet_auras ===' AS '';
SELECT * FROM spell_pet_auras WHERE spell IN (19590, 19592);

SELECT * FROM spell_affect WHERE entry IN (19590, 19592);
