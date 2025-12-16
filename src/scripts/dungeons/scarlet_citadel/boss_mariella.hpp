/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#pragma once

namespace nsMariella
{
    struct Location
    {
        float m_fX{}, m_fY{}, m_fZ{}, m_fO{}, m_fR0{}, m_fR1{}, m_fR2{}, m_fR3{};
    };

    // Void Zone
    static constexpr float VOIDZONE_DIAMETER{ 2.85f };      // Exact value if field `size` in creature_template = 0.1
    static constexpr uint8 NUMBEROFSUMMONERS{ 2 };   // How many Void Zones should be spawned on each call
    static constexpr uint32 VOIDZONE_DAMAGE{ 3000 }; // How much damage should void Zone do on one tick
    static constexpr uint32 NPC_VOIDZONE{ 2000016 }; // Void Zone's entry

    static constexpr uint32 VOIDZONE_DAMAGE_REPEAT_TIMER{ 2000 }; // Interval of Void Zones damage
    static constexpr uint32 VOIDZONE_SPAWN_FIRST_TIMER{ 2500 };   // Void Zone's first damage tick should start after this time
    static constexpr uint32 VOIDZONE_SPAWN_REPEAT_TIMER{ 10000 }; // Interval for a new Void Zone spawn wave

    // Felhounds
    static constexpr uint8 NUMBER_OF_SPAWNPOINTS{ 4 };
    static const Location vfSpawnPoints[NUMBER_OF_SPAWNPOINTS] =
    {
        { 178.621826f, 57.703217f, 33.25f, 5.535669f, 0.f, 0.f, 0.380631f,  0.924727f },
        { 178.621826f, 38.533649f, 33.55f, 0.755342f, 0.f, 0.f, 0.381105f, -0.924532f },
        { 197.665680f, 38.533649f, 32.88f, 2.328107f, 0.f, 0.f, 0.923975f, -0.382453f },
        { 197.665680f, 57.703217f, 33.45f, 2.359790f, 0.f, 0.f, 0.923781f,  0.382921f }
    };

    static constexpr int32 VALUE_DRAINMANA{ -1250 };              // How much mana should be drained on one tick
    static constexpr uint32 NPC_FELHOUND{ 2000017 };              // Felhound's entry
    static constexpr uint32 GO_SUMMONINGCIRCLE{ 5000012 };        // Summoning Circle entry
    static constexpr uint32 GO_SUMMONINGCIRCLE_DESPAWN_TIMER{ 1800000 }; // Need a long ass timer because we can't set it to manual despawn
    static constexpr uint32 VISUALSPELL_DRAINMANA{ 25676 };       // Drain Mana visual effect (blue line)
    static constexpr uint32 VISUALSPELL_SUMMON_FELOUND{ 7741 };   // Summon Felhound visual effect

    static constexpr uint32 FELHOUND_DRAIN_REPEAT_TIMER{ 1500 };  // Interval of Felhound's mana drain
    static constexpr uint32 FELHOUND_SPAWN_FIRST_TIMER{ 1000 };   // Felhound's first spawn should start after this time
    static constexpr uint32 FELHOUND_SPAWN_REPEAT_TIMER{ 15000 }; // Interval for a new Felhound spawn
    static constexpr uint32 MAX_FELHOUNDS_SPAWNED{ 50 };          // Set a limit in case a condition is broken and we get an overflow here

    // Shadow Volley
    static constexpr uint32 SPELL_SHADOWVOLLEY{ 21341 };              // Hits every player within range of 100 yd for 800-1000 damage (Ignores LoS)
    static constexpr uint32 SHADOWVOLLEY_REPEAT_TIMER{ 3500 };        // Interval of how often should Shadow Volley be casted
    static constexpr uint32 SHADOWVOLLEY_ENRAGE_REPEAT_TIMER{ 1000 }; // Interval of how often should Shadow Volley be casted on enrage

    // Kill Zone
    static constexpr float KILLZONE_DIAMETER{ 5.7f };                 // Exact value if field `size` in creature_template = 0.2
    static constexpr uint32 NPC_KILLZONE{ 2000018 };           // Void Zone's entry
    static constexpr uint32 KILLZONE_KILL_REPEAT_TIMER{ 500 }; // Interval of Kill Zones deadly tick

    // Achievement
    static const Location vfAchievementChestSpawnPoint[] =                       // Chest spawn location
    {
        { 0.f } // TODO: Check rotation
    };
    static constexpr uint32 GO_ACHIEVEMENT_CHEST{ 5000013 };              // Chest to loot the achievement reward
    static constexpr uint32 GO_ACHIEVEMENT_CHEST_DESPAWN_TIMER{ 900000 }; // 15 Minutes 


    // Gossip Menu
    static constexpr uint32 GOSSIP_TEXT{ 1000000 };
    static constexpr auto GOSSIP_ANSWER{ "We will see who ends who." };

    // Sacrifice Phase
    static constexpr float REGENERATE_HEALTH_PERCENTAGE{ 1.f };   // How many percent should Boss Mariella regenerate on one tick
    static constexpr uint32 SACRIFICE_VISUAL{ 22518 };
    static constexpr uint32 INCREASE_HEALTH_TIMER{ 1000 }; // Interval of Boss Mariella hp re-generate

    // Misc
    static constexpr float ROOM_DIAGONAL{ 64.0f };              // Room size
    static constexpr uint32 FACTION_SCARLET{ 67 };       // Scarlet Citadel Faction // TODO: Find proper ID
    static constexpr uint32 FACTION_NEUTRAL{ 189 };      // Neutral Faction
    static constexpr uint32 TIME_UNTIL_ENRAGE{ 480000 }; // Enrage timer (8 Minutes)
    static constexpr uint32 SEVEN_DAYS{ 604800 };

    enum class CombatNotifications
    {
        ABOUT_TO_START,
        START,
        SACRIFICE_75_PERCENT,
        SACRIFICE_50_PERCENT,
        SACRIFICE_25_PERCENT,
        SACRIFICE_ENDED,
        ENRAGE,
        RAIDWIPE,
        BOSSDIED,
        FELHOUNDS_SPAWN,
        VOIDZONES_SPAWN,
        ACHIEVEMENT_FAILED
    };

    const std::string [[nodiscard]] CombatNotification(const CombatNotifications& combatNotifications)
    {
        switch (combatNotifications)
        {
            case CombatNotifications::ABOUT_TO_START:
            {
                return "I will have you confess!";
            }
            case CombatNotifications::START:
            {
                return "In Lady Whitemane's name!";
            }
            case CombatNotifications::SACRIFICE_75_PERCENT:
            {
                return "Only through sacrifice can one achieve victory.";
            }
            case CombatNotifications::SACRIFICE_50_PERCENT:
            {
                return "Die for the glory of the crusade!";
            }
            case CombatNotifications::SACRIFICE_25_PERCENT:
            {
                return "Persistent, are we?";
            }
            case CombatNotifications::ENRAGE:
            {
                return "That's enough! Now DIE!";
            }
            case CombatNotifications::RAIDWIPE:
            {
                return "What an utter waste of my time.";
            }
            case CombatNotifications::BOSSDIED:
            {
                return "No! This is not... how it should have ended.";
            }
            case CombatNotifications::SACRIFICE_ENDED:
            {
                return "You worms! I will not fall to the likes of you!";
            }
            case CombatNotifications::FELHOUNDS_SPAWN:
            {
                return "Feed my pets! Feed on the blasphemers!";
            }
            case CombatNotifications::VOIDZONES_SPAWN:
            {
                return "Only the darkness awaits the heretics.";
            }
            case CombatNotifications::ACHIEVEMENT_FAILED:
            {
                return "It seems I have nothing to worry about, you will not touch my treasure.";
            }

            default:
                return "<>";
        }
    }

    const std::string [[nodiscard]] SayOnPlayersDeath(const uint8 uiRandomNumber)
    {
        switch (uiRandomNumber)
        {
            case 0:
            {
                return "Unworthy.";
            }
            case 1:
            {
                return "As expected.";
            }
            case 2:
            {
                return "Pathetic.";
            }
            case 3:
            {
                return "How easily you crumble.";
            }
            default:
            {
                return "<>";
            }
        }
    }
}
