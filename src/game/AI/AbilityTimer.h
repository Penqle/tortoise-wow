#pragma once
#include <cstdint>

class AbilityTimer
{
    uint32_t m_abilityId;
    uint32_t m_minimumCooldownMs;
    uint32_t m_maximumCooldownMs;
    uint32_t m_currentCooldownMs;

public:
    AbilityTimer(uint32_t abilityId, uint32_t minimumCooldownMs, uint32_t maximumCooldownMs);
    AbilityTimer(uint32_t abilityId, uint32_t minimumCooldownMs, uint32_t maximumCooldownMs, uint32_t initialDelayMs);

    [[nodiscard]] bool IsReady() const;
    [[nodiscard]] uint32_t SpellID() const;

    void Reset();
    void SetCooldown(uint32_t cooldownMs);
    void Update(uint32_t delta);
};