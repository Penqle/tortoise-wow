#include "scriptPCH.h"

namespace
{
enum PaladinSpells
{
    SPELL_PALADIN_DEVOTION_AURA_R1                  = 465,
    SPELL_PALADIN_DEVOTION_AURA_R2                  = 10290,
    SPELL_PALADIN_DEVOTION_AURA_R3                  = 643,
    SPELL_PALADIN_DEVOTION_AURA_R4                  = 10291,
    SPELL_PALADIN_DEVOTION_AURA_R5                  = 1032,
    SPELL_PALADIN_DEVOTION_AURA_R6                  = 10292,
    SPELL_PALADIN_DEVOTION_AURA_R7                  = 10293,
    SPELL_PALADIN_FORBEARANCE                       = 25771,
    SPELL_PALADIN_JUDGEMENT                         = 20271,
    SPELL_PALADIN_ILLUMINATION_ENERGIZE             = 20272,
    SPELL_PALADIN_FLASH_OF_LIGHT_HEAL               = 19993,
    SPELL_PALADIN_DEVOTION_AURA_DAMAGE_REDUCTION    = 45073,
    SPELL_PALADIN_CONVICTION_PROC_1                 = 45619,
    SPELL_PALADIN_CONVICTION_PROC_2                 = 45620,
    SPELL_PALADIN_SPIRIT_ARMOR_DEPRECATED           = 45953,
    SPELL_PALADIN_SANCTIFIED_COMMAND_DEPRECATED     = 45954,
    SPELL_PALADIN_SANCTIFIED_COMMAND_MANA           = 45987,
    SPELL_PALADIN_HOLY_SHOCK_R1                    = 20473,
    SPELL_PALADIN_HOLY_SHOCK_R2                    = 20929,
    SPELL_PALADIN_HOLY_SHOCK_R3                    = 20930,
    SPELL_PALADIN_HOLY_SHOCK_R4                    = 51786,
    SPELL_PALADIN_HOLY_SHOCK_DAMAGE_R1             = 25912,
    SPELL_PALADIN_HOLY_SHOCK_DAMAGE_R2             = 25911,
    SPELL_PALADIN_HOLY_SHOCK_DAMAGE_R3             = 25902,
    SPELL_PALADIN_HOLY_SHOCK_DAMAGE_R4             = 52012,
    SPELL_PALADIN_HOLY_SHOCK_HEAL_R1               = 25914,
    SPELL_PALADIN_HOLY_SHOCK_HEAL_R2               = 25913,
    SPELL_PALADIN_HOLY_SHOCK_HEAL_R3               = 25903,
    SPELL_PALADIN_HOLY_SHOCK_HEAL_R4               = 51787,
    SPELL_PALADIN_HOLY_SHOCK_RESET_CHANCE          = 51825,
    SPELL_PALADIN_RIGHTEOUS_FURY                   = 25780,
    SPELL_PALADIN_RIGHTEOUS_STRIKES_R1             = 51341,
    SPELL_PALADIN_RIGHTEOUS_STRIKES_R2             = 51342,
    SPELL_PALADIN_RIGHTEOUS_STRIKES_R3             = 51343,
    SPELL_PALADIN_RIGHTEOUS_STRIKES_R4             = 51344,
    SPELL_PALADIN_RIGHTEOUS_STRIKES_R5             = 51345,
    SPELL_PALADIN_ZEALOUS_DEFENSE_R1               = 51336,
    SPELL_PALADIN_ZEALOUS_DEFENSE_R2               = 51337,
    SPELL_PALADIN_ZEALOUS_DEFENSE_R3               = 51338,
    SPELL_PALADIN_ZEALOUS_DEFENSE_R4               = 51339,
    SPELL_PALADIN_ZEALOUS_DEFENSE_R5               = 51340,
    SPELL_PALADIN_VENGEANCE_HELPER_R1              = 20050,
    SPELL_PALADIN_VENGEANCE_HELPER_R2              = 20052,
    SPELL_PALADIN_VENGEANCE_HELPER_R3              = 20053,
    SPELL_PALADIN_VENGEANCE_HELPER_R4              = 20054,
    SPELL_PALADIN_VENGEANCE_HELPER_R5              = 20055,
    SPELL_PALADIN_JUDGEMENT_OF_COMMAND_R1          = 20467,
    SPELL_PALADIN_JUDGEMENT_OF_COMMAND_R2          = 20963,
    SPELL_PALADIN_JUDGEMENT_OF_COMMAND_R3          = 20964,
    SPELL_PALADIN_JUDGEMENT_OF_COMMAND_R4          = 20965,
    SPELL_PALADIN_JUDGEMENT_OF_COMMAND_R5          = 20966,
    SPELL_PALADIN_SEAL_OF_COMMAND_R1               = 20375,
    SPELL_PALADIN_SEAL_OF_COMMAND_R2               = 20915,
    SPELL_PALADIN_SEAL_OF_COMMAND_R3               = 20918,
    SPELL_PALADIN_SEAL_OF_COMMAND_R4               = 20919,
    SPELL_PALADIN_SEAL_OF_COMMAND_R5               = 20920,
    SPELL_PALADIN_JUDGEMENT_OF_LIGHT_R1            = 20185,
    SPELL_PALADIN_JUDGEMENT_OF_LIGHT_R2            = 20344,
    SPELL_PALADIN_JUDGEMENT_OF_LIGHT_R3            = 20345,
    SPELL_PALADIN_JUDGEMENT_OF_LIGHT_R4            = 20346,
    SPELL_PALADIN_JUDGEMENT_OF_LIGHT_PROC_R1       = 20267,
    SPELL_PALADIN_JUDGEMENT_OF_LIGHT_PROC_R2       = 20341,
    SPELL_PALADIN_JUDGEMENT_OF_LIGHT_PROC_R3       = 20342,
    SPELL_PALADIN_JUDGEMENT_OF_LIGHT_PROC_R4       = 20343,
    SPELL_PALADIN_JUDGEMENT_OF_WISDOM_R1           = 20186,
    SPELL_PALADIN_JUDGEMENT_OF_WISDOM_R2           = 20354,
    SPELL_PALADIN_JUDGEMENT_OF_WISDOM_R3           = 20355,
    SPELL_PALADIN_JUDGEMENT_OF_WISDOM_R4           = 51751,
    SPELL_PALADIN_JUDGEMENT_OF_WISDOM_R5           = 51752,
    SPELL_PALADIN_JUDGEMENT_OF_WISDOM_PROC_R1      = 20268,
    SPELL_PALADIN_JUDGEMENT_OF_WISDOM_PROC_R2      = 20352,
    SPELL_PALADIN_JUDGEMENT_OF_WISDOM_PROC_R3      = 20353,
    SPELL_PALADIN_JUDGEMENT_OF_WISDOM_PROC_R4      = 51749,
    SPELL_PALADIN_JUDGEMENT_OF_WISDOM_PROC_R5      = 51750,
    SPELL_PALADIN_JUDGEMENT_OF_LIGHT_BONUS         = 28775,
    SPELL_PALADIN_REDEMPTION_JUDGEMENT_OF_LIGHT_BONUS = 51820,
    SPELL_PALADIN_FLASH_OF_LIGHT_BONUS_41          = 28851,
    SPELL_PALADIN_FLASH_OF_LIGHT_BONUS_53          = 28853,
    SPELL_PALADIN_REPENTANCE_R1                    = 20066,
    SPELL_PALADIN_REPENTANCE_R2                    = 51557,
    SPELL_PALADIN_REPENTANCE_R3                    = 51558,
    SPELL_PALADIN_REPENT_AURA_R1                   = 51360,
    SPELL_PALADIN_REPENT_AURA_R2                   = 51561,
    SPELL_PALADIN_REPENT_AURA_R3                   = 51562,
    SPELL_PALADIN_ITEM_SHAHRAM                     = 16602,
    SPELL_PALADIN_ITEM_ARMOR_SHATTER               = 16928,
    SPELL_PALADIN_ITEM_ANCESTORS_VENGEANCE         = 16939,
    SPELL_PALADIN_ITEM_SPELL_VULNERABILITY         = 23605,
    SPELL_PALADIN_ITEM_ROLFENS_FURY                = 48102,
};

template <class T>
SpellScript* GetSpellScript(SpellEntry const*)
{
    return new T();
}

template <class T>
AuraScript* GetAuraScript(SpellEntry const*)
{
    return new T();
}

void RegisterSpellScript(char const* name, SpellScript* (*getter)(SpellEntry const*))
{
    Script* script = new Script;
    script->Name = name;
    script->GetSpellScript = getter;
    script->RegisterSelf();
}

void RegisterAuraScript(char const* name, AuraScript* (*getter)(SpellEntry const*))
{
    Script* script = new Script;
    script->Name = name;
    script->GetAuraScript = getter;
    script->RegisterSelf();
}

void RegisterSpellAndAuraScript(char const* name, SpellScript* (*spellGetter)(SpellEntry const*), AuraScript* (*auraGetter)(SpellEntry const*))
{
    Script* script = new Script;
    script->Name = name;
    script->GetSpellScript = spellGetter;
    script->GetAuraScript = auraGetter;
    script->RegisterSelf();
}

uint32 CalculateHolyShockSelfResetChance(Unit* caster)
{
    uint32 chance = 5;

    int32 healingPower = caster->SpellBaseHealingBonusDone(SPELL_SCHOOL_MASK_HOLY);
    if (healingPower > 0)
        chance += uint32(healingPower / 100);

    // Holy Shock Cooldown Reset Chance.
    if (caster->HasAura(SPELL_PALADIN_HOLY_SHOCK_RESET_CHANCE))
        chance += 15;

    return chance > 100 ? 100 : chance;
}

void ResetHolyShockCooldowns(Player* player)
{
    std::vector<uint32> spellsToClear;
    for (const auto& cdEntry : player->GetSpellCooldownMap())
    {
        SpellEntry const* cdSpell = sSpellMgr.GetSpellEntry(cdEntry.first);
        if (cdSpell && cdSpell->SpellFamilyName == SPELLFAMILY_PALADIN && cdSpell->IsFitToFamily<SPELLFAMILY_PALADIN, CF_PALADIN_HOLY_SHOCK>())
            spellsToClear.push_back(cdEntry.first);
    }

    for (uint32 spellId : spellsToClear)
        player->RemoveSpellCooldown(spellId, true);
}

int32 GetJudgementOfLightFlatHealBonus(Unit* caster)
{
    if (!caster)
        return 0;

    if (Aura const* aura = caster->GetAura(SPELL_PALADIN_REDEMPTION_JUDGEMENT_OF_LIGHT_BONUS, EFFECT_INDEX_0))
        return aura->GetBasePoints();

    if (Aura const* aura = caster->GetAura(SPELL_PALADIN_JUDGEMENT_OF_LIGHT_BONUS, EFFECT_INDEX_0))
        return aura->GetBasePoints();

    return 0;
}

// Coeffs not driven by spell data for SoR so that 1 handed and 2 handed weapons can have separate coeffs
int32 CalculateSealOfRighteousnessSpellPowerBonus(Player* player, SpellEntry const* spellProto)
{
    constexpr float oneHandedCoefficient = 0.10f;
    constexpr float twoHandedCoefficient = 0.125f;

    float coefficient = oneHandedCoefficient;
    float weaponSpeed = BASE_ATTACK_TIME / 1000.0f;

    if (Item* item = player->GetItemByPos(INVENTORY_SLOT_BAG_0, EQUIPMENT_SLOT_MAINHAND))
    {
        coefficient = item->isOneHandedWeapon() ? oneHandedCoefficient : twoHandedCoefficient;
        weaponSpeed = item->GetProto()->Delay / 1000.0f;
    }

    coefficient *= weaponSpeed;
    if (Player* modOwner = player->GetSpellModOwner())
    {
        coefficient *= 100.0f;
        modOwner->ApplySpellMod(spellProto->Id, SPELLMOD_SPELL_BONUS_DAMAGE, coefficient, nullptr);
        coefficient /= 100.0f;
    }

    int32 const spellPower = player->SpellBaseDamageBonusDone(spellProto->GetSpellSchoolMask());
    return int32(spellPower * coefficient);
}

struct spell_paladin_invulnerability_forbearance : public SpellScript
{
    void OnCast(Spell* spell) const override
    {
        if (spell->m_spellInfo->Id != SPELL_PALADIN_FORBEARANCE)
            spell->AddPrecastSpell(SPELL_PALADIN_FORBEARANCE);
    }
};

struct spell_paladin_hammer_of_wrath : public SpellScript
{
    void OnEffectDamageCalculate(Spell* spell, SpellEffectIndex effIdx, float& damage) const override
    {
        Unit* target = spell->GetUnitTarget();
        if (!target)
            return;

        spell->m_attackType = BASE_ATTACK;
        damage = spell->m_caster->SpellDamageBonusDone(target, spell->m_spellInfo, effIdx, damage, SPELL_DIRECT_DAMAGE);
        damage = target->SpellDamageBonusTaken(spell->m_caster, spell->m_spellInfo, effIdx, damage, SPELL_DIRECT_DAMAGE);
    }
};

struct spell_paladin_judgement_of_command : public SpellScript
{
    void OnEffectDamageCalculate(Spell* spell, SpellEffectIndex effIdx, float& damage) const override
    {
        Unit* target = spell->GetUnitTarget();
        if (!target)
            return;

        if (!target->HasUnitState(UNIT_STAT_STUNNED | UNIT_STAT_PENDING_STUNNED))
            damage = int32(damage * 0.5f);

        damage = spell->m_caster->SpellDamageBonusDone(target, spell->m_spellInfo, effIdx, damage, SPELL_DIRECT_DAMAGE);
        damage = target->SpellDamageBonusTaken(spell->m_caster, spell->m_spellInfo, effIdx, damage, SPELL_DIRECT_DAMAGE);
    }
};

struct spell_paladin_judgement_of_command_dummy : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_0)
            return true;

        Unit* target = spell->GetUnitTarget();
        if (!target)
            return false;

        if (spell->m_spellInfo->Id == SPELL_PALADIN_SANCTIFIED_COMMAND_DEPRECATED || spell->m_spellInfo->Id == SPELL_PALADIN_SPIRIT_ARMOR_DEPRECATED)
            return false;

        uint32 spellId = spell->m_currentBasePoints[effIdx];
        SpellEntry const* spellInfo = sSpellMgr.GetSpellEntry(spellId);
        if (!spellInfo)
            return false;

        spell->m_caster->CastSpell(target, spellInfo, true, nullptr);
        return false;
    }
};

struct spell_paladin_judgement_of_the_crusader : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (spell->m_spellInfo->Effect[effIdx] != SPELL_EFFECT_DUMMY)
            return true;

        Unit* target = spell->GetUnitTarget();
        Player* player = spell->m_caster->ToPlayer();
        if (!target || !player)
            return false;

        bool hasProc = false;
        if (Item* item = player->GetWeaponForAttack(BASE_ATTACK, true, true))
        {
            float chanceMultiplier = spell->m_currentBasePoints[effIdx];
            for (auto const& spellData : item->GetProto()->Spells)
            {
                if (!spellData.SpellId || spellData.SpellTrigger != ITEM_SPELLTRIGGER_CHANCE_ON_HIT)
                    continue;

                hasProc = true;

                if (SpellEntry const* spellInfo = sSpellMgr.GetSpellEntry(spellData.SpellId))
                {
                    if (spellInfo->Id == SPELL_PALADIN_ITEM_SHAHRAM ||
                        spellInfo->Id == SPELL_PALADIN_ITEM_ARMOR_SHATTER ||
                        spellInfo->Id == SPELL_PALADIN_ITEM_ANCESTORS_VENGEANCE ||
                        spellInfo->Id == SPELL_PALADIN_ITEM_SPELL_VULNERABILITY ||
                        spellInfo->Id == SPELL_PALADIN_ITEM_ROLFENS_FURY ||
                        spellInfo->IsCCSpell() ||
                        spellInfo->HasAura(SPELL_AURA_MOD_CONFUSE) ||
                        spellInfo->HasAura(SPELL_AURA_MOD_DECREASE_SPEED) ||
                        spellInfo->HasAura(SPELL_AURA_MOD_CASTING_SPEED_NOT_STACK))
                        chanceMultiplier *= 0.2f;
                    else if (spellInfo->IsAreaOfEffectSpell())
                        chanceMultiplier *= 0.5f;
                }
            }

            if (chanceMultiplier < 2.0f)
                chanceMultiplier = 2.0f;

            player->CastItemCombatSpell(target, BASE_ATTACK, chanceMultiplier);
        }

        if (!hasProc)
        {
            if (SpellEntry const* judgement = sSpellMgr.GetSpellEntry(SPELL_PALADIN_JUDGEMENT))
            {
                uint32 manaCost = Spell::CalculatePowerCost(judgement, player);
                player->ModifyPower(POWER_MANA, manaCost);
            }
        }

        return false;
    }
};

struct spell_paladin_holy_shock : public SpellScript
{
    void OnFinish(Spell* spell, bool ok) const override
    {
        if (!ok)
            return;

        Player* player = spell->m_caster->ToPlayer();
        if (!player || !roll_chance_i(CalculateHolyShockSelfResetChance(player)))
            return;

        ResetHolyShockCooldowns(player);
    }

    SpellCastResult OnCheckCast(Spell* spell, bool /*strict*/) const override
    {
        Unit* target = spell->m_targets.getUnitTarget();
        if (target && !spell->m_caster->IsFriendlyTo(target) && !spell->m_caster->IsFacingTarget(target))
            return SPELL_FAILED_UNIT_NOT_INFRONT;

        return SPELL_CAST_OK;
    }

    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_0)
            return true;

        Unit* target = spell->GetUnitTarget();
        if (!target)
            return false;

        uint32 damageSpellId = 0;
        uint32 healSpellId = 0;
        switch (spell->m_spellInfo->Id)
        {
            case SPELL_PALADIN_HOLY_SHOCK_R1: damageSpellId = SPELL_PALADIN_HOLY_SHOCK_DAMAGE_R1; healSpellId = SPELL_PALADIN_HOLY_SHOCK_HEAL_R1; break;
            case SPELL_PALADIN_HOLY_SHOCK_R2: damageSpellId = SPELL_PALADIN_HOLY_SHOCK_DAMAGE_R2; healSpellId = SPELL_PALADIN_HOLY_SHOCK_HEAL_R2; break;
            case SPELL_PALADIN_HOLY_SHOCK_R3: damageSpellId = SPELL_PALADIN_HOLY_SHOCK_DAMAGE_R3; healSpellId = SPELL_PALADIN_HOLY_SHOCK_HEAL_R3; break;
            case SPELL_PALADIN_HOLY_SHOCK_R4: damageSpellId = SPELL_PALADIN_HOLY_SHOCK_DAMAGE_R4; healSpellId = SPELL_PALADIN_HOLY_SHOCK_HEAL_R4; break;
            default:
                sLog.outError("spell_paladin_holy_shock: Spell %u not handled", spell->m_spellInfo->Id);
                return false;
        }

        spell->m_caster->CastSpell(target, spell->m_caster->IsFriendlyTo(target) ? healSpellId : damageSpellId, true);
        return false;
    }
};

struct spell_paladin_holy_strike : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_0)
            return true;

        Unit* target = spell->GetUnitTarget();
        if (!target)
            return true;

        Unit::SpellAuraHolderMap const& auraHolders = target->GetSpellAuraHolderMap();
        for (auto const& auraHolder : auraHolders)
        {
            SpellAuraHolder* holder = auraHolder.second;
            if (!holder || Spells::GetSpellSpecific(holder->GetId()) != SPELL_JUDGEMENT)
                continue;

            int32 maxDuration = holder->GetAuraMaxDuration();
            int32 currentDuration = holder->GetAuraDuration();
            if (currentDuration > 0)
                target->RefreshAura(holder->GetId(), maxDuration);

            break;
        }

        return true;
    }
};

struct spell_paladin_crusader_strike : public SpellScript
{
    void OnHit(Spell* spell, SpellMissInfo missInfo) const override
    {
        if (missInfo != SPELL_MISS_NONE || !spell->m_casterUnit)
            return;

        uint32 triggerSpellId = GetZealousDefenseSpell(spell->m_casterUnit);
        if (!triggerSpellId)
            return;

        spell->m_casterUnit->CastSpell(spell->m_casterUnit, triggerSpellId, true);
    }

private:
    static uint32 GetZealousDefenseSpell(Unit const* caster)
    {
        if (caster->HasAura(SPELL_PALADIN_RIGHTEOUS_STRIKES_R5))
            return SPELL_PALADIN_ZEALOUS_DEFENSE_R5;
        if (caster->HasAura(SPELL_PALADIN_RIGHTEOUS_STRIKES_R4))
            return SPELL_PALADIN_ZEALOUS_DEFENSE_R4;
        if (caster->HasAura(SPELL_PALADIN_RIGHTEOUS_STRIKES_R3))
            return SPELL_PALADIN_ZEALOUS_DEFENSE_R3;
        if (caster->HasAura(SPELL_PALADIN_RIGHTEOUS_STRIKES_R2))
            return SPELL_PALADIN_ZEALOUS_DEFENSE_R2;
        if (caster->HasAura(SPELL_PALADIN_RIGHTEOUS_STRIKES_R1))
            return SPELL_PALADIN_ZEALOUS_DEFENSE_R1;

        return 0;
    }
};

struct spell_paladin_judgement : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_0)
            return true;

        Unit* target = spell->GetUnitTarget();
        if (!target || !target->IsAlive() || !spell->m_casterUnit)
            return false;

        uint32 spellId = 0;
        Unit::AuraList const& dummyAuras = spell->m_casterUnit->GetAurasByType(SPELL_AURA_DUMMY);
        for (Aura const* aura : dummyAuras)
        {
            SpellEntry const* auraSpellInfo = aura->GetSpellProto();
            if (!auraSpellInfo || !auraSpellInfo->IsSealSpell() || aura->GetEffIndex() != EFFECT_INDEX_2)
                continue;

            spellId = auraSpellInfo->CalculateSimpleValue(EFFECT_INDEX_2);
            if (spellId <= 1)
                continue;

            spell->m_casterUnit->RemoveAurasDueToSpellByCancel(aura->GetId());
            break;
        }

        if (spellId)
            spell->m_caster->CastSpell(target, spellId, true);

        return false;
    }
};

struct spell_paladin_conviction_seals : public AuraScript
{
    std::optional<SpellProcEventTriggerCheck> OnCheckProc(Unit const* /*owner*/, Unit* /*victim*/, SpellAuraHolder* holder, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 /*procExtra*/, WeaponAttackType /*attType*/, bool /*isVictim*/) override
    {
        if (!procSpell || (procSpell->Id != SPELL_PALADIN_CONVICTION_PROC_1 && procSpell->Id != SPELL_PALADIN_CONVICTION_PROC_2))
            return std::nullopt;

        SpellEntry const* auraSpell = holder->GetSpellProto();
        if (auraSpell->IsFitToFamily<SPELLFAMILY_PALADIN, CF_PALADIN_SEAL_OF_THE_CRUSADER, CF_PALADIN_SEAL_OF_WISDOM_LIGHT, CF_PALADIN_SEAL_OF_COMMAND, CF_PALADIN_SEALS>())
            return roll_chance_u(50) ? SPELL_PROC_TRIGGER_OK : SPELL_PROC_TRIGGER_ROLL_FAILED;

        return std::nullopt;
    }
};

// Deprecated in patch 1.17.2
struct spell_paladin_sanctified_command : public AuraScript
{
    std::optional<SpellProcEventTriggerCheck> OnCheckProc(Unit const* /*owner*/, Unit* /*victim*/, SpellAuraHolder* /*holder*/, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 /*procExtra*/, WeaponAttackType /*attType*/, bool /*isVictim*/) override
    {
        if (!procSpell)
            return SPELL_PROC_TRIGGER_FAILED;

        return (procSpell->SpellIconID == 561 && procSpell->DmgClass == 2 && procSpell->SpellVisual == 0) ? SPELL_PROC_TRIGGER_OK : SPELL_PROC_TRIGGER_FAILED;
    }

    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* /*victim*/, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!owner->ToPlayer() || !procSpell)
            return SPELL_AURA_PROC_FAILED;

        uint32 sealSpellId = 0;
        switch (procSpell->Id)
        {
            case SPELL_PALADIN_JUDGEMENT_OF_COMMAND_R1: sealSpellId = SPELL_PALADIN_SEAL_OF_COMMAND_R1; break;
            case SPELL_PALADIN_JUDGEMENT_OF_COMMAND_R2: sealSpellId = SPELL_PALADIN_SEAL_OF_COMMAND_R2; break;
            case SPELL_PALADIN_JUDGEMENT_OF_COMMAND_R3: sealSpellId = SPELL_PALADIN_SEAL_OF_COMMAND_R3; break;
            case SPELL_PALADIN_JUDGEMENT_OF_COMMAND_R4: sealSpellId = SPELL_PALADIN_SEAL_OF_COMMAND_R4; break;
            case SPELL_PALADIN_JUDGEMENT_OF_COMMAND_R5: sealSpellId = SPELL_PALADIN_SEAL_OF_COMMAND_R5; break;
            default: return SPELL_AURA_PROC_FAILED;
        }

        SpellEntry const* seal = sSpellMgr.GetSpellEntry(sealSpellId);
        if (!seal)
            return SPELL_AURA_PROC_FAILED;

        int32 mana = seal->manaCost * aura->GetModifier()->m_amount / 100;
        owner->CastCustomSpell(owner, SPELL_PALADIN_SANCTIFIED_COMMAND_MANA, &mana, nullptr, nullptr, true);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_paladin_eye_for_an_eye : public AuraScript
{
    std::optional<SpellProcEventTriggerCheck> OnCheckProc(Unit const* /*owner*/, Unit* /*victim*/, SpellAuraHolder* /*holder*/, SpellEntry const* /*procSpell*/, uint32 procFlag, uint32 procExtra, WeaponAttackType /*attType*/, bool /*isVictim*/) override
    {
        return ((procFlag & PROC_FLAG_TAKE_HARMFUL_SPELL) && (procExtra & PROC_EX_CRITICAL_HIT)) ? SPELL_PROC_TRIGGER_OK : SPELL_PROC_TRIGGER_FAILED;
    }
};

struct spell_paladin_improved_lay_on_hands : public AuraScript
{
    std::optional<SpellProcEventTriggerCheck> OnCheckProc(Unit const* /*owner*/, Unit* /*victim*/, SpellAuraHolder* /*holder*/, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 /*procExtra*/, WeaponAttackType /*attType*/, bool isVictim) override
    {
        if (!procSpell)
            return SPELL_PROC_TRIGGER_FAILED;

        return (procSpell->SpellFamilyName == SPELLFAMILY_PALADIN && procSpell->SpellIconID == 79 && procSpell->Category == 56 && !isVictim) ? SPELL_PROC_TRIGGER_OK : SPELL_PROC_TRIGGER_FAILED;
    }
};

struct spell_paladin_seal_of_righteousness : public AuraScript
{
    std::optional<SpellProcEventTriggerCheck> OnCheckProc(Unit const* /*owner*/, Unit* /*victim*/, SpellAuraHolder* /*holder*/, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 /*procExtra*/, WeaponAttackType /*attType*/, bool /*isVictim*/) override
    {
        if (!procSpell || (procSpell->Id != SPELL_PALADIN_CONVICTION_PROC_1 && procSpell->Id != SPELL_PALADIN_CONVICTION_PROC_2))
            return std::nullopt;

        return roll_chance_u(50) ? SPELL_PROC_TRIGGER_OK : SPELL_PROC_TRIGGER_ROLL_FAILED;
    }

    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* victim, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (aura->GetEffIndex() != EFFECT_INDEX_0 || aura->GetModifier()->m_auraname != SPELL_AURA_PROC_TRIGGER_SPELL)
            return std::nullopt;

        Player* player = owner->ToPlayer();
        if (!victim || !player)
            return SPELL_AURA_PROC_FAILED;

        constexpr float maxWeaponSpeed = 4.0f;
        constexpr float minWeaponSpeed = 1.5f;
        Item* item = player->GetItemByPos(INVENTORY_SLOT_BAG_0, EQUIPMENT_SLOT_MAINHAND);
        float speed = (item ? item->GetProto()->Delay : BASE_ATTACK_TIME) / 1000.0f;

        float minDmg = aura->GetModifier()->m_amount / 87.0f;
        float maxDmg = aura->GetModifier()->m_amount / 25.0f;
        float damageBasePoints = (maxDmg - minDmg) * ((speed - minWeaponSpeed) / (maxWeaponSpeed - minWeaponSpeed)) + minDmg;
        int32 damagePoint = urand(0, 1) ? floor(damageBasePoints) : ceil(damageBasePoints);

        SpellEntry const* auraSpell = aura->GetSpellProto();
        if (damagePoint >= 0)
            damagePoint += CalculateSealOfRighteousnessSpellPowerBonus(player, auraSpell);

        uint32 const triggerSpellId = auraSpell->EffectTriggerSpell[EFFECT_INDEX_0];
        if (!triggerSpellId)
            return SPELL_AURA_PROC_FAILED;

        owner->CastCustomSpell(victim, triggerSpellId, &damagePoint, nullptr, nullptr, true, nullptr, aura);
        player->CastItemCombatSpell(victim, BASE_ATTACK);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_paladin_blessed_strikes : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* /*victim*/, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!procSpell || !procSpell->IsFitToFamily<SPELLFAMILY_PALADIN, CF_PALADIN_CRUSADER_STRIKE>())
            return SPELL_AURA_PROC_FAILED;

        uint32 resetChance = uint32(aura->GetSpellProto()->EffectBasePoints[EFFECT_INDEX_2]) + 1;
        if (!roll_chance_i(resetChance))
            return SPELL_AURA_PROC_FAILED;

        Player* player = owner->ToPlayer();
        if (!player)
            return SPELL_AURA_PROC_FAILED;

        ResetHolyShockCooldowns(player);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_paladin_vengeance : public AuraScript
{
    int32 OnAuraValueCalculate(Aura* /*aura*/, Unit* /*caster*/, Unit* target, SpellEntry const* spellProto, SpellEffectIndex effIdx, Item* /*castItem*/, int32 value) override
    {
        if (target && target->HasAura(SPELL_PALADIN_RIGHTEOUS_FURY) && spellProto->EffectApplyAuraName[effIdx] == SPELL_AURA_MOD_THREAT)
        {
            switch (spellProto->Id)
            {
                case SPELL_PALADIN_VENGEANCE_HELPER_R1:
                case SPELL_PALADIN_VENGEANCE_HELPER_R2:
                case SPELL_PALADIN_VENGEANCE_HELPER_R3:
                case SPELL_PALADIN_VENGEANCE_HELPER_R4:
                case SPELL_PALADIN_VENGEANCE_HELPER_R5:
                    return 0;
                default:
                    break;
            }
        }

        return value;
    }
};

struct spell_paladin_righteous_defense : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* /*victim*/, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!owner->HasAura(SPELL_PALADIN_RIGHTEOUS_FURY))
            return SPELL_AURA_PROC_FAILED;

        uint32 triggerSpellId = aura->GetSpellProto()->EffectTriggerSpell[aura->GetEffIndex()];
        if (owner->HasAura(triggerSpellId))
            owner->RemoveAurasDueToSpell(triggerSpellId);

        owner->CastSpell(owner, triggerSpellId, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_paladin_judgement_of_light_wisdom : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* /*owner*/, Unit* victim, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        uint32 triggerSpellId = 0;
        switch (aura->GetId())
        {
            case SPELL_PALADIN_JUDGEMENT_OF_LIGHT_R1: triggerSpellId = SPELL_PALADIN_JUDGEMENT_OF_LIGHT_PROC_R1; break;
            case SPELL_PALADIN_JUDGEMENT_OF_LIGHT_R2: triggerSpellId = SPELL_PALADIN_JUDGEMENT_OF_LIGHT_PROC_R2; break;
            case SPELL_PALADIN_JUDGEMENT_OF_LIGHT_R3: triggerSpellId = SPELL_PALADIN_JUDGEMENT_OF_LIGHT_PROC_R3; break;
            case SPELL_PALADIN_JUDGEMENT_OF_LIGHT_R4: triggerSpellId = SPELL_PALADIN_JUDGEMENT_OF_LIGHT_PROC_R4; break;
            case SPELL_PALADIN_JUDGEMENT_OF_WISDOM_R1: triggerSpellId = SPELL_PALADIN_JUDGEMENT_OF_WISDOM_PROC_R1; break;
            case SPELL_PALADIN_JUDGEMENT_OF_WISDOM_R2: triggerSpellId = SPELL_PALADIN_JUDGEMENT_OF_WISDOM_PROC_R2; break;
            case SPELL_PALADIN_JUDGEMENT_OF_WISDOM_R3: triggerSpellId = SPELL_PALADIN_JUDGEMENT_OF_WISDOM_PROC_R3; break;
            case SPELL_PALADIN_JUDGEMENT_OF_WISDOM_R4: triggerSpellId = SPELL_PALADIN_JUDGEMENT_OF_WISDOM_PROC_R4; break;
            case SPELL_PALADIN_JUDGEMENT_OF_WISDOM_R5: triggerSpellId = SPELL_PALADIN_JUDGEMENT_OF_WISDOM_PROC_R5; break;
        }

        if (!victim || !triggerSpellId)
            return SPELL_AURA_PROC_FAILED;

        victim->CastSpell(victim, triggerSpellId, true, nullptr, aura, victim->GetObjectGuid());
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_paladin_judgement_of_light_wisdom_proc : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx == EFFECT_INDEX_0 &&
                spell->m_spellInfo->IsFitToFamilyMask<CF_PALADIN_JUDGEMENT_OF_WISDOM_LIGHT>() &&
                spell->m_spellInfo->SpellIconID == 299)
        {
            if (int32 bonus = GetJudgementOfLightFlatHealBonus(spell->m_casterUnit))
                spell->m_currentBasePoints[effIdx] = bonus;
        }

        return true;
    }

    bool OnEffectHealCalculate(Spell* spell, SpellEffectIndex effIdx, int32& heal) const override
    {
        if (effIdx == EFFECT_INDEX_0 && spell->m_triggeredByAuraBasePoints > 0)
            heal += spell->m_triggeredByAuraBasePoints;

        return true;
    }
};

struct spell_paladin_reckoning : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_0)
            return true;

        Unit* target = spell->GetUnitTarget();
        if (!target)
            return false;

#if SUPPORTED_CLIENT_BUILD <= CLIENT_BUILD_1_2_4
        target->ResetAttackTimer();
#endif

#if SUPPORTED_CLIENT_BUILD > CLIENT_BUILD_1_4_2
        if (target->GetExtraAttacks() < 4)
#endif
            target->AddExtraAttack();

        return false;
    }
};

struct spell_paladin_flash_of_light : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_0)
            return true;

        Unit* target = spell->GetUnitTarget();
        if (!target || !target->IsAlive())
            return false;

        int32 heal = spell->damage;
        if (spell->m_casterUnit)
        {
            if (spell->m_casterUnit->HasAura(SPELL_PALADIN_FLASH_OF_LIGHT_BONUS_53))
                heal += 53;
            if (spell->m_casterUnit->HasAura(SPELL_PALADIN_FLASH_OF_LIGHT_BONUS_41))
                heal += 41;
        }

        int32 spellId = spell->m_spellInfo->Id;
        spell->m_caster->CastCustomSpell(target, SPELL_PALADIN_FLASH_OF_LIGHT_HEAL, &heal, &spellId, nullptr, true);
        return false;
    }
};

struct spell_paladin_seal_of_fury_proc : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_0)
            return true;

        Unit* target = spell->GetUnitTarget();
        if (!target || !target->CanHaveThreatList() || !spell->m_casterUnit)
            return false;

        if (target->GetThreatManager().getThreat(spell->m_casterUnit))
            target->GetThreatManager().addThreat(spell->m_casterUnit, spell->damage * spell->m_casterUnit->GetAttackTime(BASE_ATTACK) / 1000);

        return false;
    }
};

struct spell_paladin_illumination : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* /*victim*/, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!procSpell || !owner->ToPlayer())
            return SPELL_AURA_PROC_FAILED;

        SpellEntry const* originalSpell = procSpell;
        if (procSpell->IsFitToFamilyMask<CF_PALADIN_HOLY_SHOCK>())
        {
            uint32 originalSpellId = 0;
            switch (procSpell->Id)
            {
                case SPELL_PALADIN_HOLY_SHOCK_HEAL_R1: originalSpellId = SPELL_PALADIN_HOLY_SHOCK_R1; break;
                case SPELL_PALADIN_HOLY_SHOCK_HEAL_R2: originalSpellId = SPELL_PALADIN_HOLY_SHOCK_R2; break;
                case SPELL_PALADIN_HOLY_SHOCK_HEAL_R3: originalSpellId = SPELL_PALADIN_HOLY_SHOCK_R3; break;
                case SPELL_PALADIN_HOLY_SHOCK_HEAL_R4: originalSpellId = SPELL_PALADIN_HOLY_SHOCK_R4; break;
                default: return SPELL_AURA_PROC_FAILED;
            }
            originalSpell = sSpellMgr.GetSpellEntry(originalSpellId);
        }

        if (!originalSpell)
            return SPELL_AURA_PROC_FAILED;

        int32 mana = originalSpell->manaCost * aura->GetModifier()->m_amount / 100;
        owner->CastCustomSpell(owner, SPELL_PALADIN_ILLUMINATION_ENERGIZE, &mana, nullptr, nullptr, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_paladin_consecration : public AuraScript
{
    void OnPeriodicDamageCalculateAmount(Aura* aura, float& amount) override
    {
        static constexpr float tickMultipliers[] = { 1.56f, 1.40f, 1.24f, 1.08f, 0.92f, 0.76f, 0.60f, 0.44f };

        Unit* caster = aura->GetCaster();
        Unit* target = aura->GetTarget();
        if (!caster || !target)
            return;

        amount = caster->SpellDamageBonusDone(target, aura->GetSpellProto(), aura->GetEffIndex(), aura->GetBasePoints(), DOT, aura->GetStackAmount());

        uint32 tick = aura->GetAuraTicks();
        if (!tick)
            return;

        uint32 tickIndex = tick - 1;
        uint32 const lastTickIndex = sizeof(tickMultipliers) / sizeof(tickMultipliers[0]) - 1;
        if (tickIndex > lastTickIndex)
            tickIndex = lastTickIndex;

        amount *= tickMultipliers[tickIndex];
    }
};

struct spell_paladin_daybreak_heal : public SpellScript
{
    void OnSpellCritChanceCalculate(Spell* /*spell*/, Unit const* /*victim*/, float& critChance) const override
    {
        critChance = 0.0f;
    }
};

struct spell_paladin_daybreak_proc : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* /*owner*/, Unit* /*victim*/, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        Unit* caster = aura->GetCaster();
        Unit* target = aura->GetTarget();
        if (!caster || !target || !target->IsAlive())
            return SPELL_AURA_PROC_FAILED;

        uint32 const triggerSpellId = aura->GetSpellProto()->EffectTriggerSpell[aura->GetEffIndex()];
        if (!triggerSpellId)
            return SPELL_AURA_PROC_FAILED;

        target->CastSpell(target, triggerSpellId, true, nullptr, aura, caster->GetObjectGuid());
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_paladin_repentance_passive : public AuraScript
{
    std::optional<SpellProcEventTriggerCheck> OnCheckProc(Unit const* /*owner*/, Unit* victim, SpellAuraHolder* /*holder*/, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 procExtra, WeaponAttackType /*attType*/, bool isVictim) override
    {
        if (isVictim || !victim || victim->IsPlayer() || !procSpell)
            return SPELL_PROC_TRIGGER_FAILED;

        if (!(procExtra & (PROC_EX_RESIST | PROC_EX_IMMUNE)))
            return SPELL_PROC_TRIGGER_FAILED;

        return GetRepentAura(procSpell->Id) ? SPELL_PROC_TRIGGER_OK : SPELL_PROC_TRIGGER_FAILED;
    }

    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* victim, uint32 /*damage*/, int32 /*originalAmount*/, Aura* /*aura*/, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 procEx, uint32 /*cooldown*/) override
    {
        if (!owner || !victim || victim->IsPlayer() || !procSpell)
            return SPELL_AURA_PROC_FAILED;

        if (!(procEx & (PROC_EX_RESIST | PROC_EX_IMMUNE)))
            return SPELL_AURA_PROC_FAILED;

        uint32 const repentAuraId = GetRepentAura(procSpell->Id);
        if (!repentAuraId)
            return SPELL_AURA_PROC_FAILED;

        owner->CastSpell(victim, repentAuraId, true, nullptr, nullptr, owner->GetObjectGuid());
        return SPELL_AURA_PROC_OK;
    }

private:
    static uint32 GetRepentAura(uint32 spellId)
    {
        switch (spellId)
        {
            case SPELL_PALADIN_REPENTANCE_R1: return SPELL_PALADIN_REPENT_AURA_R1;
            case SPELL_PALADIN_REPENTANCE_R2: return SPELL_PALADIN_REPENT_AURA_R2;
            case SPELL_PALADIN_REPENTANCE_R3: return SPELL_PALADIN_REPENT_AURA_R3;
            default: return 0;
        }
    }
};

struct spell_paladin_repent : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* /*owner*/, Unit* /*victim*/, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        uint32 const now = WorldTimer::getMSTime();
        if (m_lastProcTime && WorldTimer::getMSTimeDiff(m_lastProcTime, now) < 500)
            return SPELL_AURA_PROC_FAILED;

        Unit* caster = aura->GetCaster();
        Unit* target = aura->GetTarget();
        if (!caster || !target || !target->IsAlive())
            return SPELL_AURA_PROC_FAILED;

        uint32 const triggerSpellId = aura->GetSpellProto()->EffectTriggerSpell[aura->GetEffIndex()];
        if (!triggerSpellId)
            return SPELL_AURA_PROC_FAILED;

        target->CastSpell(target, triggerSpellId, true, nullptr, aura, caster->GetObjectGuid(), nullptr, procSpell);
        m_lastProcTime = now;
        return SPELL_AURA_PROC_OK;
    }

private:
    uint32 m_lastProcTime = 0;
};

struct spell_paladin_improved_devotion_aura : public AuraScript
{
    void OnAuraInit(Aura* aura) override
    {
        aura->SetPeriodicTimer(1 * IN_MILLISECONDS);
    }

    void OnAfterApply(Aura* aura, bool apply) override
    {
        if (!apply)
            aura->GetTarget()->RemoveAurasDueToSpell(SPELL_PALADIN_DEVOTION_AURA_DAMAGE_REDUCTION);
    }

    void OnPeriodicDummy(Aura* aura) override
    {
        Unit* target = aura->GetTarget();
        if (HasDevotionAura(target))
        {
            if (!target->HasAura(SPELL_PALADIN_DEVOTION_AURA_DAMAGE_REDUCTION))
                target->CastSpell(target, SPELL_PALADIN_DEVOTION_AURA_DAMAGE_REDUCTION, true, nullptr, aura);
        }
        else if (target->HasAura(SPELL_PALADIN_DEVOTION_AURA_DAMAGE_REDUCTION))
            target->RemoveAurasDueToSpell(SPELL_PALADIN_DEVOTION_AURA_DAMAGE_REDUCTION);
    }

private:
    static bool HasDevotionAura(Unit const* target)
    {
        return target->HasAura(SPELL_PALADIN_DEVOTION_AURA_R1) ||
            target->HasAura(SPELL_PALADIN_DEVOTION_AURA_R2) ||
            target->HasAura(SPELL_PALADIN_DEVOTION_AURA_R3) ||
            target->HasAura(SPELL_PALADIN_DEVOTION_AURA_R4) ||
            target->HasAura(SPELL_PALADIN_DEVOTION_AURA_R5) ||
            target->HasAura(SPELL_PALADIN_DEVOTION_AURA_R6) ||
            target->HasAura(SPELL_PALADIN_DEVOTION_AURA_R7);
    }
};

struct spell_paladin_shield_specialization : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* /*victim*/, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 cooldown) override
    {
        uint32 const triggerSpellId = aura->GetSpellProto()->EffectTriggerSpell[aura->GetEffIndex()];
        if (!triggerSpellId)
            return SPELL_AURA_PROC_FAILED;

        if (cooldown && owner->HasSpellCooldown(triggerSpellId))
            return SPELL_AURA_PROC_FAILED;

        int32 const mana = int32(owner->GetMaxPower(POWER_MANA) * 0.02f);
        if (!mana)
            return SPELL_AURA_PROC_FAILED;

        owner->EnergizeBySpell(owner, triggerSpellId, mana, POWER_MANA);
        if (cooldown)
            owner->AddSpellCooldown(triggerSpellId, 0, time(nullptr) + cooldown);

        return SPELL_AURA_PROC_OK;
    }
};
}

void AddSC_paladin_spell_scripts()
{
    RegisterSpellScript("spell_paladin_invulnerability_forbearance", &GetSpellScript<spell_paladin_invulnerability_forbearance>);
    RegisterSpellScript("spell_paladin_hammer_of_wrath", &GetSpellScript<spell_paladin_hammer_of_wrath>);
    RegisterSpellScript("spell_paladin_judgement_of_command", &GetSpellScript<spell_paladin_judgement_of_command>);
    RegisterSpellScript("spell_paladin_judgement_of_command_dummy", &GetSpellScript<spell_paladin_judgement_of_command_dummy>);
    RegisterSpellScript("spell_paladin_judgement_of_the_crusader", &GetSpellScript<spell_paladin_judgement_of_the_crusader>);
    RegisterSpellScript("spell_paladin_holy_shock", &GetSpellScript<spell_paladin_holy_shock>);
    RegisterSpellScript("spell_paladin_holy_strike", &GetSpellScript<spell_paladin_holy_strike>);
    RegisterSpellScript("spell_paladin_crusader_strike", &GetSpellScript<spell_paladin_crusader_strike>);
    RegisterSpellScript("spell_paladin_judgement", &GetSpellScript<spell_paladin_judgement>);
    RegisterAuraScript("spell_paladin_conviction_seals", &GetAuraScript<spell_paladin_conviction_seals>);
    RegisterAuraScript("spell_paladin_sanctified_command", &GetAuraScript<spell_paladin_sanctified_command>);
    RegisterAuraScript("spell_paladin_eye_for_an_eye", &GetAuraScript<spell_paladin_eye_for_an_eye>);
    RegisterAuraScript("spell_paladin_improved_lay_on_hands", &GetAuraScript<spell_paladin_improved_lay_on_hands>);
    RegisterAuraScript("spell_paladin_seal_of_righteousness", &GetAuraScript<spell_paladin_seal_of_righteousness>);
    RegisterAuraScript("spell_paladin_blessed_strikes", &GetAuraScript<spell_paladin_blessed_strikes>);
    RegisterAuraScript("spell_paladin_vengeance", &GetAuraScript<spell_paladin_vengeance>);
    RegisterAuraScript("spell_paladin_righteous_defense", &GetAuraScript<spell_paladin_righteous_defense>);
    RegisterSpellAndAuraScript("spell_paladin_judgement_of_light_wisdom", &GetSpellScript<spell_paladin_judgement_of_light_wisdom_proc>, &GetAuraScript<spell_paladin_judgement_of_light_wisdom>);
    RegisterSpellScript("spell_paladin_flash_of_light", &GetSpellScript<spell_paladin_flash_of_light>);
    RegisterSpellScript("spell_paladin_seal_of_fury_proc", &GetSpellScript<spell_paladin_seal_of_fury_proc>);
    RegisterAuraScript("spell_paladin_illumination", &GetAuraScript<spell_paladin_illumination>);
    RegisterAuraScript("spell_paladin_consecration", &GetAuraScript<spell_paladin_consecration>);
    RegisterSpellScript("spell_paladin_daybreak_heal", &GetSpellScript<spell_paladin_daybreak_heal>);
    RegisterAuraScript("spell_paladin_daybreak_proc", &GetAuraScript<spell_paladin_daybreak_proc>);
    RegisterAuraScript("spell_paladin_repentance_passive", &GetAuraScript<spell_paladin_repentance_passive>);
    RegisterAuraScript("spell_paladin_repent", &GetAuraScript<spell_paladin_repent>);
    RegisterSpellScript("spell_paladin_reckoning", &GetSpellScript<spell_paladin_reckoning>);
    RegisterAuraScript("spell_paladin_improved_devotion_aura", &GetAuraScript<spell_paladin_improved_devotion_aura>);
    RegisterAuraScript("spell_paladin_shield_specialization", &GetAuraScript<spell_paladin_shield_specialization>);
}
