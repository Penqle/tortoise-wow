/* ScriptData
SDName: Boss_Avatar_Of_Pompa
SD%Complete: 70
SDComment:
SDCategory: Custom
EndScriptData */

#include "scriptPCH.h"

enum
{
    // Spells
    // ------

    // Causes an explosion of divine light, inflicting (7.1% of Spell power) Holy damage
    SPELL_HOLY_NOVA = 23858,

    // Cleave - Attacks a number of melee range players around him with a cleaving strike that deals 1000-2000 damage to each. Since a 'blind spot' has not been found, Cleave might be capped to a certain number of players affected.
    SPELL_CLEAVE = 16044,

    // Thunderclap - A point blank area of effect spell, hardly dealing any damage, but slowing movement speed. Some have reported 200 damage, some say it doesn't deal damage at all. Doesn't seem to affect attacking speed either.
    SPELL_THUNDERCLAP = 8078,

    // Holy Smite - Holy smite he may cast only on the player with aggro.
    SPELL_HOLY_SMITE = 20696,

    // Capture Soul - When a player, pet or totem gets killed, Avatar of Pompa casts this spell to instantly regenerate 70,000 health.
    SPELL_CAPTURESOUL = 21054
};

struct boss_avatar_of_pompaAI : public ScriptedAI
{
    boss_avatar_of_pompaAI(Creature *c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 HolyNova_Timer;
    uint32 Cleave_Timer;
    uint32 ThunderClap_Timer;
    uint32 HolySmite_Timer;
    bool first_aggro;

    void Reset() override
    {
        first_aggro = true;
        HolyNova_Timer = urand(8000, 12000);
        Cleave_Timer = 3000;
        ThunderClap_Timer = urand(4000, 8000);
        HolySmite_Timer = 10000;
    }

    void Aggro(Unit *who) override
    {
        if (first_aggro)
        {
            first_aggro = false;
        }

        m_creature->PMonsterYell("Who dares challenge the powerful Pompa!?");
    }

    /* Avatar of Pompa abilities to heal himself ( 75K heal ) when he kills an enemy:
        Should only be triggered on enemy above lvl 50.
        (To prevent exploit by summoning low lvl player and make them die via the shadow bolt volley to heal Kazzak).
     */
    void KilledUnit(Unit* victim) override
    {
        Player* affectedPlayer;
        Creature* creature;

        switch (victim->GetTypeId())
        {
            /** Prevent Avatar of Pompa to use his healing spell if player got a level lower than 50 */
            case TYPEID_PLAYER:
            {
                affectedPlayer = victim->GetAffectingPlayer();

                if (!affectedPlayer)
                    return;

                if (affectedPlayer->GetLevel() < 50)
                    return;

                // Don't heal if player doesn't have at least 10 items
                int32 countOfEquippedItems = 0;

                for (int i = INVENTORY_SLOT_ITEM_START; i < INVENTORY_SLOT_ITEM_END; ++i)
                    if (Item* pItem = affectedPlayer->GetItemByPos(INVENTORY_SLOT_BAG_0, i))
                        countOfEquippedItems++;

                if (countOfEquippedItems < 10)
                    return;

                break;
            }
            case TYPEID_UNIT:
            {
                /** Avatar of Pompa can use his healing ability on Totem and Pets */
                creature = victim->ToCreature();

                if (!creature->IsPet() && !creature->IsTotem())
                    return;

                // Avatar of Pompa shouldn't heal from killing temporary summoned pets
                if (Pet* killedPet = creature->ToPet())
                    if (killedPet->getPetType() == GUARDIAN_PET)
                        return;

                /** Prevent Avatar of Pompa to use his healing spell if the pet got a level lower than 50 */
                if (creature->GetLevel() < 50)
                    return;

                break;
            }
            default:
                return;
        }

        DoCastSpellIfCan(m_creature, SPELL_CAPTURESOUL);

        m_creature->PMonsterYell("Behold the power of Pompa!");
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        uint32 m_respawn_delay_Timer = urand(3, 6)*DAY + urand(0, 24*HOUR);

        /** DRRS */
        if (m_creature->GetSpawnFlags() & SPAWN_FLAG_DYNAMIC_RESPAWN_TIME &&
            sWorld.GetActiveSessionCount() > BLIZZLIKE_REALM_POPULATION)

        m_respawn_delay_Timer *= float(BLIZZLIKE_REALM_POPULATION) / float(sWorld.GetActiveSessionCount());

        m_creature->SetRespawnDelay(m_respawn_delay_Timer);
        m_creature->SetRespawnTime(m_respawn_delay_Timer);
        m_creature->SaveRespawnTime();
    }

    void UpdateAI(const uint32 diff) override
    {
        // Return since we have no target
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        // HolyNova_Timer
        if (HolyNova_Timer < diff)
        {
            DoCast(m_creature, SPELL_HOLY_NOVA);
            HolyNova_Timer = urand(8000, 14000);
        }
        else
            HolyNova_Timer -= diff;

        // Cleave_Timer
        if (Cleave_Timer < diff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CLEAVE) == CAST_OK)
                Cleave_Timer = urand(6000, 12000);
        }
        else
            Cleave_Timer -= diff;

        // ThunderClap_Timer
        if (ThunderClap_Timer < diff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_THUNDERCLAP) == CAST_OK)
                ThunderClap_Timer = urand(7500, 12000);
        }
        else
            ThunderClap_Timer -= diff;

        // HolySmite_Timer
        if (HolySmite_Timer < diff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_HOLY_SMITE) == CAST_OK)
                HolySmite_Timer = urand(9000, 12000);
        }
        else
            HolySmite_Timer -= diff;

        DoMeleeAttackIfReady();
    }

};

CreatureAI* GetAI_boss_avatar_of_pompa(Creature *_Creature)
{
    return new boss_avatar_of_pompaAI(_Creature);
}

void AddSC_boss_avatar_of_pompa()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "boss_avatar_of_pompa";
    newscript->GetAI = &GetAI_boss_avatar_of_pompa;
    newscript->RegisterSelf();
}
