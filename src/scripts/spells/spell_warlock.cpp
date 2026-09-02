#include "scriptPCH.h"

#include <cmath>
#include <utility>
#include <vector>

namespace
{
enum WarlockSpells
{
    SPELL_WARLOCK_CURSE_OF_RECKLESSNESS_R1       = 704,
    SPELL_WARLOCK_CURSE_OF_AGONY_R1              = 980,
    SPELL_WARLOCK_CURSE_OF_IDIOCY_R1             = 1010,
    SPELL_WARLOCK_CURSE_OF_AGONY_R2              = 1014,
    SPELL_WARLOCK_ENSLAVE_DEMON_R1               = 1098,
    SPELL_WARLOCK_DRAIN_SOUL_R1                  = 1120,
    SPELL_WARLOCK_CURSE_OF_THE_ELEMENTS_R1       = 1490,
    SPELL_WARLOCK_CURSE_OF_TONGUES_R1            = 1714,
    SPELL_WARLOCK_CREATE_HEALTHSTONE             = 5699,
    SPELL_WARLOCK_CREATE_HEALTHSTONE_MINOR       = 6201,
    SPELL_WARLOCK_CREATE_HEALTHSTONE_LESSER      = 6202,
    SPELL_WARLOCK_CURSE_OF_AGONY_R3              = 6217,
    SPELL_WARLOCK_DEATH_COIL_R1                  = 6789,
    SPELL_WARLOCK_CURSE_OF_AGONY_R4              = 11711,
    SPELL_WARLOCK_CURSE_OF_AGONY_R5              = 11712,
    SPELL_WARLOCK_CURSE_OF_AGONY_R6              = 11713,
    SPELL_WARLOCK_ENSLAVE_DEMON_R2               = 11725,
    SPELL_WARLOCK_ENSLAVE_DEMON_R3               = 11726,
    SPELL_WARLOCK_CREATE_HEALTHSTONE_GREATER     = 11729,
    SPELL_WARLOCK_CREATE_HEALTHSTONE_MAJOR       = 11730,
    SPELL_WARLOCK_SHADOW_VULNERABILITY_R1        = 17793,
    SPELL_WARLOCK_SHADOW_VULNERABILITY_R2        = 17796,
    SPELL_WARLOCK_SHADOW_VULNERABILITY_R3        = 17801,
    SPELL_WARLOCK_SHADOW_VULNERABILITY_R4        = 17802,
    SPELL_WARLOCK_SHADOW_VULNERABILITY_R5        = 17803,
    SPELL_WARLOCK_CURSE_OF_SHADOW_R1             = 17862,
    SPELL_WARLOCK_PYROCLASM_STUN                 = 18093,
    SPELL_WARLOCK_PYROCLASM_R1                   = 18096,
    SPELL_WARLOCK_CURSE_OF_DOOM_EFFECT           = 18662,
    SPELL_WARLOCK_IMPROVED_HEALTHSTONE_R1        = 18692,
    SPELL_WARLOCK_IMPROVED_HEALTHSTONE_R2        = 18693,
    SPELL_WARLOCK_SOUL_FUNNEL_R1                 = 18703,
    SPELL_WARLOCK_SOUL_FUNNEL_R2                 = 18704,
    SPELL_WARLOCK_BURNING_WISH                   = 18789,
    SPELL_WARLOCK_FEL_STAMINA                    = 18790,
    SPELL_WARLOCK_TOUCH_OF_SHADOW                = 18791,
    SPELL_WARLOCK_FEL_ENERGY                     = 18792,
    SPELL_WARLOCK_DEVOUR_MAGIC_R1                = 19505,
    SPELL_WARLOCK_DEVOUR_MAGIC_EFFECT_R1         = 19658,
    SPELL_WARLOCK_DEVOUR_MAGIC_R2                = 19731,
    SPELL_WARLOCK_DEVOUR_MAGIC_EFFECT_R2         = 19732,
    SPELL_WARLOCK_DEVOUR_MAGIC_EFFECT_R3         = 19733,
    SPELL_WARLOCK_DEVOUR_MAGIC_R3                = 19734,
    SPELL_WARLOCK_DEVOUR_MAGIC_EFFECT_R4         = 19735,
    SPELL_WARLOCK_DEVOUR_MAGIC_R4                = 19736,
    SPELL_WARLOCK_INFERNO_EFFECT                 = 22703,
    SPELL_WARLOCK_ROOT                           = 22707,
    SPELL_WARLOCK_SOUL_LINK_PET                  = 25228,
    SPELL_WARLOCK_INCREASED_PET_DAMAGE           = 27230,
    SPELL_WARLOCK_SUMMON_FELGUARD                = 30146,
    SPELL_WARLOCK_LIFE_TAP_ENERGIZE              = 31818,
    SPELL_WARLOCK_DEMON_AVOIDANCE                = 46024,
    SPELL_WARLOCK_WRATHSTONE                     = 51700,
    SPELL_WARLOCK_UNLEASHED_POTENTIAL_R1         = 51718,
    SPELL_WARLOCK_UNLEASHED_POTENTIAL_R2         = 51719,
    SPELL_WARLOCK_UNLEASHED_POTENTIAL_R3         = 51720,
    SPELL_WARLOCK_ENSLAVE_DEMON_BREAK_EARLY      = 52377,
    SPELL_WARLOCK_MALEDICTION                    = 52546,
    SPELL_WARLOCK_DARK_HARVEST_R1                = 52550,
    SPELL_WARLOCK_DARK_HARVEST_R2                = 52551,
    SPELL_WARLOCK_DARK_HARVEST_R3                = 52552,
    SPELL_WARLOCK_RAPID_DETERIORATION_R1         = 52555,
    SPELL_WARLOCK_RAPID_DETERIORATION_R2         = 52556,
    SPELL_WARLOCK_SOUL_SIPHON_R1                 = 52558,
    SPELL_WARLOCK_SOUL_SIPHON_R2                 = 52559,
    SPELL_WARLOCK_SOUL_SIPHON_R3                 = 52560,
    SPELL_WARLOCK_FELSTONE_HEAL                  = 52657,
    SPELL_WARLOCK_MALEDICTION_TRIGGER            = 52670,
    SPELL_WARLOCK_UNLEASHED_POTENTIAL_VISUAL     = 52965,
    SPELL_WARLOCK_GREATER_DEMON_ENSLAVE          = 53222,
    SPELL_WARLOCK_ENSLAVE_HEALING_REDUCTION      = 58184,
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

void RegisterGameObjectAI(char const* name, GameObjectAI* (*getter)(GameObject*))
{
    Script* script = new Script;
    script->Name = name;
    script->GOGetAI = getter;
    script->RegisterSelf();
}

Aura* GetCasterImmolatePeriodicAura(Unit* target, WorldObject* caster)
{
    if (!target || !caster)
        return nullptr;

    Unit::AuraList const& periodicDamage = target->GetAurasByType(SPELL_AURA_PERIODIC_DAMAGE);
    for (Aura* aura : periodicDamage)
    {
        if (aura->GetSpellProto()->IsFitToFamily<SPELLFAMILY_WARLOCK, CF_WARLOCK_IMMOLATE>() &&
                aura->GetCasterGuid() == caster->GetObjectGuid())
            return aura;
    }

    return nullptr;
}

bool HasCasterCurseOfAgony(Unit* target, ObjectGuid const& casterGuid)
{
    if (!target || !casterGuid)
        return false;

    Unit::AuraList const& periodicDamage = target->GetAurasByType(SPELL_AURA_PERIODIC_DAMAGE);
    for (Aura* aura : periodicDamage)
    {
        if (aura->GetSpellProto()->IsFitToFamily<SPELLFAMILY_WARLOCK, CF_WARLOCK_CURSE_OF_AGONY>() &&
                aura->GetCasterGuid() == casterGuid)
            return true;
    }

    return false;
}

void RemoveCasterCurseOfDoom(Unit* target, ObjectGuid const& casterGuid)
{
    if (!target || !casterGuid)
        return;

    Unit::AuraList const& periodicDamage = target->GetAurasByType(SPELL_AURA_PERIODIC_DAMAGE);
    for (Aura* aura : periodicDamage)
    {
        if (aura->GetSpellProto()->IsFitToFamily<SPELLFAMILY_WARLOCK, CF_WARLOCK_CURSE_OF_DOOM>() &&
                aura->GetCasterGuid() == casterGuid)
        {
            target->RemoveAurasByCasterSpell(aura->GetId(), casterGuid);
            return;
        }
    }
}

void RemoveOtherCasterCurseOfAgonyRanks(Unit* target, ObjectGuid const& casterGuid, uint32 currentSpellId)
{
    if (!target || !casterGuid)
        return;

    static uint32 const agonyRanks[] =
    {
        SPELL_WARLOCK_CURSE_OF_AGONY_R1,
        SPELL_WARLOCK_CURSE_OF_AGONY_R2,
        SPELL_WARLOCK_CURSE_OF_AGONY_R3,
        SPELL_WARLOCK_CURSE_OF_AGONY_R4,
        SPELL_WARLOCK_CURSE_OF_AGONY_R5,
        SPELL_WARLOCK_CURSE_OF_AGONY_R6
    };
    for (uint32 spellId : agonyRanks)
        if (spellId != currentSpellId)
            target->RemoveAurasByCasterSpell(spellId, casterGuid);
}

uint32 GetHighestKnownCurseOfAgony(Unit* caster)
{
    if (!caster)
        return 0;

    static uint32 const agonyRanks[] =
    {
        SPELL_WARLOCK_CURSE_OF_AGONY_R6,
        SPELL_WARLOCK_CURSE_OF_AGONY_R5,
        SPELL_WARLOCK_CURSE_OF_AGONY_R4,
        SPELL_WARLOCK_CURSE_OF_AGONY_R3,
        SPELL_WARLOCK_CURSE_OF_AGONY_R2,
        SPELL_WARLOCK_CURSE_OF_AGONY_R1
    };
    for (uint32 spellId : agonyRanks)
        if (caster->HasSpell(spellId))
            return spellId;

    return 0;
}

bool IsMaledictionAutoAgonyCurse(SpellEntry const* spellInfo)
{
    if (!spellInfo)
        return false;

    switch (sSpellMgr.GetFirstSpellInChain(spellInfo->Id))
    {
        case SPELL_WARLOCK_CURSE_OF_RECKLESSNESS_R1:
        case SPELL_WARLOCK_CURSE_OF_THE_ELEMENTS_R1:
        case SPELL_WARLOCK_CURSE_OF_SHADOW_R1:
            return true;
        default:
            return false;
    }
}

bool IsDarkHarvestSpell(uint32 spellId)
{
    switch (spellId)
    {
        case SPELL_WARLOCK_DARK_HARVEST_R1:
        case SPELL_WARLOCK_DARK_HARVEST_R2:
        case SPELL_WARLOCK_DARK_HARVEST_R3:
            return true;
        default:
            return false;
    }
}

bool IsUnleashedPotentialEffect(uint32 spellId)
{
    switch (spellId)
    {
        case SPELL_WARLOCK_UNLEASHED_POTENTIAL_R1:
        case SPELL_WARLOCK_UNLEASHED_POTENTIAL_R2:
        case SPELL_WARLOCK_UNLEASHED_POTENTIAL_R3:
            return true;
        default:
            return false;
    }
}

bool IsControlledDemon(Unit const* unit)
{
    Creature const* creature = unit ? unit->ToCreature() : nullptr;
    CreatureInfo const* creatureInfo = creature ? creature->GetCreatureInfo() : nullptr;
    return creature && creature->IsAlive() && creatureInfo && creatureInfo->type == CREATURE_TYPE_DEMON;
}

bool HasControlledDemon(Unit const* unit)
{
    Player const* player = unit ? unit->ToPlayer() : nullptr;
    if (!player)
        return false;

    return IsControlledDemon(player->GetPet()) || IsControlledDemon(player->GetCharm());
}

Aura const* GetSoulFunnelAura(Unit* caster)
{
    if (!caster)
        return nullptr;

    if (Aura const* aura = caster->GetAura(SPELL_WARLOCK_SOUL_FUNNEL_R2, EFFECT_INDEX_0))
        return aura;

    return caster->GetAura(SPELL_WARLOCK_SOUL_FUNNEL_R1, EFFECT_INDEX_0);
}

bool IsHealthFunnel(SpellEntry const* spellInfo)
{
    return spellInfo && spellInfo->SpellFamilyName == SPELLFAMILY_WARLOCK &&
           spellInfo->IsFitToFamilyMask<CF_WARLOCK_HEALTH_FUNNEL>() &&
           spellInfo->EffectApplyAuraName[EFFECT_INDEX_0] == SPELL_AURA_PERIODIC_HEAL;
}

bool IsManaFunnel(SpellEntry const* spellInfo)
{
    return spellInfo && spellInfo->SpellFamilyName == SPELLFAMILY_WARLOCK &&
           spellInfo->IsFitToFamilyMask<CF_WARLOCK_HEALTH_FUNNEL>() &&
           spellInfo->EffectApplyAuraName[EFFECT_INDEX_0] == SPELL_AURA_PERIODIC_ENERGIZE;
}

bool IsDarkHarvestAfflictionPeriodicAura(Aura const* aura, ObjectGuid const& casterGuid)
{
    if (!aura || aura->GetCasterGuid() != casterGuid || IsDarkHarvestSpell(aura->GetId()))
        return false;

    SpellEntry const* spellInfo = aura->GetSpellProto();
    if (!spellInfo || spellInfo->SpellFamilyName != SPELLFAMILY_WARLOCK)
        return false;

    AuraType const auraType = aura->GetModifier()->m_auraname;
    if (auraType != SPELL_AURA_PERIODIC_DAMAGE && auraType != SPELL_AURA_PERIODIC_LEECH)
        return false;

    return spellInfo->IsFitToFamilyMask<CF_WARLOCK_CORRUPTION>() ||
        spellInfo->IsFitToFamilyMask<CF_WARLOCK_DRAIN_LIFE>() ||
        spellInfo->IsFitToFamilyMask<CF_WARLOCK_CURSE_OF_AGONY>() ||
        spellInfo->IsFitToFamilyMask<CF_WARLOCK_DRAIN_SOUL>() ||
        spellInfo->IsFitToFamilyMask<CF_WARLOCK_SIPHON_LIFE>() ||
        spellInfo->IsFitToFamilyMask<CF_WARLOCK_CURSE_OF_DOOM>();
}

bool IsSoulSiphonDamageSpell(SpellEntry const* spellInfo)
{
    if (!spellInfo)
        return false;

    switch (sSpellMgr.GetFirstSpellInChain(spellInfo->Id))
    {
        case SPELL_WARLOCK_DRAIN_SOUL_R1:
        case SPELL_WARLOCK_DEATH_COIL_R1:
        case SPELL_WARLOCK_DARK_HARVEST_R1:
            return true;
        default:
            return false;
    }
}

bool IsSoulSiphonAfflictionEffect(SpellEntry const* spellInfo)
{
    if (!spellInfo || spellInfo->SpellFamilyName != SPELLFAMILY_WARLOCK)
        return false;

    if (spellInfo->IsFitToFamilyMask<CF_WARLOCK_DRAIN_LIFE, CF_WARLOCK_DRAIN_MANA, CF_WARLOCK_DRAIN_SOUL>())
        return false;

    if (spellInfo->IsFitToFamilyMask<
            CF_WARLOCK_CORRUPTION,
            CF_WARLOCK_CURSE_OF_AGONY,
            CF_WARLOCK_CURSE_OF_WEAKNESS,
            CF_WARLOCK_CURSE_OF_EXHAUSTION,
            CF_WARLOCK_SIPHON_LIFE,
            CF_WARLOCK_CURSE_OF_DOOM,
            CF_WARLOCK_DARK_HARVEST>())
        return true;

    switch (sSpellMgr.GetFirstSpellInChain(spellInfo->Id))
    {
        case SPELL_WARLOCK_CURSE_OF_RECKLESSNESS_R1:
        case SPELL_WARLOCK_CURSE_OF_IDIOCY_R1:
        case SPELL_WARLOCK_CURSE_OF_THE_ELEMENTS_R1:
        case SPELL_WARLOCK_CURSE_OF_TONGUES_R1:
        case SPELL_WARLOCK_CURSE_OF_SHADOW_R1:
            return true;
        default:
            return false;
    }
}

bool IsShadowVulnerabilityProcSpell(SpellEntry const* spellInfo, uint32 procFlag)
{
    if (!spellInfo || spellInfo->SpellFamilyName != SPELLFAMILY_WARLOCK)
        return false;

    if ((procFlag & PROC_FLAG_DEAL_HARMFUL_SPELL) && spellInfo->IsFitToFamilyMask<CF_WARLOCK_SHADOW_BOLT>())
        return true;

    if ((procFlag & PROC_FLAG_DEAL_HARMFUL_PERIODIC) && spellInfo->IsFitToFamilyMask<CF_WARLOCK_DRAIN_SOUL>())
        return true;

    return false;
}

float GetShadowVulnerabilityCritBonus(uint32 spellId)
{
    switch (spellId)
    {
        case SPELL_WARLOCK_SHADOW_VULNERABILITY_R1: return 5.0f;
        case SPELL_WARLOCK_SHADOW_VULNERABILITY_R2: return 10.0f;
        case SPELL_WARLOCK_SHADOW_VULNERABILITY_R3: return 15.0f;
        case SPELL_WARLOCK_SHADOW_VULNERABILITY_R4: return 20.0f;
        case SPELL_WARLOCK_SHADOW_VULNERABILITY_R5: return 25.0f;
        default: return 0.0f;
    }
}

uint32 GetSoulSiphonPercentPerEffect(Unit* caster)
{
    if (!caster)
        return 0;

    if (caster->HasAura(SPELL_WARLOCK_SOUL_SIPHON_R3) || caster->HasSpell(SPELL_WARLOCK_SOUL_SIPHON_R3))
        return 6;
    if (caster->HasAura(SPELL_WARLOCK_SOUL_SIPHON_R2) || caster->HasSpell(SPELL_WARLOCK_SOUL_SIPHON_R2))
        return 4;
    if (caster->HasAura(SPELL_WARLOCK_SOUL_SIPHON_R1) || caster->HasSpell(SPELL_WARLOCK_SOUL_SIPHON_R1))
        return 2;

    return 0;
}

uint32 CountSoulSiphonAfflictionEffects(Unit* caster, Unit* target)
{
    if (!caster || !target)
        return 0;

    uint32 count = 0;
    ObjectGuid const& casterGuid = caster->GetObjectGuid();
    Unit::SpellAuraHolderMap const& auraHolders = target->GetSpellAuraHolderMap();
    for (auto const& itr : auraHolders)
    {
        SpellAuraHolder const* holder = itr.second;
        if (!holder || holder->GetCasterGuid() != casterGuid || !IsSoulSiphonAfflictionEffect(holder->GetSpellProto()))
            continue;

        if (++count >= 4)
            break;
    }

    return count;
}

void ApplySoulSiphonDamageBonus(Unit* caster, Unit* target, SpellEntry const* spellInfo, float& damage)
{
    if (!IsSoulSiphonDamageSpell(spellInfo) || damage <= 0.0f)
        return;

    uint32 const percentPerEffect = GetSoulSiphonPercentPerEffect(caster);
    if (!percentPerEffect)
        return;

    uint32 const effectCount = CountSoulSiphonAfflictionEffects(caster, target);
    if (!effectCount)
        return;

    damage *= (100.0f + float(percentPerEffect * effectCount)) / 100.0f;
}

struct DarkHarvestPeriodicAuraState
{
    uint32 spellId;
    ObjectGuid casterGuid;
    SpellEffectIndex effIndex;
    time_t applyTime;
    uint32 originalPeriod;
    uint32 reducedPeriod;
};

struct spell_warlock_fire_shield : public SpellScript
{
    SpellCastResult OnCheckCast(Spell* spell, bool /*strict*/) const override
    {
        return spell->m_targets.getUnitTarget() == spell->m_caster ? SPELL_FAILED_BAD_TARGETS : SPELL_CAST_OK;
    }
};

struct spell_warlock_conflagrate : public SpellScript
{
    SpellCastResult OnCheckCast(Spell* spell, bool /*strict*/) const override
    {
        Unit* target = spell->m_targets.getUnitTarget();
        if (!target)
            return SPELL_FAILED_BAD_IMPLICIT_TARGETS;

        return SPELL_CAST_OK;
    }

    void OnEffectDamageCalculate(Spell* spell, SpellEffectIndex /*effIdx*/, float& damage) const override
    {
        Unit* target = spell->GetUnitTarget();
        if (!target)
            return;

        Aura* immolate = GetCasterImmolatePeriodicAura(target, spell->m_caster);
        if (!immolate)
            return;

        damage += immolate->GetModifier()->m_amount;

        SpellAuraHolder* holder = immolate->GetHolder();
        int32 const remainingDuration = holder->GetAuraDuration();
        if (remainingDuration <= 3 * IN_MILLISECONDS)
            target->RemoveAurasByCasterSpell(immolate->GetId(), spell->m_caster->GetObjectGuid());
        else
        {
            holder->SetAuraDuration(remainingDuration - 3 * IN_MILLISECONDS);
            holder->UpdateAuraDuration();
        }
    }
};

struct spell_warlock_curse_of_agony : public SpellScript
{
    void OnAfterHit(Spell* spell) const override
    {
        if (!spell->m_casterUnit)
            return;

        Unit* target = spell->GetUnitTarget();
        ObjectGuid const& casterGuid = spell->m_casterUnit->GetObjectGuid();
        RemoveCasterCurseOfDoom(target, casterGuid);
        RemoveOtherCasterCurseOfAgonyRanks(target, casterGuid, spell->m_spellInfo->Id);
    }
};

struct spell_warlock_malediction_trigger : public SpellScript
{
    bool OnTakePower(Spell* /*spell*/) const override
    {
        return false;
    }

    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_0 || !spell->m_casterUnit)
            return false;

        Unit* target = spell->GetUnitTarget();
        if (!target || HasCasterCurseOfAgony(target, spell->m_casterUnit->GetObjectGuid()))
            return false;

        uint32 const agonySpellId = GetHighestKnownCurseOfAgony(spell->m_casterUnit);
        if (!agonySpellId)
            return false;

        spell->m_casterUnit->CastSpell(target, agonySpellId, true, nullptr, nullptr, ObjectGuid(), spell->m_spellInfo);
        return false;
    }
};

struct spell_warlock_malediction_curse : public SpellScript
{
    mutable bool m_hadAgony = false;

    void OnCast(Spell* spell) const override
    {
        m_hadAgony = spell->m_casterUnit && HasCasterCurseOfAgony(spell->GetUnitTarget(), spell->m_casterUnit->GetObjectGuid());
    }

    void OnAfterHit(Spell* spell) const override
    {
        if (!spell->m_casterUnit)
            return;

        bool const hasMalediction = spell->m_casterUnit->HasAura(SPELL_WARLOCK_MALEDICTION) || spell->m_casterUnit->HasSpell(SPELL_WARLOCK_MALEDICTION);
        if (!hasMalediction || (!m_hadAgony && !IsMaledictionAutoAgonyCurse(spell->m_spellInfo)))
            return;

        Unit* target = spell->GetUnitTarget();
        if (!target || HasCasterCurseOfAgony(target, spell->m_casterUnit->GetObjectGuid()))
            return;

        spell->m_casterUnit->CastSpell(target, SPELL_WARLOCK_MALEDICTION_TRIGGER, true);
    }
};

struct spell_warlock_life_tap : public SpellScript
{
    SpellCastResult OnCheckCast(Spell* spell, bool /*strict*/) const override
    {
        if (!spell->m_casterUnit)
            return SPELL_CAST_OK;

        float cost = spell->m_currentBasePoints[EFFECT_INDEX_0];
        if (Player* modOwner = spell->m_casterUnit->GetSpellModOwner())
            modOwner->ApplySpellMod(spell->m_spellInfo->Id, SPELLMOD_COST, cost, spell);

        int32 dmg = spell->m_casterUnit->SpellDamageBonusDone(spell->m_casterUnit, spell->m_spellInfo, EFFECT_INDEX_0, uint32(cost > 0 ? cost : 0), SPELL_DIRECT_DAMAGE);
        dmg = spell->m_casterUnit->SpellDamageBonusTaken(spell->m_casterUnit, spell->m_spellInfo, EFFECT_INDEX_0, dmg, SPELL_DIRECT_DAMAGE);

        return int32(spell->m_casterUnit->GetHealth()) <= dmg ? SPELL_FAILED_FIZZLE : SPELL_CAST_OK;
    }

    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_0 || !spell->m_casterUnit)
            return false;

        int32 dmg = spell->m_casterUnit->CalculateSpellDamage(spell->m_casterUnit, spell->m_spellInfo, effIdx, &spell->m_currentBasePoints[EFFECT_INDEX_0]);
        int32 oldDamage = dmg;
        if (Player* modOwner = spell->m_casterUnit->GetSpellModOwner())
            modOwner->ApplySpellMod(spell->m_spellInfo->Id, SPELLMOD_COST, dmg, spell);

        int32 spellModDmg = dmg;
        dmg = spell->m_casterUnit->SpellDamageBonusDone(spell->m_casterUnit, spell->m_spellInfo, effIdx, uint32(dmg > 0 ? dmg : 0), SPELL_DIRECT_DAMAGE);
        dmg = spell->m_casterUnit->SpellDamageBonusTaken(spell->m_casterUnit, spell->m_spellInfo, effIdx, dmg, SPELL_DIRECT_DAMAGE);

        if (int32(spell->m_casterUnit->GetHealth()) <= dmg)
        {
            spell->SendCastResult(SPELL_FAILED_FIZZLE);
            return false;
        }

        spell->m_casterUnit->ModifyHealth(-dmg);
        int32 mana = dmg;

        if (oldDamage > spellModDmg)
            mana += oldDamage - spellModDmg;

        Unit::AuraList const& auraDummy = spell->m_casterUnit->GetAurasByType(SPELL_AURA_DUMMY);
        for (Aura const* aura : auraDummy)
        {
            if (aura->GetSpellProto()->SpellFamilyName == SPELLFAMILY_WARLOCK && aura->GetSpellProto()->SpellIconID == 208)
                mana = (aura->GetModifier()->m_amount + 100) * mana / 100;
        }

        spell->m_casterUnit->CastCustomSpell(spell->m_casterUnit, SPELL_WARLOCK_LIFE_TAP_ENERGIZE, &mana, nullptr, nullptr, true, nullptr);
        return false;
    }
};

struct spell_warlock_demonic_sacrifice : public SpellScript, public AuraScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_0 || !spell->m_casterUnit || !spell->GetUnitTarget())
            return true;

        uint32 spellId = 0;
        switch (spell->GetUnitTarget()->GetEntry())
        {
            case 416:  spellId = SPELL_WARLOCK_BURNING_WISH; break; // Imp
            case 417:  spellId = SPELL_WARLOCK_FEL_ENERGY; break; // Felhunter
            case 1860: spellId = SPELL_WARLOCK_FEL_STAMINA; break; // Voidwalker
            case 1863: spellId = SPELL_WARLOCK_TOUCH_OF_SHADOW; break; // Succubus
            default:
                sLog.outError("Demonic Sacrifice: Unhandled creature entry (%u) case.", spell->GetUnitTarget()->GetEntry());
                return true;
        }

        spell->m_casterUnit->CastSpell(spell->m_casterUnit, spellId, true);
        return true;
    }

    void OnCharmStateChanged(Aura* aura, Unit* caster, Unit* demon, bool apply) override
    {
        if (!apply || !aura || !caster || aura->GetTarget() != caster || !IsControlledDemon(demon))
            return;

        aura->GetTarget()->RemoveAurasDueToSpell(aura->GetId());
    }
};

struct spell_warlock_drain_soul : public AuraScript
{
    void OnPeriodicDamageCalculateAmount(Aura* aura, float& amount) override
    {
        if (!aura || !IsSoulSiphonDamageSpell(aura->GetSpellProto()))
            return;

        ApplySoulSiphonDamageBonus(aura->GetCaster(), aura->GetTarget(), aura->GetSpellProto(), amount);
    }
};

struct spell_warlock_drain_life : public AuraScript
{
    void OnPeriodicCalculateAmount(Aura* aura, float& amount) override
    {
        if (!aura || !aura->GetSpellProto()->IsFitToFamilyMask<CF_WARLOCK_DRAIN_LIFE>())
            return;

        Unit* caster = aura->GetCaster();
        if (!caster)
            return;

        if (Player* modOwner = caster->GetSpellModOwner())
            modOwner->ApplySpellMod(aura->GetId(), SPELLMOD_DAMAGE, amount);
    }
};

struct spell_warlock_hellfire : public AuraScript
{
    void OnPeriodicDamageCalculateAmount(Aura* aura, float& amount) override
    {
        if (!aura || aura->GetEffIndex() != EFFECT_INDEX_1 || amount <= 0.0f)
            return;

        Unit* caster = aura->GetCaster();
        Unit* target = aura->GetTarget();
        if (!caster || target != caster)
            return;

        if (!aura->GetSpellProto()->IsFitToFamily<SPELLFAMILY_WARLOCK, CF_WARLOCK_HELLFIRE>() ||
            aura->GetSpellProto()->SpellIconID != 937)
            return;

        Aura const* wrathstone = caster->GetAura(SPELL_WARLOCK_WRATHSTONE, EFFECT_INDEX_1);
        if (!wrathstone)
            return;

        int32 const reductionPercent = wrathstone->GetModifier()->m_amount;
        if (reductionPercent <= 0)
            return;

        amount *= float(std::max(0, 100 - reductionPercent)) / 100.0f;
    }
};

struct spell_warlock_enslave_demon : public SpellScript, public AuraScript
{
    static constexpr uint32 ENSLAVE_DEMON_BREAK_TIMER = 5 * IN_MILLISECONDS;
    static constexpr uint32 ENSLAVE_DEMON_BREAK_CHANCE = 2;

    static bool IsManualEnslaveDemonSpell(uint32 spellId)
    {
        switch (spellId)
        {
            case SPELL_WARLOCK_ENSLAVE_DEMON_R1:
            case SPELL_WARLOCK_ENSLAVE_DEMON_R2:
            case SPELL_WARLOCK_ENSLAVE_DEMON_R3:
                return true;
            default:
                return false;
        }
    }

    static bool IsForbiddenManualEnslaveTarget(Unit const* target)
    {
        Creature const* creature = target ? target->ToCreature() : nullptr;
        if (!creature)
            return false;

        switch (creature->GetEntry())
        {
            case 89:    // Infernal
            case 15623: // Xandivious
            case 11859: // Doomguard
            case 17252: // Felguard
            case 61163: // Krampus
            case 62604: // Desolate Invader
            case 62605: // Desolate Destroyer
                return true;
            default:
                return false;
        }
    }

    static void ScheduleBreakCheck(Unit* target, ObjectGuid casterGuid, uint32 enslaveSpellId)
    {
        if (!target)
            return;

        target->m_Events.AddLambdaEventAtOffset([target, casterGuid, enslaveSpellId]()
        {
            if (!target->IsInWorld())
                return;

            SpellAuraHolder* holder = target->GetSpellAuraHolder(enslaveSpellId, casterGuid);
            if (!holder || holder->IsDeleted())
                return;

            if (!target->HasAura(SPELL_WARLOCK_SOUL_LINK_PET) && roll_chance_i(ENSLAVE_DEMON_BREAK_CHANCE))
            {
                target->CastSpell(target, SPELL_WARLOCK_ENSLAVE_DEMON_BREAK_EARLY, true);
                return;
            }

            ScheduleBreakCheck(target, casterGuid, enslaveSpellId);
        }, ENSLAVE_DEMON_BREAK_TIMER);
    }

    SpellCastResult OnCheckCast(Spell* spell, bool /*strict*/) const override
    {
        if (!spell || !IsManualEnslaveDemonSpell(spell->m_spellInfo->Id))
            return SPELL_CAST_OK;

        return IsForbiddenManualEnslaveTarget(spell->m_targets.getUnitTarget())
            ? SPELL_FAILED_CANT_BE_CHARMED
            : SPELL_CAST_OK;
    }

    bool OnCheckTarget(Spell const* spell, Unit* target, SpellEffectIndex /*eff*/) const override
    {
        return !spell || !IsManualEnslaveDemonSpell(spell->m_spellInfo->Id) || !IsForbiddenManualEnslaveTarget(target);
    }

    void OnAfterApply(Aura* aura, bool apply) override
    {
        if (!aura || aura->GetEffIndex() != EFFECT_INDEX_0)
            return;

        Unit* target = aura->GetTarget();
        if (!target)
            return;

        if (apply)
        {
            target->CastSpell(target, SPELL_WARLOCK_DEMON_AVOIDANCE, true, nullptr, aura);
            target->CastSpell(target, SPELL_WARLOCK_ENSLAVE_HEALING_REDUCTION, true, nullptr, aura);
            ScheduleBreakCheck(target, aura->GetCasterGuid(), aura->GetSpellProto()->Id);
        }
        else
        {
            target->RemoveAurasDueToSpell(SPELL_WARLOCK_DEMON_AVOIDANCE);
            target->RemoveAurasDueToSpell(SPELL_WARLOCK_ENSLAVE_HEALING_REDUCTION);
        }
    }
};

struct spell_warlock_enslave_demon_break_early : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex /*effIdx*/) const override
    {
        Unit* target = spell ? spell->GetUnitTarget() : nullptr;
        if (!target && spell)
            target = spell->m_casterUnit;

        if (target)
            target->RemoveCharmAuras();

        return false;
    }
};

struct spell_warlock_soothing_kiss : public SpellScript
{
    static constexpr int32 WARLOCK_THREAT_REDUCTION_PCT = -30;

    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_0 || !spell || !spell->m_casterUnit)
            return false;

        Unit* target = spell->GetUnitTarget();
        if (!target || !target->CanHaveThreatList())
            return false;

        Player* owner = spell->m_casterUnit->GetCharmerOrOwnerPlayer();
        if (!owner || owner->GetClass() != CLASS_WARLOCK)
            return false;

        target->GetThreatManager().modifyThreatPercent(owner, WARLOCK_THREAT_REDUCTION_PCT);
        return false;
    }
};

struct spell_warlock_dark_harvest : public AuraScript
{
    std::vector<DarkHarvestPeriodicAuraState> m_affectedAuras;

    DarkHarvestPeriodicAuraState* FindAffectedAura(Aura const* aura)
    {
        for (DarkHarvestPeriodicAuraState& state : m_affectedAuras)
        {
            if (state.spellId == aura->GetId() &&
                    state.casterGuid == aura->GetCasterGuid() &&
                    state.effIndex == aura->GetEffIndex() &&
                    state.applyTime == aura->GetAuraApplyTime())
                return &state;
        }

        return nullptr;
    }

    void TryApplyTickSpeed(Aura* aura, ObjectGuid const& casterGuid)
    {
        if (!IsDarkHarvestAfflictionPeriodicAura(aura, casterGuid) || FindAffectedAura(aura))
            return;

        uint32 const originalPeriod = aura->GetModifier()->periodictime;
        uint32 const reducedPeriod = originalPeriod * 70 / 100;
        if (!reducedPeriod)
            return;

        m_affectedAuras.push_back({ aura->GetId(), aura->GetCasterGuid(), aura->GetEffIndex(), aura->GetAuraApplyTime(), originalPeriod, reducedPeriod });
        aura->SetPeriodicTimer(reducedPeriod);
    }

    void ApplyTickSpeed(Unit* target, ObjectGuid const& casterGuid)
    {
        if (!target || !casterGuid)
            return;

        Unit::AuraList const& periodicDamage = target->GetAurasByType(SPELL_AURA_PERIODIC_DAMAGE);
        for (Aura* aura : periodicDamage)
            TryApplyTickSpeed(aura, casterGuid);

        Unit::AuraList const& periodicLeech = target->GetAurasByType(SPELL_AURA_PERIODIC_LEECH);
        for (Aura* aura : periodicLeech)
            TryApplyTickSpeed(aura, casterGuid);
    }

    void TryRestoreTickSpeed(Unit* target, DarkHarvestPeriodicAuraState const& state)
    {
        if (!target)
            return;

        Unit::AuraList const& auras = target->GetAurasByType(SPELL_AURA_PERIODIC_DAMAGE);
        for (Aura* aura : auras)
        {
            if (MatchesAffectedAura(aura, state))
            {
                aura->SetPeriodicTimer(state.originalPeriod);
                return;
            }
        }

        Unit::AuraList const& leechAuras = target->GetAurasByType(SPELL_AURA_PERIODIC_LEECH);
        for (Aura* aura : leechAuras)
        {
            if (MatchesAffectedAura(aura, state))
            {
                aura->SetPeriodicTimer(state.originalPeriod);
                return;
            }
        }
    }

    static bool MatchesAffectedAura(Aura const* aura, DarkHarvestPeriodicAuraState const& state)
    {
        return aura && aura->GetId() == state.spellId &&
            aura->GetCasterGuid() == state.casterGuid &&
            aura->GetEffIndex() == state.effIndex &&
            aura->GetAuraApplyTime() == state.applyTime &&
            aura->GetModifier()->periodictime == int32(state.reducedPeriod);
    }

    void RestoreTickSpeed(Unit* target)
    {
        for (DarkHarvestPeriodicAuraState const& state : m_affectedAuras)
            TryRestoreTickSpeed(target, state);

        m_affectedAuras.clear();
    }

    void ResetDarkHarvestCooldown(Unit* caster)
    {
        if (!caster)
            return;

        static constexpr uint32 darkHarvestRanks[] =
        {
            SPELL_WARLOCK_DARK_HARVEST_R1,
            SPELL_WARLOCK_DARK_HARVEST_R2,
            SPELL_WARLOCK_DARK_HARVEST_R3
        };

        for (uint32 spellId : darkHarvestRanks)
            caster->RemoveSpellCooldown(spellId, true);
    }

    void OnAfterApply(Aura* aura, bool apply) override
    {
        if (!aura || !IsDarkHarvestSpell(aura->GetId()) || aura->GetEffIndex() != EFFECT_INDEX_0)
            return;

        if (apply)
        {
            ApplyTickSpeed(aura->GetTarget(), aura->GetCasterGuid());
            return;
        }

        RestoreTickSpeed(aura->GetTarget());

        if (aura->GetRemoveMode() == AURA_REMOVE_BY_DEATH)
            ResetDarkHarvestCooldown(aura->GetCaster());
    }

    void OnPeriodicTick(Aura* aura) override
    {
        if (!aura || !IsDarkHarvestSpell(aura->GetId()) || aura->GetEffIndex() != EFFECT_INDEX_0)
            return;

        ApplyTickSpeed(aura->GetTarget(), aura->GetCasterGuid());
    }

    void OnPeriodicDamageCalculateAmount(Aura* aura, float& amount) override
    {
        if (!aura || !IsDarkHarvestSpell(aura->GetId()) || aura->GetEffIndex() != EFFECT_INDEX_0)
            return;

        ApplySoulSiphonDamageBonus(aura->GetCaster(), aura->GetTarget(), aura->GetSpellProto(), amount);
    }
};

struct spell_warlock_death_coil : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_0 || !spell->m_casterUnit)
            return true;

        ApplySoulSiphonDamageBonus(spell->m_casterUnit, spell->GetUnitTarget(), spell->m_spellInfo, spell->damage);
        return true;
    }
};

struct spell_warlock_soul_entrapment : public AuraScript
{
    int32 m_damageAmount = 0;

    void OnAuraInit(Aura* aura) override
    {
        if (aura && aura->GetEffIndex() == EFFECT_INDEX_1 && aura->GetModifier()->periodictime)
            aura->SetPeriodicTimer(aura->GetModifier()->periodictime);
    }

    void SyncDamageAura(Aura* aura)
    {
        if (!aura)
            return;

        Player* player = aura->GetTarget()->ToPlayer();
        SpellAuraHolder* holder = aura->GetHolder();
        Aura* damageAura = holder ? holder->GetAuraByEffectIndex(EFFECT_INDEX_0) : nullptr;
        if (!player || !damageAura)
            return;

        if (!m_damageAmount)
            m_damageAmount = damageAura->GetModifier()->m_amount;

        int32 const damageAmount = HasControlledDemon(player) ? 0 : m_damageAmount;
        if (damageAura->GetModifier()->m_amount == damageAmount)
            return;

        bool const wasApplied = damageAura->IsApplied();
        if (wasApplied)
            damageAura->ApplyModifier(false, true);

        damageAura->GetModifier()->m_amount = damageAmount;

        if (wasApplied)
            damageAura->ApplyModifier(true, true);
    }

    void OnAfterApply(Aura* aura, bool apply) override
    {
        if (apply)
            SyncDamageAura(aura);
    }

    void OnPeriodicDummy(Aura* aura) override
    {
        if (!aura || aura->GetEffIndex() != EFFECT_INDEX_1)
            return;

        SyncDamageAura(aura);
    }
};

struct spell_warlock_rapid_deterioration : public AuraScript
{
    static constexpr float RAPID_DETERIORATION_CAST_SPEED = 6.0f;

    int32 OnAuraValueCalculate(Aura* /*aura*/, Unit* caster, Unit* target, SpellEntry const* spellInfo, SpellEffectIndex effIdx, Item* /*castItem*/, int32 value) override
    {
        if (!spellInfo || effIdx > EFFECT_INDEX_1)
            return value;

        if (spellInfo->Id != SPELL_WARLOCK_RAPID_DETERIORATION_R1 && spellInfo->Id != SPELL_WARLOCK_RAPID_DETERIORATION_R2)
            return value;

        Unit* owner = caster ? caster : target;
        float castSpeedIncrease = RAPID_DETERIORATION_CAST_SPEED + GetSpellHastePercent(owner);
        if (spellInfo->Id == SPELL_WARLOCK_RAPID_DETERIORATION_R1)
            castSpeedIncrease *= 0.5f;

        return -int32(std::ceil(castSpeedIncrease));
    }

    void OnCastSpeedChanged(Aura* aura) override
    {
        if (!aura)
            return;

        SpellAuraHolder* holder = aura->GetHolder();
        if (!holder || !IsRapidDeterioration(holder->GetId()))
            return;

        Unit* target = aura->GetTarget();
        Unit* caster = holder->GetCaster();
        if (!target)
            return;
        if (!caster)
            caster = target;

        for (uint32 i = 0; i <= EFFECT_INDEX_1; ++i)
        {
            Aura* modAura = holder->GetAuraByEffectIndex(SpellEffectIndex(i));
            if (!modAura)
                continue;

            int32 bp = modAura->GetBasePoints();
            int32 amount = holder->GetStackAmount() * caster->CalculateSpellDamage(target, holder->GetSpellProto(), SpellEffectIndex(i), &bp);
            amount = OnAuraValueCalculate(modAura, caster, target, holder->GetSpellProto(), SpellEffectIndex(i), nullptr, amount);

            if (amount == modAura->GetModifier()->m_amount)
                continue;

            modAura->ApplyModifier(false, true);
            modAura->GetModifier()->m_amount = amount;
            modAura->ApplyModifier(true, true);
        }
    }

    static float GetSpellHastePercent(Unit const* unit)
    {
        if (!unit)
            return 0.0f;

        float const castSpeedMod = unit->GetFloatValue(UNIT_MOD_CAST_SPEED);

        if (castSpeedMod <= 0.0f)
            return 0.0f;

        float const castSpeedIncrease = 100.0f / castSpeedMod - 100.0f;
        return castSpeedIncrease > 0.0f ? castSpeedIncrease : 0.0f;
    }

    static bool IsRapidDeterioration(uint32 spellId)
    {
        return spellId == SPELL_WARLOCK_RAPID_DETERIORATION_R1 || spellId == SPELL_WARLOCK_RAPID_DETERIORATION_R2;
    }
};

struct spell_warlock_unleashed_potential_effect : public AuraScript
{
    int32 OnAuraValueCalculate(Aura* aura, Unit* caster, Unit* target, SpellEntry const* spellInfo, SpellEffectIndex effIdx, Item* /*castItem*/, int32 value) override
    {
        if (!aura || !target || !spellInfo || effIdx > EFFECT_INDEX_1)
            return value;

        Player* owner = target->GetCharmerOrOwnerPlayer();
        if (!owner && caster)
            owner = caster->ToPlayer();
        if (!owner)
            return value;

        SpellSchoolMask const schoolMask = effIdx == EFFECT_INDEX_0 ? SPELL_SCHOOL_MASK_FIRE : SPELL_SCHOOL_MASK_SHADOW;
        int32 const schoolSpellPower = owner->SpellBaseDamageBonusDone(schoolMask);
        int32 const percent = spellInfo->EffectBasePoints[effIdx] + int32(spellInfo->EffectBaseDice[effIdx]);

        return int32(aura->GetStackAmount() * schoolSpellPower * percent / 100.0f);
    }
};

struct spell_warlock_unleashed_potential : public AuraScript
{
    std::optional<SpellProcEventTriggerCheck> OnCheckProc(Unit const* owner, Unit* /*victim*/, SpellAuraHolder* /*holder*/, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procExtra*/, WeaponAttackType /*attType*/, bool /*isVictim*/) override
    {
        if (!HasControlledDemon(owner))
            return SPELL_PROC_TRIGGER_FAILED;

        return std::nullopt;
    }
};

struct spell_warlock_felstone : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* /*victim*/, uint32 damage, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 procFlag, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!owner || !owner->IsAlive() || !aura || !damage)
            return SPELL_AURA_PROC_FAILED;

        static constexpr uint32 DEAL_DAMAGE_PROC_FLAGS =
            PROC_FLAG_DEAL_MELEE_SWING |
            PROC_FLAG_DEAL_MELEE_ABILITY |
            PROC_FLAG_DEAL_RANGED_ATTACK |
            PROC_FLAG_DEAL_RANGED_ABILITY |
            PROC_FLAG_DEAL_HARMFUL_ABILITY |
            PROC_FLAG_DEAL_HARMFUL_SPELL |
            PROC_FLAG_DEAL_HARMFUL_PERIODIC;
        if (!(procFlag & DEAL_DAMAGE_PROC_FLAGS))
            return SPELL_AURA_PROC_CANT_TRIGGER;

        int32 const percent = aura->GetModifier()->m_amount;
        if (percent <= 0)
            return SPELL_AURA_PROC_FAILED;

        int32 const heal = std::max<int32>(1, int32(damage) * percent / 100);
        owner->CastCustomSpell(owner, SPELL_WARLOCK_FELSTONE_HEAL, &heal, nullptr, nullptr, true, nullptr, aura);

        Unit* demon = owner->GetPet();
        if (!IsControlledDemon(demon))
            demon = owner->GetCharm();

        if (IsControlledDemon(demon))
            owner->CastCustomSpell(demon, SPELL_WARLOCK_FELSTONE_HEAL, &heal, nullptr, nullptr, true, nullptr, aura);

        return SPELL_AURA_PROC_OK;
    }
};

struct spell_warlock_funnels : public AuraScript
{
    void OnPeriodicCalculateAmount(Aura* aura, float& amount) override
    {
        if (!aura || aura->GetEffIndex() != EFFECT_INDEX_0 || amount <= 0.0f)
            return;

        Unit* caster = aura->GetCaster();
        Unit* demon = aura->GetTarget();
        if (!caster || !IsControlledDemon(demon))
            return;

        Aura const* soulFunnel = GetSoulFunnelAura(caster);
        if (!soulFunnel)
            return;

        SpellEntry const* spellInfo = aura->GetSpellProto();
        bool const healthFunnel = IsHealthFunnel(spellInfo);
        bool const manaFunnel = IsManaFunnel(spellInfo);
        if (!healthFunnel && !manaFunnel)
            return;

        int32 const percent = soulFunnel->GetModifier()->m_amount;
        int32 const drainPercent = soulFunnel->GetModifier()->m_miscvalue;
        if (percent <= 0 || drainPercent <= 0)
            return;

        uint32 const missingAmount = healthFunnel ?
            demon->GetMaxHealth() - demon->GetHealth() :
            demon->GetMaxPower(POWER_MANA) - demon->GetPower(POWER_MANA);

        uint32 const bonus = missingAmount * percent / 100;
        if (!bonus)
            return;

        uint32 const drain = std::max<uint32>(1, bonus * drainPercent / 100);
        if (healthFunnel)
        {
            if (caster->GetHealth() <= drain)
                return;

            caster->ModifyHealth(-int32(drain));
        }
        else
        {
            if (caster->GetPower(POWER_MANA) < drain)
                return;

            caster->ModifyPower(POWER_MANA, -int32(drain));
        }

        amount += bonus;
    }

    void OnPeriodicTick(Aura* aura) override
    {
        if (!aura || aura->GetEffIndex() != EFFECT_INDEX_0)
            return;

        Unit* caster = aura->GetCaster();
        Unit* demon = aura->GetTarget();
        if (!caster || !IsControlledDemon(demon))
            return;

        ObjectGuid const& casterGuid = caster->GetObjectGuid();
        bool refreshed = false;
        for (auto const& itr : demon->GetSpellAuraHolderMap())
        {
            SpellAuraHolder* holder = itr.second;
            if (holder && holder->GetCasterGuid() == casterGuid && IsUnleashedPotentialEffect(holder->GetId()))
            {
                holder->RefreshHolder();
                refreshed = true;
            }
        }

        if (refreshed)
        {
            if (SpellAuraHolder* visual = caster->GetSpellAuraHolder(SPELL_WARLOCK_UNLEASHED_POTENTIAL_VISUAL, casterGuid))
                visual->RefreshHolder();
        }
    }
};

bool GetHealthstoneItemType(Unit* target, uint32 spellId, uint32& itemType)
{
    if (!target)
        return false;

    uint32 rank = 0;
    Unit::AuraList const& dummyAuras = target->GetAurasByType(SPELL_AURA_DUMMY);
    for (Aura const* aura : dummyAuras)
    {
        if (aura->GetId() == SPELL_WARLOCK_IMPROVED_HEALTHSTONE_R1)
        {
            rank = 1;
            break;
        }
        if (aura->GetId() == SPELL_WARLOCK_IMPROVED_HEALTHSTONE_R2)
        {
            rank = 2;
            break;
        }
    }

    static uint32 const itemTypes[6][3] =
    {
        { 5512, 19004, 19005 },
        { 5511, 19006, 19007 },
        { 5509, 19008, 19009 },
        { 5510, 19010, 19011 },
        { 9421, 19012, 19013 },
        { 22103, 22104, 22105 }
    };

    uint32 row = 0;
    switch (spellId)
    {
        case SPELL_WARLOCK_CREATE_HEALTHSTONE_MINOR: row = 0; break;
        case SPELL_WARLOCK_CREATE_HEALTHSTONE_LESSER: row = 1; break;
        case SPELL_WARLOCK_CREATE_HEALTHSTONE: row = 2; break;
        case SPELL_WARLOCK_CREATE_HEALTHSTONE_GREATER: row = 3; break;
        case SPELL_WARLOCK_CREATE_HEALTHSTONE_MAJOR: row = 4; break;
        case SPELL_WARLOCK_INCREASED_PET_DAMAGE: row = 5; break;
        default: return false;
    }

    itemType = itemTypes[row][rank];
    return true;
}

struct spell_warlock_create_healthstone : public SpellScript
{
    SpellCastResult OnCheckCast(Spell* spell, bool /*strict*/) const override
    {
        Player* player = spell->m_caster->ToPlayer();
        Unit* target = spell->m_targets.getUnitTarget() ? spell->m_targets.getUnitTarget() : spell->m_casterUnit;
        if (!player || !target || !target->IsPlayer())
            return SPELL_CAST_OK;

        uint32 itemType = 0;
        if (!GetHealthstoneItemType(target, spell->m_spellInfo->Id, itemType))
            return SPELL_CAST_OK;

        ItemPosCountVec dest;
        InventoryResult msg = static_cast<Player*>(target)->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, itemType, 1);
        if (msg != EQUIP_ERR_OK)
        {
            player->SendEquipError(msg, nullptr, nullptr, itemType);
            return SPELL_FAILED_DONT_REPORT;
        }

        return SPELL_CAST_OK;
    }

    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_0)
            return false;

        uint32 itemType = 0;
        if (!GetHealthstoneItemType(spell->GetUnitTarget(), spell->m_spellInfo->Id, itemType))
            return false;

        spell->DoCreateItem(effIdx, itemType);
        return false;
    }
};

struct spell_warlock_pyroclasm : public AuraScript
{
    std::optional<SpellProcEventTriggerCheck> OnCheckProc(Unit const* owner, Unit* victim, SpellAuraHolder* holder, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 /*procExtra*/, WeaponAttackType /*attType*/, bool /*isVictim*/) override
    {
        if (!procSpell || !victim || !victim->IsAlive() || victim == owner)
            return SPELL_PROC_TRIGGER_FAILED;

        uint32 tick = 1;
        if ((procSpell->SpellIconID == 184 && procSpell->SpellVisual == 2253) || procSpell->IsFitToFamilyMask<CF_WARLOCK_CONFLAGRATE>())
            tick = 1;
        else if (procSpell->IsFitToFamilyMask<CF_WARLOCK_HELLFIRE>())
            tick = 15;
        else if (procSpell->IsFitToFamilyMask<CF_WARLOCK_RAIN_OF_FIRE>())
            tick = 4;
        else
            return SPELL_PROC_TRIGGER_FAILED;

        float chance = holder->GetSpellProto()->Id == SPELL_WARLOCK_PYROCLASM_R1 ? 13.0f / tick : 26.0f / tick;
        return roll_chance_f(chance) ? SPELL_PROC_TRIGGER_OK : SPELL_PROC_TRIGGER_ROLL_FAILED;
    }

    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* victim, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!owner || !victim || !victim->IsAlive())
            return SPELL_AURA_PROC_FAILED;

        owner->CastSpell(victim, SPELL_WARLOCK_PYROCLASM_STUN, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_warlock_shadow_vulnerability : public AuraScript
{
    std::optional<SpellProcEventTriggerCheck> OnCheckProc(Unit const* owner, Unit* victim, SpellAuraHolder* holder, SpellEntry const* procSpell, uint32 procFlag, uint32 procExtra, WeaponAttackType /*attType*/, bool isVictim) override
    {
        if (isVictim || !owner || !victim || !victim->IsAlive() || victim == owner || !holder)
            return SPELL_PROC_TRIGGER_FAILED;

        if (procExtra & PROC_EX_CAST_END)
            return SPELL_PROC_TRIGGER_FAILED;

        if (!(procExtra & (PROC_EX_NORMAL_HIT | PROC_EX_CRITICAL_HIT)) || !IsShadowVulnerabilityProcSpell(procSpell, procFlag))
            return SPELL_PROC_TRIGGER_FAILED;

        float chance = float(holder->GetSpellProto()->procChance);
        if (procExtra & PROC_EX_CRITICAL_HIT)
            chance += GetShadowVulnerabilityCritBonus(holder->GetId());

        return roll_chance_f(chance) ? SPELL_PROC_TRIGGER_OK : SPELL_PROC_TRIGGER_ROLL_FAILED;
    }
};

struct spell_warlock_cheat_death : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* /*victim*/, uint32 damage, int32 /*originalAmount*/, Aura* /*aura*/, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        int32 health20 = int32(owner->GetMaxHealth()) / 5;
        if (int32(owner->GetHealth()) - int32(damage) >= health20 || int32(owner->GetHealth()) < health20)
            return SPELL_AURA_PROC_FAILED;

        return std::nullopt;
    }
};

struct spell_warlock_consequences : public AuraScript
{
    std::optional<SpellProcEventTriggerCheck> OnCheckProc(Unit const* owner, Unit* victim, SpellAuraHolder* /*holder*/, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procExtra*/, WeaponAttackType /*attType*/, bool /*isVictim*/) override
    {
        if (victim == owner)
            return SPELL_PROC_TRIGGER_FAILED;

        return std::nullopt;
    }
};

struct spell_warlock_soul_siphon : public AuraScript {};

struct spell_warlock_curse_of_doom : public AuraScript
{
    void OnPeriodicDamageAfterDeal(Aura* aura, uint32 /*damage*/, CleanDamage const* /*cleanDamage*/) override
    {
        Unit* caster = aura->GetCaster();
        Unit* target = aura->GetTarget();
        if (!caster || !target || target->IsAlive() || urand(0, 9))
            return;

        caster->CastSpell(caster, SPELL_WARLOCK_CURSE_OF_DOOM_EFFECT, true);
    }
};

struct spell_warlock_ritual_of_summoning : public SpellScript
{
    SpellCastResult OnCheckCast(Spell* spell, bool /*strict*/) const override
    {
        Player* caster = spell->m_caster->ToPlayer();
        if (!caster || !caster->GetSelectionGuid())
            return SPELL_FAILED_BAD_TARGETS;

        Player* target = sObjectMgr.GetPlayer(caster->GetSelectionGuid());
        if (!target || caster == target || !target->IsInSameRaidWith(caster))
            return SPELL_FAILED_BAD_TARGETS;

        if (target->IsInCombat())
            return SPELL_FAILED_TARGET_IN_COMBAT;

        MapEntry const* mapEntry = sMapStorage.LookupEntry<MapEntry>(caster->GetMapId());
        if (mapEntry && mapEntry->IsDungeon())
        {
            if (caster->GetMap() != target->GetMap())
                return SPELL_FAILED_TARGET_NOT_IN_INSTANCE;
        }
        else if (caster->InBattleGround())
            return SPELL_FAILED_NOT_HERE;

        return SPELL_CAST_OK;
    }
};

struct spell_warlock_curse_of_idiocy : public SpellScript, public AuraScript
{
    mutable bool m_hadAgony = false;

    void OnCast(Spell* spell) const override
    {
        m_hadAgony = spell->m_casterUnit && HasCasterCurseOfAgony(spell->GetUnitTarget(), spell->m_casterUnit->GetObjectGuid());
    }

    void OnAfterHit(Spell* spell) const override
    {
        if (!m_hadAgony || !spell->m_casterUnit ||
                (!spell->m_casterUnit->HasAura(SPELL_WARLOCK_MALEDICTION) && !spell->m_casterUnit->HasSpell(SPELL_WARLOCK_MALEDICTION)))
            return;

        Unit* target = spell->GetUnitTarget();
        if (!target || HasCasterCurseOfAgony(target, spell->m_casterUnit->GetObjectGuid()))
            return;

        spell->m_casterUnit->CastSpell(target, SPELL_WARLOCK_MALEDICTION_TRIGGER, true);
    }

    void OnPeriodicTrigger(Aura* /*aura*/, Unit* caster, Unit* target, WorldObject* /*targetObject*/, SpellEntry const*& spellInfo) override
    {
        if (caster && caster->GetObjectGuid() == target->GetObjectGuid())
        {
            spellInfo = nullptr;
            return;
        }

        int32 intellectLoss = 0;
        int32 spiritLoss = 0;

        Unit::AuraList const& statAuras = target->GetAurasByType(SPELL_AURA_MOD_STAT);
        for (const auto& aura : statAuras)
        {
            if (aura->GetId() != SPELL_WARLOCK_CURSE_OF_IDIOCY_R1)
                continue;

            switch (aura->GetModifier()->m_miscvalue)
            {
                case STAT_INTELLECT:
                    intellectLoss += aura->GetModifier()->m_amount;
                    break;
                case STAT_SPIRIT:
                    spiritLoss += aura->GetModifier()->m_amount;
                    break;
                default:
                    break;
            }
        }

        if (intellectLoss <= -90 && spiritLoss <= -90)
            spellInfo = nullptr;
    }
};

struct spell_warlock_devour_magic : public SpellScript
{
    void OnSuccessfulSpecificDispel(Spell* spell, SpellEffectIndex effIdx, uint32 /*removedAura*/, ObjectGuid const& /*removedAuraCasterGuid*/, uint32 /*dispelCount*/) const override
    {
        if (effIdx != EFFECT_INDEX_0 || !spell->m_casterUnit)
            return;

        uint32 healSpell = 0;
        switch (spell->m_spellInfo->Id)
        {
            case SPELL_WARLOCK_DEVOUR_MAGIC_R1: healSpell = SPELL_WARLOCK_DEVOUR_MAGIC_EFFECT_R1; break;
            case SPELL_WARLOCK_DEVOUR_MAGIC_R2: healSpell = SPELL_WARLOCK_DEVOUR_MAGIC_EFFECT_R2; break;
            case SPELL_WARLOCK_DEVOUR_MAGIC_R3: healSpell = SPELL_WARLOCK_DEVOUR_MAGIC_EFFECT_R3; break;
            case SPELL_WARLOCK_DEVOUR_MAGIC_R4: healSpell = SPELL_WARLOCK_DEVOUR_MAGIC_EFFECT_R4; break;
            default:
                DEBUG_LOG("Spell for Devour Magic %d not handled in spell_warlock_devour_magic", spell->m_spellInfo->Id);
                break;
        }

        if (healSpell)
            spell->m_casterUnit->CastSpell(spell->m_casterUnit, healSpell, true);
    }
};

struct spell_warlock_inferno : public SpellScript
{
    void OnSummon(Spell* spell, Creature* summon) const override
    {
        spell->m_caster->CastSpell(summon, SPELL_WARLOCK_GREATER_DEMON_ENSLAVE, true);
        summon->CastSpell(summon, SPELL_WARLOCK_ROOT, true);
        summon->CastSpell(summon, SPELL_WARLOCK_INFERNO_EFFECT, true);
    }
};

struct spell_warlock_summon_felguard : public SpellScript
{
    void OnSummon(Spell* spell, Creature* summon) const override
    {
        spell->m_caster->CastSpell(summon, SPELL_WARLOCK_GREATER_DEMON_ENSLAVE, true);
        summon->CastSpell(summon, SPELL_WARLOCK_ROOT, true);
        summon->SetStat(STAT_SPIRIT, summon->GetLevel() * 3);
        summon->UpdateManaRegen();
    }
};

struct spell_warlock_summon_doomguard : public SpellScript
{
    void OnSummon(Spell* spell, Creature* summon) const override
    {
        spell->m_caster->CastSpell(summon, SPELL_WARLOCK_GREATER_DEMON_ENSLAVE, true);
    }
};

struct spell_warlock_demon_gate : public SpellScript
{
    void OnSummon(Spell* spell, GameObject* summon) const override
    {
        Unit* caster = spell->m_casterUnit;
        if (!caster || !summon)
            return;

        float const x = summon->GetPositionX();
        float const y = summon->GetPositionY();
        float const z = summon->GetPositionZ();

        auto summonFelguard = [caster, x, y, z]()
        {
            if (!caster->IsInWorld() || !caster->IsAlive())
                return;

            caster->CastSpell(x, y, z, SPELL_WARLOCK_SUMMON_FELGUARD, true);
        };

        caster->m_Events.AddEvent(new LambdaBasicEvent<decltype(summonFelguard)>(std::move(summonFelguard)),
            caster->m_Events.CalculateTime(6000));
    }
};

struct go_warlock_demon_gate : public GameObjectAI
{
    explicit go_warlock_demon_gate(GameObject* go) : GameObjectAI(go) {}

    bool OnUse(Unit* /*user*/) override
    {
        return true;
    }
};

GameObjectAI* GetAI_go_warlock_demon_gate(GameObject* go)
{
    return new go_warlock_demon_gate(go);
}

struct spell_warlock_ritual_of_doom : public SpellScript
{
    void OnFinish(Spell* spell, bool ok) const override
    {
        if (ok || spell->IsTriggered())
            return;

        Player* player = spell->m_caster->ToPlayer();
        if (!player || player->HasSpellCooldown(spell->m_spellInfo->Id))
            return;

        player->SendClearCooldown(spell->m_spellInfo->Id, player);
    }
};

uint32 const POWER_OVERWHELMING_CROWD_CONTROL_MASK =
    (1 << (MECHANIC_CHARM - 1)) |
    (1 << (MECHANIC_DISORIENTED - 1)) |
    (1 << (MECHANIC_DISARM - 1)) |
    (1 << (MECHANIC_DISTRACT - 1)) |
    (1 << (MECHANIC_FEAR - 1)) |
    (1 << (MECHANIC_ROOT - 1)) |
    (1 << (MECHANIC_PACIFY - 1)) |
    (1 << (MECHANIC_SILENCE - 1)) |
    (1 << (MECHANIC_SLEEP - 1)) |
    (1 << (MECHANIC_SNARE - 1)) |
    (1 << (MECHANIC_STUN - 1)) |
    (1 << (MECHANIC_FREEZE - 1)) |
    (1 << (MECHANIC_KNOCKOUT - 1)) |
    (1 << (MECHANIC_POLYMORPH - 1)) |
    (1 << (MECHANIC_BANISH - 1)) |
    (1 << (MECHANIC_SHACKLE - 1)) |
    (1 << (MECHANIC_TURN - 1)) |
    (1 << (MECHANIC_HORROR - 1)) |
    (1 << (MECHANIC_DAZE - 1)) |
    (1 << (MECHANIC_SAPPED - 1));

struct spell_warlock_power_overwhelming : public SpellScript
{
    void OnAfterHit(Spell* spell) const override
    {
        Unit* target = spell->GetUnitTarget();
        if (!target && spell->m_casterUnit)
        {
            target = spell->m_casterUnit->GetPet();
            if (!target)
                target = spell->m_casterUnit->GetCharm();
        }

        if (IsControlledDemon(target))
            target->RemoveAurasAtMechanicImmunity(POWER_OVERWHELMING_CROWD_CONTROL_MASK, spell->m_spellInfo->Id, true);
    }
};
}

void AddSC_warlock_spell_scripts()
{
    RegisterSpellScript("spell_warlock_fire_shield", &GetSpellScript<spell_warlock_fire_shield>);
    RegisterSpellScript("spell_warlock_conflagrate", &GetSpellScript<spell_warlock_conflagrate>);
    RegisterSpellScript("spell_warlock_curse_of_agony", &GetSpellScript<spell_warlock_curse_of_agony>);
    RegisterSpellScript("spell_warlock_malediction_trigger", &GetSpellScript<spell_warlock_malediction_trigger>);
    RegisterSpellScript("spell_warlock_malediction_curse", &GetSpellScript<spell_warlock_malediction_curse>);
    RegisterSpellScript("spell_warlock_life_tap", &GetSpellScript<spell_warlock_life_tap>);
    RegisterSpellAndAuraScript("spell_warlock_demonic_sacrifice", &GetSpellScript<spell_warlock_demonic_sacrifice>, &GetAuraScript<spell_warlock_demonic_sacrifice>);
    RegisterAuraScript("spell_warlock_drain_soul", &GetAuraScript<spell_warlock_drain_soul>);
    RegisterAuraScript("spell_warlock_drain_life", &GetAuraScript<spell_warlock_drain_life>);
    RegisterAuraScript("spell_warlock_hellfire", &GetAuraScript<spell_warlock_hellfire>);
    RegisterSpellAndAuraScript("spell_warlock_enslave_demon", &GetSpellScript<spell_warlock_enslave_demon>, &GetAuraScript<spell_warlock_enslave_demon>);
    RegisterSpellScript("spell_warlock_enslave_demon_break_early", &GetSpellScript<spell_warlock_enslave_demon_break_early>);
    RegisterSpellScript("spell_warlock_soothing_kiss", &GetSpellScript<spell_warlock_soothing_kiss>);
    RegisterAuraScript("spell_warlock_dark_harvest", &GetAuraScript<spell_warlock_dark_harvest>);
    RegisterSpellScript("spell_warlock_death_coil", &GetSpellScript<spell_warlock_death_coil>);
    RegisterAuraScript("spell_warlock_soul_entrapment", &GetAuraScript<spell_warlock_soul_entrapment>);
    RegisterAuraScript("spell_warlock_rapid_deterioration", &GetAuraScript<spell_warlock_rapid_deterioration>);
    RegisterAuraScript("spell_warlock_unleashed_potential", &GetAuraScript<spell_warlock_unleashed_potential>);
    RegisterAuraScript("spell_warlock_unleashed_potential_effect", &GetAuraScript<spell_warlock_unleashed_potential_effect>);
    RegisterAuraScript("spell_warlock_felstone", &GetAuraScript<spell_warlock_felstone>);
    RegisterAuraScript("spell_warlock_funnels", &GetAuraScript<spell_warlock_funnels>);
    RegisterSpellScript("spell_warlock_create_healthstone", &GetSpellScript<spell_warlock_create_healthstone>);
    RegisterAuraScript("spell_warlock_pyroclasm", &GetAuraScript<spell_warlock_pyroclasm>);
    RegisterAuraScript("spell_warlock_shadow_vulnerability", &GetAuraScript<spell_warlock_shadow_vulnerability>);
    RegisterAuraScript("spell_warlock_cheat_death", &GetAuraScript<spell_warlock_cheat_death>);
    RegisterAuraScript("spell_warlock_consequences", &GetAuraScript<spell_warlock_consequences>);
    RegisterAuraScript("spell_warlock_soul_siphon", &GetAuraScript<spell_warlock_soul_siphon>);
    RegisterAuraScript("spell_warlock_curse_of_doom", &GetAuraScript<spell_warlock_curse_of_doom>);
    RegisterSpellScript("spell_warlock_ritual_of_summoning", &GetSpellScript<spell_warlock_ritual_of_summoning>);
    RegisterSpellAndAuraScript("spell_warlock_curse_of_idiocy", &GetSpellScript<spell_warlock_curse_of_idiocy>, &GetAuraScript<spell_warlock_curse_of_idiocy>);
    RegisterSpellScript("spell_warlock_devour_magic", &GetSpellScript<spell_warlock_devour_magic>);
    RegisterSpellScript("spell_warlock_inferno", &GetSpellScript<spell_warlock_inferno>);
    RegisterSpellScript("spell_warlock_summon_felguard", &GetSpellScript<spell_warlock_summon_felguard>);
    RegisterSpellScript("spell_warlock_summon_doomguard", &GetSpellScript<spell_warlock_summon_doomguard>);
    RegisterSpellScript("spell_warlock_demon_gate", &GetSpellScript<spell_warlock_demon_gate>);
    RegisterGameObjectAI("go_warlock_demon_gate", &GetAI_go_warlock_demon_gate);
    RegisterSpellScript("spell_warlock_ritual_of_doom", &GetSpellScript<spell_warlock_ritual_of_doom>);
    RegisterSpellScript("spell_warlock_power_overwhelming", &GetSpellScript<spell_warlock_power_overwhelming>);
}
