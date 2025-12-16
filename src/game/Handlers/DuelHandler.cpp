/*
 * Copyright (C) 2005-2011 MaNGOS <http://getmangos.com/>
 * Copyright (C) 2009-2011 MaNGOSZero <https://github.com/mangos/zero>
 * Copyright (C) 2011-2016 Nostalrius <https://nostalrius.org>
 * Copyright (C) 2016-2017 Elysium Project <https://github.com/elysium-project>
 *
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

#include "Common.h"
#include "WorldPacket.h"
#include "WorldSession.h"
#include "Log.h"
#include "Opcodes.h"
#include "UpdateData.h"
#include "Player.h"
#include "Chat.h"
#include "ObjectAccessor.h"
#include "World.h"

void WorldSession::HandleDuelAcceptedOpcode(WorldPacket& recvPacket)
{
    ObjectGuid guid;
    recvPacket >> guid;

    Player* pl = GetPlayer();
    if (!pl || !pl->m_duel) // Ignore accept from m_duel-sender
        return;

    Player* plTarget = sObjectAccessor.FindPlayer(pl->m_duel->opponent);

    if (sWorld.getConfig(CONFIG_BOOL_HARDCORE_DISABLE_DUEL))
    {
        if (pl && pl->IsHardcore())
        {
            ChatHandler(pl).SendSysMessage("Hardcore players are not allowed to duel.");
            return;
        }
        else if (plTarget && plTarget->IsHardcore())
        {
            ChatHandler(plTarget).SendSysMessage("Hardcore players are not allowed to duel.");
            return;
        }
    }

    if (pl == pl->m_duel->initiator || !plTarget || !plTarget->m_duel || pl == plTarget || pl->m_duel->startTime != 0 || plTarget->m_duel->startTime != 0)
        return;

    DEBUG_FILTER_LOG(LOG_FILTER_COMBAT, "WORLD: received CMSG_DUEL_ACCEPTED");
    DEBUG_FILTER_LOG(LOG_FILTER_COMBAT, "Player 1 is: %u (%s)", pl->GetGUIDLow(), pl->GetName());
    DEBUG_FILTER_LOG(LOG_FILTER_COMBAT, "Player 2 is: %u (%s)", plTarget->GetGUIDLow(), plTarget->GetName());

    time_t now = time(nullptr);
    pl->m_duel->startTimer = now;
    plTarget->m_duel->startTimer = now;

    pl->SendDuelCountdown(3000);
    plTarget->SendDuelCountdown(3000);
}

void WorldSession::HandleDuelCancelledOpcode(WorldPacket& recvPacket)
{
    //DEBUG_LOG( "WORLD: received CMSG_DUEL_CANCELLED" );

    auto pPlayer = GetPlayer();
    // no m_duel requested
    if (!pPlayer->m_duel)
        return;

    // player surrendered in a m_duel using /forfeit
    if (pPlayer->m_duel->startTime != 0)
    {
        pPlayer->CombatStopWithPets(true);
        if (Player* pOpponent = sObjectAccessor.FindPlayer(pPlayer->m_duel->opponent))
            pOpponent->CombatStopWithPets(true);

        pPlayer->CastSpell(GetPlayer(), 7267, true);    // beg
        pPlayer->DuelComplete(DUEL_WON);
        return;
    }

    // player either discarded the m_duel using the "discard button"
    // or used "/forfeit" before countdown reached 0
    ObjectGuid guid;
    recvPacket >> guid;

    pPlayer->DuelComplete(DUEL_INTERRUPTED);
}
