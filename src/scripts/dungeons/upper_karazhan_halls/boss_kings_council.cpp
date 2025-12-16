#include "scriptPCH.h"

enum
{
    SPELL_SHADOWBOLT_1 = 51212,
    SPELL_SHADOWBOLT_2 = 51213,
    SPELL_HEAL         = 51214,
    SPELL_SHADOWBOLT_VOLLEY = 51215,
    SPELL_REDEMPTION   = 51216,
    SPELL_SILENCE = 51217,
    SPELL_EPISCOPACY = 51218,
    SPELL_KINGS_FURY = 51229,

    NPC_PAWN = 59972,
    NPC_BISHOP = 59971,
    NPC_ROOK = 59970,
    NPC_GHASTLY_HORESEMAN = 59969,
    NPC_KNIGHT = 59968,
    NPC_KING = 59967,
};

struct npc_kara_bishopAI : public ScriptedAI
{
    npc_kara_bishopAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    uint32 m_healTimer;
    uint32 m_shadowboltVolleyTimer;
    uint32 m_redemptionTimer;
    uint32 m_silenceTimer;

    void Reset() override
    {
        m_healTimer = 12000;
        m_shadowboltVolleyTimer = 15000;
        m_redemptionTimer = 30000;
        m_silenceTimer = 14000;
    }

    void JustDied(Unit* pKiller) override
    {
        if (Creature* pKing = m_creature->FindNearestCreature(NPC_KING, 100.0f))
            pKing->CastSpell(pKing, SPELL_KINGS_FURY, false);
    }

    bool IsOnlyPiece() const
    {
        return !m_creature->FindNearestCreature(NPC_BISHOP, 100.0f, true, m_creature) &&
               !m_creature->FindNearestCreature(NPC_KNIGHT, 100.0f, true, m_creature) &&
               !m_creature->FindNearestCreature(NPC_ROOK, 100.0f, true, m_creature);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_healTimer <= uiDiff)
        {
            m_healTimer = 1000;
            std::list<Creature*> list;
            m_creature->GetCreatureListWithEntryInGrid(list, NPC_PAWN, 40.0f);
            for (auto const& pPawn : list)
            {
                if (pPawn->GetHealthPercent() < 75.0f)
                {
                    if (DoCastSpellIfCan(pPawn, SPELL_HEAL) == CAST_OK)
                    {
                        m_healTimer = 12000;
                        return;
                    }
                }
            }
        }
        else
            m_healTimer -= uiDiff;

        if (m_shadowboltVolleyTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SHADOWBOLT_VOLLEY) == CAST_OK)
            {
                m_shadowboltVolleyTimer = 15000;
                return;
            }
        }
        else
            m_shadowboltVolleyTimer -= uiDiff;

        if (m_redemptionTimer <= uiDiff)
        {
            m_redemptionTimer = 1000;
            if (m_creature->FindNearestCreature(NPC_KNIGHT, 100.0f, false))
            {
                if (Creature* pPawn = m_creature->FindNearestCreature(NPC_PAWN, 40.0f, false))
                {
                    if (DoCastSpellIfCan(pPawn, SPELL_REDEMPTION) == CAST_OK)
                    {
                        m_redemptionTimer = 30000;
                        return;
                    }
                }
            }
        }
        else
            m_redemptionTimer -= uiDiff;

        if (m_silenceTimer <= uiDiff)
        {
            m_silenceTimer = 1000;
            if (m_creature->FindNearestCreature(NPC_ROOK, 100.0f, false))
            {
                if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, SPELL_SILENCE, SELECT_FLAG_PLAYER | SELECT_FLAG_POWER_MANA))
                {
                    if (DoCastSpellIfCan(pTarget, SPELL_SILENCE) == CAST_OK)
                    {
                        m_silenceTimer = 14000;
                        return;
                    }
                }
            }
        }
        else
            m_silenceTimer -= uiDiff;

        if (m_creature->IsNonMeleeSpellCasted())
            return;

        if (!m_creature->HasAura(SPELL_EPISCOPACY) && IsOnlyPiece())
            m_creature->CastSpell(m_creature, SPELL_EPISCOPACY, true);

        if (m_creature->GetVictim()->GetDistance3dToCenter(m_creature) < 10.0f)
            m_creature->CastSpell(m_creature->GetVictim(), SPELL_SHADOWBOLT_1, false);
        else
            m_creature->CastSpell(m_creature->GetVictim(), SPELL_SHADOWBOLT_2, false);

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_kara_bishop(Creature* pCreature)
{
    return new npc_kara_bishopAI(pCreature);
}

enum
{
    SPELL_SHIELD_BASH = 51219,
    SPELL_ADVANCE = 51220,
    SPELL_FORTIFY = 51221,
    SPELL_SIEGE_EQUIPMENT = 51223,
};

struct npc_kara_rookAI : public ScriptedAI
{
    npc_kara_rookAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    uint32 m_shieldBashTimer;
    uint32 m_advanceTimer;
    uint32 m_fortifyTimer;
    uint32 m_siegeEquipment;

    void Reset() override
    {
        m_shieldBashTimer = 11000;
        m_advanceTimer = 20000;
        m_fortifyTimer = 35000;
        m_siegeEquipment = 25000;
    }

    void JustDied(Unit* pKiller) override
    {
        if (Creature* pKing = m_creature->FindNearestCreature(NPC_KING, 100.0f))
            pKing->CastSpell(pKing, SPELL_KINGS_FURY, false);
    }

    bool IsOnlyPiece() const
    {
        return !m_creature->FindNearestCreature(NPC_BISHOP, 100.0f, true, m_creature) &&
               !m_creature->FindNearestCreature(NPC_KNIGHT, 100.0f, true, m_creature) &&
               !m_creature->FindNearestCreature(NPC_ROOK, 100.0f, true, m_creature);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_shieldBashTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SHIELD_BASH) == CAST_OK)
            {
                m_shieldBashTimer = IsOnlyPiece() ? 5500 : 11000;
                return;
            }
        }
        else
            m_shieldBashTimer -= uiDiff;

        if (m_advanceTimer <= uiDiff)
        {
            m_advanceTimer = 1000;
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, SPELL_SILENCE, SELECT_FLAG_PLAYER | SELECT_FLAG_NOT_IN_MELEE_RANGE))
            {
                if (DoCastSpellIfCan(pTarget, SPELL_ADVANCE) == CAST_OK)
                {
                    m_advanceTimer = IsOnlyPiece() ? 10000 : 20000;
                    return;
                }
            }
        }
        else
            m_advanceTimer -= uiDiff;

        if (m_fortifyTimer <= uiDiff)
        {
            m_fortifyTimer = 1000;
            if (m_creature->FindNearestCreature(NPC_BISHOP, 100.0f, false))
            {
                if (DoCastSpellIfCan(m_creature, SPELL_FORTIFY) == CAST_OK)
                {
                    m_fortifyTimer = 35000;
                    return;
                }
            }
        }
        else
            m_fortifyTimer -= uiDiff;

        if (m_siegeEquipment <= uiDiff)
        {
            m_siegeEquipment = 1000;
            if (m_creature->FindNearestCreature(NPC_KNIGHT, 100.0f, false))
            {
                if (DoCastSpellIfCan(m_creature, SPELL_SIEGE_EQUIPMENT) == CAST_OK)
                {
                    m_siegeEquipment = IsOnlyPiece() ? 12500 : 25000;
                    return;
                }
            }
        }
        else
            m_siegeEquipment -= uiDiff;

        if (!m_creature->HasAura(SPELL_EPISCOPACY) && IsOnlyPiece())
            m_creature->CastSpell(m_creature, SPELL_EPISCOPACY, true);

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_kara_rook(Creature* pCreature)
{
    return new npc_kara_rookAI(pCreature);
}

enum
{
    SPELL_GLORY = 51224,
    SPELL_GLORIOUS_CLEAVE = 51225,
    SPELL_TRAMPLE = 51226,
    SPELL_SUMMON_GHASTLY_HORSEMEN = 51227,
};

struct npc_kara_knightAI : public ScriptedAI
{
    npc_kara_knightAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    uint32 m_cleaveTimer;
    uint32 m_trampleTimer;
    uint32 m_ghastlyHorsemenTimer;

    void Reset() override
    {
        m_creature->CastSpell(m_creature, SPELL_GLORY, true);
        m_cleaveTimer = 1300;
        m_trampleTimer = 11000;
        m_ghastlyHorsemenTimer = urand(20000, 30000);
    }

    void JustDied(Unit* pKiller) override
    {
        if (Creature* pKing = m_creature->FindNearestCreature(NPC_KING, 100.0f))
            pKing->CastSpell(pKing, SPELL_KINGS_FURY, false);
    }

    bool IsOnlyPiece() const
    {
        return !m_creature->FindNearestCreature(NPC_BISHOP, 100.0f, true, m_creature) &&
               !m_creature->FindNearestCreature(NPC_KNIGHT, 100.0f, true, m_creature) &&
               !m_creature->FindNearestCreature(NPC_ROOK, 100.0f, true, m_creature);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_trampleTimer <= uiDiff)
        {
            m_trampleTimer = 1000;
            if (m_creature->FindNearestCreature(NPC_ROOK, 100.0f, false))
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_TRAMPLE) == CAST_OK)
                {
                    m_trampleTimer = 11000;
                    return;
                }
            }
        }
        else
            m_trampleTimer -= uiDiff;

        if (m_ghastlyHorsemenTimer <= uiDiff)
        {
            m_ghastlyHorsemenTimer = 1000;
            if (m_creature->FindNearestCreature(NPC_BISHOP, 100.0f, false))
            {
                if (DoCastSpellIfCan(m_creature, SPELL_SUMMON_GHASTLY_HORSEMEN) == CAST_OK)
                {
                    bool alone = IsOnlyPiece();
                    m_ghastlyHorsemenTimer = alone ? urand (10000, 15000) : urand(20000, 30000);

                    uint32 count = alone ? 3 : 1;
                    for (uint32 i = 0; i < count; ++i)
                        m_creature->SummonCreature(NPC_GHASTLY_HORESEMAN, 0, 0, 0, 0, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 30000);
                    return;
                }
            }
        }
        else
            m_ghastlyHorsemenTimer -= uiDiff;

        if (m_cleaveTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_GLORIOUS_CLEAVE) == CAST_OK)
            {
                m_cleaveTimer = 1300;
                return;
            }
        }
        else
            m_cleaveTimer -= uiDiff;

        if (!m_creature->HasAura(SPELL_EPISCOPACY) && IsOnlyPiece())
            m_creature->CastSpell(m_creature, SPELL_EPISCOPACY, true);

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_kara_knight(Creature* pCreature)
{
    return new npc_kara_knightAI(pCreature);
}

enum
{
    SPELL_VOID_ZONE = 28863,
    SPELL_INVULNERABILITY = 51228,
    SPELL_SUMMON_PAWN = 51230,
    SPELL_KINGS_CURSE = 51231,
};

struct npc_kara_kingAI : public ScriptedAI
{
    npc_kara_kingAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    uint32 m_voidZoneTimer;
    uint32 m_summonPawnTimer;
    uint32 m_kingsCurseTimer;

    void Reset() override
    {
        m_voidZoneTimer = 20000;
        m_summonPawnTimer = urand(8000, 14000);
        m_kingsCurseTimer = urand(40000, 50000);
    }

    bool IsOnlyPiece() const
    {
        return !m_creature->FindNearestCreature(NPC_BISHOP, 100.0f, true, m_creature) &&
               !m_creature->FindNearestCreature(NPC_KNIGHT, 100.0f, true, m_creature) &&
               !m_creature->FindNearestCreature(NPC_ROOK, 100.0f, true, m_creature);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_voidZoneTimer <= uiDiff)
        {
            m_voidZoneTimer = 1000;
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
            {
                if (DoCastSpellIfCan(pTarget, SPELL_VOID_ZONE) == CAST_OK)
                {
                    m_voidZoneTimer = 20000;
                    return;
                }
            }
        }
        else
            m_voidZoneTimer -= uiDiff;

        if (m_summonPawnTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_SUMMON_PAWN) == CAST_OK)
            {
                m_summonPawnTimer = urand(8000, 14000);
                return;
            }
        }
        else
            m_summonPawnTimer -= uiDiff;

        if (m_kingsCurseTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_KINGS_CURSE) == CAST_OK)
            {
                m_kingsCurseTimer = urand(40000, 50000);
                return;
            }
        }
        else
            m_kingsCurseTimer -= uiDiff;

        if (m_creature->HasAura(SPELL_INVULNERABILITY) && IsOnlyPiece())
            m_creature->RemoveAurasDueToSpell(SPELL_INVULNERABILITY);

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_kara_king(Creature* pCreature)
{
    return new npc_kara_kingAI(pCreature);
}

void AddSC_boss_kings_council()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "npc_kara_bishop";
    newscript->GetAI = &GetAI_npc_kara_bishop;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_kara_rook";
    newscript->GetAI = &GetAI_npc_kara_rook;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_kara_knight";
    newscript->GetAI = &GetAI_npc_kara_knight;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_kara_king";
    newscript->GetAI = &GetAI_npc_kara_king;
    newscript->RegisterSelf();
}
