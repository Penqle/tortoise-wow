/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#pragma once

namespace nsDaelus
{
    struct Location
    {
        float m_fX{}, m_fY{}, m_fZ{}, m_fO{}, m_fR0{}, m_fR1{}, m_fR2{}, m_fR3{};
    };

    static constexpr uint8 NUMBER_OF_ADDS{ 6 };
    static const Location vfSpawnPoints[NUMBER_OF_ADDS] =
    {
        { 36.207348f, -17.218674f, 16.87f, 1.570526f }, // R1
        { 36.207348f,  43.897984f, 16.87f, 4.696410f }, // L1
        { 67.414421f, -17.218674f, 16.87f, 1.570526f }, // R2
        { 67.414421f,  43.897984f, 16.87f, 4.696410f }, // L2
        { 98.575172f, -17.218674f, 16.87f, 1.570526f }, // R3
        { 98.575172f,  43.897984f, 16.87f, 4.696410f }, // L3
    };

    // Phase 1
    static constexpr uint32 SPELL_RED_COLOR{ 26235 };
    static constexpr uint32 SPELL_VULNERABILITY{ 26156 };
    static constexpr uint32 SPELL_LIFE_DRAIN_VISUAL{ 21157 };
    static constexpr uint32 CHECK_FOR_TANK_TIMER{ 1000 };

    // Phase 2
    static constexpr uint32 VULNERABLE_TIMER{ 30000 };

    // Phase 3
    static constexpr uint32 NPC_SPOTLIGHT{ 15631 };

    // Fallen Spirit
    static constexpr float REGENERATE_HEALTH_PERCENTAGE{ 5.f }; // How many percent should Boss Daelus regenerate on each consume
    static constexpr uint32 NPC_FALLEN_SPIRIT{ 2000013 };
    static constexpr uint32 SPELL_SONICBURST{ 23918 };
    static constexpr uint32 CHOSEN_ONE_MIN_TIMER{ 120000 };
    static constexpr uint32 CHOSEN_ONE_MAX_TIMER{ 180000 };
    static constexpr uint32 CALL_SPIRITS_FIRST_TIMER{ 5000 };
    static constexpr uint32 CALL_SPIRITS_REPEAT_TIMER{ 30000 };
    static constexpr uint32 INITIAL_SPAWN_CHOSEN_ONE_TIMER{ 90000 };
    static constexpr uint32 CHECK_SPIRITS_REPEAT_TIMER{ 500 };

    // Sunder Armor
    static constexpr uint32 SPELL_SUNDER_ARMOR{ 25051 };
    static constexpr uint32 SUNDER_ARMOR_TIMER{ 10000 };

    // Poison Cloud
    static constexpr uint32 NPC_POISON_CLOUD{ 16363 };
    static constexpr uint32 SPELL_POISON_CLOUD{ 28240 }; // 60 Second duration of ticking 1100-1300 damage / sec
    static constexpr uint32 SPELL_GREEN_GLOW_VISUAL{ 22577 };
    static constexpr uint32 INITIAL_POISON_CLOUD_TIMER{ 10000 };
    static constexpr uint32 POISON_CLOUD_TIMER{ 60000 };

    // Achievement
    static constexpr uint32 GO_ACHIEVEMENT_CHEST{ 0000 };                 // Chest to loot the achievement reward
    static constexpr uint32 GO_ACHIEVEMENT_CHEST_DESPAWN_TIMER{ 900000 }; // 15 Minutes 
    static const Location vfAchievementChestSpawnPoint[] =                // Chest spawn location
    {
        { 0.f } // TODO: Check rotation
    };

    // Misc
    static constexpr uint32 FACTION_SCARLET{ 67 };  // Scarlet Citadel Faction
    static constexpr uint32 FACTION_NEUTRAL{ 189 }; // Neutral Faction

    static constexpr auto START_BUTTON{ "This will be your resting place, old-timer." };

    enum class CombatNotifications
    {
        ABOUT_TO_START,
        START,
        PHASE_ONE,
        PHASE_TWO,
        PHASE_THREE,
        ENRAGE,
        RAIDWIPE,
        BOSSDIED,
        ACHIEVEMENT_FAILED,
        POISONCLOUD,
        LIFEDRAIN
    };

    const std::string [[nodiscard]] CombatNotification(const CombatNotifications& combatNotifications)
    {
        switch (combatNotifications)
        {
            case CombatNotifications::ABOUT_TO_START:
            {
                return "You're about to face the thickest wall the Scarlet Crusade has ever built!";
            }
            case CombatNotifications::START:
            {
                return "MY FIST FOR THE SCARLET CRUSADE!";
            }
            case CombatNotifications::PHASE_ONE:
            {
                return "With this fist, I become the impenetrable wall of the Crusade!";
            }
            case CombatNotifications::PHASE_TWO:
            {
                return "Seems like luck favors the damned, but yours has run out!";
            }
            case CombatNotifications::PHASE_THREE:
            {
                return "PHASE_THREE";
            }
            case CombatNotifications::ENRAGE:
            {
                return "ENRAGE";
            }
            case CombatNotifications::RAIDWIPE:
            {
                return "Justice for the Scarlet Crusade, justice for Azeroth!";
            }
            case CombatNotifications::BOSSDIED:
            {
                return "Light… <gasp> d- damn you … all.";
            }
            case CombatNotifications::ACHIEVEMENT_FAILED:
            {
                return "Has he sent nothing but mindless husks? Disappointing.";
            }
            case CombatNotifications::POISONCLOUD:
            {
                const uint32 i{ urand(0, 2) };
                if (i == 0)
                {
                    return "The Light curses you, with every second your own flesh and blood burn your very being.";
                }
                else if (i == 1)
                {
                    return "By my wrath your soul will succumb to the Light's justice!";
                }
                else if (i == 2)
                {
                    return "Your own mind will be your greatest enemy. The Light shall burn you!";
                }
                else
                {
                    return "";
                }
            }
            case CombatNotifications::LIFEDRAIN:
            {
                return "I am not so easily crumbled!";
            }
            default:
            {
                return "";
            }
        }
    }
}
