#include "scriptPCH.h"

namespace
{
enum ItemSpells
{
    SPELL_ITEM_IMPENDING_DOOM = 44080,
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

uint32 GetClassBuffForTarget(Unit* target, uint32 healerBuff, uint32 casterBuff, uint32 meleeBuff, uint32 armorBuff)
{
    if (!target)
        return 0;

    switch (target->GetClass())
    {
        case CLASS_PALADIN:
        case CLASS_PRIEST:
        case CLASS_SHAMAN:
        case CLASS_DRUID:
            return healerBuff;
        case CLASS_MAGE:
        case CLASS_WARLOCK:
            return casterBuff;
        case CLASS_HUNTER:
        case CLASS_ROGUE:
            return meleeBuff;
        case CLASS_WARRIOR:
            return armorBuff;
        default:
            return 0;
    }
}

bool HasLightningShield(Unit* target)
{
    if (!target)
        return false;

    Unit::SpellAuraHolderMap const& auras = target->GetSpellAuraHolderMap();
    for (const auto& aura : auras)
    {
        SpellEntry const* spellInfo = aura.second->GetSpellProto();
        if (spellInfo->IsFitToFamily<SPELLFAMILY_SHAMAN, CF_SHAMAN_LIGHTNING_SHIELD>())
            return true;
    }

    return false;
}

struct spell_item_persistent_shield : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* victim, uint32 damage, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!victim)
            return SPELL_AURA_PROC_FAILED;

        int32 absorb = damage * 15 / 100;
        owner->CastCustomSpell(victim, 26470, &absorb, nullptr, nullptr, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_item_oracle_healing_bonus : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* /*victim*/, uint32 damage, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        int32 heal = int32(damage * 0.1f);
        if (!heal)
            return SPELL_AURA_PROC_FAILED;

        owner->CastCustomSpell(owner, 26170, &heal, nullptr, nullptr, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_item_greater_heal_t3 : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* /*victim*/, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        owner->CastSpell(owner, 28810, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_item_corrupted_healing : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* victim, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!victim || !procSpell || !procSpell->HasEffect(SPELL_EFFECT_HEAL))
            return SPELL_AURA_PROC_FAILED;

        owner->CastSpell(victim, 23402, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_item_vial_of_potent_venoms : public AuraScript
{
    std::optional<SpellProcEventTriggerCheck> OnCheckProc(Unit const* /*owner*/, Unit* /*victim*/, SpellAuraHolder* /*holder*/, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 /*procExtra*/, WeaponAttackType /*attType*/, bool /*isVictim*/) override
    {
        if (!procSpell)
            return SPELL_PROC_TRIGGER_FAILED;

        if (procSpell->IsAreaOfEffectSpell())
            return SPELL_PROC_TRIGGER_FAILED;

        return std::nullopt;
    }
};

struct spell_item_bonus_healing : public AuraScript
{
    std::optional<SpellProcEventTriggerCheck> OnCheckProc(Unit const* /*owner*/, Unit* victim, SpellAuraHolder* /*holder*/, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 /*procExtra*/, WeaponAttackType /*attType*/, bool /*isVictim*/) override
    {
        if (!procSpell)
            return SPELL_PROC_TRIGGER_FAILED;

        if (victim && victim->GetHealthPercent() > 50.0f)
            return SPELL_PROC_TRIGGER_FAILED;

        return std::nullopt;
    }
};

struct spell_item_wolfshead_helm : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex /*effIdx*/) const override
    {
        if (spell->m_casterUnit)
            spell->m_casterUnit->CastSpell(spell->m_casterUnit, 29940, true, nullptr);

        return false;
    }
};

struct spell_item_dreamwalker_healing_touch : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* /*victim*/, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!procSpell)
            return SPELL_AURA_PROC_FAILED;

        int32 mana = int32(procSpell->manaCost * 30 / 100);
        owner->CastCustomSpell(owner, 28742, &mana, nullptr, nullptr, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_item_healing_touch_refund : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* /*victim*/, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        owner->CastSpell(owner, 28848, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_item_dreamwalker_rejuvenation : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* victim, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!victim || !victim->IsAlive() || !procSpell || !procSpell->IsFitToFamily<SPELLFAMILY_DRUID, CF_DRUID_REJUVENATION>())
            return SPELL_AURA_PROC_FAILED;

        uint32 triggerSpellId = 0;
        switch (victim->GetPowerType())
        {
            case POWER_MANA: triggerSpellId = 28722; break;
            case POWER_RAGE: triggerSpellId = 28723; break;
            case POWER_ENERGY: triggerSpellId = 28724; break;
        }

        if (!triggerSpellId)
            return SPELL_AURA_PROC_FAILED;

        owner->CastSpell(victim, triggerSpellId, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_item_dreamwalker_regrowth : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* victim, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!victim || !victim->IsAlive() || !procSpell || !procSpell->IsFitToFamily<SPELLFAMILY_DRUID, CF_DRUID_REGROWTH>())
            return SPELL_AURA_PROC_FAILED;

        owner->CastSpell(victim, 28750, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_item_holy_power : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* victim, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        uint32 triggerSpellId = GetClassBuffForTarget(victim, 28795, 28793, 28791, 28790);
        if (!triggerSpellId)
            return SPELL_AURA_PROC_FAILED;

        owner->CastSpell(victim, triggerSpellId, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_item_earthshatterer_t3 : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex /*effIdx*/) const override
    {
        if (!spell->m_triggeredBySpellInfo || spell->m_triggeredBySpellInfo->Id != 28820)
            return true;

        Unit* target = spell->GetUnitTarget();
        if (!target || target->GetTypeId() != TYPEID_PLAYER)
            return false;

        if (!HasLightningShield(target))
            target->RemoveAurasDueToSpell(28820);

        return false;
    }
};

struct spell_item_earthshatterer_t3_aura : public AuraScript
{
    void OnPeriodicTrigger(Aura* /*aura*/, Unit* /*caster*/, Unit* target, WorldObject* /*targetObject*/, SpellEntry const*& spellInfo) override
    {
        if (target && !HasLightningShield(target))
            target->RemoveAurasDueToSpell(28820);

        spellInfo = nullptr;
    }
};

struct spell_item_totemic_power : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* victim, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        uint32 triggerSpellId = GetClassBuffForTarget(victim, 28824, 28825, 28826, 28827);
        if (!triggerSpellId)
            return SPELL_AURA_PROC_FAILED;

        owner->CastSpell(victim, triggerSpellId, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_item_lesser_healing_wave_relic : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* /*victim*/, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        owner->CastSpell(owner, 28850, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_item_ten_storms_lightning_shield : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* victim, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!victim)
            return SPELL_AURA_PROC_FAILED;

        owner->CastSpell(victim, aura->GetId() == 23551 ? 23552 : 27635, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_item_mana_surge : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* /*victim*/, uint32 /*damage*/, int32 /*originalAmount*/, Aura* aura, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!procSpell)
            return SPELL_AURA_PROC_FAILED;

        int32 mana = procSpell->manaCost * 35 / 100;
        owner->CastCustomSpell(owner, 23571, &mana, nullptr, nullptr, true, nullptr, aura);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_item_unrelenting_strikes : public AuraScript
{
    std::optional<SpellProcEventTriggerCheck> OnCheckProc(Unit const* owner, Unit* /*victim*/, SpellAuraHolder* /*holder*/, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procExtra*/, WeaponAttackType /*attType*/, bool isVictim) override
    {
        if (isVictim || !owner || !owner->IsExtraAttacksLocked())
            return SPELL_PROC_TRIGGER_FAILED;

        return std::nullopt;
    }
};

struct spell_item_purging_flames : public SpellScript
{
    void OnHit(Spell* spell, SpellMissInfo missInfo) const override
    {
        if (missInfo != SPELL_MISS_NONE || !spell->m_casterUnit)
            return;

        Unit* target = spell->GetUnitTarget();
        if (!target || target->GetCreatureType() != CREATURE_TYPE_UNDEAD)
            return;

        spell->m_casterUnit->CastSpell(target, 44075, true);
    }
};

struct spell_item_opportunistic_strike : public SpellScript
{
    void OnEffectDamageCalculate(Spell* spell, SpellEffectIndex effIdx, float& damage) const override
    {
        if (effIdx != EFFECT_INDEX_0 || !spell->m_casterUnit)
            return;

        Unit* target = spell->GetUnitTarget();
        if (!target || target->HasInArc(spell->m_casterUnit))
            return;

        damage *= 1.35f;
    }
};

struct spell_item_wild_regeneration : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* /*owner*/, Unit* /*victim*/, uint32 damage, int32 /*originalAmount*/, Aura* aura, SpellEntry const* /*procSpell*/, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        Unit* target = aura ? aura->GetTarget() : nullptr;
        if (!target || !damage)
            return SPELL_AURA_PROC_FAILED;

        if (!target->HealthBelowPct(35) && !target->HealthBelowPctDamaged(35, damage))
            return SPELL_AURA_PROC_FAILED;

        return std::nullopt;
    }
};

struct spell_item_impending_doom : public AuraScript
{
    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* /*victim*/, uint32 damage, int32 /*originalAmount*/, Aura* aura, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!owner || !aura || !procSpell || !damage)
            return SPELL_AURA_PROC_FAILED;

        if (procSpell->Id == SPELL_ITEM_IMPENDING_DOOM || !(procSpell->GetSpellSchoolMask() & SPELL_SCHOOL_MASK_SHADOW))
            return SPELL_AURA_PROC_FAILED;

        Unit* caster = aura->GetCaster();
        if (!caster)
            return SPELL_AURA_PROC_FAILED;

        SpellEntry const* spellInfo = aura->GetSpellProto();
        uint32 doomDamage = uint32(std::max(0, aura->GetModifier()->m_amount) * 120 / 100);
        if (!doomDamage)
            return SPELL_AURA_PROC_FAILED;

        uint32 absorb = 0;
        int32 resist = 0;
        owner->CalculateDamageAbsorbAndResist(caster, spellInfo->GetSpellSchoolMask(), SPELL_DIRECT_DAMAGE, doomDamage, &absorb, &resist, spellInfo);
        caster->DealDamageMods(owner, doomDamage, &absorb);
        caster->SendSpellNonMeleeDamageLog(owner, spellInfo->Id, doomDamage, spellInfo->GetSpellSchoolMask(), absorb, resist, false, 0, false);

        uint32 const bonus = resist < 0 ? uint32(std::abs(resist)) : 0;
        uint32 const malus = resist > 0 ? absorb + uint32(resist) : absorb;
        uint32 const finalDamage = doomDamage + bonus <= malus ? 0 : doomDamage + bonus - malus;

        owner->RemoveAurasByCasterSpell(spellInfo->Id, aura->GetCasterGuid());

        CleanDamage cleanDamage(0, BASE_ATTACK, MELEE_HIT_NORMAL, absorb, resist);
        caster->DealDamage(owner, finalDamage, &cleanDamage, SPELL_DIRECT_DAMAGE, spellInfo->GetSpellSchoolMask(), spellInfo, false, nullptr, true);
        return SPELL_AURA_PROC_OK;
    }
};

struct spell_item_elunes_candle : public SpellScript
{
    void OnCast(Spell* spell) const override
    {
        static uint32 const OmenSpells[] = { 26622, 26623, 26624, 26625, 26649 };

        uint32 spellId = 26636;
        Unit* target = spell->m_targets.getUnitTarget();

        if (target)
        {
            if (target->GetEntry() == 15467)
                spellId = OmenSpells[urand(0, 4)];
            else if (target->GetEntry() == 15466)
                spellId = 26624;
        }

        spell->m_caster->CastSpell(target, spellId, true);
    }
};

struct spell_item_first_aid : public SpellScript
{
    void OnAfterHit(Spell* spell) const override
    {
        if (Unit* target = spell->GetUnitTarget())
            spell->m_caster->CastSpell(target, 11196, true, spell->m_CastItem);
    }
};

struct spell_item_gnomish_death_ray : public SpellScript
{
    SpellCastResult OnCheckCast(Spell* spell, bool /*strict*/) const override
    {
        Unit* target = spell->m_targets.getUnitTarget();
        if (!target || spell->m_caster->IsFriendlyTo(target))
            return SPELL_FAILED_BAD_TARGETS;

        return SPELL_CAST_OK;
    }

    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx == EFFECT_INDEX_1)
            spell->m_caster->CastSpell(static_cast<Unit*>(nullptr), 13493, true);

        return true;
    }
};

struct spell_item_gnomish_death_ray_periodic : public AuraScript
{
    int32 m_damage = 0;

    int32 OnAuraValueCalculate(Aura* /*aura*/, Unit* /*caster*/, Unit* /*target*/, SpellEntry const* /*spellProto*/, SpellEffectIndex /*effIdx*/, Item* /*castItem*/, int32 /*value*/) override
    {
        return urand(100, 500);
    }

    void OnPeriodicCalculateAmount(Aura* aura, float& amount) override
    {
        Spell* channel = aura->GetTarget()->GetCurrentSpell(CURRENT_CHANNELED_SPELL);
        if (!channel || channel->m_spellInfo->Id != 13278)
            amount = 0;

        m_damage += int32(amount);
    }

    void OnAfterApply(Aura* aura, bool apply) override
    {
        if (apply || aura->GetRemoveMode() != AURA_REMOVE_BY_EXPIRE || !m_damage)
            return;

        Unit* caster = aura->GetTarget();
        if (ObjectGuid targetGuid = caster->GetTargetGuid())
            if (Unit* target = caster->GetMap()->GetUnit(targetGuid))
                caster->CastCustomSpell(target, 13279, &m_damage, nullptr, nullptr, true);
    }
};

struct spell_deviate_fish : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_0)
            return true;

        Player* player = spell->m_caster->ToPlayer();
        if (!player)
            return false;

        uint32 spellId = PickRandomValue(
            8064u, // Sleepy
            8065u, // Invigorate
            8066u, // Shrink
            8067u, // Party Time!
            8068u  // Healthy Spirit
        );

        player->CastSpell(player, spellId, true, nullptr);
        return false;
    }
};

struct spell_cooked_deviate_fish : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_0)
            return true;

        Player* player = spell->m_caster->ToPlayer();
        if (!player)
            return false;

        uint32 const spells[] =
        {
            player->GetGender() == GENDER_MALE ? 8219u : 8220u,
            player->GetGender() == GENDER_MALE ? 8221u : 8222u,
        };

        player->CastSpell(player, spells[urand(0, 1)], true, nullptr);
        return false;
    }
};

struct spell_noggenfogger_elixir : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_0)
            return true;

        Player* player = spell->m_caster->ToPlayer();
        if (!player)
            return false;

        uint32 spellId = 16591;
        switch (urand(1, 3))
        {
            case 1: spellId = 16595; break;
            case 2: spellId = 16593; break;
            default: break;
        }

        player->CastSpell(player, spellId, true, nullptr);
        return false;
    }
};

struct spell_net_o_matic : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_0)
            return true;

        Unit* target = spell->GetUnitTarget();
        if (!target)
            return false;

        uint32 spellId = 13099;
        uint32 roll = urand(0, 99);
        if (roll < 10)
            spellId = 16566;
        else if (roll < 20)
            spellId = 13119;

        spell->m_caster->CastSpell(target, spellId, true, nullptr);
        return false;
    }
};

struct spell_test_fetid_skull : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_0)
            return true;

        if (!spell->m_casterUnit)
            return false;

        if (!spell->m_targets.getItemTarget() && spell->m_caster->GetTypeId() != TYPEID_PLAYER)
            return false;

        spell->m_casterUnit->CastSpell(spell->m_casterUnit, roll_chance_i(50) ? 17269 : 17270, true, nullptr);
        return false;
    }
};

struct spell_cannibalize : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_0)
            return true;

        if (spell->m_casterUnit && (spell->GetUnitTarget() || spell->m_targets.getCorpseTargetGuid()))
            spell->m_casterUnit->CastSpell(spell->m_casterUnit, 20578, true, nullptr);

        return false;
    }
};

struct spell_goblin_bomb_dispenser : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_0)
            return true;

        if (!spell->m_CastItem || !spell->m_casterUnit)
            return false;

        if (Unit* target = spell->GetUnitTarget(); target && roll_chance_i(10))
            target->CastSpell(spell->m_casterUnit, 13261, true);
        else
            spell->m_casterUnit->CastSpell(spell->m_casterUnit, 13258, true, spell->m_CastItem);

        return false;
    }
};

struct spell_gadgetzan_transporter : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx != EFFECT_INDEX_0 || !spell->m_casterUnit)
            return effIdx != EFFECT_INDEX_0;

        if (spell->m_spellInfo->Id == 23448)
        {
            int32 roll = irand(0, 119);
            if (roll < 20)
                spell->m_casterUnit->CastSpell(spell->m_casterUnit, 23444, true);
            else if (roll < 100)
                spell->m_casterUnit->CastSpell(spell->m_casterUnit, 23445, true);

            return false;
        }

        ObjectGuid playerGuid = spell->m_casterUnit->GetObjectGuid();
        if (roll_chance_i(50))
            spell->m_casterUnit->CastSpell(spell->m_casterUnit, 23441, true);
        else if (roll_chance_i(50))
            spell->m_casterUnit->CastSpell(spell->m_casterUnit, 23446, true);
        else if (Player* player = spell->m_casterUnit->GetMap()->GetPlayer(playerGuid))
            player->TeleportTo(1, -7341.38f, -3908.11f, 150.7f, 0.51f);

        return false;
    }
};

struct spell_item_everlook_transporter : public SpellScript
{
    void OnEffectExecuted(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (spell->m_spellInfo->Effect[effIdx] != SPELL_EFFECT_TELEPORT_UNITS || !spell->m_casterUnit)
            return;

        int32 roll = irand(0, 119);
        if (roll < 70)
            return;

        if (roll < 100)
            spell->m_casterUnit->CastSpell(spell->m_casterUnit, 23445, true);
        else
            spell->m_casterUnit->CastSpell(spell->m_casterUnit, 23449, true);
    }
};

struct spell_kodo_kombobulator : public SpellScript
{
    SpellCastResult OnCheckCast(Spell* spell, bool /*strict*/) const override
    {
        if (spell->m_casterUnit && spell->m_casterUnit->HasAura(18172))
            return SPELL_FAILED_ITEM_NOT_READY;

        return SPELL_CAST_OK;
    }
};

struct spell_melodious_rapture : public SpellScript
{
    SpellCastResult OnCheckCast(Spell* spell, bool /*strict*/) const override
    {
        Unit* target = spell->m_targets.getUnitTarget();
        if (!target || target->GetEntry() != 13016)
            return SPELL_FAILED_BAD_TARGETS;

        return SPELL_CAST_OK;
    }
};

struct spell_purify_and_place_food : public SpellScript
{
    SpellCastResult OnCheckCast(Spell* spell, bool /*strict*/) const override
    {
        return spell->m_caster->GetMap()->GetScriptedMapEvent(3938) ? SPELL_FAILED_NOT_READY : SPELL_CAST_OK;
    }
};

struct spell_item_self_target_learn_spell : public SpellScript
{
    SpellCastResult OnCheckCast(Spell* spell, bool /*strict*/) const override
    {
        if (!spell->m_caster->IsPlayer())
            return SPELL_CAST_OK;

        Unit* target = spell->m_targets.getUnitTarget();
        if (target && target != spell->m_caster)
            return SPELL_FAILED_BAD_TARGETS;

        return SPELL_CAST_OK;
    }
};

struct spell_item_war_mode : public SpellScript
{
    void OnSuccessfulFinish(Spell* spell) const override
    {
        if (Player* player = spell->m_caster->ToPlayer())
            player->SetPvP(true);
    }
};

struct spell_item_sunnyglade_spider : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex /*effIdx*/) const override
    {
        Unit* caster = spell->m_casterUnit;
        if (!caster || !caster->IsMoving())
            return false;

        float x, y, z;
        caster->GetPosition(x, y, z);
        if (Creature* spider = caster->SummonCreature(161212, x, y, z, 0.0f, TEMPSUMMON_TIMED_COMBAT_OR_DEAD_DESPAWN, 30000))
        {
            spider->SetFactionTemplateId(caster->GetFactionTemplateId());
            spider->SetCreatorGuid(caster->GetObjectGuid());
            spider->SetUInt32Value(UNIT_CREATED_BY_SPELL, spell->m_spellInfo->Id);
            if (Unit* victim = caster->GetVictim())
                spider->AI()->AttackStart(victim);
        }

        return false;
    }
};

struct spell_item_linkens_boomerang : public SpellScript
{
    bool OnEffectExecute(Spell* /*spell*/, SpellEffectIndex effIdx) const override
    {
        if (effIdx == EFFECT_INDEX_1 && urand(0, 30))
            return false;

        if (effIdx == EFFECT_INDEX_2 && urand(0, 10))
            return false;

        return true;
    }
};

struct spell_item_scorpid_surprise : public SpellScript
{
    bool OnEffectExecute(Spell* /*spell*/, SpellEffectIndex effIdx) const override
    {
        if (effIdx == EFFECT_INDEX_1 && urand(0, 10))
            return false;

        return true;
    }
};

struct spell_item_brittle_armor : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        Unit* target = spell->GetUnitTarget();
        if (effIdx == EFFECT_INDEX_0 && target)
            spell->m_caster->CastSpell(target, 24575, true, spell->m_CastItem, nullptr, spell->GetOriginalCasterGuid());

        return false;
    }
};

struct spell_item_mercurial_shield : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        Unit* target = spell->GetUnitTarget();
        if (effIdx == EFFECT_INDEX_0 && target)
            spell->m_caster->CastSpell(target, 26464, true, spell->m_CastItem, nullptr, spell->GetOriginalCasterGuid());

        return false;
    }
};

struct spell_item_brittle_armor_remove_stack : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex /*effIdx*/) const override
    {
        if (Unit* target = spell->GetUnitTarget())
            target->RemoveAuraHolderFromStack(24575);

        return false;
    }
};

struct spell_item_mercurial_shield_remove_stack : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex /*effIdx*/) const override
    {
        if (Unit* target = spell->GetUnitTarget())
            target->RemoveAuraHolderFromStack(26464);

        return false;
    }
};

struct spell_item_cannon_fire : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex /*effIdx*/) const override
    {
        Unit* target = spell->GetUnitTarget();
        if (target && spell->m_casterUnit && spell->m_caster->GetTypeId() == TYPEID_PLAYER)
            target->CastSpell(spell->m_casterUnit, 24742, true);

        return false;
    }
};

struct spell_item_jubling_cooldown : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex /*effIdx*/) const override
    {
        Unit* target = spell->GetUnitTarget();
        SpellEntry const* spellInfo = sSpellMgr.GetSpellEntry(23851);
        if (target && spellInfo)
            target->AddSpellAndCategoryCooldowns(spellInfo, 19462);

        return false;
    }
};

struct spell_summon_black_qiraji_battle_tank : public SpellScript
{
    SpellCastResult OnCheckCast(Spell* spell, bool /*strict*/) const override
    {
        Unit* caster = spell->m_casterUnit;
        if (!caster)
            return SPELL_CAST_OK;

        if (caster->IsMounted())
        {
            if (caster->GetMountID() == 15677)
            {
                caster->Unmount();
                caster->RemoveSpellsCausingAura(SPELL_AURA_MOUNTED);
            }
            return SPELL_FAILED_DONT_REPORT;
        }

        if (caster->IsInWater())
            return SPELL_FAILED_ONLY_ABOVEWATER;

        if (Player* player = caster->ToPlayer())
        {
            if (player->GetTransport())
                return SPELL_FAILED_NO_MOUNTS_ALLOWED;

            MapEntry const* mapEntry = sMapStorage.LookupEntry<MapEntry>(caster->GetMapId());
            if (caster->GetMapId() != 531 && mapEntry && !mapEntry->IsMountAllowed() && !spell->IsTriggered())
                return SPELL_FAILED_NO_MOUNTS_ALLOWED;
        }

        if (caster->IsInDisallowedMountForm())
            return SPELL_FAILED_NOT_SHAPESHIFT;

        return SPELL_CAST_OK;
    }
};

struct spell_item_aq40_battle_tank : public SpellScript
{
    std::optional<SpellCastResult> OnCheckMount(Spell* spell) const override
    {
        Unit* caster = spell->m_casterUnit;
        if (!caster)
            return SPELL_CAST_OK;

        if (caster->GetMapId() != 531)
            return SPELL_FAILED_NOT_HERE;

        return SPELL_CAST_OK;
    }
};

struct spell_discombobulate : public AuraScript
{
    void OnAfterApply(Aura* aura, bool apply) override
    {
        if (apply)
            aura->GetTarget()->RemoveSpellsCausingAura(SPELL_AURA_MOUNTED);
    }
};

struct spell_ashbringer : public AuraScript
{
    void OnAfterApply(Aura* aura, bool apply) override
    {
        Unit* target = aura->GetTarget();
        if (target->GetTypeId() != TYPEID_PLAYER)
            return;

        Player* player = target->ToPlayer();
        if (player->GetMapId() == 45)
            return;

        constexpr uint32 scarletCrusadeFactionId = 56;
        ReputationRank const scarletCrusadeRank = ReputationRank(7);
        player->GetReputationMgr().ApplyForceReaction(scarletCrusadeFactionId, scarletCrusadeRank, apply);
        player->GetReputationMgr().SendForceReactions();

        if ((apply && scarletCrusadeRank >= REP_FRIENDLY) || (!apply && player->GetReputationRank(scarletCrusadeFactionId) >= REP_FRIENDLY))
            player->StopAttackFaction(scarletCrusadeFactionId);
    }
};

struct spell_tanaris_field_sampling : public SpellScript
{
    bool OnEffectExecute(Spell* /*spell*/, SpellEffectIndex effIdx) const override
    {
        return effIdx != EFFECT_INDEX_0 || roll_chance_i(50);
    }
};

struct spell_target_dummy : public SpellScript
{
    void OnSummon(Spell* spell, Creature* summon) const override
    {
        summon->SetFactionTemporary(spell->m_caster->GetFactionTemplateId(), TEMPFACTION_NONE);
        summon->lootForCreator = true;
        summon->SetCreatorGuid(spell->m_caster->GetObjectGuid());
        summon->SetUInt32Value(UNIT_FIELD_FLAGS, UNIT_FLAG_PLAYER_CONTROLLED);
        if (spell->m_casterUnit)
            summon->SetLootRecipient(spell->m_casterUnit);
    }
};

struct spell_chained_essence_of_eranikus : public SpellScript
{
    void OnSummon(Spell* spell, Creature* summon) const override
    {
        int32 textId = -1001012;
        switch (urand(0, 7))
        {
            case 1: textId = 4444; break;
            case 2: textId = 4445; break;
            case 3: textId = 4446; break;
            case 4: textId = 4447; break;
            case 5: textId = 4448; break;
            case 6: textId = 4449; break;
            case 7: textId = 4450; break;
        }

        if (spell->m_casterUnit)
            summon->MonsterWhisper(textId, spell->m_casterUnit);
    }
};

struct spell_alterac_shredder : public SpellScript
{
    void OnSummon(Spell* spell, Creature* summon) const override
    {
        summon->SetUInt32Value(UNIT_CREATED_BY_SPELL, spell->m_spellInfo->EffectTriggerSpell[1]);
        summon->SetCreatorGuid(spell->m_caster->GetObjectGuid());
        spell->ClearSelfContainer();
        spell->m_caster->CastSpell(summon, spell->m_spellInfo->EffectTriggerSpell[1], true);
    }
};

struct spell_rockwing_gargoyle : public SpellScript
{
    void OnSummon(Spell* spell, Creature* summon) const override
    {
        if (spell->m_casterUnit)
            if (Unit* target = spell->m_casterUnit->GetAttackerForHelper())
                summon->AI()->AttackStart(target);
    }
};

struct spell_release_umis_yeti : public SpellScript
{
    void OnSummon(Spell* /*spell*/, Creature* summon) const override
    {
        summon->MonsterTextEmote(-1900169);
        summon->MonsterSay(-1900170);

        switch (summon->GetAreaId())
        {
            case 541:
                if (Creature* creature = summon->FindNearestCreature(10977, 30.0f, true))
                {
                    summon->GetMotionMaster()->MoveFollow(creature, 0.6f, M_PI_F);
                    creature->MonsterSay(-1900171);
                    creature->SetWalk(false);
                    creature->GetMotionMaster()->MoveWaypoint(0, 0, 0, 0, 0, false);
                }
                break;
            case 976:
                if (Creature* creature = summon->FindNearestCreature(7583, 30.0f, true))
                {
                    summon->GetMotionMaster()->MoveFollow(creature, 0.6f, M_PI_F);
                    creature->MonsterTextEmote(-1900172);
                    creature->SetWalk(false);
                    creature->GetMotionMaster()->MoveWaypoint(0, 0, 0, 0, 0, false);
                }
                break;
            case 2255:
                if (Creature* creature = summon->FindNearestCreature(10978, 30.0f, true))
                {
                    summon->GetMotionMaster()->MoveFollow(creature, 0.6f, M_PI_F);
                    creature->MonsterTextEmote(-1900173);
                    creature->SetWalk(false);
                    creature->GetMotionMaster()->MoveWaypoint(0, 0, 0, 0, 0, false);
                }
                break;
        }
    }
};

struct spell_vanquished_tentacle_of_cthun : public SpellScript
{
    void OnSummon(Spell* /*spell*/, Creature* summon) const override
    {
        CharmInfo* charmInfo = summon->GetCharmInfo();
        charmInfo->SetIsAtStay(true);
        charmInfo->SetCommandState(COMMAND_STAY);
        charmInfo->SetIsCommandFollow(false);
        charmInfo->SaveStayPosition();
    }
};

struct spell_goblin_jumper_cables : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx == EFFECT_INDEX_0 && spell->m_casterUnit && roll_chance_i(67))
        {
            spell->m_casterUnit->CastSpell(spell->m_casterUnit, 8338, true, spell->m_CastItem);
            return false;
        }

        return true;
    }
};

struct spell_goblin_jumper_cables_xl : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex effIdx) const override
    {
        if (effIdx == EFFECT_INDEX_0 && spell->m_casterUnit && roll_chance_i(50))
        {
            spell->m_casterUnit->CastSpell(spell->m_casterUnit, 23055, true, spell->m_CastItem);
            return false;
        }

        return true;
    }
};

struct spell_jewel_of_wild_magics : public SpellScript
{
    bool OnEffectExecute(Spell* spell, SpellEffectIndex /*effIdx*/) const override
    {
        if (Unit* target = spell->GetUnitTarget())
            target->CastSpell(target, PickRandomValue(51004, 51006, 51008, 51010), true);

        return false;
    }
};

struct spell_loop_of_infused_renewal : public AuraScript
{
    std::optional<SpellProcEventTriggerCheck> OnCheckProc(Unit const* /*owner*/, Unit* /*victim*/, SpellAuraHolder* /*holder*/, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 /*procExtra*/, WeaponAttackType /*attType*/, bool /*isVictim*/) override
    {
        if (!procSpell)
            return SPELL_PROC_TRIGGER_FAILED;

        bool const validSpell =
            procSpell->IsFitToFamily<SPELLFAMILY_DRUID, CF_DRUID_HEALING_TOUCH>() ||
            procSpell->IsFitToFamily<SPELLFAMILY_PRIEST, CF_PRIEST_GREATER_HEAL>() ||
            procSpell->IsFitToFamily<SPELLFAMILY_SHAMAN, CF_SHAMAN_HEALING_WAVE>() ||
            procSpell->IsFitToFamily<SPELLFAMILY_PALADIN, CF_PALADIN_HOLY_LIGHT1, CF_PALADIN_HOLY_LIGHT2>();

        if (!validSpell)
            return SPELL_PROC_TRIGGER_FAILED;

        return std::nullopt;
    }

    std::optional<SpellAuraProcResult> OnProc(Unit* owner, Unit* victim, uint32 /*damage*/, int32 /*originalAmount*/, Aura* /*aura*/, SpellEntry const* procSpell, uint32 /*procFlag*/, uint32 /*procEx*/, uint32 /*cooldown*/) override
    {
        if (!victim || !victim->IsAlive() || !procSpell)
            return SPELL_AURA_PROC_FAILED;

        if (procSpell->IsFitToFamily<SPELLFAMILY_DRUID, CF_DRUID_HEALING_TOUCH>())
            owner->CastSpell(victim, 51018, true);
        else if (procSpell->IsFitToFamily<SPELLFAMILY_PRIEST, CF_PRIEST_GREATER_HEAL>())
            owner->CastSpell(victim, 51019, true);
        else if (procSpell->IsFitToFamily<SPELLFAMILY_SHAMAN, CF_SHAMAN_HEALING_WAVE>())
            owner->CastSpell(victim, 51020, true);
        else if (procSpell->IsFitToFamily<SPELLFAMILY_PALADIN, CF_PALADIN_HOLY_LIGHT1, CF_PALADIN_HOLY_LIGHT2>())
            owner->CastSpell(victim, 51021, true);
        else
            return SPELL_AURA_PROC_FAILED;

        return SPELL_AURA_PROC_OK;
    }
};

struct spell_sayges_dark_fortune : public SpellScript
{
    bool OnEffectExecute(Spell* /*spell*/, SpellEffectIndex effIdx) const override
    {
        // Effect 1 points at nonexistent spell 23770 in DBC; vmangos core skips it.
        return effIdx != EFFECT_INDEX_1;
    }
};
}

void AddSC_item_spell_scripts()
{
    RegisterAuraScript("spell_item_persistent_shield", &GetAuraScript<spell_item_persistent_shield>);
    RegisterAuraScript("spell_item_oracle_healing_bonus", &GetAuraScript<spell_item_oracle_healing_bonus>);
    RegisterAuraScript("spell_item_greater_heal_t3", &GetAuraScript<spell_item_greater_heal_t3>);
    RegisterAuraScript("spell_item_corrupted_healing", &GetAuraScript<spell_item_corrupted_healing>);
    RegisterAuraScript("spell_item_vial_of_potent_venoms", &GetAuraScript<spell_item_vial_of_potent_venoms>);
    RegisterAuraScript("spell_item_bonus_healing", &GetAuraScript<spell_item_bonus_healing>);
    RegisterSpellScript("spell_item_wolfshead_helm", &GetSpellScript<spell_item_wolfshead_helm>);
    RegisterAuraScript("spell_item_dreamwalker_healing_touch", &GetAuraScript<spell_item_dreamwalker_healing_touch>);
    RegisterAuraScript("spell_item_healing_touch_refund", &GetAuraScript<spell_item_healing_touch_refund>);
    RegisterAuraScript("spell_item_dreamwalker_rejuvenation", &GetAuraScript<spell_item_dreamwalker_rejuvenation>);
    RegisterAuraScript("spell_item_dreamwalker_regrowth", &GetAuraScript<spell_item_dreamwalker_regrowth>);
    RegisterAuraScript("spell_item_holy_power", &GetAuraScript<spell_item_holy_power>);
    RegisterSpellScript("spell_item_earthshatterer_t3", &GetSpellScript<spell_item_earthshatterer_t3>);
    RegisterAuraScript("spell_item_earthshatterer_t3_aura", &GetAuraScript<spell_item_earthshatterer_t3_aura>);
    RegisterAuraScript("spell_item_totemic_power", &GetAuraScript<spell_item_totemic_power>);
    RegisterAuraScript("spell_item_lesser_healing_wave_relic", &GetAuraScript<spell_item_lesser_healing_wave_relic>);
    RegisterAuraScript("spell_item_ten_storms_lightning_shield", &GetAuraScript<spell_item_ten_storms_lightning_shield>);
    RegisterAuraScript("spell_item_mana_surge", &GetAuraScript<spell_item_mana_surge>);
    RegisterAuraScript("spell_item_unrelenting_strikes", &GetAuraScript<spell_item_unrelenting_strikes>);
    RegisterSpellScript("spell_item_purging_flames", &GetSpellScript<spell_item_purging_flames>);
    RegisterSpellScript("spell_item_opportunistic_strike", &GetSpellScript<spell_item_opportunistic_strike>);
    RegisterAuraScript("spell_item_wild_regeneration", &GetAuraScript<spell_item_wild_regeneration>);
    RegisterAuraScript("spell_item_impending_doom", &GetAuraScript<spell_item_impending_doom>);
    RegisterSpellScript("spell_item_elunes_candle", &GetSpellScript<spell_item_elunes_candle>);
    RegisterSpellScript("spell_item_first_aid", &GetSpellScript<spell_item_first_aid>);
    RegisterSpellScript("spell_item_gnomish_death_ray", &GetSpellScript<spell_item_gnomish_death_ray>);
    RegisterAuraScript("spell_item_gnomish_death_ray_periodic", &GetAuraScript<spell_item_gnomish_death_ray_periodic>);
    RegisterSpellScript("spell_deviate_fish", &GetSpellScript<spell_deviate_fish>);
    RegisterSpellScript("spell_cooked_deviate_fish", &GetSpellScript<spell_cooked_deviate_fish>);
    RegisterSpellScript("spell_noggenfogger_elixir", &GetSpellScript<spell_noggenfogger_elixir>);
    RegisterSpellScript("spell_net_o_matic", &GetSpellScript<spell_net_o_matic>);
    RegisterSpellScript("spell_test_fetid_skull", &GetSpellScript<spell_test_fetid_skull>);
    RegisterSpellScript("spell_cannibalize", &GetSpellScript<spell_cannibalize>);
    RegisterSpellScript("spell_goblin_bomb_dispenser", &GetSpellScript<spell_goblin_bomb_dispenser>);
    RegisterSpellScript("spell_gadgetzan_transporter", &GetSpellScript<spell_gadgetzan_transporter>);
    RegisterSpellScript("spell_item_everlook_transporter", &GetSpellScript<spell_item_everlook_transporter>);
    RegisterSpellScript("spell_kodo_kombobulator", &GetSpellScript<spell_kodo_kombobulator>);
    RegisterSpellScript("spell_melodious_rapture", &GetSpellScript<spell_melodious_rapture>);
    RegisterSpellScript("spell_purify_and_place_food", &GetSpellScript<spell_purify_and_place_food>);
    RegisterSpellScript("spell_item_self_target_learn_spell", &GetSpellScript<spell_item_self_target_learn_spell>);
    RegisterSpellScript("spell_item_war_mode", &GetSpellScript<spell_item_war_mode>);
    RegisterSpellScript("spell_item_sunnyglade_spider", &GetSpellScript<spell_item_sunnyglade_spider>);
    RegisterSpellScript("spell_item_linkens_boomerang", &GetSpellScript<spell_item_linkens_boomerang>);
    RegisterSpellScript("spell_item_scorpid_surprise", &GetSpellScript<spell_item_scorpid_surprise>);
    RegisterSpellScript("spell_item_brittle_armor", &GetSpellScript<spell_item_brittle_armor>);
    RegisterSpellScript("spell_item_mercurial_shield", &GetSpellScript<spell_item_mercurial_shield>);
    RegisterSpellScript("spell_item_brittle_armor_remove_stack", &GetSpellScript<spell_item_brittle_armor_remove_stack>);
    RegisterSpellScript("spell_item_mercurial_shield_remove_stack", &GetSpellScript<spell_item_mercurial_shield_remove_stack>);
    RegisterSpellScript("spell_item_cannon_fire", &GetSpellScript<spell_item_cannon_fire>);
    RegisterSpellScript("spell_item_jubling_cooldown", &GetSpellScript<spell_item_jubling_cooldown>);
    RegisterSpellScript("spell_summon_black_qiraji_battle_tank", &GetSpellScript<spell_summon_black_qiraji_battle_tank>);
    RegisterSpellScript("spell_item_aq40_battle_tank", &GetSpellScript<spell_item_aq40_battle_tank>);
    RegisterAuraScript("spell_discombobulate", &GetAuraScript<spell_discombobulate>);
    RegisterAuraScript("spell_ashbringer", &GetAuraScript<spell_ashbringer>);
    RegisterSpellScript("spell_tanaris_field_sampling", &GetSpellScript<spell_tanaris_field_sampling>);
    RegisterSpellScript("spell_target_dummy", &GetSpellScript<spell_target_dummy>);
    RegisterSpellScript("spell_alterac_shredder", &GetSpellScript<spell_alterac_shredder>);
    RegisterSpellScript("spell_rockwing_gargoyle", &GetSpellScript<spell_rockwing_gargoyle>);
    RegisterSpellScript("spell_chained_essence_of_eranikus", &GetSpellScript<spell_chained_essence_of_eranikus>);
    RegisterSpellScript("spell_release_umis_yeti", &GetSpellScript<spell_release_umis_yeti>);
    RegisterSpellScript("spell_vanquished_tentacle_of_cthun", &GetSpellScript<spell_vanquished_tentacle_of_cthun>);
    RegisterSpellScript("spell_goblin_jumper_cables", &GetSpellScript<spell_goblin_jumper_cables>);
    RegisterSpellScript("spell_goblin_jumper_cables_xl", &GetSpellScript<spell_goblin_jumper_cables_xl>);
    RegisterSpellScript("spell_jewel_of_wild_magics", &GetSpellScript<spell_jewel_of_wild_magics>);
    RegisterAuraScript("spell_loop_of_infused_renewal", &GetAuraScript<spell_loop_of_infused_renewal>);
    RegisterSpellScript("spell_sayges_dark_fortune", &GetSpellScript<spell_sayges_dark_fortune>);
}
