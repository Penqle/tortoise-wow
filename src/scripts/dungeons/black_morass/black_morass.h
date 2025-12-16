/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#pragma once

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

class instance_black_morass : public ScriptedInstance
{
public:
    explicit instance_black_morass(Map* pMap);
    ~instance_black_morass() override {}

    void Initialize() override;

    void OnPlayerEnter(Player* pPlayer) override;

    void Update(uint32 uiDiff) override;

private:
    ObjectGuid unknownEntity{};
};
