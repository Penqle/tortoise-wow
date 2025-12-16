#pragma once
#include "scriptPCH.h"

namespace Silithus {
    namespace CreatureEntries
    {
        static constexpr uint32 KRUG_SKULLSPLIT = 15612;
        static constexpr uint32 MEROK_LONGSTRIDE = 15613;
        static constexpr uint32_t SHADOW_PRIESTESS_SHAI = 15615;
        static constexpr uint32 HIVEREGAL_HUNTERKILLER = 15620;
    }
    namespace Locations
    {
        static const Movement::Location HUNTERKILLER_SPAWN = { -7765.0f, 536.0f, -43.0f, 0.8f };
        static const Movement::Location MEROK_SPAWN = { -7537.149902f, 731.184021f, -16.418100f, 0.0f };
        static const Movement::Location MEROK_DESTINATION = { -7542.45f, 720.155f, -15.6801f, 0.0f };
        static const Movement::Location SHAI_SPAWN = { -7556.600098f, 749.007019f, -17.578800f, 0.0f };
        static const Movement::Location SHAI_DESTINATION = { -7553.46f, 720.924f, -16.715f, 0.0f };
    }
    namespace QuestEntries
    {
        static constexpr uint32_t FIELD_DUTY = 8731;
        static constexpr uint32_t FIELD_DUTY_PAPERS = 8732;
    }
}