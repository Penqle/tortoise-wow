/*
 * Copyright (C) 2017-2018 namreeb (legal@namreeb.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of namreeb.
 */

#ifndef __WARDENWIN_HPP_
#define __WARDENWIN_HPP_

#include "Warden.hpp"
#include "WardenScan.hpp"
#include "WorldPacket.h"

#include <vector>

struct ChallengeResponseEntry;
class WorldSession;
class BigNumber;


#ifndef WIN32
using ULONG = unsigned long;
using USHORT = unsigned short;
using UCHAR = unsigned char;
using ULONGLONG = unsigned long long;
using LONGLONG = long long;
using BOOLEAN = unsigned char;
using DWORD64 = uint64_t;
using LONG = long;
using ULONG64 = uint64_t;
using WCHAR = wchar_t;

typedef union _LARGE_INTEGER {
    struct {
        DWORD LowPart;
        LONG HighPart;
    } DUMMYSTRUCTNAME;
    struct {
        DWORD LowPart;
        LONG HighPart;
    } u;
    LONGLONG QuadPart;
} LARGE_INTEGER;

#define MAXIMUM_XSTATE_FEATURES             (64)

typedef struct _XSTATE_FEATURE {
    DWORD Offset;
    DWORD Size;
} XSTATE_FEATURE, * PXSTATE_FEATURE;

typedef struct _XSTATE_CONFIGURATION {
    // Mask of all enabled features
    DWORD64 EnabledFeatures;

    // Mask of volatile enabled features
    DWORD64 EnabledVolatileFeatures;

    // Total size of the save area for user states
    DWORD Size;

    // Control Flags
    union {
        DWORD ControlFlags;
        struct
        {
            DWORD OptimizedSave : 1;
            DWORD CompactionEnabled : 1;
        };
    };

    // List of features
    XSTATE_FEATURE Features[MAXIMUM_XSTATE_FEATURES];

    // Mask of all supervisor features
    DWORD64 EnabledSupervisorFeatures;

    // Mask of features that require start address to be 64 byte aligned
    DWORD64 AlignedFeatures;

    // Total size of the save area for user and supervisor states
    DWORD AllFeatureSize;

    // List which holds size of each user and supervisor state supported by CPU
    DWORD AllFeatures[MAXIMUM_XSTATE_FEATURES];

    // Mask of all supervisor features that are exposed to user-mode
    DWORD64 EnabledUserVisibleSupervisorFeatures;

} XSTATE_CONFIGURATION, * PXSTATE_CONFIGURATION;


#endif


enum class SharedDataField
{
    TimeZoneBias,
    LargePageMinimum,
    SuiteMask,
    MitigationPolicies,
    NumberOfPhysicalPages,
    SharedDataFlags,
    TestRetInstruction,
    QpcFrequency,
    QpcSystemTimeIncrement,
    UnparkedProcessorCount,
    EnclaveFeatureMask,
    QpcData,
    TimeZoneId
};

typedef struct _KSYSTEM_TIME
{
    ULONG LowPart;
    LONG High1Time;
    LONG High2Time;
} KSYSTEM_TIME, * PKSYSTEM_TIME;

struct SharedDataCompact
{
    KSYSTEM_TIME TimeZoneBias;
    ULONG LargePageMinimum;
    ULONG SuiteMask;
    UCHAR MitigationPolicies;
    ULONG NumberOfPhysicalPages;
    ULONG SharedDataFlags;
    ULONGLONG TestResInstruction;
    LONGLONG QpcFrequency;
    ULONGLONG QpcSystemTimeIncrement;
    ULONG UnparkedProcessorCount;
    ULONG EnclaveFeatureMask;
    USHORT QpcData;
    ULONG TimeZoneId;
};

enum class OsVersion
{
    None = 0,
    WindowsXP,
    WindowsVista,
    Windows7,
    Windows8,
    Windows10AndUp
};


#pragma pack (push, 1)
struct WIN_SYSTEM_INFO {
    union {
        uint32  dwOemId;
        struct {
            uint16 wProcessorArchitecture;
            uint16 wReserved;
        };
    };
    uint32 dwPageSize;
    uint32 lpMinimumApplicationAddress;
    uint32 lpMaximumApplicationAddress;
    uint32 dwActiveProcessorMask;
    uint32 dwNumberOfProcessors;
    uint32 dwProcessorType;
    uint32 dwAllocationGranularity;
    uint16 wProcessorLevel;
    uint16 wProcessorRevision;
};
#pragma pack (pop)

static_assert(sizeof(WIN_SYSTEM_INFO) == 0x24, "WIN_SYSTEM_INFO wrong size");

constexpr uint32 MaxReadSize = 0x03C6 + sizeof(USHORT);

class WardenWin final : public Warden
{
    private:
        // pointer in client memory to the loaded warden module.  as this should never change once the module is loaded,
        // it is only read once (upon initial login)
        uint32 _wardenAddress;

        WIN_SYSTEM_INFO _sysInfo;

        bool _sysInfoSaved;
        bool _proxifierFound;

        ULONG _majorVersion = 0;
        ULONG _minorVersion = 0;
        OsVersion _osVersion = OsVersion::None;
        uint32 _readsizeLeft = MaxReadSize;
        uint32 _dataOffset = 0;
        bool _triggerPrintSave = false;

        turtle_vector<uint8, Category_Anticheat> _inDataBuffer;

        std::unique_ptr<SharedDataCompact> _sharedData;

        std::string _hypervisors;

        WorldPacket _charEnum;

        uint32 _lastClientTime;
        uint32 _lastHardwareActionTime;
        uint32 _lastTimeCheckServer;

        bool _endSceneFound;
        uint32 _endSceneAddress;

        void ValidateEndScene(const std::vector<uint8> &code);

        virtual uint32 GetScanFlags() const;

        // send module initialization information (function offsets, etc.)
        virtual void InitializeClient();

        template <typename T>
        void Convert(T& val, turtle_vector<uint8, Category_Anticheat>& buffer, SharedDataField field)
        {
            val = *reinterpret_cast<T*>(&buffer[GetSharedDataFieldOffset(field)]);
        }

        void ConvertPrintData(turtle_vector<uint8, Category_Anticheat>& buffer);
        void SetOSVersion();
        void FinalizeDataCapture(turtle_vector<uint8, Category_Anticheat>& fullBuffer);
        uint32 GetSharedDataFieldOffset(SharedDataField field);

        /* 
            (a, b) initialization packet options:

            (4, 0) -> "lua string check" initialization
                <uint8 len><module name>
                    -- no null terminator
                    -- passed to GetModuleHandle(), therefore passing 0 means wow.exe
                <uint32 offset from module base>
                <uint8, 0 or 1 for which function pointer, __fastcall or __cdecl)
                    -- funcptr[0] has preference
                    -- if (!funcptr[0]) funcptr[1]();
                    -- 'str' given in lua string check packet
                    -- 0: const char * (__fastcall *)(str, 0, 0)
                    -- 1: const char * (__cdecl *)(str, 0, 0)

            (1, 0) -> "file hash check" initialization
                <uint8 option>
                        int __stdcall SFileOpenFile(const char *filename, SFile **result)
                        int __stdcall SFileGetFileSize(SFile *file, unsigned int *result)
                        void __stdcall SFileCloseFile(SFile *file)

                    -- 1:
                        int __stdcall SFileReadFile(SFile *file, void *buffer, unsigned int bytesToRead, unsigned int *bytesRead, void *overlap)
                    -- 2:
                        int __stdcall SFileReadFile(SFile *file, void *buffer, unsigned int bytesToRead, unsigned int *bytesRead, void *overlap, void *asyncparam)

                <uint8 len><module name>
                    -- no null terminator
                    -- passed to GetModuleHandle(), therefore passing 0 means wow.exe
                <uint32 SFileOpenFile offset>
                <uint32 SFileGetFileSize offset>
                <uint32 SFileReadFile offset>
                <uint32 SFileCloseFile offset>

            (1, 1) -> "timing check" initialization
                <uint8 len><module name>
                    -- no null terminator
                    -- passed to GetModuleHandle(), therefore passing 0 means wow.exe
                <uint32 offset from module base>
                    -- int (__thiscall *)(WardenSysInfo *)
                <uint8 option>
                    -- 0 to clear function pointer, 1 to write
            */

        // initialization packets
        void BuildLuaInit(const std::string &module, bool fastcall, uint32 offset, ByteBuffer &out) const;
        void BuildFileHashInit(const std::string &module, bool asyncparam, uint32 openOffset, uint32 sizeOffset,
            uint32 readOffset, uint32 closeOffset, ByteBuffer &out) const;
        void BuildTimingInit(const std::string &module, uint32 offset, bool set, ByteBuffer &out) const;

        std::shared_ptr<WindowsScan> MakeDynamicDataScan(WardenWin* warden, uint32& offset,
            uint32& sizeLeft,
            turtle_vector<uint8, Category_Anticheat>& output);

    public:
        static void LoadScriptedScans();

        WardenWin(WorldSession *session, const BigNumber &K, SessionAnticheatInterface *anticheat);

        void Update() override;

        // set pending character enum packet (to be sent once we are satisfied that Warden is loaded)
        virtual void SetCharEnumPacket(WorldPacket &&packet);

        virtual void SendPlayerInfo(ChatHandler *handler, bool includeFingerprint) const;
};

#endif /*!__WARDENWIN_HPP_*/