#pragma once

#include "scriptPCH.h"

namespace Silithus
{
    namespace Creatures
    {
        constexpr uint32_t ENTRY_ARCANIST_NOZZLESPRING = 15444;
        constexpr uint32_t ENTRY_CAPTAIN_BLACKANVIL = 15440;
        constexpr uint32_t ENTRY_HIVEZORA_ABOMINATION = 15449;
        constexpr uint32_t ENTRY_IRONFORGE_BRIGADE_RIFLEMAN = 15441;
        constexpr uint32_t ENTRY_IRONFORGE_BRIGADE_FOOTMAN = 15442;
        constexpr uint32_t ENTRY_JANELA_STOUTHAMMER = 15443;
        constexpr uint32_t ENTRY_SERGEANT_CARNES = 15903;
        constexpr uint32_t ENTRY_TRIGGER_FIELD_DUTY_ALLIANCE = 2509000;
    }
    namespace Locations
    {
        const Movement::Location ABOMINATION_WAYPOINT_1 = { -7234.162598f, 1470.889160f, -3.571612f, 4.986561f };
        const Movement::Location ABOMINATION_WAYPOINT_2 = { -7214.748047f, 1465.987915f, -3.051697f, 5.041565f };
        const Movement::Location ABOMINATION_WAYPOINT_3 = { -7209.780273f, 1443.156372f, 0.191624f, 4.884490f };
        const Movement::Location ABOMINATION_WAYPOINT_4 = { -7221.453613f, 1422.600952f, 4.265128f, 4.311142f };
        const Movement::Location ABOMINATION_WAYPOINT_5 = { -7212.569824f, 1410.401855f, 4.858830f, 6.050784f };

        const Movement::Location DESTINATION_ARCANIST_NOZZLESPRING = { -7175.953125f, 1394.582397f, 2.393672f, 2.339775f };
        const Movement::Location DESTINATION_CAPTAIN_BLACKANVIL_BEHIND_JANELA = { -7176.211426f, 1392.341431f, 2.746486f, 3.235070f };
        const Movement::Location DESTINATION_CAPTAIN_BLACKANVIL_FACING_ABOMINATION = { -7180.381836f, 1396.202393f, 2.689095f, 2.375059f };
        const Movement::Location DESTINATION_CAPTAIN_BLACKANVIL_CIRCLE = { -7168.180176f, 1389.300049f, 2.918020f, 6.245930f };
        const Movement::Location DESTINATION_SERGEANT_CARNES = { -7170.078125f, 1393.035156f, 2.766693f, 3.152663f };
        const Movement::Location DESTINATION_SOLDIER_SLOT_1 = { -7179.231445f, 1387.700317f, 2.918770f, 2.28552f };
        const Movement::Location DESTINATION_SOLDIER_SLOT_2 = { -7177.375000f, 1389.222656f, 2.918175f, 2.28552f };
        const Movement::Location DESTINATION_SOLDIER_SLOT_3 = { -7175.549805f, 1390.849243f, 2.858345f, 2.28552f };
        const Movement::Location DESTINATION_SOLDIER_SLOT_4 = { -7173.26f, 1392.86f, 2.6812f, 2.29339f };
        const Movement::Location DESTINATION_SOLDIER_SLOT_5 = { -7177.499023f, 1385.545288f, 2.919770f, 2.285518f };
        const Movement::Location DESTINATION_SOLDIER_SLOT_6 = { -7175.782715f, 1387.070435f, 2.919770f, 2.285518f };
        const Movement::Location DESTINATION_SOLDIER_SLOT_7 = { -7173.817383f, 1388.816772f, 2.917540f, 2.285518f };
        const Movement::Location DESTINATION_SOLDIER_SLOT_8 = { -7171.614258f, 1390.774292f, 2.881454f, 2.285518f };
        const Movement::Location DESTINATION_SOLDIER_SLOT_9 = { -7175.584473f, 1383.584717f, 2.919770f, 2.285518f };
        const Movement::Location DESTINATION_SOLDIER_SLOT_10 = { -7173.808594f, 1385.200684f, 2.919770f, 2.285518f };
        const Movement::Location DESTINATION_SOLDIER_SLOT_11 = { -7172.032227f, 1386.816528f, 2.919770f, 2.285518f };
        const Movement::Location DESTINATION_SOLDIER_SLOT_12 = { -7169.93f, 1388.73f, 2.91418f, 2.28552f };

        const Movement::Location SPAWN_ARCANIST_NOZZLESPRING = { -7166.91f, 1404.12f, 2.9306f, 3.28122f };
        const Movement::Location SPAWN_CAPTAIN_BLACKANVIL = { -7163.359375f, 1379.957153f, 2.919599f, 2.001992f };
        const Movement::Location SPAWN_JANELA_STOUTHAMMER = { -7178.58f,1392.09f, 2.8017f, 2.25148f };
        const Movement::Location SPAWN_HIVEZORA_ABOMINATION = { -7241.503418f, 1503.582397f, -6.574957f, 4.990405f };
        const Movement::Location FETCH_CAPTAIN_BLACKANVIL = { -7161.420410f, 1380.781494f, 2.919599f, 3.663123f };
    }
    namespace Quests
    {
        const uint32_t QUEST_FIELD_DUTY = 8507;
    }
    namespace ScriptTexts
    {
        constexpr int SCRIPT_TEXT_JANELA_LOOK_ALIVE = -1250902;
        constexpr int SCRIPT_TEXT_JANELA_LOOKOUT_SPOTTED = -1250900;
        constexpr int SCRIPT_TEXT_JANELA_SEND_SOLDIER = -1250901;
        constexpr int SCRIPT_TEXT_BLACKANVIL_BETTER_BE_IMPORTANT = -1250904;
        constexpr int SCRIPT_TEXT_BLACKANVIL_COMPLAINS_ABOUT_DAY = -1250905;
        constexpr int SCRIPT_TEXT_BLACKANVIL_FORM_A_LINE = -1250909;
        constexpr int SCRIPT_TEXT_BLACKANVIL_OPEN_FIRE = -1250908;
        constexpr int SCRIPT_TEXT_BLACKANVIL_STAND_READY = -1250907;
        constexpr int SCRIPT_TEXT_SOLDIER_ANNOUNCE_PROBLEM = -1250903;
    }
    namespace EventState
    {
        enum EventState
        {
            WAITING_FOR_START,
            DIALOG_IN_PROGRESS,
            FIGHT_IN_PROGRESS,
            FINISHED,
        };
    }
}
