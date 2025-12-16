#include "AbilityTimer.h"
#include <Util.h>

AbilityTimer::AbilityTimer(uint32_t abilityId, uint32_t minimumCooldownMs, uint32_t maximumCooldownMs)
    : AbilityTimer(abilityId, minimumCooldownMs, maximumCooldownMs, urand(minimumCooldownMs, maximumCooldownMs))
{
}

AbilityTimer::AbilityTimer(uint32_t abilityId, uint32_t minimumCooldownMs, uint32_t maximumCooldownMs, uint32_t initialDelayMs)
{
    m_abilityId = abilityId;
    m_minimumCooldownMs = minimumCooldownMs;
    m_maximumCooldownMs = maximumCooldownMs;
    m_currentCooldownMs = initialDelayMs;
}

bool AbilityTimer::IsReady() const
{
    return m_currentCooldownMs == 0;
}

uint32_t AbilityTimer::SpellID() const
{
    return m_abilityId;
}

void AbilityTimer::Reset()
{
    m_currentCooldownMs = urand(m_minimumCooldownMs, m_maximumCooldownMs);
}

void AbilityTimer::SetCooldown(uint32_t cooldownMs)
{
    m_currentCooldownMs = cooldownMs;
}

void AbilityTimer::Update(uint32_t delta)
{
    if (m_currentCooldownMs > 0)
    {
        m_currentCooldownMs = delta > m_currentCooldownMs ? 0 : m_currentCooldownMs - delta;
    }
}
