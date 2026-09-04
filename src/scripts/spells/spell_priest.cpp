#include "scriptPCH.h"

namespace
{
enum PriestSpells
{
    SPELL_PRIEST_TOUCH_OF_WEAKNESS_R1              = 2652,
    SPELL_PRIEST_TOUCH_OF_WEAKNESS_DAMAGE_R1       = 2943,
    SPELL_PRIEST_WEAKENED_SOUL                     = 6788,
    SPELL_PRIEST_HOLY_NOVA_R1                      = 15237,
    SPELL_PRIEST_VAMPIRIC_EMBRACE_HEAL             = 15290,
    SPELL_PRIEST_HOLY_NOVA_R2                      = 15430,
    SPELL_PRIEST_HOLY_NOVA_R3                      = 15431,
    SPELL_PRIEST_SHADOWGUARD_R1                    = 18137,
    SPELL_PRIEST_TOUCH_OF_WEAKNESS_DAMAGE_R2       = 19249,
    SPELL_PRIEST_TOUCH_OF_WEAKNESS_DAMAGE_R3       = 19251,
    SPELL_PRIEST_TOUCH_OF_WEAKNESS_DAMAGE_R4       = 19252,
    SPELL_PRIEST_TOUCH_OF_WEAKNESS_DAMAGE_R5       = 19253,
    SPELL_PRIEST_TOUCH_OF_WEAKNESS_DAMAGE_R6       = 19254,
    SPELL_PRIEST_TOUCH_OF_WEAKNESS_R2              = 19261,
    SPELL_PRIEST_TOUCH_OF_WEAKNESS_R3              = 19262,
    SPELL_PRIEST_TOUCH_OF_WEAKNESS_R4              = 19264,
    SPELL_PRIEST_TOUCH_OF_WEAKNESS_R5              = 19265,
    SPELL_PRIEST_TOUCH_OF_WEAKNESS_R6              = 19266,
    SPELL_PRIEST_SHADOWGUARD_R2                    = 19308,
    SPELL_PRIEST_SHADOWGUARD_R3                    = 19309,
    SPELL_PRIEST_SHADOWGUARD_R4                    = 19310,
    SPELL_PRIEST_SHADOWGUARD_R5                    = 19311,
    SPELL_PRIEST_SHADOWGUARD_R6                    = 19312,
    SPELL_PRIEST_HOLY_NOVA_HEAL_R1                 = 23455,
    SPELL_PRIEST_HOLY_NOVA_HEAL_R2                 = 23458,
    SPELL_PRIEST_HOLY_NOVA_HEAL_R3                 = 23459,
    SPELL_PRIEST_DIVINE_PROTECTION                 = 27779,
    SPELL_PRIEST_HOLY_NOVA_R4                      = 27799,
    SPELL_PRIEST_HOLY_NOVA_R5                      = 27800,
    SPELL_PRIEST_HOLY_NOVA_R6                      = 27801,
    SPELL_PRIEST_HOLY_NOVA_HEAL_R4                 = 27803,
    SPELL_PRIEST_HOLY_NOVA_HEAL_R5                 = 27804,
    SPELL_PRIEST_HOLY_NOVA_HEAL_R6                 = 27805,
    SPELL_PRIEST_HOLY_NOVA_DAMAGE_SELF_R1          = 36601,
    SPELL_PRIEST_HOLY_NOVA_DAMAGE_SELF_R2          = 36602,
    SPELL_PRIEST_HOLY_NOVA_DAMAGE_SELF_R3          = 36603,
    SPELL_PRIEST_HOLY_NOVA_DAMAGE_SELF_R4          = 36604,
    SPELL_PRIEST_HOLY_NOVA_DAMAGE_SELF_R5          = 36605,
    SPELL_PRIEST_HOLY_NOVA_DAMAGE_SELF_R6          = 36606,
    SPELL_PRIEST_BLESSED_RECOVERY_R1               = 27811,
    SPELL_PRIEST_BLESSED_RECOVERY_HEAL_R1          = 27813,
    SPELL_PRIEST_BLESSED_RECOVERY_R2               = 27815,
    SPELL_PRIEST_BLESSED_RECOVERY_HEAL_R2          = 27817,
    SPELL_PRIEST_BLESSED_RECOVERY_HEAL_R3          = 27818,
    SPELL_PRIEST_SHADOWGUARD_DAMAGE_R1             = 28377,
    SPELL_PRIEST_SHADOWGUARD_DAMAGE_R2             = 28378,
    SPELL_PRIEST_SHADOWGUARD_DAMAGE_R3             = 28379,
    SPELL_PRIEST_SHADOWGUARD_DAMAGE_R4             = 28380,
    SPELL_PRIEST_SHADOWGUARD_DAMAGE_R5             = 28381,
    SPELL_PRIEST_SHADOWGUARD_DAMAGE_R6             = 28382,
    SPELL_PRIEST_TOUCH_OF_WEAKNESS_TRIGGER         = 28598,
    SPELL_PRIEST_PAIN_SPIKE_HEAL                   = 45556,
    SPELL_PRIEST_VAMPIRIC_TOUCH_R1                 = 45557,
    SPELL_PRIEST_VAMPIRIC_TOUCH_R2                 = 45558,
    SPELL_PRIEST_SHADOW_MEND                       = 45554,
    SPELL_PRIEST_SHADOW_MEND_DAMAGE                = 45571,
    SPELL_PRIEST_RESURGENT_SHIELD                  = 45560,
    SPELL_PRIEST_CHAMPIONS_GRACE                   = 45563,
    SPELL_PRIEST_CHAMPIONS_BOND                    = 45564,
    SPELL_PRIEST_EMPOWER_CHAMPION                  = 45565,
    SPELL_PRIEST_HOLY_CHAMPION                     = 45568,
    SPELL_PRIEST_CHAMPIONS_RESOLVE_DEPRECATED      = 45569,
    SPELL_PRIEST_VAMPIRIC_TOUCH_MANA               = 45966,
    SPELL_PRIEST_SPLENDOR_OF_LIGHT                 = 7001,
    SPELL_PRIEST_CHASTISE_R1                       = 51478,
    SPELL_PRIEST_CHASTISE_R2                       = 51479,
    SPELL_PRIEST_CHASTISE_R3                       = 51480,
    SPELL_PRIEST_CHASTISE_HASTE_R1                 = 51481,
    SPELL_PRIEST_CHASTISE_HASTE_R2                 = 51482,
    SPELL_PRIEST_CHASTISE_HASTE_R3                 = 51483,
    GO_PRIEST_LIGHTWELL                            = 181102,
    SPELL_PRIEST_CHASTISE_DISORIENT                = 51569,
    SPELL_PRIEST_CHASTISE_HASTE_CRIT_R1            = 52658,
    SPELL_PRIEST_CHASTISE_HASTE_CRIT_R2            = 52659,
    SPELL_PRIEST_CHASTISE_HASTE_CRIT_R3            = 52660,
    SPELL_PRIEST_HOLY_ATTENUATION                  = 52961,
    SPELL_PRIEST_RESERVOIR_OF_LIGHT_R1             = 51486,
    SPELL_PRIEST_RESERVOIR_OF_LIGHT_R2             = 51487,
    SPELL_PRIEST_RESERVOIR_OF_LIGHT_R3             = 51488,
    SPELL_PRIEST_RESURGENCE                        = 51477,
    SPELL_PRIEST_ENLIGHTENED_LINK                  = 51472,
    SPELL_PRIEST_ENLIGHTENED_SELF                  = 51473,
    SPELL_PRIEST_ENLIGHTEN_DAMAGE                  = 51474,
    SPELL_PRIEST_ENLIGHTEN_DUMMY                   = 51475,
    SPELL_PRIEST_ENLIGHTEN                         = 51476,
    SPELL_PRIEST_BOOK_OF_PRAYER_MANA               = 52942,
};

constexpr float LIGHTWELL_SPLENDOR_RADIUS = 30.0f;
constexpr float LIGHTWELL_FALLBACK_SEARCH_RADIUS = 100.0f;
constexpr uint32 ENLIGHTEN_HELPFUL_CHANCE = 10;
constexpr uint32 ENLIGHTEN_HARMFUL_CHANCE = 15;

uint32 GetHolyNovaHealSpell(uint32 spellId)
{
    switch (spellId)
    {
        case SPELL_PRIEST_HOLY_NOVA_R1: return SPELL_PRIEST_HOLY_NOVA_HEAL_R1;
        case SPELL_PRIEST_HOLY_NOVA_R2: return SPELL_PRIEST_HOLY_NOVA_HEAL_R2;
        case SPELL_PRIEST_HOLY_NOVA_R3: return SPELL_PRIEST_HOLY_NOVA_HEAL_R3;
        case SPELL_PRIEST_HOLY_NOVA_R4: return SPELL_PRIEST_HOLY_NOVA_HEAL_R4;
        case SPELL_PRIEST_HOLY_NOVA_R5: return SPELL_PRIEST_HOLY_NOVA_HEAL_R5;
        case SPELL_PRIEST_HOLY_NOVA_R6: return SPELL_PRIEST_HOLY_NOVA_HEAL_R6;
        default: return 0;
    }
}

uint32 GetHolyNovaShadowformDamageSpell(uint32 spellId)
{
    switch (spellId)
    {
        case SPELL_PRIEST_HOLY_NOVA_R1: return SPELL_PRIEST_HOLY_NOVA_DAMAGE_SELF_R1;
        case SPELL_PRIEST_HOLY_NOVA_R2: return SPELL_PRIEST_HOLY_NOVA_DAMAGE_SELF_R2;
        case SPELL_PRIEST_HOLY_NOVA_R3: return SPELL_PRIEST_HOLY_NOVA_DAMAGE_SELF_R3;
        case SPELL_PRIEST_HOLY_NOVA_R4: return SPELL_PRIEST_HOLY_NOVA_DAMAGE_SELF_R4;
        case SPELL_PRIEST_HOLY_NOVA_R5: return SPELL_PRIEST_HOLY_NOVA_DAMAGE_SELF_R5;
        case SPELL_PRIEST_HOLY_NOVA_R6: return SPELL_PRIEST_HOLY_NOVA_DAMAGE_SELF_R6;
        default: return 0;
    }
}

bool IsHolyNovaHealSpell(uint32 spellId)
{
    switch (spellId)
    {
        case SPELL_PRIEST_HOLY_NOVA_HEAL_R1:
        case SPELL_PRIEST_HOLY_NOVA_HEAL_R2:
        case SPELL_PRIEST_HOLY_NOVA_HEAL_R3:
        case SPELL_PRIEST_HOLY_NOVA_HEAL_R4:
        case SPELL_PRIEST_HOLY_NOVA_HEAL_R5:
        case SPELL_PRIEST_HOLY_NOVA_HEAL_R6:
            return true;
        default:
            return false;
    }
}

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

int32 CalculatePercentValue(int32 value, int32 pct)
{
    if (value <= 0 || pct <= 0)
        return 0;

    return int32(uint64(value) * uint32(pct) / 100);
}

bool IsChastiseCrit(Spell const* spell, Unit const* target)
{
    for (Spell::TargetInfo const& targetInfo : spell->m_UniqueTargetInfo)
        if (targetInfo.targetGUID == target->GetObjectGuid())
            return targetInfo.isCrit;

    return false;
}

uint32 GetChastiseHasteSpell(uint32 spellId, bool crit)
{
    switch (spellId)
    {
        case SPELL_PRIEST_CHASTISE_R1: return crit ? SPELL_PRIEST_CHASTISE_HASTE_CRIT_R1 : SPELL_PRIEST_CHASTISE_HASTE_R1;
        case SPELL_PRIEST_CHASTISE_R2: return crit ? SPELL_PRIEST_CHASTISE_HASTE_CRIT_R2 : SPELL_PRIEST_CHASTISE_HASTE_R2;
        case SPELL_PRIEST_CHASTISE_R3: return crit ? SPELL_PRIEST_CHASTISE_HASTE_CRIT_R3 : SPELL_PRIEST_CHASTISE_HASTE_R3;
        default: return 0;
    }
}

uint32 GetChastiseMinFriendlyLevel(uint32 spellId)
{
    switch (spellId)
    {
        case SPELL_PRIEST_CHASTISE_R1: return 35;
        case SPELL_PRIEST_CHASTISE_R2: return 45;
        case SPELL_PRIEST_CHASTISE_R3: return 55;
        default: return 0;
    }
}

class LightwellUnitInRangeCheck
{
    public:
        LightwellUnitInRangeCheck(WorldObject const* obj, float range) : i_obj(obj), i_range(range) {}
        WorldObject const& GetFocusObject() const { return *i_obj; }
        bool operator()(Unit* unit) const { return unit->IsAlive() && i_obj->IsWithinDistInMap(unit, i_range); }

    private:
        WorldObject const* i_obj;
        float i_range;
};

GameObject* FindOwnedLightwellNear(WorldObject const* center, ObjectGuid ownerGuid, float range)
{
    std::list<GameObject*> lightwells;
    center->GetGameObjectListWithEntryInGrid(lightwells, GO_PRIEST_LIGHTWELL, range);
    for (GameObject* lightwell : lightwells)
        if (lightwell->GetOwnerGuid() == ownerGuid)
            return lightwell;

    return nullptr;
}

GameObject* FindPriestLightwell(Unit* owner, Unit* target, uint32 auraId)
{
    if (GameObject* lightwell = owner->GetGameObject(auraId))
        return lightwell;

    if (target)
        if (GameObject* lightwell = FindOwnedLightwellNear(target, owner->GetObjectGuid(), LIGHTWELL_SPLENDOR_RADIUS))
            return lightwell;

    return FindOwnedLightwellNear(owner, owner->GetObjectGuid(), LIGHTWELL_FALLBACK_SEARCH_RADIUS);
}

bool IsValidLightwellTarget(Unit const* owner, WorldObject const* lightwell, Unit const* target)
{
    return target
        && target->IsAlive()
        && owner->IsFriendlyTo(target)
        && lightwell->IsWithinDistInMap(target, LIGHTWELL_SPLENDOR_RADIUS)
        && target->GetHealth() < target->GetMaxHealth()
        && !target->HasAura(SPELL_PRIEST_HOLY_ATTENUATION);
}

Unit* SelectLightwellTarget(Unit* owner, GameObject* lightwell, Unit* procTarget)
{
    std::list<Unit*> targets;
    LightwellUnitInRangeCheck check(lightwell, LIGHTWELL_SPLENDOR_RADIUS);
    MaNGOS::UnitListSearcher<LightwellUnitInRangeCheck> searcher(targets, check);
    Cell::VisitAllObjects(lightwell, searcher, LIGHTWELL_SPLENDOR_RADIUS);

    for (std::list<Unit*>::iterator itr = targets.begin(); itr != targets.end();)
    {
        if (!IsValidLightwellTarget(owner, lightwell, *itr))
            itr = targets.erase(itr);
        else
            ++itr;
    }

    targets.remove(procTarget);
    if (IsValidLightwellTarget(owner, lightwell, procTarget))
        targets.push_back(procTarget);

    if (targets.empty())
        return nullptr;

    std::list<Unit*>::iterator itr = targets.begin();
    std::advance(itr, urand(0, targets.size() - 1));
    return *itr;
}

bool IsEnlightenHelperSpell(uint32 spellId)
{
    switch (spellId)
    {
        case SPELL_PRIEST_ENLIGHTENED_LINK:
        case SPELL_PRIEST_ENLIGHTENED_SELF:
        case SPELL_PRIEST_ENLIGHTEN_DAMAGE:
        case SPELL_PRIEST_ENLIGHTEN_DUMMY:
        case SPELL_PRIEST_ENLIGHTEN:
            return true;
        default:
            return false;
    }
}

bool IsEnlightenTriggerSpell(SpellEntry const* procSpell, uint32 procFlag, uint32 procEx)
{
    if (!procSpell || IsEnlightenHelperSpell(procSpell->Id) || !(procEx & PROC_EX_CAST_END))
        return false;

    if (procSpell->SpellFamilyName != SPELLFAMILY_PRIEST || !(GetSchoolMask(procSpell->School) & SPELL_SCHOOL_MASK_HOLY))
        return false;

    return procFlag & (PROC_FLAG_DEAL_HELPFUL_ABILITY | PROC_FLAG_DEAL_HELPFUL_SPELL | PROC_FLAG_DEAL_HARMFUL_ABILITY | PROC_FLAG_DEAL_HARMFUL_SPELL);
}

bool IsValidEnlightenTarget(Unit const* owner, Unit const* tutored)
{
    if (!tutored || !tutored->IsAlive() || !owner->IsFriendlyTo(tutored))
        return false;

    if (owner->GetObjectGuid() == tutored->GetObjectGuid())
        return true;

    Player const* ownerPlayer = owner->ToPlayer();
    Player const* tutoredPlayer = tutored->ToPlayer();
    return ownerPlayer && tutoredPlayer && ownerPlayer->IsInSameGroupWith(tutoredPlayer);
}

void RemovePreviousEnlightenLink(Unit* owner, Unit* newTarget)
{
    if (SpellAuraHolder* holder = owner->GetSpellAuraHolder(SPELL_PRIEST_ENLIGHTEN_DUMMY))
        if (Unit* previousTarget = holder->GetCaster())
            if (!newTarget || previousTarget->GetObjectGuid() != newTarget->GetObjectGuid())
                previousTarget->RemoveAurasDueToSpell(SPELL_PRIEST_ENLIGHTEN);

    owner->RemoveAurasDueToSpell(SPELL_PRIEST_ENLIGHTEN_DUMMY);
}

struct spell_priest_power_word_shield : public SpellScript
{
    void OnCast(Spell* spell) const override
    {
        if (spell->m_spellInfo->Id != SPELL_PRIEST_DIVINE_PROTECTION)
            spell->AddPrecastSpell(SPELL_PRIEST_WEAKENED_SOUL);
    }
};

struct spell_priest_power_word_shield_aura : public AuraScript
{
    void OnAfterApply(Aura* aura, bool apply) override
    {
        if (apply || aura->GetRemoveMode() != AURA_REMOVE_BY_SHIELD_BREAK)
            return;

        if (aura->GetModifier()->m_auraname != SPELL_AURA_SCHOOL_ABSORB)
            return;

        Unit* caster = aura->GetCaster();
        if (!caster)
            return;

        Aura* resurgentShield = caster->GetAura(SPELL_PRIEST_RESURGENT_SHIELD, EFFECT_INDEX_0);
        if (!resurgentShield)
            return;

        SpellEntry const* talentInfo = resurgentShield->GetSpellProto();
        int32 const totalAbsorb = aura->GetInitialAbsorbAmount();
        int32 const powerPct = talentInfo->CalculateSimpleValue(EFFECT_INDEX_0);
        int32 const manaPct = talentInfo->CalculateSimpleValue(EFFECT_INDEX_1);

        int32 holyDamageBonus = CalculatePercentValue(totalAbsorb, powerPct);
        int32 holyHealingBonus = holyDamageBonus;
        int32 manaRefund = CalculatePercentValue(aura->GetSpellProto()->manaCost, manaPct);

        caster->CastCustomSpell(caster, SPELL_PRIEST_RESURGENCE, &holyDamageBonus, &holyHealingBonus, &manaRefund, true, nullptr, aura);
    }
};

struct spell_priest_holy_nova : public SpellScript
{
    void OnCast(Spell* spell) const override
    {
        if (uint32 healSpell = GetHolyNovaHealSpell(spell->m_spellInfo->Id))
            spell->AddTriggeredSpell(healSpell);

        if (spell->m_casterUnit && spell->m_casterUnit->GetShapeshiftForm() == FORM_SHADOW)
        {
            if (uint32 damageSpell = GetHolyNovaShadowformDamageSpell(spell->m_spellInfo->Id))
                spell->AddTriggeredSpell(damageSpell);
        }
    }

    void OnTargetMapFilled(Spell* spell, SpellEffectIndex /*effIdx*/, uint32 /*targetMode*/, std::list<Unit*>& targets) const override
    {
        if (!spell->m_casterUnit || spell->m_casterUnit->GetShapeshiftForm() != FORM_SHADOW || !IsHolyNovaHealSpell(spell->m_spellInfo->Id))
            return;

        ObjectGuid const casterGuid = spell->m_casterUnit->GetObjectGuid();
        targets.remove_if([casterGuid](Unit const* target)
        {
            return target && target->GetObjectGuid() == casterGuid;
        });
    }
};

struct spell_priest_chastise : public SpellScript
{
    SpellCastResult OnCheckCast(Spell* spell, bool /*strict*/) const override
    {
        if (!spell->m_casterUnit)
            return SPELL_CAST_OK;

        Unit* target = spell->m_targets.getUnitTarget();
        if (!target || !spell->m_casterUnit->IsFriendlyTo(target))
            return SPELL_CAST_OK;

        Player const* casterPlayer = spell->m_casterUnit->ToPlayer();
        Player const* targetPlayer = target->ToPlayer();
        if (!casterPlayer || !targetPlayer || !casterPlayer->IsInSameRaidWith(targetPlayer))
            return SPELL_FAILED_TARGET_NOT_IN_RAID;

        uint32 const minLevel = GetChastiseMinFriendlyLevel(spell->m_spellInfo->Id);
        if (minLevel && target->GetLevel() < minLevel)
            return SPELL_FAILED_LOWLEVEL;

        if (target->HealthBelowPct(80))
            return SPELL_FAILED_TARGET_AURASTATE;

        return SPELL_CAST_OK;
    }

    void OnAfterHit(Spell* spell) const override
    {
        if (!spell->m_casterUnit)
            return;

        Unit* target = spell->GetUnitTarget();
        if (!target || !target->IsAlive())
            return;

        if (spell->m_casterUnit->IsFriendlyTo(target))
        {
            uint32 const hasteSpell = GetChastiseHasteSpell(spell->m_spellInfo->Id, IsChastiseCrit(spell, target));
            if (hasteSpell)
                spell->m_casterUnit->CastSpell(target, hasteSpell, true);

            return;
        }

        spell->m_casterUnit->CastSpell(target, SPELL_PRIEST_CHASTISE_DISORIENT, true);
    }
};

struct spell_priest_inspiration : public AuraScript
{
    std::optional<SpellProcEventTriggerCheck> OnCheckProc(Unit const* /*owner*/, Unit* /*victim*/, SpellAuraHolder* /*holder*/, SpellEntry const* procSpell, uint32 procFlag, uint32 procExtra, WeaponAttackType /*attType*/, bool /*isVictim*/) override
    {
        if (!procSpell)
            return SPELL_PROC_TRIGGER_FAILED;

        bool const validHeal = procSpell->IsFitToFamily<SPELLFAMILY_PRIEST, CF_PRIEST_PRAYER_OF_HEALING, CF_PRIEST_HEAL,
            CF_PRIEST_FLASH_HEAL, CF_PRIEST_GREATER_HEAL>();
        return validHeal && (procExtra & PROC_EX_CRITICAL_HIT) && (procFlag & PROC_FLAG_DEAL_HELPFUL_SPELL) ? SPELL_PROC_TRIGGER_OK : SPELL_PROC_TRIGGER_FAILED;
    }
};

struct spell_priest_book_of_prayer : public AuraScript
{
    std::optional<SpellProcEventTriggerCheck> OnCheckProc(Unit const* /*owner*/, Unit* /*victim*/, SpellAuraHolder* /*holder*/, SpellEntry const* procSpell, uint32 procFlag, uint32 /*procExtra*/, WeaponAttackType /*attType*/, bool /*isVictim*/) override
    {
        if (!procSpell || procSpell->Id == SPELL_PRIEST_BOOK_OF_PRAYER_MANA || !(procFlag & PROC_FLAG_DEAL_HELPFUL_SPELL))
            return SPELL_PROC_TRIGGER_FAILED;

        uint32 const currentHealingSpell = sSpellMgr.GetFirstSpellInChain(procSpell->Id);
        if (currentHealingSpell == m_previousHealingSpell)
            return SPELL_PROC_TRIGGER_FAILED;

        m_previousHealingSpell = currentHealingSpell;
        return SPELL_PROC_TRIGGER_OK;
    }

    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* /*victim*/, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!owner || !procSpell)
            return SPELL_AURA_PROC_FAILED;

        uint32 const powerCost = Spell::CalculatePowerCost(procSpell, owner);
        int32 const mana = CalculatePercentValue(int32(powerCost), aura->GetModifier()->m_amount);
        if (mana <= 0)
            return SPELL_AURA_PROC_FAILED;

        owner->CastCustomSpell(owner, SPELL_PRIEST_BOOK_OF_PRAYER_MANA, &mana, nullptr, nullptr, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }

private:
    uint32 m_previousHealingSpell = 0;
};

struct spell_priest_vampiric_embrace : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* /*owner*/, Unit* victim, uint32 damage, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!victim || !victim->IsAlive() || aura->GetCasterGuid() != victim->GetObjectGuid())
            return SPELL_AURA_PROC_FAILED;

        int32 heal = aura->GetModifier()->m_amount * damage / 100;
        victim->CastCustomSpell(victim, SPELL_PRIEST_VAMPIRIC_EMBRACE_HEAL, &heal, nullptr, nullptr, true, nullptr, aura);

        constexpr uint32 ManaGainEffectIndex = 1;
        SpellEntry const* improvedRank2Info = sSpellMgr.GetSpellEntry(SPELL_PRIEST_VAMPIRIC_TOUCH_R2);
        SpellEntry const* improvedRank1Info = sSpellMgr.GetSpellEntry(SPELL_PRIEST_VAMPIRIC_TOUCH_R1);
        int32 dieSides = improvedRank1Info ? improvedRank1Info->EffectDieSides[ManaGainEffectIndex] : 0;
        uint32 improvedVampiric = victim->HasAura(SPELL_PRIEST_VAMPIRIC_TOUCH_R2) && improvedRank2Info ? improvedRank2Info->EffectBasePoints[ManaGainEffectIndex] + dieSides : 0;

        if (!improvedVampiric && victim->HasAura(SPELL_PRIEST_VAMPIRIC_TOUCH_R1) && improvedRank1Info)
            improvedVampiric = improvedRank1Info->EffectBasePoints[ManaGainEffectIndex] + dieSides;

        if (improvedVampiric && damage)
        {
            int32 mana = improvedVampiric * damage / 100;
            if (mana)
                victim->CastCustomSpell(victim, SPELL_PRIEST_VAMPIRIC_TOUCH_MANA, &mana, nullptr, nullptr, true, nullptr, aura);
        }

        return SPELL_AURA_PROC_OK;
    }
};

struct spell_priest_touch_of_weakness_trigger : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_0 || !spell->GetUnitTarget() || !spell->m_triggeredByAuraSpell)
            return false;

        uint32 spellId = 0;
        switch (spell->m_triggeredByAuraSpell->Id)
        {
            case SPELL_PRIEST_TOUCH_OF_WEAKNESS_R1: spellId = SPELL_PRIEST_TOUCH_OF_WEAKNESS_DAMAGE_R1; break;
            case SPELL_PRIEST_TOUCH_OF_WEAKNESS_R2: spellId = SPELL_PRIEST_TOUCH_OF_WEAKNESS_DAMAGE_R2; break;
            case SPELL_PRIEST_TOUCH_OF_WEAKNESS_R3: spellId = SPELL_PRIEST_TOUCH_OF_WEAKNESS_DAMAGE_R3; break;
            case SPELL_PRIEST_TOUCH_OF_WEAKNESS_R4: spellId = SPELL_PRIEST_TOUCH_OF_WEAKNESS_DAMAGE_R4; break;
            case SPELL_PRIEST_TOUCH_OF_WEAKNESS_R5: spellId = SPELL_PRIEST_TOUCH_OF_WEAKNESS_DAMAGE_R5; break;
            case SPELL_PRIEST_TOUCH_OF_WEAKNESS_R6: spellId = SPELL_PRIEST_TOUCH_OF_WEAKNESS_DAMAGE_R6; break;
            default:
                sLog.outError("spell_priest_touch_of_weakness_trigger: Spell %u triggered by unhandled spell %u", SPELL_PRIEST_TOUCH_OF_WEAKNESS_TRIGGER, spell->m_triggeredByAuraSpell->Id);
                return false;
        }

        spell->m_caster->CastSpell(spell->GetUnitTarget(), spellId, true, nullptr);
        return false;
    }
};

struct spell_priest_pain_spike : public SpellScript
{
    bool OnEffectExecute(Spell* /*spell*/, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_1)
            return true;

        return false;
    }

    void OnHit(Spell* spell, SpellMissInfo missInfo) const override
    {
        if (missInfo != SPELL_MISS_NONE)
            return;

        Unit* target = spell->GetUnitTarget();
        if (!target || !target->IsAlive())
            return;

        int32 healAmount = spell->GetTotalEffectDamage() / 5;
        if (healAmount <= 0)
            return;

        spell->m_caster->CastCustomSpell(target, SPELL_PRIEST_PAIN_SPIKE_HEAL, &healAmount, nullptr, nullptr, true);
    }
};

struct spell_priest_shadow_mend : public SpellScript
{
    bool OnEffectHealCalculate(Spell* spell, SpellEffectIndex effIdx, int32& heal) const override
    {
        if (effIdx != EFFECT_INDEX_0 || !spell->m_caster)
            return true;

        int32 const shadowSpellPower = spell->m_caster->SpellBaseDamageBonusDone(SPELL_SCHOOL_MASK_SHADOW);
        heal += CalculatePercentValue(shadowSpellPower, 20);
        return true;
    }

    void OnAfterHeal(Spell* spell, Unit* /*target*/, uint32 heal, int32 /*gain*/, bool /*crit*/) const override
    {
        if (!spell->m_casterUnit)
            return;

        uint32 const currentHealth = spell->m_casterUnit->GetHealth();
        if (currentHealth <= 1)
            return;

        int32 damage = int32(std::min<uint32>(heal / 2, currentHealth - 1));
        if (damage <= 0)
            return;

        spell->m_casterUnit->SendSpellNonMeleeDamageLog(spell->m_casterUnit, SPELL_PRIEST_SHADOW_MEND_DAMAGE, damage, SPELL_SCHOOL_MASK_SHADOW, 0, 0, false, 0, false);
        spell->m_casterUnit->ModifyHealth(-damage);
    }
};

struct spell_priest_enlighten : public AuraScript
{
    std::optional<SpellProcEventTriggerCheck> OnCheckProc(Unit const* owner, Unit* /*victim*/, SpellAuraHolder* holder, SpellEntry const* procSpell, uint32 procFlag, uint32 procExtra, WeaponAttackType /*attType*/, bool /*isVictim*/) override
    {
        if (!owner || !holder || !IsEnlightenTriggerSpell(procSpell, procFlag, procExtra))
            return SPELL_PROC_TRIGGER_FAILED;

        Player const* ownerPlayer = owner->ToPlayer();
        if (!ownerPlayer || !ownerPlayer->HasSpell(SPELL_PRIEST_ENLIGHTEN))
            return SPELL_PROC_TRIGGER_FAILED;

        Unit const* tutored = holder->GetCaster();
        if (!IsValidEnlightenTarget(owner, tutored))
            return SPELL_PROC_TRIGGER_FAILED;

        uint32 chance = procFlag & (PROC_FLAG_DEAL_HELPFUL_ABILITY | PROC_FLAG_DEAL_HELPFUL_SPELL) ? ENLIGHTEN_HELPFUL_CHANCE : ENLIGHTEN_HARMFUL_CHANCE;
        return roll_chance_u(chance) ? SPELL_PROC_TRIGGER_OK : SPELL_PROC_TRIGGER_ROLL_FAILED;
    }

    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* /*victim*/, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        Unit* tutored = aura->GetCaster();
        if (!IsValidEnlightenTarget(owner, tutored))
            return SPELL_AURA_PROC_FAILED;

        float percent = 0.0f;
        if (SpellEntry const* dmgSpell = sSpellMgr.GetSpellEntry(SPELL_PRIEST_ENLIGHTEN_DAMAGE))
            percent = (dmgSpell->EffectBasePoints[EFFECT_INDEX_0] + 1) / 100.0f;

        if (percent <= 0.0f)
            percent = 0.04f;

        uint32 damageAmount = std::max<uint32>(1, static_cast<uint32>(tutored->GetMaxHealth() * percent));
        SpellEntry const* damageSpell = sSpellMgr.GetSpellEntry(SPELL_PRIEST_ENLIGHTEN_DAMAGE);
        if (!damageSpell)
            return SPELL_AURA_PROC_FAILED;

        uint32 absorb = 0;
        int32 resist = 0;
        tutored->CalculateDamageAbsorbAndResist(owner, damageSpell->GetSpellSchoolMask(), SPELL_DIRECT_DAMAGE, damageAmount, &absorb, &resist, damageSpell);
        owner->DealDamageMods(tutored, damageAmount, &absorb);
        owner->SendSpellNonMeleeDamageLog(tutored, SPELL_PRIEST_ENLIGHTEN_DAMAGE, damageAmount, damageSpell->GetSpellSchoolMask(), absorb, resist, false, 0, false);

        uint32 const bonus = resist < 0 ? uint32(std::abs(resist)) : 0;
        uint32 const malus = resist > 0 ? absorb + uint32(resist) : absorb;
        uint32 const finalDamage = damageAmount + bonus <= malus ? 0 : damageAmount + bonus - malus;

        CleanDamage cleanDamage(0, BASE_ATTACK, MELEE_HIT_NORMAL, absorb, resist);
        owner->DealDamage(tutored, finalDamage, &cleanDamage, SPELL_DIRECT_DAMAGE, damageSpell->GetSpellSchoolMask(), damageSpell, false, nullptr, false);

        if (tutored->GetObjectGuid() == owner->GetObjectGuid())
            owner->CastSpell(owner, SPELL_PRIEST_ENLIGHTENED_SELF, true, nullptr, aura);
        else
        {
            owner->CastSpell(owner, SPELL_PRIEST_ENLIGHTENED_LINK, true, nullptr, aura);
            owner->CastSpell(tutored, SPELL_PRIEST_ENLIGHTENED_LINK, true, nullptr, aura);
        }

        return SPELL_AURA_PROC_OK;
    }
};

struct spell_priest_enlighten_link : public AuraScript
{
    void OnAfterApply(Aura* aura, bool apply) override
    {
        Unit* caster = aura->GetCaster();
        if (!caster)
            return;

        if (apply)
        {
            RemovePreviousEnlightenLink(caster, aura->GetTarget());
            if (!IsValidEnlightenTarget(caster, aura->GetTarget()))
                return;

            aura->GetTarget()->CastSpell(caster, SPELL_PRIEST_ENLIGHTEN_DUMMY, true, nullptr, nullptr, aura->GetTarget()->GetObjectGuid());
            return;
        }

        caster->RemoveAurasDueToSpell(SPELL_PRIEST_ENLIGHTEN_DUMMY);
    }
};

struct spell_priest_shadowguard : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* victim, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!victim)
            return SPELL_AURA_PROC_FAILED;

        uint32 spellId = 0;
        switch (aura->GetId())
        {
            case SPELL_PRIEST_SHADOWGUARD_R1: spellId = SPELL_PRIEST_SHADOWGUARD_DAMAGE_R1; break;
            case SPELL_PRIEST_SHADOWGUARD_R2: spellId = SPELL_PRIEST_SHADOWGUARD_DAMAGE_R2; break;
            case SPELL_PRIEST_SHADOWGUARD_R3: spellId = SPELL_PRIEST_SHADOWGUARD_DAMAGE_R3; break;
            case SPELL_PRIEST_SHADOWGUARD_R4: spellId = SPELL_PRIEST_SHADOWGUARD_DAMAGE_R4; break;
            case SPELL_PRIEST_SHADOWGUARD_R5: spellId = SPELL_PRIEST_SHADOWGUARD_DAMAGE_R5; break;
            case SPELL_PRIEST_SHADOWGUARD_R6: spellId = SPELL_PRIEST_SHADOWGUARD_DAMAGE_R6; break;
        }

        if (!spellId)
            return SPELL_AURA_PROC_FAILED;

        owner->CastSpell(victim, spellId, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_priest_blessed_recovery : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* /*victim*/, uint32 damage, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        uint32 spellId = 0;
        switch (aura->GetId())
        {
            case SPELL_PRIEST_BLESSED_RECOVERY_R1: spellId = SPELL_PRIEST_BLESSED_RECOVERY_HEAL_R1; break;
            case SPELL_PRIEST_BLESSED_RECOVERY_R2: spellId = SPELL_PRIEST_BLESSED_RECOVERY_HEAL_R2; break;
            default: spellId = SPELL_PRIEST_BLESSED_RECOVERY_HEAL_R3; break;
        }

        int32 heal = damage * aura->GetModifier()->m_amount / 100 / 3;
        owner->CastCustomSpell(owner, spellId, &heal, nullptr, nullptr, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_priest_lightwell : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* target, uint32 healAmount, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!owner || !owner->IsAlive() || !healAmount)
            return SPELL_AURA_PROC_FAILED;

        GameObject* lightwell = FindPriestLightwell(owner, target, aura->GetId());
        if (!lightwell)
            return SPELL_AURA_PROC_FAILED;

        int32 const percent = aura->GetModifier()->m_amount;
        int32 splendorHeal = int32(uint64(healAmount) * percent / 100);

        int32 reservoirPct = 0;
        if (Aura* reservoir = owner->GetAura(SPELL_PRIEST_RESERVOIR_OF_LIGHT_R3, EFFECT_INDEX_0))
            reservoirPct = reservoir->GetModifier()->m_amount;
        else if (Aura* reservoir = owner->GetAura(SPELL_PRIEST_RESERVOIR_OF_LIGHT_R2, EFFECT_INDEX_0))
            reservoirPct = reservoir->GetModifier()->m_amount;
        else if (Aura* reservoir = owner->GetAura(SPELL_PRIEST_RESERVOIR_OF_LIGHT_R1, EFFECT_INDEX_0))
            reservoirPct = reservoir->GetModifier()->m_amount;

        splendorHeal += int32(uint64(splendorHeal) * reservoirPct / 100);
        splendorHeal = std::max<int32>(1, splendorHeal);

        Unit* splendorTarget = SelectLightwellTarget(owner, lightwell, target);
        if (!splendorTarget)
            return SPELL_AURA_PROC_FAILED;

        owner->CastCustomSpell(splendorTarget, SPELL_PRIEST_SPLENDOR_OF_LIGHT, &splendorHeal, nullptr, nullptr, true, nullptr, aura);
        owner->CastSpell(splendorTarget, SPELL_PRIEST_HOLY_ATTENUATION, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }
};

// Deprecated in patch 1.17.2
struct spell_priest_elunes_grace : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* /*victim*/, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        int32 mana = owner->GetStat(STAT_AGILITY);
        owner->CastCustomSpell(owner, aura->GetSpellProto()->EffectTriggerSpell[aura->GetEffIndex()], &mana, nullptr, nullptr, true);
        return SPELL_AURA_PROC_OK;
    }
};

// Deprecated in patch 1.18.1
struct spell_champion_buff : public SpellScript
{
    SpellCastResult OnCheckCast(Spell* spell, bool /*strict*/) const override
    {
        Player* player = ToPlayer(spell->GetAffectiveCaster());
        if (!player)
            return SPELL_CAST_OK;

        if (player->GetChampionGUID().IsEmpty())
            return SPELL_FAILED_NO_CHAMPION;

        Unit* target = spell->m_targets.getUnitTarget();
        if (!target || player->GetChampionGUID() == target->GetObjectGuid())
            return SPELL_CAST_OK;

        if (Unit* champion = ObjectAccessor::GetUnit(*player, player->GetChampionGUID()))
            spell->m_targets.setUnitTarget(champion);

        return SPELL_CAST_OK;
    }
};

// Deprecated in patch 1.18.1
struct spell_proclaim_champion : public AuraScript
{
    void OnAfterApply(Aura* aura, bool apply) override
    {
        Unit* target = aura->GetTarget();
        Unit* caster = aura->GetCaster();
        if (!caster || !caster->IsPlayer() || !target || target->GetGUID() == caster->GetGUID() || !target->IsAlive())
        {
            if (apply && target)
            {
                RemoveChampionBuffs(target);
                target->RemoveAurasDueToSpell(SPELL_PRIEST_HOLY_CHAMPION);
            }
            return;
        }

        Player* playerCaster = caster->ToPlayer();
        if (apply)
        {
            playerCaster->SetChampion(target->GetGUID());
            return;
        }

        RemoveChampionBuffs(target);
        playerCaster->SetChampion(ObjectGuid{});
    }

private:
    static void RemoveChampionBuffs(Unit* target)
    {
        target->RemoveAurasDueToSpell(SPELL_PRIEST_CHAMPIONS_GRACE);
        target->RemoveAurasDueToSpell(SPELL_PRIEST_CHAMPIONS_BOND);
        target->RemoveAurasDueToSpell(SPELL_PRIEST_EMPOWER_CHAMPION);
        target->RemoveAurasDueToSpell(SPELL_PRIEST_CHAMPIONS_RESOLVE_DEPRECATED);
    }
};

}

void AddSC_priest_spell_scripts()
{
    RegisterSpellAndAuraScript("spell_priest_power_word_shield", &GetSpellScript<spell_priest_power_word_shield>, &GetAuraScript<spell_priest_power_word_shield_aura>);
    RegisterSpellScript("spell_priest_holy_nova", &GetSpellScript<spell_priest_holy_nova>);
    RegisterSpellScript("spell_priest_chastise", &GetSpellScript<spell_priest_chastise>);
    RegisterAuraScript("spell_priest_inspiration", &GetAuraScript<spell_priest_inspiration>);
    RegisterAuraScript("spell_priest_book_of_prayer", &GetAuraScript<spell_priest_book_of_prayer>);
    RegisterAuraScript("spell_priest_vampiric_embrace", &GetAuraScript<spell_priest_vampiric_embrace>);
    RegisterSpellScript("spell_priest_touch_of_weakness_trigger", &GetSpellScript<spell_priest_touch_of_weakness_trigger>);
    RegisterSpellScript("spell_priest_pain_spike", &GetSpellScript<spell_priest_pain_spike>);
    RegisterSpellScript("spell_priest_shadow_mend", &GetSpellScript<spell_priest_shadow_mend>);
    RegisterAuraScript("spell_priest_enlighten", &GetAuraScript<spell_priest_enlighten>);
    RegisterAuraScript("spell_priest_enlighten_link", &GetAuraScript<spell_priest_enlighten_link>);
    RegisterAuraScript("spell_priest_shadowguard", &GetAuraScript<spell_priest_shadowguard>);
    RegisterAuraScript("spell_priest_blessed_recovery", &GetAuraScript<spell_priest_blessed_recovery>);
    RegisterAuraScript("spell_priest_lightwell", &GetAuraScript<spell_priest_lightwell>);
    RegisterAuraScript("spell_priest_elunes_grace", &GetAuraScript<spell_priest_elunes_grace>);
    RegisterSpellScript("spell_champion_buff", &GetSpellScript<spell_champion_buff>);
    RegisterAuraScript("spell_proclaim_champion", &GetAuraScript<spell_proclaim_champion>);
}
