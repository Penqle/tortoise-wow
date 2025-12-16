/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#pragma once

namespace nsERIC_VESPER
{
    static const LocationXYZO vfMoveTo[] =
    {
        { 128.883f, -48.6615f, 15.99f, 1.55f },
        { 132.825f, -48.7298f, 15.99f, 1.55f },
        { 125.016f, -48.6871f, 15.99f, 1.55f },
        { 125.081f, -36.9308f, 15.99f, 1.55f },
        { 128.847f, -36.9513f, 15.99f, 1.55f },
        { 132.736f, -36.8489f, 15.99f, 1.55f },
        { 132.777f, -25.3095f, 15.99f, 1.55f },
        { 128.892f, -25.3187f, 15.99f, 1.55f },
        { 125.063f, -25.3278f, 15.99f, 1.55f },
        { 125.035f, -13.6799f, 15.99f, 1.55f },
        { 128.917f, -13.6573f, 15.99f, 1.55f },
        { 132.745f, -13.7459f, 15.99f, 1.55f },
        { 132.766f, -2.05773f, 15.99f, 1.55f },
        { 128.937f, -2.03679f, 15.99f, 1.55f },
        { 125.003f, -2.01526f, 15.99f, 1.55f },
        { 125.066f,  9.52406f, 15.99f, 1.55f },
        { 128.944f,  9.48699f, 15.99f, 1.55f },
        { 132.826f,  9.47718f, 15.99f, 1.55f }
    };

    static const LocationXYZO vfAddSpawn[] =
    {
        { 147.f, -60.f, 17.f, 0.f }
    };

    static const float fAreatrigger[][5] =
    {
        { 128.86f, -9.69f, 15.98f, 0.f, 12.f }
    };

    static constexpr auto TEXT_DIED{ "If only I- I could <cough> .. glance upon an evening’s star <cough> one last time." };
    static constexpr auto TEXT_SUMMON_ADDS{ "The enemy has gone past the Sacred Fist, avenge our fallen brother!" };
    static constexpr auto TEXT_RANDOM0{ "All your efforts are in vain." };
    static constexpr auto TEXT_RANDOM1{ "It’s too late to turn back now!" };
    static constexpr auto TEXT_RANDOM2{ "Vile Scourge." };
    static constexpr auto TEXT_RANDOM3{ "Even the afterlife abandons mongrels like you!" };

    static constexpr uint32 SPELL_LIGHTNING_CLOUD{ 25033 };
    static constexpr uint32 SPELL_LIGHTNING_WAVE{ 24819 };
    static constexpr uint32 SPELL_ENERGIZE{ 25685 };
    static constexpr uint32 SPELL_DRAIN_MANA{ 25676 };

    static constexpr uint32 INITIAL_TIMER_LIGHTNING_CLOUD{ 5000 };
    static constexpr uint32 TIMER_LIGHTNING_CLOUD{ 15000 };
    static constexpr uint32 INITIAL_TIMER_LIGHTNING_WAVE{ 1000 };
    static constexpr uint32 TIMER_MIN_LIGHTNING_WAVE{ 4000 };
    static constexpr uint32 TIMER_MAX_LIGHTNING_WAVE{ 5000 };
    static constexpr uint32 INITIAL_TIMER_DRAIN_MANA{ 5000 };
    static constexpr uint32 TIMER_DRAIN_MANA{ 5000 };
    static constexpr uint32 TIMER_ENERGIZE{ 300000 };
    static constexpr uint32 TIMER_RANDOM_TEXT{ 30000 };
    static constexpr uint32 TIMER_CHECK_PULSE{ 1000 };

    static constexpr uint32 FACTION_HOSTILE{ 67 };
    static constexpr uint32 TWO_HOURS{ 7200 };

    static const std::vector<uint32> vTrashEntryList{ NPC_CITADEL_INQUISITOR, NPC_CITADEL_VALIANT, NPC_CITADEL_FOOTMAN };
    static const std::vector<std::pair<LocationXYZO, uint32>>pairlol
    {
        std::make_pair(nsERIC_VESPER::vfMoveTo[0], vTrashEntryList[0]), std::make_pair(nsERIC_VESPER::vfMoveTo[1], vTrashEntryList[1]), std::make_pair(nsERIC_VESPER::vfMoveTo[2], vTrashEntryList[2]),
        std::make_pair(nsERIC_VESPER::vfMoveTo[3], vTrashEntryList[0]), std::make_pair(nsERIC_VESPER::vfMoveTo[4], vTrashEntryList[1]), std::make_pair(nsERIC_VESPER::vfMoveTo[5], vTrashEntryList[2]),
        std::make_pair(nsERIC_VESPER::vfMoveTo[6], vTrashEntryList[0]), std::make_pair(nsERIC_VESPER::vfMoveTo[7], vTrashEntryList[1]), std::make_pair(nsERIC_VESPER::vfMoveTo[8], vTrashEntryList[2]),
        std::make_pair(nsERIC_VESPER::vfMoveTo[9], vTrashEntryList[0]), std::make_pair(nsERIC_VESPER::vfMoveTo[10], vTrashEntryList[1]), std::make_pair(nsERIC_VESPER::vfMoveTo[11], vTrashEntryList[2]),
        std::make_pair(nsERIC_VESPER::vfMoveTo[12], vTrashEntryList[0]), std::make_pair(nsERIC_VESPER::vfMoveTo[13], vTrashEntryList[1]), std::make_pair(nsERIC_VESPER::vfMoveTo[14], vTrashEntryList[2]),
        std::make_pair(nsERIC_VESPER::vfMoveTo[15], vTrashEntryList[0]), std::make_pair(nsERIC_VESPER::vfMoveTo[16], vTrashEntryList[1]), std::make_pair(nsERIC_VESPER::vfMoveTo[17], vTrashEntryList[2])
    };
}

namespace nsRayn
{
    static constexpr uint32 SPELL_SHADOWFORM{ 15473 };

    static constexpr uint32 SPELL_MIND_CONTROL{ 785 };
    static constexpr uint32 SPELL_SHADOW_VOLLEY{ 21341 };
    static constexpr uint32 SPELL_MIND_FLAY{ 26143 };
    static constexpr uint32 SPELL_IMPENDING_DOOM{ 19702 };

    static constexpr uint32 TIMER_SHADOWFORM_CHECK{ 500 };

    static constexpr uint32 INITIAL_TIMER_MIND_CONTROL{ 15000 };
    static constexpr uint32 TIMER_MIN_MIND_CONTROL{ 15000 };
    static constexpr uint32 TIMER_MAX_MIND_CONTROL{ 25000 };
    static constexpr uint32 INITIAL_TIMER_SHADOW_VOLLEY{ 5000 };
    static constexpr uint32 TIMER_MIN_SHADOW_VOLLEY{ 6000 };
    static constexpr uint32 TIMER_MAX_SHADOW_VOLLEY{ 8000 };
    static constexpr uint32 INITIAL_TIMER_MIND_FLAY{ 8000 };
    static constexpr uint32 TIMER_MIN_MIND_FLAY{ 18000 };
    static constexpr uint32 TIMER_MAX_MIND_FLAY{ 22000 };
    static constexpr uint32 INITIAL_TIMER_IMPENDING_DOOM{ 6000 };
    static constexpr uint32 TIMER_IMPENDING_DOOM{ 5500 };

    static constexpr uint32 SEVEN_DAYS{ 604800 };
}
