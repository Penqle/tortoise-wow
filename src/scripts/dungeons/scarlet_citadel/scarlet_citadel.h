/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#pragma once


enum ScarletCitadelUnit : uint32
{
    // Gameobjects
    GO_DOOR_VENDOR_LEFT   = 5000001,
    GO_DOOR_VENDOR_RIGHT  = 5000002,
    GO_DOOR_DAELUS        = 5000003,
    GO_DOOR_ARDAEUS_ENTER = 5000006,
    GO_DOOR_ARDAEUS_EXIT  = 5000007,
    GO_DOOR_MARIELLA      = 5000008,
    GO_DOOR_RIGHT_WING    = 5000009,
    GO_DOOR_ABBENDIS      = 5000010,

    // Bosses
    NPC_DAELUS   = 2000000,
    NPC_ARDAEUS  = 2000001,
    NPC_MARIELLA = 2000002,
    NPC_ABBENDIS = 2000003,

    // Caster's Nightmare Trash (First Wing)
    NPC_ERIC_VESPER = 2000004,
    NPC_CITADEL_INQUISITOR = 2000033,
    NPC_CITADEL_VALIANT = 2000034,
    NPC_CITADEL_FOOTMAN = 2000035,

    // RP Event
    NPC_SCARLET_CHAPLAIN = 2000005,
    NPC_SCARLET_SISTER = 2000006
};

enum ScarletCitadelEncounter : uint32
{
    TYPE_DAELUS,
    TYPE_ARDAEUS,
    TYPE_MARIELLA,
    TYPE_ABBENDIS,

    TYPE_ERIC_VESPER,

    MAX_ENCOUNTER
};

enum ScarletCitadelData : uint32
{
    DATA_DOOR_VENDOR_LEFT,
    DATA_DOOR_VENDOR_RIGHT,
    DATA_DOOR_DAELUS,
    DATA_DOOR_ARDAEUS_ENTER,
    DATA_DOOR_ARDAEUS_EXIT,
    DATA_DOOR_RIGHT_WING,
    DATA_DOOR_MARIELLA,
    DATA_DOOR_ABBENDIS,

    DATA_DAELUS_GUID,
    DATA_ARDAEUS_GUID,
    DATA_MARIELLA_GUID,
    DATA_ABBENDIS_GUID,
    DATA_ERIC_VESPER_GUID,

    DATA_SCARLET_CHAPLAIN_GUID,
    DATA_SCARLET_SISTER_GUID,

    MAX_DATA
};

struct LocationXYZO
{
    float m_fX{}, m_fY{}, m_fZ{}, m_fO{};
};

template <typename Functor>
void DoAfterTime(Creature* pCreature, const uint32& uiTime, Functor&& function)
{
    pCreature->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), pCreature->m_Events.CalculateTime(uiTime));
}

template <typename Functor>
void DoAfterTime(Player* pPlayer, const uint32& uiTime, Functor&& function)
{
    pPlayer->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), pPlayer->m_Events.CalculateTime(uiTime));
}

class instance_scarlet_citadel : public ScriptedInstance
{
public:
    explicit instance_scarlet_citadel(Map* pMap);
    ~instance_scarlet_citadel() override {}

    void Initialize() override;

    bool IsEncounterInProgress() const override;

    void OnObjectCreate(GameObject* pGo) override;
    void OnCreatureCreate(Creature* pCreature) override;

    void SetData(const uint32 uiType, const uint32 uiData) override;
    uint32 GetData(const uint32 uiType) override;

    char const* Save() override { return str_InstData.c_str(); }
    void Load(char const* chrIn) override;

private:
    uint32 m_auiEncounter[ScarletCitadelEncounter::MAX_ENCOUNTER]{};
    uint64 m_auiData[ScarletCitadelData::MAX_DATA]{};
    std::string str_InstData{};
};
