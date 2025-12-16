/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "scriptPCH.h"
#include "scarlet_citadel.h"


instance_scarlet_citadel::instance_scarlet_citadel(Map* pMap) : ScriptedInstance(pMap)
{
    instance_scarlet_citadel::Initialize();
}

void instance_scarlet_citadel::Initialize()
{
    memset(&m_auiEncounter, 0, sizeof(m_auiEncounter));
    memset(&m_auiData, 0, sizeof(m_auiData));
}

bool instance_scarlet_citadel::IsEncounterInProgress() const
{
    for (uint32 i : m_auiEncounter)
    {
        if (i == IN_PROGRESS)
            return true;
    }

    return false;
}

void instance_scarlet_citadel::OnObjectCreate(GameObject* pGo)
{
    switch (pGo->GetEntry())
    {
        case ScarletCitadelUnit::GO_DOOR_VENDOR_LEFT:
        {
            m_auiData[ScarletCitadelData::DATA_DOOR_VENDOR_LEFT] = pGo->GetObjectGuid();

            if (m_auiEncounter[ScarletCitadelEncounter::TYPE_DAELUS] == DONE)
                pGo->SetGoState(GO_STATE_ACTIVE); // Open it

            break;
        }
        case ScarletCitadelUnit::GO_DOOR_VENDOR_RIGHT:
        {
            m_auiData[ScarletCitadelData::DATA_DOOR_VENDOR_RIGHT] = pGo->GetObjectGuid();

            if (m_auiEncounter[ScarletCitadelEncounter::TYPE_DAELUS] == DONE)
                pGo->SetGoState(GO_STATE_ACTIVE); // Open it

            break;
        }
        case ScarletCitadelUnit::GO_DOOR_DAELUS:
        {
            m_auiData[ScarletCitadelData::DATA_DOOR_DAELUS] = pGo->GetObjectGuid();

            if (m_auiEncounter[ScarletCitadelEncounter::TYPE_DAELUS] == DONE)
                pGo->SetGoState(GO_STATE_ACTIVE); // Open it

            break;
        }
        case ScarletCitadelUnit::GO_DOOR_ARDAEUS_ENTER:
        {
            m_auiData[ScarletCitadelData::DATA_DOOR_ARDAEUS_ENTER] = pGo->GetObjectGuid();

            if ((m_auiEncounter[ScarletCitadelEncounter::TYPE_ARDAEUS] == DONE) || // Open again when Boss Ardaeus is dead
                (m_auiEncounter[ScarletCitadelEncounter::TYPE_ARDAEUS] == FAIL))   // Open again when raid wiped
                pGo->SetGoState(GO_STATE_ACTIVE); // Open it

            break;
        }
        case ScarletCitadelUnit::GO_DOOR_ARDAEUS_EXIT:
        {
            m_auiData[ScarletCitadelData::DATA_DOOR_ARDAEUS_EXIT] = pGo->GetObjectGuid();

            if (m_auiEncounter[ScarletCitadelEncounter::TYPE_ARDAEUS] == DONE)
                pGo->SetGoState(GO_STATE_ACTIVE); // Open it

            break;
        }
        case ScarletCitadelUnit::GO_DOOR_RIGHT_WING:
        {
            m_auiData[ScarletCitadelData::DATA_DOOR_RIGHT_WING] = pGo->GetObjectGuid();

            if (m_auiEncounter[ScarletCitadelEncounter::TYPE_MARIELLA] == DONE)
                pGo->DeleteLater(); // Remove it (Looks better)

            break;
        }
        case ScarletCitadelUnit::GO_DOOR_MARIELLA:
        {
            m_auiData[ScarletCitadelData::DATA_DOOR_MARIELLA] = pGo->GetObjectGuid();

            if ((m_auiEncounter[ScarletCitadelEncounter::TYPE_MARIELLA] == DONE) || // Open again when Boss Mariella is dead
                (m_auiEncounter[ScarletCitadelEncounter::TYPE_MARIELLA] == FAIL))   // Open again when raid wiped
                pGo->SetGoState(GO_STATE_ACTIVE); // Open it

            break;
        }
        case ScarletCitadelUnit::GO_DOOR_ABBENDIS:
        {
            m_auiData[ScarletCitadelData::DATA_DOOR_ABBENDIS] = pGo->GetObjectGuid();

            if ((m_auiEncounter[ScarletCitadelEncounter::TYPE_ABBENDIS] == DONE) || // Open again when Boss Abbendis is dead
                (m_auiEncounter[ScarletCitadelEncounter::TYPE_ABBENDIS] == FAIL))   // Open again when raid wiped
                pGo->SetGoState(GO_STATE_ACTIVE); // Open it

            break;
        }
    }
}

void instance_scarlet_citadel::OnCreatureCreate(Creature* pCreature)
{
    switch (pCreature->GetEntry())
    {
        // Bosses
        case ScarletCitadelUnit::NPC_DAELUS:
        {
            m_auiData[ScarletCitadelData::DATA_DAELUS_GUID] = pCreature->GetObjectGuid();
            m_mNpcEntryGuidStore[pCreature->GetEntry()] = pCreature->GetObjectGuid();
            break;
        }
        case ScarletCitadelUnit::NPC_ARDAEUS:
        {
            m_auiData[ScarletCitadelData::DATA_ARDAEUS_GUID] = pCreature->GetObjectGuid();
            m_mNpcEntryGuidStore[pCreature->GetEntry()] = pCreature->GetObjectGuid();
            break;
        }
        case ScarletCitadelUnit::NPC_MARIELLA:
        {
            m_auiData[ScarletCitadelData::DATA_MARIELLA_GUID] = pCreature->GetObjectGuid();
            m_mNpcEntryGuidStore[pCreature->GetEntry()] = pCreature->GetObjectGuid();
            break;
        }
        case ScarletCitadelUnit::NPC_ABBENDIS:
        {
            m_auiData[ScarletCitadelData::DATA_ABBENDIS_GUID] = pCreature->GetObjectGuid();
            m_mNpcEntryGuidStore[pCreature->GetEntry()] = pCreature->GetObjectGuid();
            break;
        }
        case ScarletCitadelUnit::NPC_ERIC_VESPER:
        {
            m_auiData[ScarletCitadelData::DATA_ERIC_VESPER_GUID] = pCreature->GetObjectGuid();
            m_mNpcEntryGuidStore[pCreature->GetEntry()] = pCreature->GetObjectGuid();
            break;
        }
        // RP Event
        case ScarletCitadelUnit::NPC_SCARLET_CHAPLAIN:
        {
            m_auiData[ScarletCitadelData::DATA_SCARLET_CHAPLAIN_GUID] = pCreature->GetObjectGuid();
            m_mNpcEntryGuidStore[pCreature->GetEntry()] = pCreature->GetObjectGuid();
            break;
        }
        case ScarletCitadelUnit::NPC_SCARLET_SISTER:
        {
            m_auiData[ScarletCitadelData::DATA_SCARLET_SISTER_GUID] = pCreature->GetObjectGuid();
            m_mNpcEntryGuidStore[pCreature->GetEntry()] = pCreature->GetObjectGuid();
            break;
        }
    }   
}

void instance_scarlet_citadel::SetData(const uint32 uiType, const uint32 uiData)
{
    switch (uiType)
    {
        case ScarletCitadelEncounter::TYPE_DAELUS:
        {
            m_auiEncounter[ScarletCitadelEncounter::TYPE_DAELUS] = uiData;

            if (uiData == DONE)
            {
                if (GameObject* pGo{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_VENDOR_LEFT]) })
                {
                    if (pGo->GetGoState() != GO_STATE_ACTIVE)
                    {
                        DoUseDoorOrButton(m_auiData[ScarletCitadelData::DATA_DOOR_VENDOR_LEFT]); // Open it
                    }
                }

                if (GameObject* pGo{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_DAELUS]) })
                {
                    if (pGo->GetGoState() != GO_STATE_ACTIVE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE); // Open it
                    }
                }
            }

            break;
        }
        case ScarletCitadelEncounter::TYPE_ARDAEUS:
        {
            m_auiEncounter[ScarletCitadelEncounter::TYPE_ARDAEUS] = uiData;
            if (uiData == IN_PROGRESS)
            {
                if (GameObject* pGo{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_ARDAEUS_ENTER]) })
                {
                    if (pGo->GetGoState() == GO_STATE_ACTIVE)
                    {
                        DoUseDoorOrButton(m_auiData[ScarletCitadelData::DATA_DOOR_ARDAEUS_ENTER]); // Close it
                    }
                }
            }
            else if (uiData == DONE)
            {
                if (GameObject* pGo{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_ARDAEUS_EXIT]) })
                {
                    if (pGo->GetGoState() != GO_STATE_ACTIVE)
                    {
                        pGo->SetGoState(GO_STATE_ACTIVE); // Open it
                    }
                }

                if (GameObject* pGo{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_ARDAEUS_ENTER]) })
                {
                    if (pGo->GetGoState() != GO_STATE_ACTIVE)
                    {
                        DoUseDoorOrButton(m_auiData[ScarletCitadelData::DATA_DOOR_ARDAEUS_ENTER]); // Open it
                    }
                }
            }
            else if (uiData == FAIL)
            {
                if (GameObject* pGo{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_ARDAEUS_ENTER]) })
                {
                    if (pGo->GetGoState() != GO_STATE_ACTIVE)
                    {
                        DoUseDoorOrButton(m_auiData[ScarletCitadelData::DATA_DOOR_ARDAEUS_ENTER]); // Open it
                    }
                }
            }

            break;
        }
        case ScarletCitadelEncounter::TYPE_MARIELLA:
        {
            m_auiEncounter[ScarletCitadelEncounter::TYPE_MARIELLA] = uiData;
            if (uiData == IN_PROGRESS)
            {
                if (GameObject* pGo{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_MARIELLA]) })
                {
                    if (pGo->GetGoState() == GO_STATE_ACTIVE)
                    {
                        DoUseDoorOrButton(m_auiData[ScarletCitadelData::DATA_DOOR_MARIELLA]); // Close it
                    }
                }
            }
            else if (uiData == DONE)
            {
                if (GameObject* pGo{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_MARIELLA]) })
                {
                    if (pGo->GetGoState() != GO_STATE_ACTIVE)
                    {
                        DoUseDoorOrButton(m_auiData[ScarletCitadelData::DATA_DOOR_MARIELLA]); // Open it
                    }
                }

                if (GameObject* pGo{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_RIGHT_WING]) })
                {
                    if (pGo->GetGoState() != GO_STATE_ACTIVE)
                    {
                        pGo->DeleteLater(); // Remove it (Looks better)
                    }
                }
            }
            else if (uiData == FAIL)
            {
                if (GameObject* pGo{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_MARIELLA]) })
                {
                    if (pGo->GetGoState() != GO_STATE_ACTIVE)
                    {
                        DoUseDoorOrButton(m_auiData[ScarletCitadelData::DATA_DOOR_MARIELLA]); // Open it
                    }
                }
            }

            break;
        }
        case ScarletCitadelEncounter::TYPE_ABBENDIS:
        {
            m_auiEncounter[ScarletCitadelEncounter::TYPE_ABBENDIS] = uiData;
            if (uiData == IN_PROGRESS)
            {
                if (GameObject* pGo{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_ABBENDIS]) })
                {
                    if (pGo->GetGoState() == GO_STATE_ACTIVE)
                    {
                        DoUseDoorOrButton(m_auiData[ScarletCitadelData::DATA_DOOR_ABBENDIS]); // Close it
                    }
                }
            }
            else if (uiData == DONE)
            {
                if (GameObject* pGo{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_ABBENDIS]) })
                {
                    if (pGo->GetGoState() != GO_STATE_ACTIVE)
                    {
                        pGo->DeleteLater(); // Remove it
                    }
                }

                if (GameObject* pGo{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_VENDOR_LEFT]) }) // Open second vendor door after killing last boss
                {
                    if (pGo->GetGoState() != GO_STATE_ACTIVE)
                    {
                        DoUseDoorOrButton(m_auiData[ScarletCitadelData::DATA_DOOR_VENDOR_LEFT]); // Open it
                    }
                }
            }
            else if (uiData == FAIL)
            {
                if (GameObject* pGo{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_ABBENDIS]) })
                {
                    if (pGo->GetGoState() != GO_STATE_ACTIVE)
                    {
                        DoUseDoorOrButton(m_auiData[ScarletCitadelData::DATA_DOOR_ABBENDIS]); // Open it
                    }
                }
            }

            break;
        }
    }

    if (uiData == DONE)
    {
        OUT_SAVE_INST_DATA;

        std::ostringstream saveStream;
        saveStream
            << m_auiEncounter[0] << " " // TYPE_DAELUS
            << m_auiEncounter[1] << " " // TYPE_ARDAEUS
            << m_auiEncounter[2] << " " // TYPE_MARIELLA
            << m_auiEncounter[3];       // TYPE_ABBENDIS

        str_InstData = saveStream.str();

        SaveToDB();

        OUT_SAVE_INST_DATA_COMPLETE;
    }
}

uint32 instance_scarlet_citadel::GetData(const uint32 uiType)
{
    if (uiType < ScarletCitadelEncounter::MAX_ENCOUNTER)
        return (m_auiEncounter[uiType]);

    return 0;
}

void instance_scarlet_citadel::Load(char const* chrIn)
{
    if (!chrIn)
    {
        OUT_LOAD_INST_DATA_FAIL;
        return;
    }

    OUT_LOAD_INST_DATA(chrIn);

    std::istringstream loadStream(chrIn);

    loadStream >>
        m_auiEncounter[0] >> // TYPE_DAELUS
        m_auiEncounter[1] >> // TYPE_ARDAEUS
        m_auiEncounter[2] >> // TYPE_MARIELLA
        m_auiEncounter[3];   // TYPE_ABBENDIS

    for (uint8 i{ 0 }; i < MAX_ENCOUNTER; ++i)
    {
        if (m_auiEncounter[i] == IN_PROGRESS)
        {
            m_auiEncounter[i] = NOT_STARTED;
        }
    }

    OUT_LOAD_INST_DATA_COMPLETE;
}

InstanceData* GetInstanceData_instance_scarlet_citadel(Map* pMap)
{
    return new instance_scarlet_citadel(pMap);
}

void AddSC_instance_scarlet_citadel()
{
    Script* pNewscript;

    pNewscript = new Script;
    pNewscript->Name = "instance_scarlet_citadel";
    pNewscript->GetInstanceData = &GetInstanceData_instance_scarlet_citadel;
    pNewscript->RegisterSelf();
}
