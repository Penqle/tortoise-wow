#include "scriptPCH.h"
#include "instance_gilneas_city.h"
#include <random>

struct instance_gilneas_city : public ScriptedInstance
{
    explicit instance_gilneas_city(Map* p_Map) : ScriptedInstance(p_Map)
    {
        Initialize();
    };

    uint64 m_uiCeliaGUID;
    uint64 m_uiLordMortimerGUID;
    uint64 m_uiHarlowFamilyChestGUID;

    std::vector<Player*> randomPlayers;

    void Initialize()
    {
		randomPlayers.clear();
        m_uiCeliaGUID = 0;
        m_uiLordMortimerGUID = 0;
        m_uiHarlowFamilyChestGUID = 0;
	}

    void OnPlayerEnter(Player* pPlayer)
    {
        if (pPlayer)
        {
            pPlayer->GetMap()->SetWeather(pPlayer->GetZoneId(), WEATHER_TYPE_RAIN, 2, true);
        }
    }

    void OnCreatureEnterCombat(Creature* pCreature) override
    {
        if (pCreature->IsAlive() && !pCreature->IsInCombat())
            pCreature->SetInCombatWithZone();

        switch (pCreature->GetEntry())
        {
        case NPC_MATTHIAS_HOLTZ:
            pCreature->PlayDirectSound(60384);
            pCreature->MonsterYell("This district is currently on lockdown!");
            break;
        case NPC_JUDGE_SUTHERLAND:
            pCreature->PlayDirectSound(60382);
            pCreature->MonsterYell("Order must be maintained!");
            break;
        case NPC_DUSTIVAN_BLACKOWL:
            pCreature->PlayDirectSound(60391);
            pCreature->MonsterYell("I hunt from the shadows, these streets have been cleared by my hand!");
            break;
        case NPC_MAGNUS_GREYSTONE:
            pCreature->PlayDirectSound(60386);
            pCreature->MonsterYell("I have served as Marshal throughout all of the orcish incursions. You will not put an end to Gilneas.");
            break;
        case NPC_GENN_GREYMANE:
            pCreature->PlayDirectSound(60388);
            pCreature->MonsterYell("My family has held power in Gilneas for countless generations. You will not change fate.");
            break;
        case NPC_CELIA_HARLOW:
            pCreature->PlayDirectSound(60400);
            pCreature->MonsterYell("Mortimer, it would appear we have someone here to interrupt our plans!");
            break;
        }
    }

    void OnCreatureDeath(Creature* pCreature) override
    {
        switch (pCreature->GetEntry())
        {
        case NPC_MATTHIAS_HOLTZ:
            pCreature->PlayDirectSound(60385);
            pCreature->MonsterYell("Foolish interloper, you do not belong here...");
            break;
        case NPC_JUDGE_SUTHERLAND:
            pCreature->PlayDirectSound(60383);
            pCreature->MonsterYell("I will not let Gilneas fall to madness, not while I...");
            break;
        case NPC_DUSTIVAN_BLACKOWL:
            pCreature->PlayDirectSound(60392);
            pCreature->MonsterYell("This was not meant to be...");
            break;
        case NPC_MAGNUS_GREYSTONE:
            pCreature->PlayDirectSound(60387);
            pCreature->MonsterYell("The brave defenders of this city... will not let you put it to ruin, outsider!");
            break;
        case NPC_GENN_GREYMANE:
            pCreature->PlayDirectSound(60390);
            pCreature->MonsterYell("It... it was pointless after all... This cannot be the way I fall...");
            break;
        case NPC_CELIA_HARLOW:
            DoRespawnGameObject(m_uiHarlowFamilyChestGUID, HOUR * IN_MILLISECONDS);
            pCreature->PlayDirectSound(60399);
            pCreature->MonsterYell("All of our progress, our influence... What a pointless end...");
            break;
        }
    }

    void OnCreatureCreate(Creature* pCreature)
    {
        switch (pCreature->GetEntry())
        {
            case NPC_CELIA_HARLOW:
			    m_uiCeliaGUID = pCreature->GetGUID();
			    break;
            case NPC_LORD_MORTIMER:
                m_uiLordMortimerGUID = pCreature->GetGUID();
                break;
        }
    }

    uint64 GetData64(uint32 uiType)
    {
        switch (uiType)
        {
            case DATA_CELIA:
                return m_uiCeliaGUID;
            case DATA_LORD_MORTIMER:
                return m_uiLordMortimerGUID;
            default:
                return 0;
        }
    }

    void OnObjectCreate(GameObject* pGo)
    {
        switch (pGo->GetEntry())
        {
			case GO_HARLOW_FAMILY_CHEST:
				m_uiHarlowFamilyChestGUID = pGo->GetGUID();
				break;
		}
	}

    std::vector<Player*> GetRandomPlayers(int8 count)
    {
        Map::PlayerList const& playerList = GetMap()->GetPlayers();
        randomPlayers.clear();
        if (!playerList.isEmpty())
        {
            for (const auto& itr : playerList)
            {
                if (Player* pPlayer = itr.getSource())
                {
                    randomPlayers.push_back(pPlayer);
                }
            }
        }

        auto seed = std::chrono::system_clock::now().time_since_epoch().count();
        std::shuffle(randomPlayers.begin(), randomPlayers.end(), std::default_random_engine(seed));

        if (randomPlayers.size() < count)
        {
            randomPlayers.resize(randomPlayers.size());
        }
        else
        {
            randomPlayers.resize(count);
        }

        return randomPlayers;
    }
};

InstanceData* GetInstanceData_instance_gilneas_city(Map* p_Map) { return new instance_gilneas_city(p_Map); }

struct genn_greymaneAI : public ScriptedAI
{
    genn_greymaneAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    bool event50PercentHP;
    uint32 m_DrainLifeTimer;
    uint32 m_MortalStrikeTimer;
    uint32 m_CurseOfAgonyTimer;

    void Reset() override
    {
        event50PercentHP = false;
        m_DrainLifeTimer = 4 * IN_MILLISECONDS;
        m_MortalStrikeTimer = 2 * IN_MILLISECONDS;
        m_CurseOfAgonyTimer = 1 * IN_MILLISECONDS;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        // Drain Life
        if (m_DrainLifeTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), 17620, CF_FORCE_CAST) == CAST_OK)
                m_DrainLifeTimer = urand(20 * IN_MILLISECONDS, 25 * IN_MILLISECONDS);
        }
        else
            m_DrainLifeTimer -= uiDiff;

        // Mortal Strike
        if (m_MortalStrikeTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), 21551, CF_FORCE_CAST) == CAST_OK)
                m_MortalStrikeTimer = urand(17 * IN_MILLISECONDS, 20 * IN_MILLISECONDS);
        }
        else
            m_MortalStrikeTimer -= uiDiff;

        // Curse of Agony
        if (m_CurseOfAgonyTimer < uiDiff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
            {
                if (DoCastSpellIfCan(pTarget, 11711, CF_FORCE_CAST) == CAST_OK)
                    m_CurseOfAgonyTimer = urand(10 * IN_MILLISECONDS, 15 * IN_MILLISECONDS);
            }
        }
        else
            m_CurseOfAgonyTimer -= uiDiff;

        if (m_creature->GetHealthPercent() < 50.0f && !event50PercentHP)
        {
            event50PercentHP = true;
            DoScriptText(81055, m_creature);
            // Fear
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
                DoCastSpellIfCan(pTarget, 22678);
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_genn_greymane(Creature* pCreature)
{
    return new genn_greymaneAI(pCreature);
}

struct greymane_knightAI : public ScriptedAI
{
    greymane_knightAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    uint32 m_hammerOfJusticeTimer;
    uint32 m_strikeTimer;

    void Reset() override
    {
        m_hammerOfJusticeTimer = urand(12 * IN_MILLISECONDS, 20 * IN_MILLISECONDS);
        m_strikeTimer = 1 * IN_MILLISECONDS;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        // Strike
        if (m_strikeTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), 18368, CF_FORCE_CAST) == CAST_OK)
                m_strikeTimer = 10 * IN_MILLISECONDS;
        }
        else
            m_strikeTimer -= uiDiff;

        // Hammer of Justice
        if (m_hammerOfJusticeTimer < uiDiff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_TOPAGGRO, 0, nullptr, SELECT_FLAG_PLAYER))
            {
                if (DoCastSpellIfCan(pTarget, 853) == CAST_OK)
                    m_hammerOfJusticeTimer = urand(12 * IN_MILLISECONDS, 20 * IN_MILLISECONDS);
            }
        }
        else
            m_hammerOfJusticeTimer -= uiDiff;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_greymane_knight(Creature* pCreature)
{
    return new greymane_knightAI(pCreature);
}

struct greymane_nobleAI : public ScriptedAI
{
    greymane_nobleAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    uint32 m_mindFlayTimer;
    uint32 m_mindBlastTimer;

    void Reset() override
    {
        m_mindFlayTimer = urand(10 * IN_MILLISECONDS, 18 * IN_MILLISECONDS);
        m_mindBlastTimer = 2 * IN_MILLISECONDS;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        // Mind Blast
        if (m_mindBlastTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), 10945, CF_FORCE_CAST) == CAST_OK)
                m_mindBlastTimer = 9 * IN_MILLISECONDS;
        }
        else
            m_mindBlastTimer -= uiDiff;

        // Mind Flay
        if (m_mindFlayTimer < uiDiff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
            {
                if (DoCastSpellIfCan(pTarget, 17312) == CAST_OK)
                    m_mindFlayTimer = urand(10 * IN_MILLISECONDS, 18 * IN_MILLISECONDS);
            }
        }
        else
            m_mindFlayTimer -= uiDiff;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_greymane_noble(Creature* pCreature)
{
    return new greymane_nobleAI(pCreature);
}

void AddSC_instance_gilneas_city()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "instance_gilneas_city";
    newscript->GetInstanceData = &GetInstanceData_instance_gilneas_city;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "genn_greymane";
    newscript->GetAI = &GetAI_genn_greymane;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "greymane_knight";
    newscript->GetAI = &GetAI_greymane_knight;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "greymane_noble";
    newscript->GetAI = &GetAI_greymane_noble;
    newscript->RegisterSelf();
}