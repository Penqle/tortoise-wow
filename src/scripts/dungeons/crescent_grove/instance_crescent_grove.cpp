#include "scriptPCH.h"

template <typename Functor>
void DoAfterTime(Player* player, uint32 p_time, Functor&& function)
{
    player->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), player->m_Events.CalculateTime(p_time));
}

enum boss_entries
{
    grovetender_engryss = 92107,
    keeper_ranatos = 92109,
    fenektis_the_deceiver = 92111,
    master_raxxieth = 92110
};

struct instance_crescent_grove : public ScriptedInstance
{
    explicit instance_crescent_grove(Map* p_Map) : ScriptedInstance(p_Map)
    {
        Initialize();
    };

    void OnCreatureEnterCombat(Creature* pCreature) override
    {
        if (pCreature->IsAlive() && !pCreature->IsInCombat())
            pCreature->SetInCombatWithZone();

        switch (pCreature->GetEntry())
        {
        case grovetender_engryss:
            pCreature->PlayDirectSound(30268);
            pCreature->MonsterYell("I am the leader of the tribes, me! The Groveweald shall destroy everyone that gets in the way!");
            break;
        case keeper_ranatos:
            pCreature->PlayDirectSound(30256);
            pCreature->MonsterYell("What? Who..Who are you? They wouldn't send you! Ancients, to my side!");
            break;
        case fenektis_the_deceiver:
            pCreature->PlayDirectSound(30252);
            pCreature->MonsterYell("We will serve at the Master's will!");
            break;
        case master_raxxieth:
            pCreature->PlayDirectSound(30271);
            pCreature->MonsterYell("Do you think you can withstand the might of the Burning Legion?");
            break;
        }
    }

    void OnCreatureDeath(Creature* pCreature) override
    {
        switch (pCreature->GetEntry())
        {
        case grovetender_engryss:
            pCreature->PlayDirectSound(30270);
            pCreature->MonsterYell("I.. I can see clearly now.. The madness... It's... Over...");
            break;
        case keeper_ranatos:
            pCreature->PlayDirectSound(30258);
            pCreature->MonsterYell("We must.. Stop.. The shadow...");
            break;
        case fenektis_the_deceiver:
            pCreature->PlayDirectSound(30253);
            pCreature->MonsterYell("You think.. This.... Is the end?");
            break;
        case master_raxxieth:
            pCreature->PlayDirectSound(30273);
            pCreature->MonsterYell("My death.. Means little in the grand scheme, mortals... Drink down your victory... It will mean nothing... In the end...");
            break;
        }
    }
};

InstanceData* GetInstanceData_instance_crescent_grove(Map* p_Map) { return new instance_crescent_grove(p_Map); }

void AddSC_instance_crescent_grove()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "instance_crescent_grove";
    newscript->GetInstanceData = &GetInstanceData_instance_crescent_grove;
    newscript->RegisterSelf();
}