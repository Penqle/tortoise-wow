#include "scriptPCH.h"


enum ShadowFangKeepType
{
    TYPE_FREE_NPC = 1,
    TYPE_RETHILGORE,
    TYPE_FENRUS,
    TYPE_NANDOS,
    TYPE_INTRO,
    TYPE_VOIDWALKER,

    MAX_ENCOUNTER                      
};

static constexpr uint32 NPC_VOIDWALKER{ 4627 };
static constexpr uint32 NPC_BARON_SILVERLAINE{ 3887 };
static constexpr uint32 NPC_CMD_SPRINGVALE{ 4278 };
static constexpr uint32 NPC_ASH{ 3850 };
static constexpr uint32 NPC_ADA{ 3849 };
static constexpr uint32 NPC_ARUGAL{ 10000 };         // "Arugal" says intro text
static constexpr uint32 NPC_ARCHMAGE_ARUGAL{ 4275 }; // "Archmage Arugal" does Fenrus event
static constexpr uint32 NPC_FENRUS{ 4274 };          // Used to summon Arugal in Fenrus event
static constexpr uint32 NPC_VINCENT{ 4444 };         // Vincent should be "dead" is Arugal is done the intro already
static constexpr uint32 NPC_NANDOS{ 3927 };

static constexpr uint32 GO_COURTYARD_DOOR{ 18895 }; // Door to open when talking to NPC's
static constexpr uint32 GO_SORCERER_DOOR{ 18972 };  // Door to open when Fenrus the Devourer dies
static constexpr uint32 GO_ARUGAL_DOOR{ 18971 };    // Door to open when Wolf Master Nandos dies
static constexpr uint32 GO_ARUGAL_FOCUS{ 18973 };   // This generates the lightning visual in the Fenrus event


struct instance_shadowfang_keep : public ScriptedInstance
{
    explicit instance_shadowfang_keep(Map* pMap) : ScriptedInstance(pMap)
    {
        instance_shadowfang_keep::Initialize();
    };

    bool m_bIsBaronDead{};
    bool m_bIsCmdDead{};

    uint32 m_uiVoidWalkerKillCount{};
    uint32 m_uiSpawnPatrolOnBaronDeath{};
    uint32 m_uiSpawnPatrolOnCmdDeath{};

    uint32 m_auiEncounter[MAX_ENCOUNTER];

    ObjectGuid m_uiAshGUID{};
    ObjectGuid m_uiAdaGUID{};

    ObjectGuid m_uiDoorCourtyardGUID{};
    ObjectGuid m_uiDoorSorcererGUID{};
    ObjectGuid m_uiDoorArugalGUID{};
    ObjectGuid m_uiBaronSilverlaineGUID{};
    ObjectGuid m_uiCmdSpringvaleGUID{};

    ObjectGuid m_uiFenrusGUID{};
    ObjectGuid m_uiVincentGUID{};
    ObjectGuid m_uiNandosGUID{};

    std::string strInstData;

    void Initialize() override
    {
        memset(&m_auiEncounter, 0, sizeof(m_auiEncounter));

        m_bIsBaronDead = false;
        m_bIsCmdDead = false;

        m_uiVoidWalkerKillCount = 0;
        m_uiSpawnPatrolOnBaronDeath = 6000;
        m_uiSpawnPatrolOnCmdDeath = 6000;

        m_uiAshGUID = 0;
        m_uiAdaGUID = 0;

        m_uiDoorCourtyardGUID = 0;
        m_uiDoorSorcererGUID = 0;
        m_uiDoorArugalGUID = 0;
        m_uiBaronSilverlaineGUID = 0;
        m_uiCmdSpringvaleGUID = 0;

        m_uiFenrusGUID = 0;
        m_uiVincentGUID = 0;
        m_uiNandosGUID = 0;
    }

    void OnCreatureCreate(Creature* pCreature) override
    {
        switch (pCreature->GetEntry())
        {
            case NPC_ASH:
            {
                m_uiAshGUID = pCreature->GetGUID();
                break;
            }
            case NPC_ADA:
            {
                m_uiAdaGUID = pCreature->GetGUID();
                break;
            }
            case NPC_FENRUS:
            {
                m_uiFenrusGUID = pCreature->GetGUID();
                break;
            }
            case NPC_ARUGAL:
            {
                // If Arugal has done the intro, make him invisible
                if (m_auiEncounter[TYPE_INTRO] == DONE)
                {
                    pCreature->SetVisibility(VISIBILITY_OFF);
                }

                break;
            }
            case NPC_VINCENT:
            {
                m_uiVincentGUID = pCreature->GetGUID();

                // If Arugal has done the intro, make Vincent dead!
                if (m_auiEncounter[TYPE_INTRO] == DONE)
                {
                    pCreature->SetStandState(UNIT_STAND_STATE_DEAD);
                }

                break;
            }
            case NPC_BARON_SILVERLAINE:
            {
                m_uiBaronSilverlaineGUID = pCreature->GetGUID();
                break;
            }
            case NPC_NANDOS:
            {
                m_uiNandosGUID = pCreature->GetGUID();
                break;
            }
            case NPC_CMD_SPRINGVALE:
            {
                m_uiCmdSpringvaleGUID = pCreature->GetGUID();
                break;
            }
        }

        // Initialize NPC_BARON_SILVERLAINE boss Patrol
        if (pCreature->GetRespawnDelay() == 7201)
        {
            pCreature->SetVisibility(VISIBILITY_OFF);
            pCreature->SetFactionTemplateId(35);
        }

        // Initialize 4278 Patrol
        if (pCreature->GetRespawnDelay() == 7202)
        {
            pCreature->SetVisibility(VISIBILITY_OFF);
            pCreature->SetFactionTemplateId(35);
        }
    }

    void OnCreatureDeath(Creature* pCreature) override
    {
        switch (pCreature->GetEntry())
        {
            case NPC_BARON_SILVERLAINE:
            {
                m_bIsBaronDead = true;
                break;
            }
            case NPC_CMD_SPRINGVALE:
            {
                m_bIsCmdDead = true;
                break;
            }
            case NPC_VOIDWALKER:
            {
                ++m_uiVoidWalkerKillCount;

                if (m_uiVoidWalkerKillCount == 4)
                {
                    DoUseDoorOrButton(m_uiDoorSorcererGUID);
                    m_uiVoidWalkerKillCount = 0;
                }
            }
        }
    }

    void OnObjectCreate(GameObject* pGo) override
    {
        switch (pGo->GetEntry())
        {
            case GO_COURTYARD_DOOR:
            {
                m_uiDoorCourtyardGUID = pGo->GetGUID();
                if (m_auiEncounter[TYPE_FREE_NPC] == DONE)
                {
                    pGo->SetGoState(GO_STATE_ACTIVE);
                }

                break;

                // For this we ignore voidwalkers, because if the server restarts
                // They won't be there, but Fenrus is dead so the door can't be opened!
            }
            case GO_SORCERER_DOOR:
            {
                m_uiDoorSorcererGUID = pGo->GetGUID();

                if (m_auiEncounter[TYPE_FENRUS] == DONE)
                {
                    pGo->SetGoState(GO_STATE_ACTIVE);
                }

                break;
            }
            case GO_ARUGAL_DOOR:
            {
                m_uiDoorArugalGUID = pGo->GetGUID();

                if (m_auiEncounter[TYPE_NANDOS] == DONE)
                {
                    pGo->SetGoState(GO_STATE_ACTIVE);
                }

                break;
            }
        }
    }

    void Update(const uint32 uiDiff) override
    {
        if (m_bIsBaronDead)
        {
            std::list<Creature*> m_EscortList;

            if (Creature* pBaron{ instance->GetCreature(m_uiBaronSilverlaineGUID) })
            {
                if (m_uiSpawnPatrolOnBaronDeath < uiDiff)
                {
                    GetCreatureListWithEntryInGrid(m_EscortList, pBaron, 3854, 400.f);

                    for (const auto& it : m_EscortList)
                    {
                        if (it->GetRespawnDelay() == 7201)
                        {
                            it->SetVisibility(VISIBILITY_ON);
                            it->SetFactionTemplateId(17);
                        }
                    }

                    m_EscortList.clear();
                }
                else
                {
                    m_uiSpawnPatrolOnBaronDeath -= uiDiff;
                }
            }
        }

        if (m_bIsCmdDead)
        {
            std::list<Creature*> m_EscortList;

            if (Creature* pCmd{ instance->GetCreature(m_uiCmdSpringvaleGUID) })
            {

                if (m_uiSpawnPatrolOnCmdDeath < uiDiff)
                {
                    GetCreatureListWithEntryInGrid(m_EscortList, pCmd, 3854, 400.f);

                    for (const auto& it : m_EscortList)
                    {
                        if (it->GetRespawnDelay() == 7202)
                        {
                            it->SetVisibility(VISIBILITY_ON);
                            it->SetFactionTemplateId(17);
                        }
                    }

                    m_EscortList.clear();
                }
                else
                {
                    m_uiSpawnPatrolOnCmdDeath -= uiDiff;
                }
            }
        }
    }

    void SetData(const uint32 uiType, const uint32 uiData) override
    {
        switch (uiType)
        {
            case TYPE_FREE_NPC:
            {
                if (uiData == DONE)
                {
                    DoUseDoorOrButton(m_uiDoorCourtyardGUID);
                }

                m_auiEncounter[TYPE_FREE_NPC] = uiData;

                break;
            }
            case TYPE_RETHILGORE:
            {
                m_auiEncounter[TYPE_RETHILGORE] = uiData;
                break;
            }
            case TYPE_FENRUS:
            {
                m_auiEncounter[TYPE_FENRUS] = uiData;
                break;
            }
            case TYPE_NANDOS:
            {
                if (uiData == DONE)
                {
                    DoUseDoorOrButton(m_uiDoorArugalGUID);
                }

                m_auiEncounter[TYPE_NANDOS] = uiData;

                break;
            }
            case TYPE_INTRO:
            {
                m_auiEncounter[TYPE_INTRO] = uiData;
                break;
            }
        }

        if (uiData == DONE)
        {
            OUT_SAVE_INST_DATA;

            std::ostringstream saveStream;
            saveStream
                << m_auiEncounter[TYPE_FREE_NPC]   << " "
                << m_auiEncounter[TYPE_RETHILGORE] << " "
                << m_auiEncounter[TYPE_FENRUS]     << " "
                << m_auiEncounter[TYPE_NANDOS]     << " "
                << m_auiEncounter[TYPE_INTRO]      << " "
                << m_auiEncounter[TYPE_VOIDWALKER];

            strInstData = saveStream.str();

            SaveToDB();
            OUT_SAVE_INST_DATA_COMPLETE;
        }
    }

    uint32 GetData(const uint32 uiType) override
    {
        switch (uiType)
        {
            case TYPE_FREE_NPC:
                return m_auiEncounter[TYPE_FREE_NPC];
            case TYPE_RETHILGORE:
                return m_auiEncounter[TYPE_RETHILGORE];
            case TYPE_FENRUS:
                return m_auiEncounter[TYPE_FENRUS];
            case TYPE_NANDOS:
                return m_auiEncounter[TYPE_NANDOS];
            case TYPE_INTRO:
                return m_auiEncounter[TYPE_INTRO];
            default:
                break;
        }

        return 0;
    }

    const char* Save() override
    {
        return strInstData.c_str();
    }

    void Load(const char* chrIn) override
    {
        if (!chrIn)
        {
            OUT_LOAD_INST_DATA_FAIL;
            return;
        }

        OUT_LOAD_INST_DATA(chrIn);

        std::istringstream loadStream(chrIn);
        loadStream >>
            m_auiEncounter[TYPE_FREE_NPC]   >>
            m_auiEncounter[TYPE_RETHILGORE] >>
            m_auiEncounter[TYPE_FENRUS]     >>
            m_auiEncounter[TYPE_NANDOS]     >>
            m_auiEncounter[TYPE_INTRO]      >>
            m_auiEncounter[TYPE_VOIDWALKER];

        for (uint32 i : m_auiEncounter)
        {
            if (i == IN_PROGRESS)
            {
                i = NOT_STARTED;
            }
        }

        OUT_LOAD_INST_DATA_COMPLETE;
    }
};

InstanceData* GetInstanceData_instance_shadowfang_keep(Map* pMap)
{
    return new instance_shadowfang_keep(pMap);
}

void AddSC_instance_shadowfang_keep()
{
    Script* newscript{};

    newscript = new Script;
    newscript->Name = "instance_shadowfang_keep";
    newscript->GetInstanceData = &GetInstanceData_instance_shadowfang_keep;
    newscript->RegisterSelf();
}
