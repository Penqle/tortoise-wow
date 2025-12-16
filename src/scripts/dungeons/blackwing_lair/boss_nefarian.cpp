#include "scriptPCH.h"
#include "blackwing_lair.h"

struct ClassCallInfo
{
    ClassCallInfo(uint8 ui_Class, int32 ui_Yell) : m_uiClass(ui_Class), m_uiYell(ui_Yell) {}

    uint8 m_uiClass;
    int32 m_uiYell;
};

static constexpr uint32 NPC_BONE_CONSTRUCT = 14605;
static constexpr uint32 SPELL_WINDFURY_TOTEM_PASSIVE = 10612;
static constexpr uint32 SPELL_WINDFURY_TOTEM = 10610;

struct boss_nefarianAI : ScriptedAI
{
    explicit boss_nefarianAI(Creature* p_Creature) : ScriptedAI(p_Creature)
    {
        p_Instance = static_cast<ScriptedInstance*>(p_Creature->GetInstanceData());
        boss_nefarianAI::Reset();
    }

    static constexpr uint32 SAY_AGGRO = 9973;
    static constexpr uint32 SAY_SHADOWFLAME = 9974;
    static constexpr uint32 SAY_RAISE_SKELETONS = 9883;
    static constexpr uint32 SAY_SLAY = 9972;
    static constexpr uint32 SAY_DEATH = 9971;
    static constexpr uint32 SAY_MAGE = 9850;
    static constexpr uint32 SAY_WARRIOR = 9855;
    static constexpr uint32 SAY_DRUID = 9851;
    static constexpr uint32 SAY_PRIEST = 9848;
    static constexpr uint32 SAY_PALADIN = 9853;
    static constexpr uint32 SAY_SHAMAN = 9854;
    static constexpr uint32 SAY_WARLOCK = 9852;
    static constexpr uint32 SAY_HUNTER = 9849;
    static constexpr uint32 SAY_ROGUE = 9856;

    static constexpr uint32 SPELL_SHADOWFLAME_INITIAL = 22992;
    static constexpr uint32 SPELL_SHADOWFLAME = 22539;
    static constexpr uint32 SPELL_BELLOWING_ROAR = 22686;
    static constexpr uint32 SPELL_VEIL_OF_SHADOW = 22687;
    static constexpr uint32 SPELL_CLEAVE = 20691;
    static constexpr uint32 SPELL_TAIL_LASH = 23364;
    static constexpr uint32 SPELL_MAGE = 23410;
    static constexpr uint32 SPELL_WARRIOR = 23397;
    static constexpr uint32 SPELL_DRUID = 23398;
    static constexpr uint32 SPELL_PRIEST = 23401;
    static constexpr uint32 SPELL_PALADIN = 23418;
    static constexpr uint32 SPELL_SHAMAN = 23425;
    static constexpr uint32 SPELL_WARLOCK = 23427;
    static constexpr uint32 SPELL_HUNTER = 23436;
    static constexpr uint32 SPELL_ROGUE = 23414;
    static constexpr uint32 SPELL_POLYMORPH = 23603;
    static constexpr uint32 SPELL_HOVER = 17131;

    static constexpr uint32 NPC_CORRUPTED_INFERNAL = 14668;
    static constexpr uint32 ITEM_FIELD_REPAIR_BOT_75B = 50041;

    uint32 ui_ShadowFlameTimer;
    uint32 ui_BellowingRoarTimer;
    uint32 ui_VeilOfShadowTimer;
    uint32 ui_CleaveTimer;
    uint32 ui_TailLashTimer;
    uint32 ui_ClassCallTimer;
    uint32 ui_TransitionTimer;
    uint32 ui_MageTriggerTimer;
    uint8 ui_TransitionStage;
    bool b_Phase3;
    bool b_TransitionDone;
    bool b_WarriorStance;

    std::vector<ClassCallInfo> v_PossibleCalls;
    std::list<ObjectGuid> MagePlayerGUID;

    ScriptedInstance* p_Instance;

    void Reset() override
    {
        ui_ShadowFlameTimer = urand(18000, 25000);
        ui_BellowingRoarTimer = urand(25000, 30000);
        ui_VeilOfShadowTimer = 15000;
        ui_CleaveTimer = urand(7000, 10000);
        ui_TailLashTimer = 10000;
        ui_ClassCallTimer = urand(25000, 35000);
        ui_TransitionTimer = 100;
        ui_MageTriggerTimer = 0;
        ui_TransitionStage = 0;
        b_Phase3 = false;
        b_TransitionDone = false;
        b_WarriorStance = false;

        MagePlayerGUID.clear();
        v_PossibleCalls.clear();
        v_PossibleCalls.push_back(ClassCallInfo(CLASS_WARRIOR, SAY_WARRIOR));
        v_PossibleCalls.push_back(ClassCallInfo(CLASS_PALADIN, SAY_PALADIN));
        v_PossibleCalls.push_back(ClassCallInfo(CLASS_HUNTER, SAY_HUNTER));
        v_PossibleCalls.push_back(ClassCallInfo(CLASS_ROGUE, SAY_ROGUE));
        v_PossibleCalls.push_back(ClassCallInfo(CLASS_PRIEST, SAY_PRIEST));
        v_PossibleCalls.push_back(ClassCallInfo(CLASS_SHAMAN, SAY_SHAMAN));
        v_PossibleCalls.push_back(ClassCallInfo(CLASS_MAGE, SAY_MAGE));
        v_PossibleCalls.push_back(ClassCallInfo(CLASS_WARLOCK, SAY_WARLOCK));
        v_PossibleCalls.push_back(ClassCallInfo(CLASS_DRUID, SAY_DRUID));
    }

    void KilledUnit(Unit* pVictim) override
    {
        if (urand(0, 4))
            return;

        DoScriptText(SAY_SLAY, m_creature, pVictim);
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        DoScriptText(SAY_DEATH, m_creature);

        if (p_Instance)
            p_Instance->SetData(TYPE_NEFARIAN, DONE);
    }

    void EnterEvadeMode() override
    {
        if (p_Instance)
        {
            p_Instance->SetData(TYPE_NEFARIAN, FAIL);

            if (Creature* p_Nefarius = m_creature->GetMap()->GetCreature(p_Instance->GetData64(DATA_NEFARIUS_GUID)))
                p_Nefarius->AI()->EnterEvadeMode();
        }

        m_creature->DeleteLater();
    }

    void JustSummoned(Creature* p_Summoned) override
    {
        p_Summoned->SetInCombatWithZone();
    }

    void MovementInform(uint32 ui_Type, uint32 ui_PointId) override
    {
        if (ui_Type != POINT_MOTION_TYPE)
            return;

        if (ui_PointId == 1)
        {
            m_creature->GetMotionMaster()->MovePoint(2, -7495.964f, -1252.402f, 476.795f, MOVE_FORCE_DESTINATION, 17.0f);
            ui_TransitionTimer = 0;
        }
        else if (ui_PointId == 2)
        {
            m_creature->GetMotionMaster()->MoveIdle();
            ui_TransitionTimer = 100;
        }
    }

    bool HandleClassCall(uint8 ui_ClassCalled)
    {
        if (!ui_ClassCalled)
            return false;

        Map::PlayerList const& players = m_creature->GetMap()->GetPlayers();
        if (players.isEmpty())
            return false;

        bool b_ClassFound = false;
        MagePlayerGUID.clear(); // Clear mage GUIDs or we'll be adding the same players again for subsequent mage class calls, resulting in far more polymorphs than intended
        for (const auto& itr : players)
        {
            Player* p_Player = itr.getSource();
            if (p_Player && p_Player->IsAlive())
            {
                // Remove Field Repair Bot 75B if summoned
                if (p_Player->GetMiniPet() && p_Player->GetMiniPet()->GetEntry() == ITEM_FIELD_REPAIR_BOT_75B)
                    p_Player->RemoveMiniPet();

                if (p_Player->GetClass() == ui_ClassCalled)
                {
                    b_ClassFound = true;
                    switch (ui_ClassCalled)
                    {
                        case CLASS_WARRIOR:
                        {
                            p_Player->AddAura(SPELL_WARRIOR);
                            break;
                        }
                        case CLASS_PALADIN:
                        {
                            p_Player->CastSpell(p_Player, SPELL_PALADIN, true);
                            break;
                        }
                        case CLASS_HUNTER:
                        {
                            p_Player->CastSpell(p_Player, SPELL_HUNTER, true);
                            break;
                        }
                        case CLASS_ROGUE:
                        {
                            WorldLocation loc;
                            double d_ang = frand(0, M_PI_F * 2);
                            double d_sin = sin(d_ang);
                            double d_cos = cos(d_ang);
                            m_creature->GetPosition(loc);
                            loc.x += 5.0f * d_cos;
                            loc.y += 5.0f * d_sin;
                            loc.z += 0.5f;
                            loc.o = d_ang - M_PI_F;
                            p_Player->TeleportTo(loc);
                            p_Player->AddAura(SPELL_ROGUE);
                            break;
                        }
                        case CLASS_PRIEST:
                        {
                            p_Player->AddAura(SPELL_PRIEST);
                            break;
                        }
                        case CLASS_SHAMAN:
                        {
                            p_Player->AddAura(SPELL_SHAMAN);
                            break;
                        }
                        case CLASS_MAGE:
                        {
                            p_Player->AddAura(SPELL_MAGE);
                            MagePlayerGUID.push_back(p_Player->GetObjectGuid());
                            break;
                        }
                        case CLASS_WARLOCK:
                        {
                            p_Player->CastSpell(p_Player, SPELL_WARLOCK, true);
                            m_creature->SummonCreature(NPC_CORRUPTED_INFERNAL, p_Player->GetPositionX(), p_Player->GetPositionY(), p_Player->GetPositionZ(), p_Player->GetOrientation(), TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 10000);
                            m_creature->SummonCreature(NPC_CORRUPTED_INFERNAL, p_Player->GetPositionX(), p_Player->GetPositionY(), p_Player->GetPositionZ(), p_Player->GetOrientation(), TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 10000);
                            break;
                        }
                        case CLASS_DRUID:
                        {
                            p_Player->AddAura(SPELL_DRUID);
                            break;
                        }
                    }
                }
            }
        }

        b_WarriorStance = b_ClassFound && ui_ClassCalled == CLASS_WARRIOR;

        return b_ClassFound;
    }

    void UpdateAI(uint32 const ui_Diff) override
    {
        if (ui_TransitionTimer && !b_TransitionDone)
        {
            if (ui_TransitionTimer <= ui_Diff)
            {
                switch (ui_TransitionStage)
                {
                    case 0:
                    {
                        SetCombatMovement(false);
                        m_creature->SetInCombatWithZone();
                        m_creature->SetFly(true);
                        m_creature->CastSpell(m_creature, SPELL_SHADOWFLAME_INITIAL, true);
                        DoScriptText(SAY_AGGRO, m_creature);
                        m_creature->GetMotionMaster()->MovePoint(1, -7449.145f, -1320.647f, 476.795f);
                        m_creature->MonsterMoveWithSpeed(-7449.145f, -1320.647f, 476.795f, -10.0f, 17, uint32(MOVE_FORCE_DESTINATION));
                        ui_TransitionTimer = 0;
                        break;
                    }
                    case 1:
                    {
                        m_creature->SetFly(false);
                        DoScriptText(SAY_SHADOWFLAME, m_creature);
                        m_creature->HandleEmote(EMOTE_ONESHOT_LAND);
                        ui_TransitionTimer = 1000;
                        break;
                    }
                    case 2:
                    {
                        m_creature->SetWalk(true);
                        m_creature->RemoveAurasDueToSpell(SPELL_HOVER);
                        if (Unit* p_Target = m_creature->GetVictim())
                        {
                            m_creature->GetMotionMaster()->MoveChase(p_Target);
                            SetCombatMovement(true);
                        }

                        b_TransitionDone = true;
                        break;
                    }
                }

                ++ui_TransitionStage;
            }
            else
                ui_TransitionTimer -= ui_Diff;
        }

        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim() || !b_TransitionDone)
            return;

        // ShadowFlame_Timer
        if (ui_ShadowFlameTimer < ui_Diff)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_SHADOWFLAME) == CAST_OK)
                ui_ShadowFlameTimer = urand(18000, 25000);
        }
        else
            ui_ShadowFlameTimer -= ui_Diff;

        // BellowingRoar_Timer
        if (ui_BellowingRoarTimer < ui_Diff)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_BELLOWING_ROAR) == CAST_OK)
                ui_BellowingRoarTimer = urand(25000, 30000);
        }
        else
            ui_BellowingRoarTimer -= ui_Diff;

        // VeilOfShadow_Timer
        if (ui_VeilOfShadowTimer < ui_Diff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_VEIL_OF_SHADOW) == CAST_OK)
                ui_VeilOfShadowTimer = urand(10000, 15000);
        }
        else
            ui_VeilOfShadowTimer -= ui_Diff;

        // Cleave_Timer
        if (ui_CleaveTimer < ui_Diff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CLEAVE) == CAST_OK)
                ui_CleaveTimer = urand(7000, 10000);
        }
        else
            ui_CleaveTimer -= ui_Diff;

        // TailLash_Timerm_uiWindfuryTimer
        if (ui_TailLashTimer < ui_Diff)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_TAIL_LASH) == CAST_OK)
                ui_TailLashTimer = urand(4000, 8000);
        }
        else
            ui_TailLashTimer -= ui_Diff;

        // ClassCall_Timer
        if (ui_ClassCallTimer < ui_Diff)
        {
            // Cast a random class call
            // It is based on what classes are currently on the hostil list but we can't do that yet so just randomly call one
            if (!v_PossibleCalls.empty())
            {
                uint8 ui_RandClass = urand(0, v_PossibleCalls.size() - 1);
                if (HandleClassCall(v_PossibleCalls[ui_RandClass].m_uiClass))
                {
                    DoScriptText(v_PossibleCalls[ui_RandClass].m_uiYell, m_creature);
                    ui_ClassCallTimer = urand(25000, 35000);
                }
                else
                    v_PossibleCalls.erase(v_PossibleCalls.begin() + ui_RandClass);
            }
        }
        else
            ui_ClassCallTimer -= ui_Diff;

        if (!MagePlayerGUID.empty())
        {
            if (ui_MageTriggerTimer < ui_Diff)
            {
                for (const auto& guid : MagePlayerGUID)
                {
                    if (Player* p_Mage = m_creature->GetMap()->GetPlayer(guid))
                    {
                        if (p_Mage->HasAura(SPELL_MAGE))
                        {
                            std::vector<ObjectGuid> v_PossibleVictim;
                            ThreatList const& threatList = m_creature->GetThreatManager().getThreatList();
                            for (const auto itr2 : threatList)
                            {
                                Unit* p_Unit = m_creature->GetMap()->GetUnit(itr2->getUnitGuid());

                                if (p_Unit && p_Unit->IsCreature() && p_Unit->ToCreature()->IsTotem())
                                    p_Unit = nullptr;

                                if (p_Unit && p_Unit->GetDistance(p_Mage) < 60.0f && !p_Unit->HasAura(SPELL_POLYMORPH))
                                    v_PossibleVictim.push_back(p_Unit->GetObjectGuid());
                            }

                            if (v_PossibleVictim.empty())
                                continue;

                            if (Unit *p_Target = m_creature->GetMap()->GetUnit(v_PossibleVictim[urand(0, v_PossibleVictim.size() - 1)]))
                            {
                                p_Mage->InterruptNonMeleeSpells(false);
                                p_Mage->CastSpell(p_Target, SPELL_POLYMORPH, false);

                                if (p_Target != p_Mage)
                                    p_Target->CastSpell(p_Target, SPELL_POLYMORPH, true);
                            }
                        }
                    }
                }

                ui_MageTriggerTimer = 5000;
            }
            else
                ui_MageTriggerTimer -= ui_Diff;
        }

        // Phase3 begins when we are below X health
        if (!b_Phase3 && m_creature->GetHealthPercent() < 20.0f)
        {
            b_Phase3 = true;

            DoScriptText(SAY_RAISE_SKELETONS, m_creature);

            std::list<GameObject*> l_GObject;
            static constexpr uint32 GO_DRAKINOID_BONES = 179804;
            GetGameObjectListWithEntryInGrid(l_GObject, m_creature, GO_DRAKINOID_BONES, 200.0f);

            for (const auto& itr : l_GObject)
            {
                m_creature->SummonCreature(NPC_BONE_CONSTRUCT, itr->GetPositionX(), itr->GetPositionY(), itr->GetPositionZ(), itr->GetOrientation(), TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 10000);
                itr->DeleteLater();
            }
        }

        if (DoMeleeAttackIfReady())
        {
            if (m_creature->HasAura(SPELL_WINDFURY_TOTEM_PASSIVE) && !m_creature->HasAura(SPELL_WINDFURY_TOTEM))
            {
                if (!urand(0, 4))
                    m_creature->CastSpell(m_creature, SPELL_WINDFURY_TOTEM, true);
            }
        }
    }
};

CreatureAI* GetAI_boss_nefarian(Creature* p_Creature)
{
    return new boss_nefarianAI(p_Creature);
}

struct npc_corrupted_totemAI : ScriptedAI
{
    explicit npc_corrupted_totemAI(Creature* p_Creature) : ScriptedAI(p_Creature)
    {
        ui_CreatureEntry = p_Creature->GetEntry();

        uint32 ui_HP = urand(200, 2000);
        p_Creature->SetMaxHealth(ui_HP);
        p_Creature->SetHealth(ui_HP);

        b_AuraAdded = false;

        npc_corrupted_totemAI::Reset();
    }

    static constexpr uint32 SPELL_ROOT_SELF = 17507;
    static constexpr uint32 SPELL_AVOIDANCE = 23198;
    static constexpr uint32 SPELL_STONESKIN = 10405;
    static constexpr uint32 SPELL_HEALING_STREAM = 10461;

    static constexpr uint32 NPC_CORRUPTED_STONESKIN_TOTEM_VI = 14663;
    static constexpr uint32 NPC_CORRUPTED_HEALING_STREAM_TOTEM_V = 14664;
    static constexpr uint32 NPC_CORRUPTED_WINDFURY_TOTEM_III = 14666;

    uint32 ui_CreatureEntry;
    uint32 ui_CheckTimer;
    bool b_AuraAdded;

    void Reset() override
    {
        m_creature->AddUnitState(UNIT_STAT_ROOT);

        if (!m_creature->HasAura(SPELL_ROOT_SELF))
            m_creature->AddAura(SPELL_ROOT_SELF);

        m_creature->AddAura(SPELL_AVOIDANCE, ADD_AURA_PERMANENT);
        ui_CheckTimer = 1000;
    }

    void Aggro(Unit* /*pWho*/) override
    {
        m_creature->SetInCombatWithZone();
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        switch (ui_CreatureEntry)
        {
            case NPC_CORRUPTED_STONESKIN_TOTEM_VI:
            {
                SetAura(false, SPELL_STONESKIN);
                break;
            }
            case NPC_CORRUPTED_HEALING_STREAM_TOTEM_V:
            {
                SetAura(false, SPELL_HEALING_STREAM);
                break;
            }
            case NPC_CORRUPTED_WINDFURY_TOTEM_III:
            {
                SetAura(false, SPELL_WINDFURY_TOTEM_PASSIVE);
                break;
            }
        }
    }

    void SetAura(bool b_on, uint32 ui_SpellId) const
    {
        static constexpr uint32 NPC_NEFARIAN = 11583;
        static constexpr uint32 NPC_BRONZE_DRAKONID = 14263;
        static constexpr uint32 NPC_BLUE_DRAKONID = 14261;
        static constexpr uint32 NPC_RED_DRAKONID = 14264;
        static constexpr uint32 NPC_GREEN_DRAKONID = 14262;
        static constexpr uint32 NPC_BLACK_DRAKONID = 14265;
        static constexpr uint32 NPC_CHROMATIC_DRAKANOID = 14302;

        std::vector<uint32> vui_MobEntries;
        std::vector<uint32>::iterator vui_EntriesIt;

        vui_MobEntries.push_back(NPC_NEFARIAN);
        vui_MobEntries.push_back(NPC_BONE_CONSTRUCT);
        vui_MobEntries.push_back(NPC_BRONZE_DRAKONID);
        vui_MobEntries.push_back(NPC_BLUE_DRAKONID);
        vui_MobEntries.push_back(NPC_RED_DRAKONID);
        vui_MobEntries.push_back(NPC_GREEN_DRAKONID);
        vui_MobEntries.push_back(NPC_BLACK_DRAKONID);
        vui_MobEntries.push_back(NPC_CHROMATIC_DRAKANOID);

        for (vui_EntriesIt = vui_MobEntries.begin(); vui_EntriesIt != vui_MobEntries.end(); ++vui_EntriesIt)
        {
            std::list<Creature*> l_tmpMobsList;
            GetCreatureListWithEntryInGrid(l_tmpMobsList, m_creature, *vui_EntriesIt, 55.0f);
            while (!l_tmpMobsList.empty())
            {
                Creature* p_CurrentCreature = l_tmpMobsList.front();
                l_tmpMobsList.pop_front();

                if (!p_CurrentCreature->IsAlive())
                    continue;

                if (b_on && m_creature->IsAlive())
                {
                    if (m_creature->IsWithinDistInMap(p_CurrentCreature, 40.0f))
                    {
                        if (!p_CurrentCreature->HasAura(ui_SpellId))
                        {
                            int i_damage = 0;

                            if (ui_SpellId == SPELL_STONESKIN)
                                i_damage = -310;

                            if (ui_SpellId == SPELL_HEALING_STREAM)
                                i_damage = 14000;

                            if (i_damage)
                                p_CurrentCreature->CastCustomSpell(p_CurrentCreature, ui_SpellId, &i_damage, nullptr, nullptr, true);
                            else
                                p_CurrentCreature->AddAura(ui_SpellId);
                        }
                    }
                    else
                    {
                        if (p_CurrentCreature->HasAura(ui_SpellId))
                            p_CurrentCreature->RemoveAurasDueToSpell(ui_SpellId);
                    }
                }
                else
                    p_CurrentCreature->RemoveAurasDueToSpell(ui_SpellId);
            }
        }
    }

    void UpdateAI(uint32 const ui_Diff) override
    {
        if (!m_creature->HasAura(SPELL_ROOT_SELF))
            m_creature->AddAura(SPELL_ROOT_SELF);

        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        static constexpr uint32 SPELL_FIRE_NOVA = 11311;
        static constexpr uint32 NPC_CORRUPTED_FIRE_NOVA_TOTEM_V = 14662;
        static constexpr uint32 NPC_CORRUPTED_STONESKIN_TOTEM_VI = 14663;
        static constexpr uint32 NPC_CORRUPTED_HEALING_STREAM_TOTEM_V = 14664;
        static constexpr uint32 NPC_CORRUPTED_WINDFURY_TOTEM_III = 14666;

        uint32 ui_addAuraEntry = 0;
        switch (ui_CreatureEntry)
        {
            case NPC_CORRUPTED_FIRE_NOVA_TOTEM_V:
            {
                if (!b_AuraAdded)
                {
                    m_creature->AddAura(SPELL_FIRE_NOVA);
                    b_AuraAdded = true;
                    m_creature->DeleteLater();
                    return;
                }

                break;
            }
            case NPC_CORRUPTED_STONESKIN_TOTEM_VI:
            {
                ui_addAuraEntry = SPELL_STONESKIN;
                break;
            }
            case NPC_CORRUPTED_HEALING_STREAM_TOTEM_V:
            {
                ui_addAuraEntry = SPELL_HEALING_STREAM;
                break;
            }
            case NPC_CORRUPTED_WINDFURY_TOTEM_III:
            {
                ui_addAuraEntry = SPELL_WINDFURY_TOTEM_PASSIVE;
                break;
            }
        }

        if (!ui_addAuraEntry)
            return;

        if (ui_CheckTimer < ui_Diff)
        {
            ui_CheckTimer = 1000; // Add immune to AoE + fear
            SetAura(true, ui_addAuraEntry);
        }
        else
            ui_CheckTimer -= ui_Diff;
    }
};

CreatureAI* GetAI_npc_corrupted_totem(Creature* p_Creature)
{
    return new npc_corrupted_totemAI(p_Creature);
}

void AddSC_boss_nefarian()
{
    Script* p_NewScript;

    p_NewScript = new Script;
    p_NewScript->Name = "boss_nefarian";
    p_NewScript->GetAI = &GetAI_boss_nefarian;
    p_NewScript->RegisterSelf();

    p_NewScript = new Script;
    p_NewScript->Name = "npc_corrupted_totem";
    p_NewScript->GetAI = &GetAI_npc_corrupted_totem;
    p_NewScript->RegisterSelf();
}
