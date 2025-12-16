#ifndef PERFSTATS_H
#define PERFSTATS_H

namespace PerfStats
{
    extern int g_totalUnits;
    extern int g_totalCreatures;
    extern int g_totalPets;
    extern int g_totalPlayers;
    extern int g_totalCorpses;
    extern int g_totalItems;
    extern int g_totalGameObjects;
    extern int g_totalDynamicObjects;
    extern int g_totalQueryResults;
    extern int g_totalMaps;

    extern int g_slowestMapId;
    extern int g_slowestMapUpdateTime;
};

#endif