#include "scriptPCH.h"
#include "zulgurub.h"


static constexpr uint32 NPC_OHGAN{ 14988 };
static constexpr uint32 NPC_CHAINED_SPIRIT{ 15117 };
static constexpr uint32 NPC_MANDOKIR{ 11382 };

static constexpr int32 SAY_AGGRO{ -1309015 };
static constexpr int32 SAY_DING_KILL{ -1309016 };
static constexpr int32 SAY_GRATS_JINDO{ -1309017 };
static constexpr int32 SAY_WATCH{ -1309018 };
static constexpr int32 SAY_WATCH_WHISPER{ -1309019 };
static constexpr int32 EMOTE_RAGE{ -1309024 };
// Mandokir's spells
static constexpr uint32 SPELL_CHARGE{ 24408 };
static constexpr uint32 SPELL_FEAR{ 19134 };
static constexpr uint32 SPELL_WHIRLWIND{ 13736 };
static constexpr uint32 SPELL_MORTAL_STRIKE{ 16856 };
static constexpr uint32 SPELL_ENRAGE{ 24318 };
static constexpr uint32 SPELL_WATCH{ 24314 };
static constexpr uint32 SPELL_DECAPITATE{ 24315 };
static constexpr uint32 SPELL_LEVEL_UP{ 24312 };
static constexpr uint32 SPELL_MOUNT{ 23243 };
// Ohgans's spells
static constexpr uint32 SPELL_SUNDERARMOR{ 24317 };
static constexpr uint32 SPELL_THRASH{ 3391 };
static constexpr uint32 SPELL_EXECUTE{ 7160 };
// Chained Spirit's spells
static constexpr uint32 SPELL_REVIVE{ 24341 };

struct SpawnLocations
{
    float fX{}, fY{}, fZ{}, fAng{};
};

static SpawnLocations aSpirits[] =
{
    { -12150.9f, -1956.24f, 133.407f, 2.57835f},
    { -12157.1f, -1972.78f, 133.947f, 2.64903f},
    { -12172.3f, -1982.63f, 134.061f, 1.48664f},
    { -12194.0f, -1979.54f, 132.194f, 1.45916f},
    { -12211.3f, -1978.49f, 133.580f, 1.35705f},
    { -12228.4f, -1977.10f, 132.728f, 1.25495f},
    { -12250.0f, -1964.78f, 135.066f, 0.92901f},
    { -12264.0f, -1953.08f, 134.072f, 0.62663f},
    { -12289.0f, -1924.00f, 132.620f, 5.37829f},
    { -12267.3f, -1902.26f, 131.328f, 5.32724f},
    { -12255.3f, -1893.53f, 134.026f, 5.06413f},
    { -12229.9f, -1891.39f, 134.704f, 4.40047f},
    { -12215.9f, -1889.09f, 137.273f, 4.70285f},
    { -12200.5f, -1890.69f, 135.777f, 4.84422f},
    { -12186.0f, -1890.12f, 134.261f, 4.36513f},
    { -12246.3f, -1890.09f, 135.475f, 4.73427f},
    { -12170.7f, -1894.85f, 133.852f, 3.51690f},
    { -12279.0f, -1931.92f, 136.130f, 0.04151f},
    { -12266.1f, -1940.72f, 132.606f, 0.70910f}
};

struct boss_mandokirAI : public ScriptedAI
{
    const static uint32 START_FLAGS{ UNIT_FLAG_PACIFIED | UNIT_FLAG_SPAWNING | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_IMMUNE_TO_PLAYER };

    explicit boss_mandokirAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = static_cast<ScriptedInstance*>(pCreature->GetInstanceData());
        boss_mandokirAI::Reset();
    }

    bool m_bRaptorDead{};
    bool m_VilebranchDead = false;
    bool m_bTargetMoved{};
    bool m_bTargetActed{};
    bool m_bFearAfterCharge{};
    bool m_bChargeCasted{};

    float m_fTargetX{}, m_fTargetY{};
    float m_fWatchedTargetAllowedMoveRange{};
    float m_fTargetThreat{};

    uint32 m_uiGlobalCooldown{};
    uint32 m_uiWatch_Timer{};
    uint32 m_uiCharge_Timer{};
    uint32 m_uiWhirlwind_Timer{};
    uint32 m_uiFear_Timer{};
    uint32 m_uiMortalStrike_Timer{};
    uint32 m_uiChargeCasted_Timer{};

    ObjectGuid m_uiRaptorGUID{};
    ObjectGuid m_uiChargedPlayerGUID{};
    ObjectGuid m_uiWatchTarget{};
    ObjectGuid m_uiTargetToKill{};
    ObjectGuid m_uiPlayerToRez{};

    std::vector<ObjectGuid> m_lSpirits;

    ScriptedInstance* m_pInstance{};

    void Reset() override
    {
        m_bRaptorDead = false;
        m_bTargetMoved = false;
        m_bTargetActed = false;
        m_bFearAfterCharge = false;
        m_bChargeCasted = false;

        m_fTargetX = 0.f;
        m_fTargetY = 0.f;
        m_fWatchedTargetAllowedMoveRange = 2.f;
        m_fTargetThreat = 0.f;

        m_uiGlobalCooldown = 0;
        m_uiWatch_Timer = 33000;
        m_uiCharge_Timer = 15000;
        m_uiWhirlwind_Timer = 20000;
        m_uiFear_Timer = 1000;
        m_uiMortalStrike_Timer = 1000;
        m_uiChargeCasted_Timer = 0;
        
        m_uiChargedPlayerGUID = 0;
        m_uiWatchTarget = 0;
        m_uiTargetToKill = 0;
        m_uiPlayerToRez = 0;

        m_creature->ResetStats();
        m_creature->SetLevel(63);

        DoCastSpellIfCan(m_creature, SPELL_MOUNT);
        DespawnRaptor();

        if (m_pInstance)
            m_pInstance->SetData(TYPE_OHGAN, NOT_STARTED);

        DespawnSpirits();

        CheckVilebranchState(true);
    }

    void KilledUnit(Unit* pVictim) override
    {
        if (pVictim->GetTypeId() == TYPEID_PLAYER)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_LEVEL_UP, true) == CAST_OK)
            {
                m_creature->SetLevel(m_creature->GetLevel() + 1);
                m_uiPlayerToRez = pVictim->GetGUID();
            }

            DoScriptText(SAY_DING_KILL, m_creature);

            if (!m_pInstance)
                return;

            if (!urand(0,2))
            {
                if (Creature* jTemp{ m_creature->GetMap()->GetCreature(m_pInstance->GetData64(DATA_JINDO)) })
                {
                    if (jTemp->IsAlive())
                    {
                        DoScriptText(SAY_GRATS_JINDO, jTemp);
                    }
                }
                else
                {
                    DoScriptText(SAY_GRATS_JINDO, m_creature);
                }
            }
        }
    }

    void Aggro(Unit* pWho) override
    {
        DoScriptText(SAY_AGGRO, m_creature);

        m_creature->SetInCombatWithZone();

        SpawnSpirits();
    }

    void CheckRaptor()
    {
        m_creature->RemoveAurasDueToSpell(SPELL_MOUNT);

        if (!m_bRaptorDead && m_uiRaptorGUID.IsEmpty())
        {
            SpawnRaptor();
        }

        // Checking if Ohgan is dead. If yes Mandokir will enrage.
        if (!m_bRaptorDead && m_pInstance && m_pInstance->GetData(TYPE_OHGAN) == DONE)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_ENRAGE) == CAST_OK)
            {
                DoScriptText(EMOTE_RAGE, m_creature);
                m_bRaptorDead = true;
            }
        }
    }

    void CheckVilebranchState(const bool reset = false)
    {
        // If Vilebranch dies and group wipes, boss should start at the bottom of the stairs
        // Video: https://www.youtube.com/watch?v=joaWY0wjOXI
        Creature* vileBranch = m_creature->FindNearestCreature(11391, 100.0f, true);
        bool isVilebranchDead = !vileBranch || !vileBranch->IsAlive();
        if (reset || m_VilebranchDead != isVilebranchDead)
        {
            if (isVilebranchDead)
            {
                m_creature->RemoveFlag(UNIT_FIELD_FLAGS, START_FLAGS);
                m_creature->SetHomePosition(-12195.0f, -1948.0f, 130.0f, 3.14f);
            }
            else
            {
                m_creature->SetFlag(UNIT_FIELD_FLAGS, START_FLAGS);
                m_creature->ResetHomePosition();
            }
            m_creature->GetMotionMaster()->MoveTargetedHome();

            m_VilebranchDead = isVilebranchDead;
        }
    }

    void CheckWatchedPlayer()
    {
        if (m_uiWatchTarget)
        {
            if (Unit* pWatchTarget{ m_creature->GetMap()->GetUnit(m_uiWatchTarget) })
            {
                if (pWatchTarget->IsAlive())
                {
                    // During the debuff
                    if (pWatchTarget->HasAura(SPELL_WATCH))
                    {
                        // The target must not move
                        if (pWatchTarget->HasAura(SPELL_FEAR))
                        {
                            m_fWatchedTargetAllowedMoveRange = 8.f;
                            m_fTargetX = pWatchTarget->GetPositionX();
                            m_fTargetY = pWatchTarget->GetPositionY();
                        }
                        else
                        {
                            if ((!m_bTargetMoved) && (!pWatchTarget->IsWithinDist2d(m_fTargetX, m_fTargetY, m_fWatchedTargetAllowedMoveRange)))
                            {
                                m_bTargetMoved = true;
                            }

                            m_fWatchedTargetAllowedMoveRange = 2.f;
                        }

                        // Neither attack
                        if ((!m_bTargetActed) && (m_creature->GetThreatManager().getThreat(pWatchTarget) > m_fTargetThreat + 500.f /*Needs to add a small leeway*/))
                        {
                            m_bTargetActed = true;
                        }
                    }
                    // The debuff is finished
                    else
                    {
                        if (m_bTargetMoved || m_bTargetActed)
                        {
                            m_uiTargetToKill = m_uiWatchTarget;
                        }
                        else
                        {
                            m_uiTargetToKill = 0;
                        }

                        m_uiWatchTarget = 0;
                    }
                }
            }
        }
    }

    void DespawnSpirits()
    {
        if (!m_lSpirits.empty())
        {
            for (const auto& guid : m_lSpirits)
            {
                if (Creature* pSpirit{ m_creature->GetMap()->GetCreature(guid) })
                {
                    if (pSpirit->IsAlive())
                    {
                        pSpirit->AddObjectToRemoveList();
                    }
                }
            }
        }

        m_lSpirits.clear();
    }

    void SpawnSpirits()
    {
        const uint32 uiCount{ sizeof(aSpirits) / sizeof(SpawnLocations) };

        if (m_lSpirits.empty())
        {
            for (uint8 i{}; i < uiCount; ++i)
            {
                if (Creature* pSpirit{ m_creature->SummonCreature(NPC_CHAINED_SPIRIT, aSpirits[i].fX, aSpirits[i].fY, aSpirits[i].fZ, aSpirits[i].fAng, TEMPSUMMON_CORPSE_DESPAWN, 0) })
                {
                    m_lSpirits.push_back(pSpirit->GetGUID());
                }
            }
        }
    }

    void DespawnRaptor()
    {
        if (!m_uiRaptorGUID.IsEmpty())
        {
            if (Creature* pRaptor = m_creature->GetMap()->GetCreature(m_uiRaptorGUID))
            {
                if (pRaptor->IsAlive())
                {
                    pRaptor->AddObjectToRemoveList();
                }
            }
        }

        m_uiRaptorGUID.Clear();
    }

    void SpawnRaptor()
    {
        // And summon his raptor
        if (m_uiRaptorGUID.IsEmpty())
        {
            if (Creature* pRaptor = m_creature->SummonCreature(NPC_OHGAN, 0.f, 0.f, 0.f, 0.f, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 35000))
            {
                m_uiRaptorGUID = pRaptor->GetObjectGuid();
            }
        }
    }

    void JustSummoned(Creature* pSummoned) override
    {
        if (!m_creature->GetVictim())
            return;

        if (pSummoned->GetEntry() == NPC_OHGAN)
        {
            pSummoned->AI()->AttackStart(m_creature->GetVictim());
        }
    }

    void MoveInLineOfSight(Unit *pWho) override
    {
        if (m_creature->GetVictim())
            return;

        if (Player* pPlayer{ pWho->ToPlayer() })
        {
            if (!pPlayer->IsGameMaster())
            {
                if (pPlayer->GetDistance(m_creature) < 40.f)
                {
                    if (m_VilebranchDead)
                    {
                        AttackStart(pWho);
                    }
                }
            }
        }
    }

    void SpellHitTarget(Unit* pTarget, const SpellEntry* pSpell) override
    {
        if (pSpell->Id == SPELL_WATCH)
        {
            m_uiWatchTarget = pTarget->GetGUID();

            m_fTargetX = pTarget->GetPositionX();
            m_fTargetY = pTarget->GetPositionY();

            m_bTargetMoved = false;
            m_bTargetActed = false;

            m_fTargetThreat = m_creature->GetThreatManager().getThreat(pTarget);
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_VilebranchDead)
        {
            CheckVilebranchState();
        }

        if (!m_VilebranchDead || !m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        CheckRaptor();
        CheckWatchedPlayer();

        if (m_uiPlayerToRez)
        {
            if (Player* killedPlayer{ m_creature->GetMap()->GetPlayer(m_uiPlayerToRez) })
            {
                if (killedPlayer->GetDeathState() == CORPSE && !killedPlayer->IsRessurectRequested())
                {
                    // Find nearest spirit ready to resurrect
                    Creature* spirit{ nullptr };
                    float spiritDist = 0.f;

                    for (const auto& guid : m_lSpirits)
                    {
                        if (Creature* current{ m_creature->GetMap()->GetCreature(guid) })
                        {
                            // Ready to resurrect?
                            if (current->AI() && current->AI()->GetData(0))
                            {
                                const float currentDist{ current->GetDistance(killedPlayer) };
                                if (!spirit || currentDist < spiritDist)
                                {
                                    spirit = current;
                                    spiritDist = currentDist;
                                }
                            }
                        }
                    }

                    if (spirit)
                    {
                        spirit->MonsterWhisper("I am released through you! Avenge me!", killedPlayer);
                        spirit->AI()->SpellHitTarget(killedPlayer, nullptr);
                    }
                }
            }

            m_uiPlayerToRez = 0;
        }

        if (m_uiGlobalCooldown > uiDiff)
        {
            m_uiGlobalCooldown -= uiDiff;
        }
        else
        {
            if (m_creature->IsNonMeleeSpellCasted(false))
            {
                m_uiGlobalCooldown = 1;
            }
            else
            {
                m_uiGlobalCooldown = 0;
            }
        }

        if (m_uiWatch_Timer < uiDiff)
        {
            if ((m_uiGlobalCooldown == 0) && (!m_uiWatchTarget))
            {
                if (Unit* pTarget{ m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 1, nullptr, SELECT_FLAG_PLAYER) })
                {
                    if (Player* pPlayer{ pTarget->GetCharmerOrOwnerPlayerOrPlayerItself() })
                    {
                        if (DoCastSpellIfCan(pPlayer, SPELL_WATCH) == CAST_OK)
                        {
                            DoScriptText(SAY_WATCH, m_creature, pTarget);
                            DoScriptText(SAY_WATCH_WHISPER, m_creature, pTarget);

                            m_uiWatch_Timer = 20000;
                            m_uiGlobalCooldown = 1;

                            if (m_uiCharge_Timer < 9000)
                            {
                                m_uiCharge_Timer = 9000;
                            }
                        }
                    }
                }
            }
        }
        else
        {
            m_uiWatch_Timer -= uiDiff;
        }

        if (m_uiTargetToKill)
        {
            if (m_uiGlobalCooldown == 0)
            {
                if (Unit* pTargetToKill{ m_creature->GetMap()->GetUnit(m_uiTargetToKill) })
                {
                    if (pTargetToKill->IsAlive())
                    {
                        bool bTargetKilled = false;
                        float addAggro = 0.f;

                        if (const float bAggro{ m_creature->GetThreatManager().getThreat(m_creature->GetVictim()) })
                        {
                            m_creature->GetThreatManager().modifyThreatPercent(pTargetToKill, -100);
                            addAggro = bAggro;
                        }

                        m_creature->GetThreatManager().addThreat(pTargetToKill, (addAggro + 2000.f));
                        m_creature->SelectHostileTarget();

                        if (pTargetToKill->IsInRange(m_creature, 0.0f, 40.f, true))
                        {
                            if (DoCastSpellIfCan(pTargetToKill, SPELL_DECAPITATE) == CAST_OK)
                            {
                                bTargetKilled = true;
                            }
                        }

                        if (!bTargetKilled)
                        {
                            m_creature->DoKillUnit(pTargetToKill);
                        }

                        if (pTargetToKill->IsAlive())
                        {
                            m_creature->DoKillUnit(pTargetToKill);
                        }

                        m_uiGlobalCooldown = 1000;
                        m_uiTargetToKill = 0;
                    }
                }
            }
        }

        if (m_uiCharge_Timer < uiDiff)
        {
            if ((m_uiGlobalCooldown == 0) && (!m_uiTargetToKill) && (!m_uiWatchTarget))
            {
                if (Unit* pTarget{ m_creature->GetFarthestVictimInRange(8.f, 40.f) })
                {
                    if (Player* pPlayer{ pTarget->GetCharmerOrOwnerPlayerOrPlayerItself() })
                    {
                        if (DoCastSpellIfCan(pPlayer, SPELL_CHARGE) == CAST_OK)
                        {
                            m_uiCharge_Timer = urand(30000, 35000);
                            m_uiGlobalCooldown = 1000;

                            // Fear imminent
                            m_uiFear_Timer = 100;
                            m_bFearAfterCharge = true;
                            m_bChargeCasted = true;

                            m_uiChargeCasted_Timer = 2000;
                            m_uiChargedPlayerGUID = pTarget->GetObjectGuid();
                        }
                    }
                }
                else
                {
                    m_uiCharge_Timer = urand(5000, 10000);
                }
            }
        }
        else
        {
            m_uiCharge_Timer -= uiDiff;

            if (m_bChargeCasted)
            {
                m_uiChargeCasted_Timer -= uiDiff;

                if (m_uiChargeCasted_Timer < uiDiff)
                {
                    m_bChargeCasted = false;
                    m_creature->GetMotionMaster()->MoveChase(m_creature->GetVictim());
                }
            }
        }

        if (m_uiFear_Timer < uiDiff)
        {
            if (m_bFearAfterCharge)
            {
                if (m_uiChargedPlayerGUID)
                {
                    if (Player* player{ m_creature->GetMap()->GetPlayer(m_uiChargedPlayerGUID) })
                    {
                        if (player->IsAlive())
                        {
                            if (m_creature->GetDistance(player) < 4.f)
                            {
                                if (DoCastSpellIfCan(player, SPELL_FEAR) == CAST_OK)
                                {
                                    m_uiFear_Timer = 24000;
                                    m_uiGlobalCooldown = 500;
                                    m_bFearAfterCharge = false;
                                    m_uiChargedPlayerGUID.Clear();
                                }
                            }
                        }
                        else
                        {
                            m_uiFear_Timer = 24000;
                            m_uiGlobalCooldown = 500;
                            m_bFearAfterCharge = false;
                            m_uiChargedPlayerGUID.Clear();

                        }
                    }
                }
            }
        }
        else
        {
            m_uiFear_Timer -= uiDiff;
        }

        if (m_uiWhirlwind_Timer < uiDiff)
        {
            if ((m_uiGlobalCooldown == 0) && (!m_uiTargetToKill) && (!m_uiWatchTarget))
            {
                if (DoCastSpellIfCan(m_creature, SPELL_WHIRLWIND) == CAST_OK)
                {
                    m_uiWhirlwind_Timer = 18000;
                    m_uiGlobalCooldown = 3000;
                }
            }
        }
        else
        {
            m_uiWhirlwind_Timer -= uiDiff;
        }

        if (m_uiMortalStrike_Timer < uiDiff)
        {
            if ((m_uiGlobalCooldown == 0) && (m_creature->GetVictim()->GetHealthPercent() < 50.0f))
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_MORTAL_STRIKE) == CAST_OK)
                {
                    m_uiMortalStrike_Timer = 15000;
                    m_uiGlobalCooldown = 500;
                }
            }
        }
        else
        {
            m_uiMortalStrike_Timer -= uiDiff;
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_mandokir(Creature* pCreature)
{
    return new boss_mandokirAI(pCreature);
}


struct mob_ohganAI : public ScriptedAI
{
    explicit mob_ohganAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = static_cast<ScriptedInstance*>(pCreature->GetInstanceData());
        mob_ohganAI::Reset();
    }

    uint32 m_uiSunderArmor_Timer{};
    uint32 m_uiThrash_Timer{};
    uint32 m_uiExecute_Timer{};

    ScriptedInstance* m_pInstance{};

    void Reset() override
    {
        m_uiSunderArmor_Timer = 5000;
        m_uiThrash_Timer = urand(5000, 9000);
        m_uiExecute_Timer = 1000;
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        if (m_pInstance)
            m_pInstance->SetData(TYPE_OHGAN, DONE);
    }

    void KilledUnit(Unit* pVictim) override
    {
        if (pVictim->GetTypeId() == TYPEID_PLAYER)
        {
            if (m_creature->IsInCombat())
            {
                if (Creature* pMandokir{ pVictim->FindNearestCreature(NPC_MANDOKIR, 100.f) })
                {
                    pMandokir->AI()->KilledUnit(pVictim);
                }
            }
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
        {
            if (!m_creature->IsAlive()) // Is this necessary?
                return;

            if (Creature* pMandokir{ m_creature->FindNearestCreature(NPC_MANDOKIR, 100.f) })
            {
                if (pMandokir->IsAlive() && pMandokir->GetVictim())
                {
                    m_creature->AI()->AttackStart(pMandokir->GetVictim());
                }
                else
                {
                    return;
                }
            }
            else
            {
                return;
            }
        }

        if (m_uiSunderArmor_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(me->GetVictim(), SPELL_SUNDERARMOR) == CAST_OK)
            {
                m_uiSunderArmor_Timer = urand(10000, 15000);
            }
        }
        else
        {
            m_uiSunderArmor_Timer -= uiDiff;
        }

        if (m_uiThrash_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(me, SPELL_THRASH) == CAST_OK)
            {
                m_uiThrash_Timer = urand(5000, 9000);
            }
        }
        else
        {
            m_uiThrash_Timer -= uiDiff;
        }

        if (me->GetVictim()->GetHealth() < (me->GetVictim()->GetMaxHealth() * .2f))
        {
            if (m_uiExecute_Timer < uiDiff)
            {
                if (DoCastSpellIfCan(me->GetVictim(), SPELL_EXECUTE) == CAST_OK)
                {
                    m_uiExecute_Timer = 10000;
                }
            }
            else
            {
                m_uiExecute_Timer -= uiDiff;
            }
        }
        else
        {
            m_uiExecute_Timer -= uiDiff;
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_mob_ohgan(Creature* pCreature)
{
    return new mob_ohganAI(pCreature);
}


struct mob_chainedSpiritsAI : public ScriptedAI
{
    explicit mob_chainedSpiritsAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        mob_chainedSpiritsAI::Reset();
    }

    uint32 m_uiRezTimer{};

    ObjectGuid m_uiTargetRezGUID{};

    void Reset() override
    {
        m_uiRezTimer = 0;

        m_uiTargetRezGUID = 0;
    }

    /*
    When a player dies, a spirit must revive him. If the player accepts, then the mob must despawn.
    Otherwise, the spirit becomes available to other players, knowing that they are spawned in limited numbers.
    */

    // Ready to revive someone?
    uint32 GetData(uint32) override
    {
        if (m_uiTargetRezGUID)
            return 0;
    
        return 1;
    }

    void SpellHitTarget(Unit* pDead, const SpellEntry* pSpell) override
    {
        if (!pSpell)
        {
            m_uiTargetRezGUID = pDead->GetGUID();
            me->GetMotionMaster()->MovePoint(1, pDead->GetPositionX(), pDead->GetPositionY(), pDead->GetPositionZ(), MOVE_PATHFINDING | MOVE_WALK_MODE);
            me->SetHomePosition(pDead->GetPositionX(), pDead->GetPositionY(), pDead->GetPositionZ(), 0.0f);

            return;
        }

        if (pSpell->Id == SPELL_REVIVE)
        {
            m_creature->DeleteLater();
        }
    }

    void MovementInform(const uint32 uiMvtType, const uint32 uiMoveId) override
    {
        if (uiMvtType == POINT_MOTION_TYPE && uiMoveId == 1)
        {
            if (m_creature->GetMap()->GetPlayer(m_uiTargetRezGUID))
            {
                m_uiRezTimer = 2500;
            }
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (m_uiRezTimer)
        {
            if (m_uiRezTimer < uiDiff)
            {
                // Attempt to rez player
                if (Player* target{ m_creature->GetMap()->GetPlayer(m_uiTargetRezGUID) })
                {
                    if (target->GetDeathState() == CORPSE && !target->IsRessurectRequested())
                    {
                        m_creature->CastSpell(target, SPELL_REVIVE, true); // Will despawn at SpellHit
                    }
                    else
                    {
                        m_creature->AddObjectToRemoveList();
                    }
                }
            }
            else
            {
                m_uiRezTimer -= uiDiff;
            }
        }
    }
};

CreatureAI* GetAI_mob_chained_spirit(Creature* pCreature)
{
    return new mob_chainedSpiritsAI(pCreature);
}

void AddSC_boss_mandokir()
{
    Script* pNewScript{};

    pNewScript = new Script;
    pNewScript->Name = "boss_mandokir";
    pNewScript->GetAI = &GetAI_boss_mandokir;
    pNewScript->RegisterSelf();

    pNewScript = new Script;
    pNewScript->Name = "mob_ohgan";
    pNewScript->GetAI = &GetAI_mob_ohgan;
    pNewScript->RegisterSelf();

    pNewScript = new Script;
    pNewScript->Name = "mob_chained_spirit";
    pNewScript->GetAI = &GetAI_mob_chained_spirit;
    pNewScript->RegisterSelf();
}
