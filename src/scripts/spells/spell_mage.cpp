#include "scriptPCH.h"

#include <map>
#include <mutex>

namespace
{
enum MageSpells
{
    SPELL_MAGE_DAMPEN_MAGIC                  = 604,
    SPELL_MAGE_AMPLIFY_MAGIC                 = 1008,
    SPELL_MAGE_DAMPEN_MAGIC_NEGATIVE         = 8450,
    SPELL_MAGE_DAMPEN_MAGIC_POSITIVE         = 8451,
    SPELL_MAGE_AMPLIFY_MAGIC_NEGATIVE        = 8455,
    SPELL_MAGE_AMPLIFY_MAGIC_POSITIVE        = 10169,
    SPELL_MAGE_IGNITE_R1                     = 11119,
    SPELL_MAGE_IGNITE_R2                     = 11120,
    SPELL_MAGE_COMBUSTION                    = 11129,
    SPELL_MAGE_MAGIC_ATTUNEMENT              = 11247,
    SPELL_MAGE_IMPROVED_BLIZZARD_CHILLED_R1  = 12484,
    SPELL_MAGE_IMPROVED_BLIZZARD_CHILLED_R2  = 12485,
    SPELL_MAGE_IMPROVED_BLIZZARD_CHILLED_R3  = 12486,
    SPELL_MAGE_IGNITE                        = 12654,
    SPELL_MAGE_IGNITE_R3                     = 12846,
    SPELL_MAGE_IGNITE_R4                     = 12847,
    SPELL_MAGE_IGNITE_R5                     = 12848,
    SPELL_MAGE_ARCANE_MEDITATION_R1          = 18462,
    SPELL_MAGE_ARCANE_MEDITATION_R2          = 18463,
    SPELL_MAGE_ARCANE_MEDITATION_R3          = 18464,
    SPELL_MAGE_COMBUSTION_PROC               = 28682,
    SPELL_MAGE_MASTER_OF_ELEMENTS_ENERGIZE   = 29077,
    SPELL_MAGE_MAGIC_ABSORPTION_ENERGIZE     = 29442,
    SPELL_MAGE_TEMPORAL_CONVERGENCE          = 51961,
    SPELL_MAGE_ICICLES_R2                    = 51991,
    SPELL_MAGE_ICICLE_R2                     = 51992,
    SPELL_MAGE_ICICLES_ROOT                  = 51993,
    SPELL_MAGE_ICICLES_SHATTER               = 51994,
    SPELL_MAGE_ICICLES_R3                    = 51995,
    SPELL_MAGE_ICICLE_R3                     = 51996,
    SPELL_MAGE_ICICLES_R4                    = 51997,
    SPELL_MAGE_ICICLE_R4                     = 51998,
    SPELL_MAGE_FLASH_FREEZE                  = 52500,
    SPELL_MAGE_ARCANE_RUPTURE_BUFF           = 52502,
    SPELL_MAGE_ICICLES_R1                    = 52516,
    SPELL_MAGE_ICICLE_R1                     = 52517,
    SPELL_MAGE_ERUPTING_SHIELD               = 52582,
    SPELL_MAGE_ERUPTING_SHIELD_DAMAGE        = 52583,
    SPELL_MAGE_NETHER_OVERCHARGE             = 52594,
    SPELL_MAGE_NETHER_OVERCHARGE_BUFF        = 52595,
};

enum MageMisc
{
    MISC_MAGE_IMPROVED_BLIZZARD_SCRIPT_R1 = 836,
    MISC_MAGE_IMPROVED_BLIZZARD_SCRIPT_R2 = 988,
    MISC_MAGE_IMPROVED_BLIZZARD_SCRIPT_R3 = 989,
};

enum MageSpellVisuals
{
    SPELL_VISUAL_MAGE_BLIZZARD = 259,
};

static uint32 const MAGE_FLASH_FREEZE_IMMUNE_MASK = (1 << (MECHANIC_ROOT - 1)) | (1 << (MECHANIC_FREEZE - 1));
static std::map<ObjectGuid, std::map<ObjectGuid, uint32>> s_igniteContributions;
static std::mutex s_igniteContributionsMutex;

struct ResonanceCascadeProcData
{
    uint32 count = 0;
    time_t lastProc = 0;
    Spell const* lastArcaneExplosion = nullptr;
    uint32 lastArcaneExplosionTime = 0;
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

struct spell_mage_arcane_missiles : public SpellScript
{
    SpellCastResult OnCheckCast(Spell* spell, bool /*strict*/) const override
    {
        return spell->m_targets.getUnitTarget() == spell->m_caster ? SPELL_FAILED_BAD_TARGETS : SPELL_CAST_OK;
    }
};

struct spell_mage_cold_snap : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_0)
            return true;

        Player* player = spell->m_caster->ToPlayer();
        if (!player)
            return false;

        SpellCooldowns cooldowns = player->GetSpellCooldownMap();
        for (auto itr = cooldowns.begin(); itr != cooldowns.end();)
        {
            SpellEntry const* spellInfo = sSpellMgr.GetSpellEntry(itr->first);
            if (spellInfo && spellInfo->SpellFamilyName == SPELLFAMILY_MAGE &&
                    (spellInfo->GetSpellSchoolMask() & SPELL_SCHOOL_MASK_FROST) &&
                    spellInfo->Id != spell->m_spellInfo->Id && spellInfo->GetRecoveryTime() > 0)
                player->RemoveSpellCooldown((itr++)->first, true);
            else
                ++itr;
        }

        return false;
    }
};

struct spell_mage_magic_absorption : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* /*victim*/, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!aura || aura->GetEffIndex() != EFFECT_INDEX_0)
            return SPELL_AURA_PROC_CANT_TRIGGER;

        if (owner->GetPowerType() != POWER_MANA)
            return SPELL_AURA_PROC_FAILED;

        int32 mana = aura->GetModifier()->m_amount * owner->GetMaxPower(POWER_MANA) / 100;
        owner->CastCustomSpell(owner, SPELL_MAGE_MAGIC_ABSORPTION_ENERGIZE, &mana, nullptr, nullptr, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_mage_master_of_elements : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* /*victim*/, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!procSpell)
            return SPELL_AURA_PROC_FAILED;

        int32 cost = procSpell->manaCost + procSpell->ManaCostPercentage * owner->GetCreateMana() / 100;
        int32 mana = cost * aura->GetModifier()->m_amount / 100;
        if (mana <= 0)
            return SPELL_AURA_PROC_FAILED;

        owner->CastCustomSpell(owner, SPELL_MAGE_MASTER_OF_ELEMENTS_ENERGIZE, &mana, nullptr, nullptr, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_mage_ignite : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* victim, uint32 damage, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!victim)
            return SPELL_AURA_PROC_FAILED;

        uint32 totalDamage = damage;
        if (Spell* spell = owner->GetCurrentSpell(CURRENT_GENERIC_SPELL))
            totalDamage += spell->GetAbsorbedDamage();

        uint32 tickPct = 0;
        switch (aura->GetId())
        {
            case SPELL_MAGE_IGNITE_R1: tickPct = 4; break;
            case SPELL_MAGE_IGNITE_R2: tickPct = 8; break;
            case SPELL_MAGE_IGNITE_R3: tickPct = 12; break;
            case SPELL_MAGE_IGNITE_R4: tickPct = 16; break;
            case SPELL_MAGE_IGNITE_R5: tickPct = 20; break;
        }

        int32 basepoints = int32(totalDamage * tickPct / 100);
        if (basepoints <= 0)
            return SPELL_AURA_PROC_FAILED;

        ObjectGuid const victimGuid = victim->GetObjectGuid();
        ObjectGuid const ownerGuid = owner->GetObjectGuid();

        if (Aura* igniteAura = victim->GetAura(SPELL_MAGE_IGNITE, EFFECT_INDEX_0))
        {
            Modifier* igniteModifier = igniteAura->GetModifier();
            SpellAuraHolder* igniteHolder = igniteAura->GetHolder();
            int32 tickDamage = igniteModifier->m_amount;

            if (igniteAura->GetStackAmount() < 5)
            {
                tickDamage += basepoints;
                {
                    std::lock_guard<std::mutex> guard(s_igniteContributionsMutex);
                    auto& contributions = s_igniteContributions[victimGuid];
                    if (contributions.empty())
                        contributions[igniteAura->GetCasterGuid()] = uint32(std::max(igniteModifier->m_amount, 0));
                    contributions[ownerGuid] += uint32(basepoints);
                }
                igniteHolder->ModStackAmount(1);
                igniteModifier->m_amount = tickDamage;
                igniteAura->ApplyModifier(true, true, false);
            }
            else
                igniteHolder->SetStackAmount(5);

            igniteHolder->Refresh(igniteAura->GetCaster(), victim, igniteHolder);
            return SPELL_AURA_PROC_OK;
        }

        {
            std::lock_guard<std::mutex> guard(s_igniteContributionsMutex);
            s_igniteContributions[victimGuid].clear();
            s_igniteContributions[victimGuid][ownerGuid] = uint32(basepoints);
        }

        owner->CastCustomSpell(victim, SPELL_MAGE_IGNITE, &basepoints, nullptr, nullptr, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }

    void OnPeriodicDamageBeforeDeal(Aura* aura, uint32 /*damage*/, CleanDamage const* /*cleanDamage*/, bool& addThreat) override
    {
        if (aura->GetId() == SPELL_MAGE_IGNITE)
            addThreat = false;
    }

    void OnPeriodicDamageAfterDeal(Aura* aura, uint32 damage, CleanDamage const* /*cleanDamage*/) override
    {
        if (aura->GetId() != SPELL_MAGE_IGNITE || !damage)
            return;

        Unit* target = aura->GetTarget();
        SpellEntry const* spellProto = aura->GetSpellProto();
        std::map<ObjectGuid, uint32> contributions;
        {
            std::lock_guard<std::mutex> guard(s_igniteContributionsMutex);
            auto contributionsItr = s_igniteContributions.find(target->GetObjectGuid());
            if (contributionsItr != s_igniteContributions.end())
                contributions = contributionsItr->second;
        }

        if (contributions.empty())
        {
            if (Unit* caster = aura->GetCaster())
                target->AddThreat(caster, damage * sSpellMgr.GetSpellThreatMultiplier(spellProto), false, spellProto->GetSpellSchoolMask(), spellProto);
            return;
        }

        uint32 totalContribution = 0;
        for (auto const& contribution : contributions)
            totalContribution += contribution.second;

        float const totalThreat = damage * sSpellMgr.GetSpellThreatMultiplier(spellProto);
        SpellSchoolMask const schoolMask = spellProto->GetSpellSchoolMask();

        if (!totalContribution)
        {
            if (Unit* caster = aura->GetCaster())
                target->AddThreat(caster, totalThreat, false, schoolMask, spellProto);
            return;
        }

        bool threatApplied = false;

        for (auto const& contribution : contributions)
        {
            if (!contribution.second)
                continue;

            Player* contributor = ObjectAccessor::FindPlayer(contribution.first);
            if (!contributor || !contributor->IsAlive())
                continue;

            target->AddThreat(contributor, totalThreat * contribution.second / totalContribution, false, schoolMask, spellProto);
            threatApplied = true;
        }

        if (!threatApplied)
            if (Unit* caster = aura->GetCaster())
                target->AddThreat(caster, totalThreat, false, schoolMask, spellProto);
    }

    void OnPeriodicTickEnd(Aura* aura) override
    {
        if (aura->GetId() == SPELL_MAGE_IGNITE && aura->GetAuraDuration() == 0)
        {
            std::lock_guard<std::mutex> guard(s_igniteContributionsMutex);
            s_igniteContributions.erase(aura->GetTarget()->GetObjectGuid());
        }
    }
};

struct spell_mage_mana_shield : public AuraScript
{
    void OnManaAbsorb(Aura* aura, int32& currentAbsorb, int32& /*remainingDamage*/) override
    {
        if (!aura || aura->GetEffIndex() != EFFECT_INDEX_0 || currentAbsorb <= 0)
            return;

        Unit* target = aura->GetTarget();
        if (!target || !target->HasAura(SPELL_MAGE_ERUPTING_SHIELD))
            return;

        int32 const remainingAbsorb = aura->GetModifier()->m_amount;
        if (currentAbsorb < remainingAbsorb)
            return;

        Aura const* setBonus = target->GetAura(SPELL_MAGE_ERUPTING_SHIELD, EFFECT_INDEX_0);
        if (!setBonus || setBonus->GetModifier()->m_amount <= 0)
            return;

        int32 damage = std::max(aura->GetInitialAbsorbAmount(), remainingAbsorb) * setBonus->GetModifier()->m_amount / 100;
        if (damage <= 0)
            return;

        target->CastCustomSpell(target, SPELL_MAGE_ERUPTING_SHIELD_DAMAGE, &damage, nullptr, nullptr, true, nullptr, aura);
    }
};

struct spell_mage_combustion : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* victim, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 procEx, uint32 /*cooldown*/) override
    {
        if (!victim)
            return SPELL_AURA_PROC_FAILED;

        if (!owner->HasAura(SPELL_MAGE_COMBUSTION_PROC))
        {
            owner->RemoveAurasDueToSpell(SPELL_MAGE_COMBUSTION);
            return SPELL_AURA_PROC_FAILED;
        }

        if (aura->GetHolder()->GetAuraCharges() <= 1 && (procEx & PROC_EX_CRITICAL_HIT))
        {
            owner->RemoveAurasDueToSpell(SPELL_MAGE_COMBUSTION_PROC);
            return SPELL_AURA_PROC_OK;
        }

        owner->CastSpell(owner, SPELL_MAGE_COMBUSTION_PROC, true, nullptr, aura);
        return (procEx & PROC_EX_CRITICAL_HIT) ? SPELL_AURA_PROC_OK : SPELL_AURA_PROC_FAILED;
    }
};

struct spell_mage_resonance_cascade : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* victim, uint32 damage, int32 /*originalAmount*/, Aura* aura, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!damage || !procSpell || !(procSpell->GetSpellSchoolMask() & SPELL_SCHOOL_MASK_ARCANE) || !victim || !victim->IsAlive())
            return SPELL_AURA_PROC_FAILED;

        int32 duplicatedDamage = int32(damage * (float(aura->GetModifier()->m_amount) / 100.0f));
        if (!duplicatedDamage)
            return SPELL_AURA_PROC_FAILED;

        static std::map<ObjectGuid, ResonanceCascadeProcData> consecutiveProcsMap;
        ResonanceCascadeProcData& procData = consecutiveProcsMap[owner->GetObjectGuid()];

        if (procSpell->IsFitToFamilyMask(UI64LIT(1) << CF_MAGE_ARCANE_EXPLOSION))
        {
            Spell* currentSpell = owner->GetCurrentSpell(CURRENT_GENERIC_SPELL);
            uint32 const now = WorldTimer::getMSTime();
            if (currentSpell && currentSpell->m_spellInfo == procSpell)
            {
                if (procData.lastArcaneExplosion == currentSpell &&
                    WorldTimer::getMSTimeDiff(procData.lastArcaneExplosionTime, now) < IN_MILLISECONDS)
                    return SPELL_AURA_PROC_FAILED;

                procData.lastArcaneExplosion = currentSpell;
                procData.lastArcaneExplosionTime = now;
            }
        }

        if ((procData.lastProc + 3) < sWorld.GetGameTime())
            procData.count = 0;

        if (procData.count >= 4)
            return SPELL_AURA_PROC_FAILED;

        procData.lastProc = sWorld.GetGameTime();
        ++procData.count;
        owner->CastCustomSpell(victim, procSpell, &duplicatedDamage, nullptr, nullptr, true);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_mage_arcane_instability : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* victim, uint32 damage, int32 /*originalAmount*/, Aura* aura, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!procSpell || !(procSpell->GetSpellSchoolMask() & SPELL_SCHOOL_MASK_ARCANE) || !victim || !victim->IsAlive() || !damage)
            return SPELL_AURA_PROC_FAILED;

        Player* player = owner->ToPlayer();
        if (!player)
            return SPELL_AURA_PROC_FAILED;

        uint32 manaCost = player->GetCreateMana() ? uint32(player->GetCreateMana() * 2 / 100) : 0;
        if (manaCost && player->GetPower(POWER_MANA) < manaCost)
            return SPELL_AURA_PROC_FAILED;

        int32 bonusDamage = std::max(1u, aura->GetModifier()->m_amount * damage / 100);
        if (manaCost)
            player->ModifyPower(POWER_MANA, -int32(manaCost));

        owner->CastCustomSpell(victim, aura->GetSpellProto()->EffectTriggerSpell[aura->GetEffIndex()], &bonusDamage, nullptr, nullptr, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_mage_improved_blizzard : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* victim, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!victim)
            return SPELL_AURA_PROC_FAILED;

        uint32 triggerSpellId = 0;
        switch (aura->GetModifier()->m_miscvalue)
        {
            case MISC_MAGE_IMPROVED_BLIZZARD_SCRIPT_R1:
                triggerSpellId = SPELL_MAGE_IMPROVED_BLIZZARD_CHILLED_R1;
                break;
            case MISC_MAGE_IMPROVED_BLIZZARD_SCRIPT_R2:
                triggerSpellId = SPELL_MAGE_IMPROVED_BLIZZARD_CHILLED_R2;
                break;
            case MISC_MAGE_IMPROVED_BLIZZARD_SCRIPT_R3:
                triggerSpellId = SPELL_MAGE_IMPROVED_BLIZZARD_CHILLED_R3;
                break;
        }

        if (!triggerSpellId)
            return std::nullopt;

        if (!procSpell || procSpell->SpellVisual != SPELL_VISUAL_MAGE_BLIZZARD)
            return SPELL_AURA_PROC_FAILED;

        owner->CastSpell(victim, triggerSpellId, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }
};

bool IsValidIciclesTarget(Aura* aura, Unit* caster, Unit* target)
{
    if (!aura || !caster || !target || !target->IsAlive())
        return false;

    if (target == caster || !caster->IsValidAttackTarget(target))
        return false;

    SpellAuraHolder* targetHolder = target->GetSpellAuraHolder(aura->GetId(), caster->GetObjectGuid());
    return targetHolder && targetHolder->GetAuraByEffectIndex(EFFECT_INDEX_1);
}

struct spell_mage_icicles_spell : public SpellScript
{
    SpellCastResult OnCheckCast(Spell* spell, bool /*strict*/) const override
    {
        if (spell->m_targets.getUnitTarget() == spell->m_caster)
            return SPELL_FAILED_BAD_TARGETS;

        return SPELL_CAST_OK;
    }
};

struct spell_mage_icicles_aura : public AuraScript
{
    void OnAfterApply(Aura* aura, bool apply) override
    {
        if (!apply || !aura || aura->GetEffIndex() != EFFECT_INDEX_0)
            return;

        if (Unit* target = aura->GetTarget())
            target->RemoveAurasDueToSpell(SPELL_MAGE_FLASH_FREEZE);
    }

    void OnPeriodicTrigger(Aura* aura, Unit* caster, Unit* /*target*/, WorldObject* /*targetObject*/, SpellEntry const*& spellInfo) override
    {
        if (!aura || aura->GetEffIndex() != EFFECT_INDEX_0)
            return;

        uint32 triggerSpellId = 0;
        switch (aura->GetId())
        {
            case SPELL_MAGE_ICICLES_R1:
                triggerSpellId = SPELL_MAGE_ICICLE_R1;
                break;
            case SPELL_MAGE_ICICLES_R2:
                triggerSpellId = SPELL_MAGE_ICICLE_R2;
                break;
            case SPELL_MAGE_ICICLES_R3:
                triggerSpellId = SPELL_MAGE_ICICLE_R3;
                break;
            case SPELL_MAGE_ICICLES_R4:
                triggerSpellId = SPELL_MAGE_ICICLE_R4;
                break;
        }

        if (!triggerSpellId)
            return;

        spellInfo = nullptr;

        if (!caster || !caster->IsAlive())
            return;

        SpellEntry const* triggerSpell = sSpellMgr.GetSpellEntry(triggerSpellId);
        Unit* target = nullptr;
        if (Spell* channel = caster->GetCurrentSpell(CURRENT_CHANNELED_SPELL))
            if (channel->m_spellInfo && channel->m_spellInfo->Id == aura->GetId())
                if (Unit* channelTarget = channel->GetUnitTarget())
                    if (IsValidIciclesTarget(aura, caster, channelTarget))
                        target = channelTarget;

        if (!target)
            if (ObjectGuid channelTargetGuid = caster->GetChannelObjectGuid())
                if (Unit* channelTarget = caster->GetMap()->GetUnit(channelTargetGuid))
                    if (IsValidIciclesTarget(aura, caster, channelTarget))
                        target = channelTarget;

        if (!target)
            for (auto const& itr : caster->GetSingleCastSpellTargets())
                if (itr.first && itr.first->Id == aura->GetId())
                    if (Unit* singleCastTarget = caster->GetMap()->GetUnit(itr.second))
                        if (IsValidIciclesTarget(aura, caster, singleCastTarget))
                        {
                            target = singleCastTarget;
                            break;
                        }

        if (!triggerSpell || !target)
            return;

        caster->CastSpell(target, triggerSpell, true, nullptr, aura);
    }
};

struct spell_mage_icicles_root : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* /*victim*/, uint32 damage, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!owner || !owner->IsAlive() || !damage || !aura || aura->GetId() != SPELL_MAGE_ICICLES_ROOT)
            return SPELL_AURA_PROC_FAILED;

        if (!roll_chance_i(75))
            return SPELL_AURA_PROC_FAILED;

        int32 shatterDamage = owner->GetCreateHealth() * 30 / 100;
        owner->CastCustomSpell(owner, SPELL_MAGE_ICICLES_SHATTER, &shatterDamage, nullptr, nullptr, true, nullptr, aura);

        aura->SetInUse(true);
        owner->RemoveAurasByCasterSpell(SPELL_MAGE_ICICLES_ROOT, aura->GetCasterGuid());
        aura->SetInUse(false);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_mage_flash_freeze : public AuraScript
{
    std::optional<SpellProcEventTriggerCheck> OnCheckProc(Unit const* /*owner*/, Unit* victim, SpellAuraHolder* /*holder*/, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 procExtra, WeaponAttackType /*attType*/, bool /*isVictim*/) override
    {
        if (!victim || !procSpell || !(procExtra & PROC_EX_IMMUNE))
            return SPELL_PROC_TRIGGER_FAILED;

        Creature const* creature = victim->ToCreature();
        if (!creature)
            return SPELL_PROC_TRIGGER_FAILED;

        uint32 spellMechanicMask = 0;
        if (procSpell->Mechanic)
            spellMechanicMask |= 1 << (procSpell->Mechanic - 1);

        for (uint8 i = 0; i < MAX_EFFECT_INDEX; ++i)
            if (procSpell->EffectMechanic[i])
                spellMechanicMask |= 1 << (procSpell->EffectMechanic[i] - 1);

        if (!(spellMechanicMask & MAGE_FLASH_FREEZE_IMMUNE_MASK))
            return SPELL_PROC_TRIGGER_FAILED;

        uint32 permanentImmuneMask = creature->GetCreatureInfo()->mechanic_immune_mask;
        if (!(spellMechanicMask & permanentImmuneMask & MAGE_FLASH_FREEZE_IMMUNE_MASK))
            return SPELL_PROC_TRIGGER_FAILED;

        return std::nullopt;
    }

};

struct spell_mage_clear_resist_state : public SpellScript
{
    void OnSuccessfulFinish(Spell* spell) const override
    {
        if (spell->m_casterUnit && spell->m_casterUnit->IsPlayer())
            spell->m_casterUnit->ModifyAuraState(AURA_STATE_SPELL_RESISTED, false);
    }
};

struct spell_mage_arcane_rupture : public SpellScript
{
    void OnSuccessfulFinish(Spell* spell) const override
    {
        if (spell->m_casterUnit && spell->m_casterUnit->IsPlayer())
        {
            if (spell->m_casterUnit->HasAura(SPELL_MAGE_TEMPORAL_CONVERGENCE) && spell->m_spellInfo->powerType == POWER_MANA)
            {
                uint32 const refund = std::min(spell->m_spellInfo->manaCost, spell->GetPowerCost());
                if (refund > 0)
                    spell->m_casterUnit->EnergizeBySpell(spell->m_casterUnit, SPELL_MAGE_TEMPORAL_CONVERGENCE, refund, POWER_MANA);
            }

            spell->m_casterUnit->RemoveAurasDueToSpell(SPELL_MAGE_TEMPORAL_CONVERGENCE);
            spell->m_casterUnit->CastSpell(spell->m_casterUnit, SPELL_MAGE_ARCANE_RUPTURE_BUFF, true);
        }
    }
};

struct spell_mage_evocation : public SpellScript
{
    void OnSuccessfulFinish(Spell* spell) const override
    {
        if (!spell->m_casterUnit || !spell->m_casterUnit->HasAura(SPELL_MAGE_NETHER_OVERCHARGE))
            return;

        spell->m_casterUnit->CastSpell(spell->m_casterUnit, SPELL_MAGE_NETHER_OVERCHARGE_BUFF, true);
    }
};

struct spell_mage_arcane_rupture_buff : public AuraScript
{
    void OnAfterApply(Aura* aura, bool apply) override
    {
        if (!apply)
            return;

        SpellModifier* spellMod = aura->GetSpellModifier();
        if (!spellMod)
            return;

        spellMod->mask = UI64LIT(1) << CF_MAGE_ARCANE_MISSILES;

        SpellModifier* damageMod = new SpellModifier(
            SPELLMOD_DAMAGE,
            SpellModType(aura->GetModifier()->m_auraname),
            aura->GetModifier()->m_amount,
            aura->GetId(),
            UI64LIT(1) << CF_MAGE_ARCANE_MISSILES,
            aura->GetHolder()->GetAuraCharges());

        aura->AddExtraSpellModifier(damageMod);
        aura->GetTarget()->ToPlayer()->AddSpellMod(damageMod, true);
    }
};

struct spell_mage_arcane_power : public AuraScript
{
    void OnPeriodicCalculateAmount(Aura* aura, float& amount) override
    {
        if (!aura || aura->GetEffIndex() != EFFECT_INDEX_1)
            return;

        Unit* target = aura->GetTarget();
        if (!target)
            return;

        amount = float(target->GetMaxPower(POWER_MANA)) * amount / 100.0f;
    }

    void OnAfterApply(Aura* aura, bool /*apply*/) override
    {
        if (!aura || aura->GetEffIndex() != EFFECT_INDEX_2)
            return;

        if (Player* player = aura->GetTarget()->ToPlayer())
            player->UpdateManaRegen();
    }

    void OnPeriodicTickEnd(Aura* aura) override
    {
        if (!aura || aura->GetEffIndex() != EFFECT_INDEX_1)
            return;

        Unit* target = aura->GetTarget();
        if (!target || !target->IsAlive())
            return;

        uint32 const maxMana = target->GetMaxPower(POWER_MANA);
        if (!maxMana || uint64(target->GetPower(POWER_MANA)) * 10 >= maxMana)
            return;

        target->Kill(target, aura->GetSpellProto(), false);
    }
};

bool IsArcaneMeditationSpell(uint32 spellId)
{
    switch (spellId)
    {
        case SPELL_MAGE_ARCANE_MEDITATION_R1:
        case SPELL_MAGE_ARCANE_MEDITATION_R2:
        case SPELL_MAGE_ARCANE_MEDITATION_R3:
            return true;
    }

    return false;
}

void UpdateArcaneMeditationManaRegen(Aura* aura, bool forceBaseRegen = false)
{
    if (!aura || !IsArcaneMeditationSpell(aura->GetId()))
        return;

    Player* player = aura->GetTarget()->ToPlayer();
    if (!player)
        return;

    SpellAuraHolder* holder = aura->GetHolder();
    if (!holder)
        return;

    Aura* regenAura = holder->GetAuraByEffectIndex(EFFECT_INDEX_0);
    if (!regenAura || regenAura->GetModifier()->m_auraname != SPELL_AURA_MOD_MANA_REGEN_INTERRUPT)
        return;

    int32 const baseRegenPct = aura->GetSpellProto()->CalculateSimpleValue(EFFECT_INDEX_0);
    int32 const manaThresholdPct = aura->GetSpellProto()->CalculateSimpleValue(EFFECT_INDEX_1);
    uint32 const maxMana = player->GetMaxPower(POWER_MANA);
    bool const belowThreshold = !forceBaseRegen && maxMana && uint64(player->GetPower(POWER_MANA)) * 100 < uint64(maxMana) * manaThresholdPct;
    int32 const regenPct = belowThreshold ? baseRegenPct * 3 : baseRegenPct;

    if (regenAura->GetModifier()->m_amount == regenPct)
        return;

    regenAura->GetModifier()->m_amount = regenPct;
    player->UpdateManaRegen();
}

struct spell_mage_arcane_meditation : public AuraScript
{
    void OnAuraInit(Aura* aura) override
    {
        if (!aura || aura->GetEffIndex() != EFFECT_INDEX_1 || !IsArcaneMeditationSpell(aura->GetId()))
            return;

        aura->SetPeriodicTimer(1 * IN_MILLISECONDS);
    }

    void OnAfterApply(Aura* aura, bool apply) override
    {
        if (apply)
            UpdateArcaneMeditationManaRegen(aura);
        else if (aura && aura->GetEffIndex() == EFFECT_INDEX_1)
            UpdateArcaneMeditationManaRegen(aura, true);
    }

    void OnPeriodicDummy(Aura* aura) override
    {
        if (!aura || aura->GetEffIndex() != EFFECT_INDEX_1)
            return;

        UpdateArcaneMeditationManaRegen(aura);
    }
};

struct spell_mage_brilliance_aura : public AuraScript
{
    void OnAfterApply(Aura* aura, bool apply) override
    {
        if (!apply || aura->GetModifier()->m_miscvalue != POWER_MANA)
            return;

        UpdateAmount(aura, true);
    }

    void OnPeriodicTick(Aura* aura) override
    {
        if (aura->GetModifier()->m_auraname != SPELL_AURA_MOD_POWER_REGEN ||
                aura->GetModifier()->m_miscvalue != POWER_MANA)
            return;

        UpdateAmount(aura, false);
    }

private:
    static void UpdateAmount(Aura* aura, bool applying)
    {
        Unit* target = aura->GetTarget();
        Player* caster = ToPlayer(aura->GetCaster());
        if (!target || !caster)
            return;

        float percent = aura->GetSpellProto()->CalculateSimpleValue(aura->GetEffIndex());
        if (!applying && caster->GetObjectGuid() != target->GetObjectGuid())
            percent -= std::min(percent, (percent / 3.0f) * (int32(caster->GetDistance2d(target)) / 10));

        float const multiplier = (percent / 100.0f) * 5.0f;
        aura->GetModifier()->m_amount = (caster != target ? caster->GetManaRegen() : caster->GetRegenMPPerSpirit()) * multiplier;
        target->UpdateManaRegen();
    }
};

bool HasMagicAttunement(Unit const* caster)
{
    Player const* player = caster ? caster->GetSpellModOwner() : nullptr;
    return player && player->HasSpell(SPELL_MAGE_MAGIC_ATTUNEMENT);
}

bool IsMagicAttunementHostileTarget(Unit const* caster, Unit const* target)
{
    return caster && target && caster->IsValidAttackTarget(target);
}

bool IsAllowedMagicAttunementFriendlyTarget(Unit const* caster, Unit const* target)
{
    Player const* casterPlayer = caster ? caster->GetSpellModOwner() : nullptr;
    Player const* targetPlayer = target ? target->GetSpellModOwner() : nullptr;
    return casterPlayer && targetPlayer && casterPlayer->IsInSameGroupWith(targetPlayer);
}

struct spell_mage_amplify_dampen_magic : public SpellScript
{
    SpellCastResult OnCheckCast(Spell* spell, bool /*strict*/) const override
    {
        Unit* caster = spell->m_casterUnit;
        Unit* target = spell->m_targets.getUnitTarget();
        if (!caster || !target)
            return SPELL_FAILED_BAD_TARGETS;

        if (IsMagicAttunementHostileTarget(caster, target) && !HasMagicAttunement(caster))
            return SPELL_FAILED_TARGET_ENEMY;

        if (!IsMagicAttunementHostileTarget(caster, target) && !IsAllowedMagicAttunementFriendlyTarget(caster, target))
            return SPELL_FAILED_TARGET_NOT_IN_PARTY;

        return SPELL_CAST_OK;
    }

    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_0)
            return true;

        Unit* caster = spell->m_casterUnit;
        Unit* target = spell->m_targets.getUnitTarget();
        if (!caster || !target)
            return false;

        bool const hostileTarget = IsMagicAttunementHostileTarget(caster, target);
        if (hostileTarget && !HasMagicAttunement(caster))
            return false;
        if (!hostileTarget && !IsAllowedMagicAttunementFriendlyTarget(caster, target))
            return false;

        uint32 auraSpellId = 0;
        switch (spell->m_spellInfo->Id)
        {
            case SPELL_MAGE_DAMPEN_MAGIC:
                auraSpellId = hostileTarget ? SPELL_MAGE_DAMPEN_MAGIC_NEGATIVE : SPELL_MAGE_DAMPEN_MAGIC_POSITIVE;
                break;
            case SPELL_MAGE_AMPLIFY_MAGIC:
                auraSpellId = hostileTarget ? SPELL_MAGE_AMPLIFY_MAGIC_NEGATIVE : SPELL_MAGE_AMPLIFY_MAGIC_POSITIVE;
                break;
        }

        if (!auraSpellId)
            return false;

        target->RemoveAurasByCasterSpell(SPELL_MAGE_DAMPEN_MAGIC_NEGATIVE, caster->GetObjectGuid());
        target->RemoveAurasByCasterSpell(SPELL_MAGE_DAMPEN_MAGIC_POSITIVE, caster->GetObjectGuid());
        target->RemoveAurasByCasterSpell(SPELL_MAGE_AMPLIFY_MAGIC_NEGATIVE, caster->GetObjectGuid());
        target->RemoveAurasByCasterSpell(SPELL_MAGE_AMPLIFY_MAGIC_POSITIVE, caster->GetObjectGuid());
        target->AddAura(auraSpellId, 0, caster);
        return false;
    }
};

struct spell_mage_amplify_dampen_magic_aura : public AuraScript
{
    void OnAuraInit(Aura* aura) override
    {
        switch (aura->GetId())
        {
            case SPELL_MAGE_DAMPEN_MAGIC_NEGATIVE:
            case SPELL_MAGE_AMPLIFY_MAGIC_NEGATIVE:
                aura->SetPositive(false);
                break;
            case SPELL_MAGE_DAMPEN_MAGIC_POSITIVE:
            case SPELL_MAGE_AMPLIFY_MAGIC_POSITIVE:
                aura->SetPositive(true);
                break;
        }
    }
};

struct spell_mage_magic_attunement : public AuraScript
{
    void OnAfterApply(Aura* aura, bool apply) override
    {
        if (!apply || aura->GetEffIndex() != EFFECT_INDEX_0)
            return;

        SpellModifier* spellMod = aura->GetSpellModifier();
        if (!spellMod)
            return;

        spellMod->mask = UI64LIT(1) << CF_MAGE_D_A_MAGIC;
    }
};
}

void AddSC_mage_spell_scripts()
{
    RegisterSpellScript("spell_mage_arcane_missiles", &GetSpellScript<spell_mage_arcane_missiles>);
    RegisterSpellScript("spell_mage_cold_snap", &GetSpellScript<spell_mage_cold_snap>);
    RegisterAuraScript("spell_mage_magic_absorption", &GetAuraScript<spell_mage_magic_absorption>);
    RegisterAuraScript("spell_mage_master_of_elements", &GetAuraScript<spell_mage_master_of_elements>);
    RegisterAuraScript("spell_mage_ignite", &GetAuraScript<spell_mage_ignite>);
    RegisterAuraScript("spell_mage_mana_shield", &GetAuraScript<spell_mage_mana_shield>);
    RegisterAuraScript("spell_mage_combustion", &GetAuraScript<spell_mage_combustion>);
    RegisterAuraScript("spell_mage_resonance_cascade", &GetAuraScript<spell_mage_resonance_cascade>);
    RegisterAuraScript("spell_mage_arcane_instability", &GetAuraScript<spell_mage_arcane_instability>);
    RegisterAuraScript("spell_mage_improved_blizzard", &GetAuraScript<spell_mage_improved_blizzard>);
    RegisterSpellAndAuraScript("spell_mage_icicles", &GetSpellScript<spell_mage_icicles_spell>, &GetAuraScript<spell_mage_icicles_aura>);
    RegisterAuraScript("spell_mage_icicles_root", &GetAuraScript<spell_mage_icicles_root>);
    RegisterAuraScript("spell_mage_flash_freeze", &GetAuraScript<spell_mage_flash_freeze>);
    RegisterSpellScript("spell_mage_clear_resist_state", &GetSpellScript<spell_mage_clear_resist_state>);
    RegisterSpellScript("spell_mage_arcane_rupture", &GetSpellScript<spell_mage_arcane_rupture>);
    RegisterSpellScript("spell_mage_evocation", &GetSpellScript<spell_mage_evocation>);
    RegisterAuraScript("spell_mage_arcane_rupture_buff", &GetAuraScript<spell_mage_arcane_rupture_buff>);
    RegisterAuraScript("spell_mage_arcane_power", &GetAuraScript<spell_mage_arcane_power>);
    RegisterAuraScript("spell_mage_arcane_meditation", &GetAuraScript<spell_mage_arcane_meditation>);
    RegisterAuraScript("spell_mage_brilliance_aura", &GetAuraScript<spell_mage_brilliance_aura>);
    RegisterSpellScript("spell_mage_amplify_dampen_magic", &GetSpellScript<spell_mage_amplify_dampen_magic>);
    RegisterAuraScript("spell_mage_amplify_dampen_magic_aura", &GetAuraScript<spell_mage_amplify_dampen_magic_aura>);
    RegisterAuraScript("spell_mage_magic_attunement", &GetAuraScript<spell_mage_magic_attunement>);
}
