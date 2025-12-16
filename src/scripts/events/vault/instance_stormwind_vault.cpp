#include "scriptPCH.h"
#include "stormwind_vault.h"

enum Entries
{
    NPC_VAULT_GUARD         = 80829,

    SPELL_POSSESS_VISUAL    = 23014,
    SPELL_DARK_CHANNELING   = 21157,
};

struct instance_stormwind_vault : ScriptedInstance
{
    explicit instance_stormwind_vault(Map* pMap) :
        ScriptedInstance(pMap)
    {
        instance_stormwind_vault::Initialize();
    }

    uint32 m_auiEncounter[INSTANCE_SV_MAX_ENCOUNTER];

    uint64 m_uiChanneledGuardGUID;
    uint64 m_uiAszoshGUID;

    EventMap m_events;

    void Initialize() override
    {
        memset(&m_auiEncounter, 0, sizeof(m_auiEncounter));

        m_uiChanneledGuardGUID = 0;
        m_uiAszoshGUID = 0;

        m_vaultGuards.clear();
        m_events.Reset();
    }

    void OnCreatureCreate(Creature* pCreature) override
    {
        switch (pCreature->GetEntry())
        {
            case NPC_VAULT_GUARD-1:
                m_vaultGuards.push_back(pCreature->GetObjectGuid());
                break;
            case NPC_VAULT_GUARD:
                pCreature->CastSpell(pCreature, SPELL_DARK_CHANNELING, true);
                m_uiChanneledGuardGUID = pCreature->GetObjectGuid();
                break;
            case 80853:
                m_uiAszoshGUID = pCreature->GetGUID();
                break;
        }
    }

    void OnObjectCreate(GameObject* pGo) override
    {
    }

    uint64 GetData64(uint32 data) override
    {
        switch (data)
        {
            case DATA_ASZOSH:
                return m_uiAszoshGUID;
        }

        return 0;
    }

    void SetData(uint32 uiType, uint32 uiData) override
    {
    }

    uint32 GetData(uint32 uiData) override
    {
        return 0;
    }

    void Update(uint32 diff) override
    {
    }
};

InstanceData* GetInstanceData_instance_stormwind_vault(Map* pMap)
{
    return new instance_stormwind_vault(pMap);
}

void AddSC_instance_stormwind_vault()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "instance_stormwind_vault";
    newscript->GetInstanceData = &GetInstanceData_instance_stormwind_vault;
    newscript->RegisterSelf();
}

