#pragma once
#include "Common.h"
#include "SharedDefines.h"
#include <atomic>
#include <unordered_map>
#include <unordered_set>
#include <vector>
#include <type_traits>


class WorldSession;

enum class AnalysisAttribute
{
    ActiveCpus,
    TotalCpus,
    PageSize,
    TimeZoneBias,
    SuiteMask,
    MitPolicies,
    NumPhysicalPages,
    SharedDataFlags,
    UnparkedCpuCount,
    EnclaveMask,
    QpcData,
    MaxAttributes
};

static uint32 AnalysisAttributeWeight(AnalysisAttribute attr)
{
    static std::unordered_map<AnalysisAttribute, uint32> lookup =
    {
        {AnalysisAttribute::ActiveCpus, 40}, // Idem
        {AnalysisAttribute::TotalCpus, 40}, // Idem
        {AnalysisAttribute::PageSize, 50}, // All sim
        {AnalysisAttribute::TimeZoneBias, 150}, // Simply doesn't alter on its own only for DST
        {AnalysisAttribute::SuiteMask, 150}, // No altering
        {AnalysisAttribute::NumPhysicalPages, 100}, // Only HW mod alters
        {AnalysisAttribute::SharedDataFlags, 30}, // seldom alters
        {AnalysisAttribute::UnparkedCpuCount, 30}, // doesnt unless C-states BIOS is altered
        {AnalysisAttribute::EnclaveMask, 70}, // Does not alter
        {AnalysisAttribute::QpcData, 120} // Idem as ^
    };

    return lookup[attr];
}



template <typename T, typename... Rest>
void hash_combine(std::size_t& seed, const T& v, const Rest&... rest)
{
    seed ^= std::hash<T>{}(v)+0x9e3779b9 + (seed << 6) + (seed >> 2);
    (hash_combine(seed, rest), ...);
}


struct AnalysisInfo
{
    uint32 fingerprint = 0;
    std::string ipAddress = "";
    std::string cpuType = "";
    uint32 activeCpus = 0;
    uint32 totalCpus = 0;
    uint32 pageSize = 0;
    uint32 timeZoneBias = 0;
    uint32 suiteMask = 0;
    uint32 mitPolicies = 0;
    uint32 numPhysicalPages = 0;
    uint32 sharedDataFlags = 0;
    uint32 unparkedCpuCount = 0;
    uint32 enclaveMask = 0;
    uint32 qpcData = 0;
    bool useExtendedData = false;
    bool useCpuData = false;
    uint32 timeZoneId = 0;

    size_t GetHash() const
    {
        if (!useExtendedData)
            return 0;

        size_t seed = 0;
        return hash_combine(seed, activeCpus, totalCpus, pageSize, timeZoneBias, suiteMask, mitPolicies, numPhysicalPages, sharedDataFlags
            , unparkedCpuCount, enclaveMask, qpcData), seed;
    }

    bool UseExtendedData() const { return useExtendedData; }
    bool UseCpuData() const { return useCpuData; }
    bool IsUsable() const { return fingerprint && !ipAddress.empty() && !cpuType.empty(); }
};


class AccountAnalyser
{
public:
    AccountAnalyser(WorldSession* session);

    void LoadFromDB();
    void Initialize();

    void Enable() { _enabled = true; }
    bool IsActive() const { return _enabled; }

    AnalysisInfo& GetCurrentSample() { return _currentSample; }

    void CheckExtendedPrintMark();
    static bool IsAutoBannedPrint(uint64 extendedPrint);

    uint32& RescheduleTimer() { return _rescheduleTimer; }

    static void LoadFingerprintsCallback(QueryResult* result, uint32 SessionID);
    static void LoadIPHistoryCallback(QueryResult* result, uint32 SessionID);

    static void CheckExtendedHashes();
    static void MarkExtendedPrint(uint64 extendedPrint);
    static void AddAutoBanExtendedPrint(uint64 extendedPrint);

private:
    WorldSession* _session;
    uint32 _accountId;
    std::atomic_int m_loadStep = 0;

    turtle_vector<AnalysisInfo, Category_Anticheat> _loadedSamples;
    turtle_unordered_set<uint32, Category_Anticheat> _fingerprintSampleLookup;
    turtle_unordered_map<std::string, std::pair<uint32, bool>, Category_Anticheat> _ipHistory;

    AnalysisInfo _currentSample;
    bool _enabled = false; // only enable if we get any data at all from client.

    uint32 _totalLogins = 0;
    uint32 _rescheduleTimer = 0;

    constexpr static int LoadSteps = 2;

    bool IsLoaded() const { return m_loadStep.load(std::memory_order_acquire) >= LoadSteps; }


    inline static std::unordered_set<uint64> _markedExtendedPrints;
    inline static std::unordered_set<uint64> _autoBannedPrints;
};