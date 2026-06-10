-- ==============================================
-- FILE: 20260611222200_world.sql
-- Fix: 野兽戒律 Bestial Discipline (19590/19592)
--      集中值回复效果持久化
-- ==============================================
--
-- 问题分析：
-- 之前的修复将 Effect 1 设为 PERIODIC_ENERGIZE 通过
-- TARGET_UNIT_CASTER_PET 直接施放到宠物身上。但 Pet::_SaveAuras
-- 过滤了所有 TARGET_UNIT_CASTER_PET 的 aura，且 spell 不在
-- spell_pet_auras 表中，导致宠物下线重登/死亡复活后 aura 永久丢失。
--
-- 修复方式：
-- Effect 1 改为 DUMMY aura (4) 作用在玩家身上(CASTER)，
-- 通过 spell_pet_auras 表映射到新法术 36000/36001，
-- PetAura 系统在宠物召唤/复活时自动重新施加 PERIODIC_ENERGIZE。
--
-- 触发: .reload spell_pet_auras
-- 然后需要重启 mangosd (spell_template 和 spell_affect 修改需要重启)

-- Step 1: 修改 Bestial Discipline Effect 1 为 DUMMY
UPDATE spell_template SET
  effectApplyAuraName1 = 4,
  effectImplicitTargetA1 = 1,
  effectMiscValue1 = 0,
  effectAmplitude1 = 0,
  effectBasePoints1 = 0
WHERE entry IN (19590, 19592);

-- Step 2: 创建 PetAura 子法术 36000 (Rank1: +2 focus)
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

-- Step 3: 创建 PetAura 子法术 36001 (Rank2: +5 focus)
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

-- Step 4: 添加 spell_pet_auras 映射
REPLACE INTO spell_pet_auras (spell, pet, aura) VALUES
(19590, 0, 36000),
(19592, 0, 36001);

-- Step 5: 修正 spell_affect 掩码 (bugfix: v1 误用 0x1800000000 bits 35+36)
-- 原值 103079215104(0x1800000000) 命中了 Steady Shot/Piercing Shots 而不是宠技
-- 修正为 1649267441664(0x18000000000 bits 39+40) 对应 Bite/Claw/Scorpid Poison 等
UPDATE spell_affect SET SpellFamilyMask = 1649267441664
WHERE entry IN (19590, 19592);
