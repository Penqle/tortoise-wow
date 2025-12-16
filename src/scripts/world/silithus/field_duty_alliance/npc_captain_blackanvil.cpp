#include "npc_captain_blackanvil.h"
#include "defines.h"

npc_captain_blackanvil* npc_captain_blackanvil::GetBlackanvilAI(Creature* creature)
{
    if (!creature)
    {
        return nullptr;
    }

    if (creature->GetEntry() != Silithus::Creatures::ENTRY_CAPTAIN_BLACKANVIL)
    {
        return nullptr;
    }

    return dynamic_cast<npc_captain_blackanvil*>(creature->AI());
}

npc_captain_blackanvil::npc_captain_blackanvil(Creature* pCreature) : ScriptedAI(pCreature)
{
    npc_captain_blackanvil::Reset();
}

void npc_captain_blackanvil::Reset()
{
}

void npc_captain_blackanvil::UpdateAI(const uint32 delta)
{
    if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
    {
        return;
    }

    m_gcdTimer.Update(delta);
    m_mortalStrikeTimer.Update(delta);
    m_thunderClapTimer.Update(delta);

    if (m_creature->IsNonMeleeSpellCasted(false))
    {
        return;
    }

    if (m_mortalStrikeTimer.IsReady() && m_gcdTimer.IsReady())
    {
        const auto result = m_creature->CastSpell(m_creature->GetVictim(), m_mortalStrikeTimer.SpellID(), false);
        if (result == SPELL_CAST_OK)
        {
            m_creature->ResetAttackTimer();
            m_mortalStrikeTimer.Reset();
            m_gcdTimer.Reset();
        }
    }

    if (m_thunderClapTimer.IsReady() && m_gcdTimer.IsReady())
    {
        const auto result = m_creature->CastSpell(m_creature->GetVictim(), m_thunderClapTimer.SpellID(), false);
        if (result == SPELL_CAST_OK)
        {
            m_creature->ResetAttackTimer();
            m_thunderClapTimer.Reset();
            m_gcdTimer.Reset();
        }
    }

    DoMeleeAttackIfReady();
}

CreatureAI* npc_captain_blackanvil::GetAI(Creature* pCreature)
{
    return new npc_captain_blackanvil(pCreature);
}

bool npc_captain_blackanvil::GossipHello(Player* player, Creature* creature)
{
    const auto blackanvil = GetBlackanvilAI(creature);
    if (!blackanvil)
    {
        return false;
    }

    if (creature->IsQuestGiver())
    {
        player->PrepareQuestMenu(creature->GetGUID());
        player->PlayerTalkClass->SendGossipMenu(GOSSIP_TEXT_NOT_IMPRESSED_EVENT_COMPLETE, creature->GetGUID());
        return true;
    }
    player->PlayerTalkClass->SendGossipMenu(Player::GetGossipTextId(creature), creature->GetGUID());
    return true;
}

bool npc_captain_blackanvil::GossipSelect(Player* player, Creature* creature, uint32_t sender, uint32_t action)
{
    return false;
}

void npc_captain_blackanvil::RegisterScript()
{
    const auto script = new Script();
    script->Name = "npc_captain_blackanvil";
    script->GetAI = &npc_captain_blackanvil::GetAI;
    script->pGossipHello = &npc_captain_blackanvil::GossipHello;
    script->pGossipSelect = &npc_captain_blackanvil::GossipSelect;
    script->RegisterSelf();
}
