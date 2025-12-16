/* Copyright (C) 2006 - 2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

/* ScriptData
SDName: Blasted_Lands
SD%Complete: 90
SDCategory: Blasted Lands
EndScriptData */

/* ContentData
npc_thadius_grimshade
go_stone_of_binding
EndContentData */

#include "scriptPCH.h"

enum
{
    SPELL_SPIRIT_SHOCK          = 10794,
    SPELL_FEL_CURSE             = 12938,
    NPC_SERVANT_OF_RAZELIKH     = 7668,
    NPC_SERVANT_OF_GROL         = 7669,
    NPC_SERVANT_OF_ALLISTARJ    = 7670,
    NPC_SERVANT_OF_SEVINE       = 7671
};

bool GOHello_go_stone_of_binding(Player* pPlayer, GameObject* pGo)
{
// 141812 <= 7668 Servant of Razelikh   // 141857 <= 7669 Servant of Grol
// 141858 <= 7670 Servant of Allistarj  // 141859 <= 7671 Servant of Sevine
    Creature* pCreature = nullptr;
    switch(pGo->GetEntry())
    {
        case 141812:
            pCreature = pGo->FindNearestCreature(NPC_SERVANT_OF_RAZELIKH, 30.0f, true);//servant of razelikh
            break;
        case 141857:
            pCreature = pGo->FindNearestCreature(NPC_SERVANT_OF_GROL, 30.0f, true);//servant of grol
            break;
        case 141858:
            pCreature = pGo->FindNearestCreature(NPC_SERVANT_OF_ALLISTARJ, 30.0f, true);//servant of allistarj
            break;
        case 141859:
            pCreature = pGo->FindNearestCreature(NPC_SERVANT_OF_SEVINE, 30.0f, true);//servant of sevine
            break;
    }
    if (pCreature)
        pCreature->CastSpell(pCreature, SPELL_FEL_CURSE, true);
    return false;
}

struct ServantAI : public ScriptedAI
{
    ServantAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    bool m_freezed;

    void Reset() override
    {
        m_freezed = false;
    }

    void JustRespawned() override
    {
        Reset();
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_creature->HealthBelowPct(15) && !m_freezed)
        {
            DoCastSpellIfCan(m_creature, SPELL_SPIRIT_SHOCK);
        }

        DoMeleeAttackIfReady();
    }

    void DamageTaken(Unit* pDoneBy, uint32& uiDamage) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_creature->HealthBelowPctDamaged(10, uiDamage))
        {
            uiDamage = 0;
        }
    }

    void SpellHit(WorldObject* pCaster, SpellEntry const* pSpell) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (pSpell->Id == SPELL_FEL_CURSE && m_creature->HasAura(SPELL_SPIRIT_SHOCK))
        {
            if (Player* pPlayer = m_creature->GetVictim()->ToPlayer())
                pPlayer->DoKillUnit(m_creature);
        }
    }
};

CreatureAI* GetAI_servant(Creature* pCreature)
{
    return new ServantAI(pCreature);
}

void AddSC_blasted_lands()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "go_stone_of_binding";
    newscript->pGOHello = &GOHello_go_stone_of_binding;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_servant";
    newscript->GetAI = &GetAI_servant;
    newscript->RegisterSelf();
}
