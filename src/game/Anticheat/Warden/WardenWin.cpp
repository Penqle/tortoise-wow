/*
 * Copyright (C) 2017-2018 namreeb (legal@namreeb.org)
 * Jamey(boor) 2022
 * This is private software and may not be shared under any circumstances,
 * absent permission of namreeb.
 */

#include "Warden.hpp"
#include "WardenWin.hpp"
#include "WardenModuleMgr.hpp"
#include "WardenScanMgr.hpp"
#include "WardenScan.hpp"
#include "../libanticheat.hpp"
#include "World.h"
#include "../Config.hpp"
#include "Language.h"

#include "Unit.h"
#include "Chat.h"
#include "WorldSession.h"
#include "Auth/BigNumber.h"
#include "Auth/HMACSHA1.h"
#include "ByteBuffer.h"
#include "Database/DatabaseEnv.h"
#include "Player.h"
#include "AccountMgr.h"
#include "Analysis/AccountAnalyser.hpp"

#include <string>
#include <vector>
#include <memory>
#include <sstream>
#include <iomanip>
#include <locale>
#include <codecvt>
#include <type_traits>
#include <unordered_map>


typedef enum _NT_PRODUCT_TYPE
{
    NtProductWinNt = 1,
    NtProductLanManNt = 2,
    NtProductServer = 3
} NT_PRODUCT_TYPE;

typedef enum _ALTERNATIVE_ARCHITECTURE_TYPE
{
    StandardDesign = 0,
    NEC98x86 = 1,
    EndAlternatives = 2
} ALTERNATIVE_ARCHITECTURE_TYPE;

/*
*     LargePageMinimum,
    SuiteMask,
    MitigationPolicies,
    NumberOfPhysicalPages,
    SharedDataFlags,
    TestRetInstruction,
    QpcFrequency,
    QpcSystemTimeIncrement,
    UnparkedProcessorCount,
    EnclaveFeatureMask,
    QpcData
*/

uint32 WardenWin::GetSharedDataFieldOffset(SharedDataField field)
{
    switch (field)
    {
    case SharedDataField::TimeZoneBias:
        return 0x20;
    case SharedDataField::LargePageMinimum:
        return 0x0244;
    case SharedDataField::SuiteMask:
        return 0x02D0;
    case SharedDataField::MitigationPolicies:
        return 0x02D5;
    case SharedDataField::NumberOfPhysicalPages:
        return 0x02E8;
    case SharedDataField::SharedDataFlags:
        return 0x02F0;
    case SharedDataField::TestRetInstruction:
        return 0x02F8;
    case SharedDataField::QpcFrequency:
        return 0x0300;
    case SharedDataField::QpcSystemTimeIncrement:
        return 0x0358;
    case SharedDataField::UnparkedProcessorCount:
        return 0x03C0;
    case SharedDataField::EnclaveFeatureMask:
        return 0x036C;
    case SharedDataField::QpcData:
        return 0x03C6;
    case SharedDataField::TimeZoneId:
        return 0x0240;
    default:
        return 0xBEEF;
    }

    /*static std::unordered_map<SharedDataField, std::unordered_map<OsVersion, uint32>> table =
    {
        {SharedDataField::TimeZoneBias, 
            {
                {OsVersion::WindowsXP, }
            }
        },

    };*/
}

std::string OsVersionToString(OsVersion version)
{
    switch (version)
    {
    case OsVersion::None:
        return "None";
    case OsVersion::WindowsXP:
        return "WinXP";
    case OsVersion::Windows7:
        return "Win7";
    case OsVersion::Windows8:
        return "Win8";
    case OsVersion::WindowsVista:
        return "Vista";
    case OsVersion::Windows10AndUp:
        return "Win10Up";
    default:
        return "<Unknown>";
    }
}

void WardenWin::SetOSVersion()
{
    //expects _minor and _major version to be here.
    if (_majorVersion == 5)
    {
        _osVersion = OsVersion::WindowsXP;
    }

    if (_majorVersion == 6)
    {
        if (_minorVersion == 0)
            _osVersion = OsVersion::WindowsVista;

        if (_minorVersion == 1)
            _osVersion = OsVersion::Windows7;

        if (_minorVersion == 2 || _minorVersion == 3)
            _osVersion = OsVersion::Windows8;
    }

    if (_majorVersion >= 10)
        _osVersion = OsVersion::Windows10AndUp;
}



#pragma pack(push, 1)
template <OsVersion Version, typename = void>
struct AIT_SAMPLING_PART
{

};

template <OsVersion Version>
struct AIT_SAMPLING_PART<Version, typename std::enable_if_t<
    ((Version) >= OsVersion::WindowsVista)>>
{
    ULONG                         AitSamplingValue;
    ULONG                         AppCompatFlag;
    ULONGLONG                     RNGSeedVersion;
    ULONG                         GlobalValidationRunlevel;
    LONG                          TimeZoneBiasStamp;
};

template <OsVersion Version, typename = void>
struct BUILDNUMBER_PART
{

};

template <OsVersion Version>
struct BUILDNUMBER_PART<Version, typename std::enable_if_t<
    ((Version) == OsVersion::WindowsXP)>>
{
    ULONG                         Reserved2[8];
};

template <OsVersion Version>
struct BUILDNUMBER_PART<Version, typename std::enable_if_t<
    ((Version) == OsVersion::WindowsVista || Version == OsVersion::Windows7)>>
{
    ULONG                         Reserved2[7];
};

template <OsVersion Version>
struct BUILDNUMBER_PART<Version, typename std::enable_if_t<
    ((Version) == OsVersion::Windows8)>>
{
    ULONG                         Reserved2;
};

template <OsVersion Version>
struct BUILDNUMBER_PART<Version, typename std::enable_if_t<
    ((Version) == OsVersion::Windows10AndUp)>>
{
    ULONG                         NtBuildNumber;
};


template <OsVersion Version, typename = void>
struct TSC_PART
{

};

template <OsVersion Version>
struct TSC_PART<Version, typename std::enable_if_t<
    (Version == OsVersion::Windows7)>>
{
    union {
        UCHAR TscQpcData;
        struct {
            UCHAR TscQpcEnabled : 1;        // 0x01
            UCHAR TscQpcSpareFlag : 1;      // 0x02
            UCHAR TscQpcShift : 6;          // 0xFC
        };
    };
};

template <OsVersion Version>
struct TSC_PART<Version, typename std::enable_if_t<
    ((Version) == OsVersion::Windows10AndUp)>>
{
    UCHAR VirtualizationFlags;
};


template <OsVersion Version, typename = void>
struct TSC_PART_2
{

};

template <OsVersion Version>
struct TSC_PART_2<Version, typename std::enable_if_t<
    (Version == OsVersion::Windows7 || Version == OsVersion::Windows10AndUp)>>
{
    UCHAR TscQpcPad[2];
};

template <OsVersion Version>
struct TSC_PART_2<Version, typename std::enable_if_t<
    ((Version) == OsVersion::Windows8)>>
{
    UCHAR Reserved12[3];
};

template <OsVersion Version, typename = void>
struct TRACELOG_PART
{

};

template <OsVersion Version>
struct TRACELOG_PART<Version, typename std::enable_if_t<
    (Version == OsVersion::WindowsXP)>>
{
    ULONG TraceLogging;
};

template <OsVersion Version>
struct TRACELOG_PART<Version, typename std::enable_if_t<
    ((Version) >= OsVersion::WindowsVista)>>
{
    ULONG SharedDataFlags;
};


template <OsVersion Version, typename = void>
struct PAD_PART_1
{

};

template <OsVersion Version>
struct PAD_PART_1<Version, typename std::enable_if_t<
    (Version >= OsVersion::Windows7)>>
{
    ULONG DataFlagsPad[1];
};


template <OsVersion Version, typename = void>
struct QPC_SYSTEM_TIME
{

};

template <OsVersion Version>
struct QPC_SYSTEM_TIME<Version, typename std::enable_if_t<
    (Version == OsVersion::Windows8)>>
{
    ULONG QpcSystemTimeIncrement32;
    ULONG QpcInterruptTimeIncrement32;
};



template <OsVersion Version> 
struct KUSER_SHARED_DATA
{
    ULONG                         TickCountLowDeprecated;
    ULONG                         TickCountMultiplier;
    KSYSTEM_TIME                  InterruptTime;
    KSYSTEM_TIME                  SystemTime;
    KSYSTEM_TIME                  TimeZoneBias;
    USHORT                        ImageNumberLow;
    USHORT                        ImageNumberHigh;
    WCHAR                         NtSystemRoot[0x0104];
    ULONG                         MaxStackTraceDepth;
    ULONG                         CryptoExponent;
    ULONG                         TimeZoneId;
    ULONG                         LargePageMinimum;
    AIT_SAMPLING_PART<Version>    SamplingPart;
    BUILDNUMBER_PART<Version>     BuildNumberPart;
    NT_PRODUCT_TYPE               NtProductType;
    BOOLEAN                       ProductTypeIsValid;
    BOOLEAN                       Reserved0[1]; // same for V
    USHORT                        NativeProcessorArchitecture; // dont read on lower than 6.2
    ULONG                         NtMajorVersion;
    ULONG                         NtMinorVersion;
    BOOLEAN                       ProcessorFeatures[0x40];
    ULONG                         Reserved1;
    ULONG                         Reserved3;
    ULONG                         TimeSlip;
    ALTERNATIVE_ARCHITECTURE_TYPE AlternativeArchitecture;
    ULONG                         BootId; // ULONG AltArchitecturePad [1] pre win 10.
    LARGE_INTEGER                 SystemExpirationDate;
    ULONG                         SuiteMask;
    BOOLEAN                       KdDebuggerEnabled;
    union { //NXSupportPolicy pre 6.2
        UCHAR MitigationPolicies;
        struct {
            UCHAR NXSupportPolicy : 2;
                UCHAR SEHValidationPolicy : 2;
            UCHAR CurDirDevicesSkippedForDlls : 2;
            UCHAR Reserved : 2;
        };
    };

    USHORT                        CyclesPerYield; // dont read for < 1903
    ULONG                         ActiveConsoleId;
    ULONG                         DismountCount;
    ULONG                         ComPlusPackage;
    ULONG                         LastSystemRITEventTickCount;
    ULONG                         NumberOfPhysicalPages;
    BOOLEAN                       SafeBootMode;
    TSC_PART<Version>             TscPart;
    TSC_PART_2<Version>           TscPart2;
    TRACELOG_PART<Version>        Tracelog;
    PAD_PART_1<Version>           Pad;
    ULONGLONG                     TestRetInstruction;
    LONGLONG                      QpcFrequency;
    ULONG                         SystemCall;
    ULONG                         Reserved2;
    ULONGLONG                     SystemCallPad[2];
    union {
        KSYSTEM_TIME volatile TickCount;
        ULONG64 volatile TickCountQuad;
    };
    ULONG                         Cookie;
    ULONG                         CookiePad[1];
    LONGLONG                      ConsoleSessionForegroundProcessId;
    ULONGLONG                     TimeUpdateLock;
    ULONGLONG                     BaselineSystemTimeQpc;
    ULONGLONG                     BaselineInterruptTimeQpc;
    ULONGLONG                     QpcSystemTimeIncrement;
    ULONGLONG                     QpcInterruptTimeIncrement;
    QPC_SYSTEM_TIME<Version>      QpcSystemTimePart;
    UCHAR                         QpcSystemTimeIncrementShift;
    UCHAR                         QpcInterruptTimeIncrementShift;
};
#pragma pack(pop)

/*
* ULONG                         Reserved1;
    ULONG                         Reserved3;
    ULONG                         TimeSlip;
    ALTERNATIVE_ARCHITECTURE_TYPE AlternativeArchitecture;
    ULONG                         BootId;
    LARGE_INTEGER                 SystemExpirationDate;
    ULONG                         SuiteMask;
    BOOLEAN                       KdDebuggerEnabled;
    union {
        UCHAR MitigationPolicies;
        struct {
            UCHAR NXSupportPolicy : 2;s
            UCHAR SEHValidationPolicy : 2;
            UCHAR CurDirDevicesSkippedForDlls : 2;
            UCHAR Reserved : 2;
        };
    };
    USHORT                        CyclesPerYield;
    ULONG                         ActiveConsoleId;
    ULONG                         DismountCount;
    ULONG                         ComPlusPackage;
    ULONG                         LastSystemRITEventTickCount;
    ULONG                         NumberOfPhysicalPages;
    BOOLEAN                       SafeBootMode;
    union {
        UCHAR VirtualizationFlags;
        struct {
            UCHAR ArchStartedInEl2 : 1;
            UCHAR QcSlIsSupported : 1;
        };
    };
    UCHAR                         Reserved12[2];
    union {
        ULONG SharedDataFlags;
        struct {
            ULONG DbgErrorPortPresent : 1;
            ULONG DbgElevationEnabled : 1;
            ULONG DbgVirtEnabled : 1;
            ULONG DbgInstallerDetectEnabled : 1;
            ULONG DbgLkgEnabled : 1;
            ULONG DbgDynProcessorEnabled : 1;
            ULONG DbgConsoleBrokerEnabled : 1;
            ULONG DbgSecureBootEnabled : 1;
            ULONG DbgMultiSessionSku : 1;
            ULONG DbgMultiUsersInSessionSku : 1;
            ULONG DbgStateSeparationEnabled : 1;
            ULONG SpareBits : 21;
        } DUMMYSTRUCTNAME2;
    } DUMMYUNIONNAME2;
    ULONG                         DataFlagsPad[1];
    ULONGLONG                     TestRetInstruction;
    LONGLONG                      QpcFrequency;
    ULONG                         SystemCall;
    ULONG                         Reserved2;
    ULONGLONG                     SystemCallPad[2];
    union {
        KSYSTEM_TIME TickCount;
        ULONG64      TickCountQuad;
        struct {
            ULONG ReservedTickCountOverlay[3];
            ULONG TickCountPad[1];
        } DUMMYSTRUCTNAME;
    } DUMMYUNIONNAME3;
    ULONG                         Cookie;
    ULONG                         CookiePad[1];
    LONGLONG                      ConsoleSessionForegroundProcessId;
    ULONGLONG                     TimeUpdateLock;
    ULONGLONG                     BaselineSystemTimeQpc;
    ULONGLONG                     BaselineInterruptTimeQpc;
    ULONGLONG                     QpcSystemTimeIncrement;
    ULONGLONG                     QpcInterruptTimeIncrement;
    UCHAR                         QpcSystemTimeIncrementShift;
    UCHAR                         QpcInterruptTimeIncrementShift;
    USHORT                        UnparkedProcessorCount;
    ULONG                         EnclaveFeatureMask[4];
    ULONG                         TelemetryCoverageRound;
    USHORT                        UserModeGlobalLogger[16];
    ULONG                         ImageFileExecutionOptions;
    ULONG                         LangGenerationCount;
    ULONGLONG                     Reserved4;
    ULONGLONG                     InterruptTimeBias;
    ULONGLONG                     QpcBias;
    ULONG                         ActiveProcessorCount;
    UCHAR                         ActiveGroupCount;
    UCHAR                         Reserved9;
    union {
        USHORT QpcData;
        struct {
            UCHAR QpcBypassEnabled;
            UCHAR QpcShift;
        };
    };
    LARGE_INTEGER                 TimeZoneBiasEffectiveStart;
    LARGE_INTEGER                 TimeZoneBiasEffectiveEnd;
    XSTATE_CONFIGURATION          XState;
    KSYSTEM_TIME                  FeatureConfigurationChangeStamp;
    ULONG                         Spare;
    ULONG64                       UserPointerAuthMask;
*/

struct KUSER_PRE_BUILDNUMBER_DATA_1 
{
    ULONG                         TickCountLowDeprecated;
    ULONG                         TickCountMultiplier;
    KSYSTEM_TIME                  InterruptTime;
    KSYSTEM_TIME                  SystemTime;
    KSYSTEM_TIME                  TimeZoneBias;
    USHORT                        ImageNumberLow;
    USHORT                        ImageNumberHigh;
    //wchar systemroot[260] would be here;
};
struct KUSER_BUILDNUMBER_FEATURES_DATA 
{
    ULONG                         MaxStackTraceDepth;
    ULONG                         CryptoExponent;
    ULONG                         TimeZoneId;
    ULONG                         LargePageMinimum;
    ULONG                         AitSamplingValue;
    ULONG                         AppCompatFlag;
    ULONGLONG                     RNGSeedVersion;
    ULONG                         GlobalValidationRunlevel;
    LONG                          TimeZoneBiasStamp;
    ULONG                         NtBuildNumber;
    NT_PRODUCT_TYPE               NtProductType;
    BOOLEAN                       ProductTypeIsValid;
    BOOLEAN                       Reserved0[1];
    USHORT                        NativeProcessorArchitecture;
    ULONG                         NtMajorVersion;
    ULONG                         NtMinorVersion;
    BOOLEAN                       ProcessorFeatures[64];
    ULONG                         Reserved1;
    ULONG                         Reserved3;
    ULONG                         TimeSlip;
    ALTERNATIVE_ARCHITECTURE_TYPE AlternativeArchitecture;
    ULONG                         BootId;
    LARGE_INTEGER                 SystemExpirationDate;
    ULONG                         SuiteMask;
    BOOLEAN                       KdDebuggerEnabled;
    union {
        UCHAR MitigationPolicies;
        struct {
            UCHAR NXSupportPolicy : 2;
            UCHAR SEHValidationPolicy : 2;
            UCHAR CurDirDevicesSkippedForDlls : 2;
            UCHAR Reserved : 2;
        };
    };
    USHORT                        CyclesPerYield;
    ULONG                         ActiveConsoleId;
    ULONG                         DismountCount;
    ULONG                         ComPlusPackage;
    ULONG                         LastSystemRITEventTickCount;
    ULONG                         NumberOfPhysicalPages;
    BOOLEAN                       SafeBootMode;
};

struct KUSER_POST_BUILDNUMBER_UNION_MISC_1 
{
    union {
        UCHAR VirtualizationFlags;
        struct {
            UCHAR ArchStartedInEl2 : 1;
            UCHAR QcSlIsSupported : 1;
        };
    };
    UCHAR                         Reserved12[2];
    union {
        ULONG SharedDataFlags;
        struct {
            ULONG DbgErrorPortPresent : 1;
            ULONG DbgElevationEnabled : 1;
            ULONG DbgVirtEnabled : 1;
            ULONG DbgInstallerDetectEnabled : 1;
            ULONG DbgLkgEnabled : 1;
            ULONG DbgDynProcessorEnabled : 1;
            ULONG DbgConsoleBrokerEnabled : 1;
            ULONG DbgSecureBootEnabled : 1;
            ULONG DbgMultiSessionSku : 1;
            ULONG DbgMultiUsersInSessionSku : 1;
            ULONG DbgStateSeparationEnabled : 1;
            ULONG SpareBits : 21;
        } DUMMYSTRUCTNAME2;
    } DUMMYUNIONNAME2;
    ULONG                         DataFlagsPad[1];
    ULONGLONG                     TestRetInstruction;
    LONGLONG                      QpcFrequency;
    ULONG                         SystemCall;
    ULONG                         Reserved2;
    ULONGLONG                     SystemCallPad[2];
    union {
        KSYSTEM_TIME TickCount;
        ULONG64      TickCountQuad;
        struct {
            ULONG ReservedTickCountOverlay[3];
            ULONG TickCountPad[1];
        } DUMMYSTRUCTNAME;
    } DUMMYUNIONNAME3;
    ULONG                         Cookie;
    ULONG                         CookiePad[1];
    LONGLONG                      ConsoleSessionForegroundProcessId;
    ULONGLONG                     TimeUpdateLock;
    ULONGLONG                     BaselineSystemTimeQpc;
    ULONGLONG                     BaselineInterruptTimeQpc;
    ULONGLONG                     QpcSystemTimeIncrement;
    ULONGLONG                     QpcInterruptTimeIncrement;
    UCHAR                         QpcSystemTimeIncrementShift;
    UCHAR                         QpcInterruptTimeIncrementShift;
    USHORT                        UnparkedProcessorCount;
    ULONG                         EnclaveFeatureMask[4];
    ULONG                         TelemetryCoverageRound;
    USHORT                        UserModeGlobalLogger[16];
    ULONG                         ImageFileExecutionOptions;
    ULONG                         LangGenerationCount;
    ULONGLONG                     Reserved4;
    ULONGLONG                     InterruptTimeBias;
    ULONGLONG                     QpcBias;
    ULONG                         ActiveProcessorCount;
    UCHAR                         ActiveGroupCount;
    UCHAR                         Reserved9;
};

struct KUSER_MODIFIED_XSTATE_CONFIGURATION
{
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
    //XSTATE_FEATURE Features[MAXIMUM_XSTATE_FEATURES]; disable read

    //KUSER_MODIFIED_XSTATE_CONFIGURATION_2 here
    

    //dont read this VVVVVVVVV
    
    // List which holds size of each user and supervisor state supported by CPU
    //DWORD AllFeatures[MAXIMUM_XSTATE_FEATURES];

    // Mask of all supervisor features that are exposed to user-mode
    //DWORD64 EnabledUserVisibleSupervisorFeatures;
};

struct KUSER_MODIFIED_XSTATE_CONFIGURATION_2
{
    // Mask of all supervisor features
    DWORD64 EnabledSupervisorFeatures;

    // Mask of features that require start address to be 64 byte aligned
    DWORD64 AlignedFeatures;

    // Total size of the save area for user and supervisor states
    DWORD AllFeatureSize;
};

struct KUSER_POST_BUILDNUMBER_UNION_MISC_2 
{
    union {
        USHORT QpcData;
        struct {
            UCHAR QpcBypassEnabled;
            UCHAR QpcShift;
        };
    };
    LARGE_INTEGER                               TimeZoneBiasEffectiveStart;
    LARGE_INTEGER                               TimeZoneBiasEffectiveEnd;
    KUSER_MODIFIED_XSTATE_CONFIGURATION         XState;
    KUSER_MODIFIED_XSTATE_CONFIGURATION_2       XState2;
    KSYSTEM_TIME                                FeatureConfigurationChangeStamp;
    ULONG                                       Spare;
    ULONG64                                     UserPointerAuthMask;
};

struct KUSER_SHARED_DATA_STRUCTURED 
{
    KUSER_PRE_BUILDNUMBER_DATA_1 PreBuildData;
    KUSER_BUILDNUMBER_FEATURES_DATA BuildFeaturesData;
    KUSER_POST_BUILDNUMBER_UNION_MISC_1 PostBuildUnionDataMisc;
    KUSER_POST_BUILDNUMBER_UNION_MISC_2 PostBuildUnionDataMisc2;
};



struct _KUSER_SHARED_DATA_WINDOWS_10
{
    ULONG                         TickCountLowDeprecated;
    ULONG                         TickCountMultiplier;
    KSYSTEM_TIME                  InterruptTime;
    KSYSTEM_TIME                  SystemTime;
    KSYSTEM_TIME                  TimeZoneBias;
    USHORT                        ImageNumberLow;
    USHORT                        ImageNumberHigh;
    WCHAR                         NtSystemRoot[260];
    ULONG                         MaxStackTraceDepth;
    ULONG                         CryptoExponent;
    ULONG                         TimeZoneId;
    ULONG                         LargePageMinimum;
    ULONG                         AitSamplingValue;
    ULONG                         AppCompatFlag;
    ULONGLONG                     RNGSeedVersion;
    ULONG                         GlobalValidationRunlevel;
    LONG                          TimeZoneBiasStamp;
    ULONG                         NtBuildNumber;
    NT_PRODUCT_TYPE               NtProductType;
    BOOLEAN                       ProductTypeIsValid;
    BOOLEAN                       Reserved0[1];
    USHORT                        NativeProcessorArchitecture;
    ULONG                         NtMajorVersion;
    ULONG                         NtMinorVersion;
    BOOLEAN                       ProcessorFeatures[64];
    ULONG                         Reserved1;
    ULONG                         Reserved3;
    ULONG                         TimeSlip;
    ALTERNATIVE_ARCHITECTURE_TYPE AlternativeArchitecture;
    ULONG                         BootId;
    LARGE_INTEGER                 SystemExpirationDate;
    ULONG                         SuiteMask;
    BOOLEAN                       KdDebuggerEnabled;
    union {
        UCHAR MitigationPolicies;
        struct {
            UCHAR NXSupportPolicy : 2;
            UCHAR SEHValidationPolicy : 2;
            UCHAR CurDirDevicesSkippedForDlls : 2;
            UCHAR Reserved : 2;
        };
    };
    USHORT                        CyclesPerYield;
    ULONG                         ActiveConsoleId;
    ULONG                         DismountCount;
    ULONG                         ComPlusPackage;
    ULONG                         LastSystemRITEventTickCount;
    ULONG                         NumberOfPhysicalPages;
    BOOLEAN                       SafeBootMode;
    union {
        UCHAR VirtualizationFlags;
        struct {
            UCHAR ArchStartedInEl2 : 1;
            UCHAR QcSlIsSupported : 1;
        };
    };
    UCHAR                         Reserved12[2];
    union {
        ULONG SharedDataFlags;
        struct {
            ULONG DbgErrorPortPresent : 1;
            ULONG DbgElevationEnabled : 1;
            ULONG DbgVirtEnabled : 1;
            ULONG DbgInstallerDetectEnabled : 1;
            ULONG DbgLkgEnabled : 1;
            ULONG DbgDynProcessorEnabled : 1;
            ULONG DbgConsoleBrokerEnabled : 1;
            ULONG DbgSecureBootEnabled : 1;
            ULONG DbgMultiSessionSku : 1;
            ULONG DbgMultiUsersInSessionSku : 1;
            ULONG DbgStateSeparationEnabled : 1;
            ULONG SpareBits : 21;
        } DUMMYSTRUCTNAME2;
    } DUMMYUNIONNAME2;
    ULONG                         DataFlagsPad[1];
    ULONGLONG                     TestRetInstruction;
    LONGLONG                      QpcFrequency;
    ULONG                         SystemCall;
    ULONG                         Reserved2;
    ULONGLONG                     SystemCallPad[2];
    union {
        KSYSTEM_TIME TickCount;
        ULONG64      TickCountQuad;
        struct {
            ULONG ReservedTickCountOverlay[3];
            ULONG TickCountPad[1];
        } DUMMYSTRUCTNAME;
    } DUMMYUNIONNAME3;
    ULONG                         Cookie;
    ULONG                         CookiePad[1];
    LONGLONG                      ConsoleSessionForegroundProcessId;
    ULONGLONG                     TimeUpdateLock;
    ULONGLONG                     BaselineSystemTimeQpc;
    ULONGLONG                     BaselineInterruptTimeQpc;
    ULONGLONG                     QpcSystemTimeIncrement;
    ULONGLONG                     QpcInterruptTimeIncrement;
    UCHAR                         QpcSystemTimeIncrementShift;
    UCHAR                         QpcInterruptTimeIncrementShift;
    USHORT                        UnparkedProcessorCount;
    ULONG                         EnclaveFeatureMask[4];
    ULONG                         TelemetryCoverageRound;
    USHORT                        UserModeGlobalLogger[16];
    ULONG                         ImageFileExecutionOptions;
    ULONG                         LangGenerationCount;
    ULONGLONG                     Reserved4;
    ULONGLONG                     InterruptTimeBias;
    ULONGLONG                     QpcBias;
    ULONG                         ActiveProcessorCount;
    UCHAR                         ActiveGroupCount;
    UCHAR                         Reserved9;
    union {
        USHORT QpcData;
        struct {
            UCHAR QpcBypassEnabled;
            UCHAR QpcShift;
        };
    };
    LARGE_INTEGER                 TimeZoneBiasEffectiveStart;
    LARGE_INTEGER                 TimeZoneBiasEffectiveEnd;
    XSTATE_CONFIGURATION          XState;
    KSYSTEM_TIME                  FeatureConfigurationChangeStamp;
    ULONG                         Spare;
    ULONG64                       UserPointerAuthMask;
};


constexpr uint32 SKIP_NTSYSTEM_ROOT_SIZE = sizeof(_KUSER_SHARED_DATA_WINDOWS_10::NtSystemRoot);


namespace
{
// fixed offsets for classic client(s):
static constexpr uint32 sOfsGetText = 0x303BF0;

static constexpr uint32 sOfsOpen = 0x2477A0;
static constexpr uint32 sOfsSize = 0x2487F0;
static constexpr uint32 sOfsRead = 0x248460;
static constexpr uint32 sOfsClose = 0x253900;

static constexpr uint32 sOfsTickCount = 0x2C010;

static constexpr uint32 sOfsCWorld__enables = 0xC7B2A4;
static constexpr uint32 sOfsCWorldScene__camTargEntity = 0xC7BCD4;
static constexpr uint32 sOfsCWorldScene__camTargEntity6141 = 0xC803F4;
static constexpr uint32 sOfsEntityOffset = 0x88;
static constexpr uint32 sOfsPlayerOffset = 0x28;

static constexpr uint32 sOfsCSimpleTop__m_eventTime = 0xCF0BC8;

static constexpr uint32 sOfsMoveSpeed = 0xA30;
static constexpr uint32 sOfsUnitTrack = 0x2EB0;
static constexpr uint32 sOfsMoveFlags = 0x9E8;
static constexpr uint32 sOfsResourceTrack = 0x2EB4;

// TODO: check this value for 1.12.2 and 1.12.3!
static constexpr uint32 sOfsg_theGxDevicePtr = 0xC0ED38;
static constexpr uint32 sOfsDevice2 = 0x38A8;
static constexpr uint32 sOfsDevice3 = 0x0;
static constexpr uint32 sOfsDevice4 = 0xA8;

// TODO: check this value for 1.12.2 and 1.12.3!
static constexpr uint32 sOfsWardenModule = 0xCE897C;
static constexpr uint32 sOfsWardenSysInfo = 0x228;
static constexpr uint32 sOfsWardenWinSysInfo = 0x08;

static constexpr uint32 sOfsSharedData = 0x7FFE0000;
static constexpr uint32 sOfsSharedDataMajorVersion = 0x026C;
static constexpr uint32 sOfsSharedDataMinorVersion = 0x0270;

static constexpr uint32 sOfsClickToMovePosition = 0xC4D890;

// TODO: Identify drivers for other hypervisors and add detections for them too
constexpr struct
{
    const char *Name;
    const char *Driver;
    const char *DeviceName;
} Hypervisors[] =
{
    { "VirtualBox", "VBoxGuest", "\\Device\\VBoxGuest"},
    { "ESXi", "vmmemctl", "\\Device\\vmmemctl"},
};

auto constexpr HypervisorCount = sizeof(Hypervisors) / sizeof(Hypervisors[0]);

enum WorldEnables
{
    TerrainDoodads                  = 0x1,              // default, toggled by sub at 0x673130, which is never called.  should always be set
    Terrain                         = 0x2,              // default, toggled by sub at 0x6730F0, which is never called.  should always be set
    TerrainLOD                      = 0x4,              // lod console var
    Unk10                           = 0x10,             // default
    TerrainCulling                  = 0x20,             // default, showCull console command
    TerrainShadows                  = 0x40,             // default, mapShadows console var, showShadow console command
    TerrainDoodadCollisionVisuals   = 0x80,             // toggled by sub at 0x6731C0, which is never called.  should never be set
    MapObjects                      = 0x100,            // default, toggled by sub at 0x673430, which is never called.  should always be set
    MapObjectLighting               = 0x200,            // default, toggled by sub at 0x673360, which is never called.  should always be set
    FootPrints                      = 0x400,            // showfootprints console var
    MapObjectTextures               = 0x800,            // default, toggled by sub at 0x6733A0, which is never called.  should always be set
    PortalDisplay                   = 0x1000,           // toggled by sub at 0x673470, which is never called.  should never be set
    PortalVisual                    = 0x2000,           // toggled by sub at 0x6734B0, which is never called.  should never be set
    DisableDoodadFullAlpha          = 0x4000,           // fullAlpha console var
    DoodadAnimation                 = 0x8000,           // doodadAnim console var
    TriangleStrips                  = 0x10000,          // triangleStrips console var
    CrappyBatches                   = 0x20000,          // toggled by sub at 0x6733E0, which is never called.  should never be set
    ZoneBoundaryVisuals             = 0x40000,          // zoneBoundary disabled console command (should never be set, also sends CMSG_ZONE_MAP, sub at 0x673850)
    BSPRender                       = 0x80000,          // toggled by sub at 0x6730A0, which is never called.  should never be set
    DetailDoodads                   = 0x100000,         // default, showDetailDoodads console command
    ShowQuery                       = 0x200000,         // showQuery disabled console command (should never be set)
    TerrainDoodadAABoxVisuals       = 0x400000,         // toggled by sub at 0x673170, which is never called.  should never be set
    TrilinearFiltering              = 0x800000,         // trilinear console var
    Water                           = 0x1000000,        // default, toggled by sub at 0x673670, which is never called.  should always be set
    WaterParticulates               = 0x2000000,        // default, waterParticulates console command
    TerrainLowDetail                = 0x4000000,        // default, showLowDetail console command
    Specular                        = 0x8000000,        // specular console var
    PixelShaders                    = 0x10000000,       // pixelShaders console var
    Unknown6737F9                   = 0x20000000,       // unknown, set by sub at 0x6737F0, should never be set
    Unknown673820                   = 0x40000000,       // unknown, set by sub at 0x673820, should never be set
    Anisotropic                     = 0x80000000,       // anisotropic console var

    Required = (TerrainDoodads|Terrain| MapObjects| MapObjectLighting| MapObjectTextures| Water),
    Prohibited = (TerrainDoodadCollisionVisuals|CrappyBatches|ZoneBoundaryVisuals|BSPRender|ShowQuery|TerrainDoodadAABoxVisuals|Unknown6737F9|Unknown673820),
};

std::string ArchitectureString(uint16 arch)
{
    switch (arch)
    {
        case 0:
            return "x86";
        case 5:
            return "ARM";
        case 6:
            return "IA64";
        case 9:
            return "x64";
        case 0xFFFF:
            return "Unknown";
        default:
            return "INVALID";
    }
}

std::string CPUTypeAndRevision(uint32 cpuType, uint16 revision)
{
    std::stringstream str;

    switch (cpuType)
    {
        case 386:
        {
            str << "i386";

            const uint8 firstByte = revision >> 8;
            const uint8 y = 0xF & (revision >> 4);
            const uint8 z = 0xF & (revision);

            if (firstByte == 0xFF)
                str << " Model: " << static_cast<uint32>(y) << " Stepping: " << z;
            else
                str << " Stepping: " << static_cast<char>('A' + firstByte) << static_cast<uint32>(firstByte & 0xFF);

            break;
        }
        case 486:
        {
            str << "i486";

            const uint8 firstByte = revision >> 8;
            const uint8 y = 0xF & (revision >> 4);
            const uint8 z = 0xF & (revision);

            if (firstByte == 0xFF)
                str << " Model: " << static_cast<uint32>(y) << " Stepping: " << z;
            else
                str << " Stepping: " << static_cast<char>('A' + firstByte) << static_cast<uint32>(firstByte & 0xFF);

            break;
        }
        case 586:
        {
            str << "Pentium (i586)";

            const uint8 model = 0xFF & (revision >> 8);
            const uint8 stepping = 0xFF & (revision);

            str << " Model: " << static_cast<uint32>(model) << " Stepping: " << static_cast<uint32>(stepping);

            break;
        }
        case 2200:
            str << "IA64";
            break;
        case 8664:
            str << "X8664";
            break;
        default:
            str << "ARM/Unknown";
            break;
    }

    return str.str();
}

// this function assumes that the given code begins with a valid instruction.  in other words, that
// it does not begin in random data or in the middle of an instruction.
void DeobfuscateAsm(std::vector<std::uint8_t> &code)
{
#define LSTRIP(c, l) do { if (c.size() <= l) { c.clear(); return; } else { c.erase(c.begin(), c.begin()+l); } } while(false)

    do
    {
        if (code.empty())
            return;

        // At the start of this loop we re-assume the entry condition that the code begins at a valid instruction.

        // remove NOP
        if (code[0] == 0x90)
        {
            LSTRIP(code, 1);
            continue;
        }

        // xchg statements which are either semantically equivalent to NOP or
        // which will be inverted later on.
        if (code[0] == 0x87)
        {
            // {"eax", "ebx", "ecx", "edx", "edi", "esi"};
            if (code[1] == 0xC9 ||  // xchg ecx, ecx
                code[1] == 0xCA ||  // xchg ecx, edx
                code[1] == 0xCB ||  // xchg ebx, ecx
                code[1] == 0xCE ||  // xchg esi, ecx
                code[1] == 0xCF ||  // xchg ecx, edi
                code[1] == 0xE4 ||  // xchg esp, esp
                code[1] == 0xED ||  // xchg ebp, ebp
                code[1] == 0xD1 ||  // xchg ecx, edx
                code[1] == 0xD2 ||  // xchg edx, edx
                code[1] == 0xD3 ||  // xchg ebx, edx
                code[1] == 0xD6 ||  // xchg esi, edx
                code[1] == 0xD7 ||  // xchg edx, edi
                code[1] == 0xD9 ||  // xchg ecx, ebx
                code[1] == 0xDA ||  // xchg ebx, edx
                code[1] == 0xDB ||  // xchg ebx, ebx
                code[1] == 0xDE ||  // xchg esi, ebx
                code[1] == 0xDF ||  // xchg ebx, edi
                code[1] == 0xF1 ||  // xchg ecx, esi
                code[1] == 0xF2 ||  // xchg edx, esi
                code[1] == 0xF3 ||  // xchg ebx, esi
                code[1] == 0xF7 ||  // xchg edi, esi
                code[1] == 0xF9 ||  // xchg ecx, edi
                code[1] == 0xFA ||  // xchg edx, edi
                code[1] == 0xFB ||  // xchg edi, esi
                code[1] == 0xFE)    // xchg ebx, edi
            {
                LSTRIP(code, 2);
                continue;
            }
        }
        // xchg one register with another.  in wrobot this is always repeated/inverted later
        else if (code[0] >= 0x91 && code[0] <= 0x97)
        {
            LSTRIP(code, 1);
            continue;
        }
        // simple NOP-equivalent mov statements
        else if (code[0] == 0x89)
        {
            if (code[1] == 0xC9 ||  // mov ecx, ecx
                code[1] == 0xD2 ||  // mov edx, edx
                code[1] == 0xDB ||  // mov ebx, ebx
                code[1] == 0xE4 ||  // mov esp, esp
                code[1] == 0xFF)    // mov edi, edi
            {
                LSTRIP(code, 2);
                continue;
            }
        }
        // near JMP past random junk
        else if (code[0] == 0xEB)   // JMP +1-0xFF
        {
            // not enough room? clear out anything left and finish
            if (code.size() < 2)
            {
                code.clear();
                return;
            }

            const unsigned int len = static_cast<unsigned int>(code[1]) + 2;

            LSTRIP(code, len);
            continue;
        }
        // far JMP past random junk
        else if (code[0] == 0xE9)
        {
            if (code.size() < 5)
            {
                code.clear();
                return;
            }

            const unsigned int len = *reinterpret_cast<unsigned int *>(&code[1]) + 5;

            LSTRIP(code, len);
            continue;
        }
        // short conditional jumps that always are followed by far jumps to the same place:
        // "JE", "JZ", "JNE", "JNZ", "JG", "JNLE", "JGE", "JNL", "JNGE", "JLE", "JNG", "JO", "JNO", "JP", "JPE", "JNP", "JPO", "JS"
        else if (code[0] == 0x70 ||
            code[0] == 0x71 ||
            code[0] == 0x74 ||
            code[0] == 0x75 ||
            code[0] == 0x78 ||
            code[0] == 0x7A ||
            code[0] == 0x7B ||
            code[0] == 0x7C ||
            code[0] == 0x7D ||
            code[0] == 0x7E ||
            code[0] == 0x7F)
        {
            const unsigned int target = static_cast<unsigned int>(code[1]) + 2;

            unsigned int secondJumpTarget = 0;

            // currently the far jump will come within 12 bytes
            for (auto i = 2u; i < 14; ++i)
            {
                if (code[i] == 0xE9)
                {
                    secondJumpTarget = *reinterpret_cast<unsigned int *>(&code[i + 1]) + 5;
                    break;
                }
                else if (code[i] == 0xEB)
                {
                    secondJumpTarget = static_cast<unsigned int>(code[i + 1]) + 2 + i;
                    break;
                }
            }

            if (secondJumpTarget && secondJumpTarget == target)
            {
                LSTRIP(code, target);
                continue;
            }
        }
        // these are instructions that are not part of the obfuscation.  so for now we will skip them and
        // deobfuscate whatever comes after them.  this will let us build up deobfuscated code.
        // pushfd.  this is currently not part of the obfuscation of wrobot but rather it appears to always be
        // the first non-obfuscated opcode.  therefore, lets skip it and debofuscate what comes after it.
        else if (code[0] == 0x9C || // pushfd
            code[0] == 0x60)   // pushad
        {
            std::vector<std::uint8_t> copy(code.begin() + 1, code.end());
            DeobfuscateAsm(copy);

            code.resize(1);
            code.insert(code.end(), copy.begin(), copy.end());

            // do nothing after this
            return;
        }

        // if we reach here, we haven't made any change.  stop
        break;
    } while (true);
#undef LSTRIP
}

// returns true when the given hook code is suspicious
bool ValidateEndSceneHook(const std::vector<uint8> &code)
{
    auto copy = code;

    // attempt asm deobfuscation to detect wrobot
    DeobfuscateAsm(copy);

    std::stringstream str;

    for (auto i = 0u; i < code.size(); ++i)
    {
        str << "0x" << std::hex << std::uppercase << std::setw(2) << std::setfill('0') << static_cast<int>(code[i]);

        if (i < code.size() - 1)
            str << " ";
    }

    sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: Deobfuscate debug.  Original code size: %u deobfuscated size: %u Code:\n%s",
        code.size(), copy.size(), str.str().c_str());

    // wrobot's deobfuscated endscene hook begins with pushfd, pushad.  if thats what this starts with,
    // assume it is wrobot, regardless of what comes after it.
    if (copy.size() >= 2 && copy[0] == 0x9C && copy[1] == 0x60)
        return true;

    return code.size() == 200 && copy.size() < 15;
}
}

void WardenWin::FinalizeDataCapture(turtle_vector<uint8, Category_Anticheat>& fullBuffer)
{
    SetOSVersion();
    ConvertPrintData(fullBuffer);
};



void WardenWin::ConvertPrintData(turtle_vector<uint8, Category_Anticheat>& buffer)
{
    if (!_sharedData)
        _sharedData = std::make_unique<SharedDataCompact>();


    auto& data = *_sharedData;
    Convert(data.EnclaveFeatureMask, buffer, SharedDataField::EnclaveFeatureMask);
    Convert(data.LargePageMinimum, buffer, SharedDataField::LargePageMinimum);
    Convert(data.MitigationPolicies, buffer, SharedDataField::MitigationPolicies);
    Convert(data.NumberOfPhysicalPages, buffer, SharedDataField::NumberOfPhysicalPages);
    Convert(data.QpcData, buffer, SharedDataField::QpcData);
    Convert(data.QpcFrequency, buffer, SharedDataField::QpcFrequency);
    Convert(data.QpcSystemTimeIncrement, buffer, SharedDataField::QpcSystemTimeIncrement);
    Convert(data.SharedDataFlags, buffer, SharedDataField::SharedDataFlags);
    Convert(data.SuiteMask, buffer, SharedDataField::SuiteMask);
    Convert(data.TestResInstruction, buffer, SharedDataField::TestRetInstruction);
    Convert(data.TimeZoneBias, buffer, SharedDataField::TimeZoneBias);
    Convert(data.UnparkedProcessorCount, buffer, SharedDataField::UnparkedProcessorCount);
    Convert(data.TimeZoneId, buffer, SharedDataField::TimeZoneId);

    _triggerPrintSave = true;
}

constexpr uint32 ReadChunkSize = 0xEE;

std::shared_ptr<WindowsScan> WardenWin::MakeDynamicDataScan(WardenWin* warden, uint32& offset,
    uint32& sizeLeft,
    turtle_vector<uint8, Category_Anticheat>& output)
{
    Scan::CheckT callback = [&offset, &sizeLeft, &output](const Warden* warden, ByteBuffer& buff)
    {
        auto const wardenWin = const_cast<WardenWin*>(reinterpret_cast<const WardenWin*>(warden));
        auto const result = buff.read<uint8>();

        if (!!result)
        {
            sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: Failed to read dynamic data from account %u ip %s",
                wardenWin->_session->GetAccountId(), wardenWin->_session->GetRemoteAddress().c_str());

            return false;
        }

        //read chunk and put it in.
        uint32 sizeRead = sizeLeft >= ReadChunkSize ? ReadChunkSize : sizeLeft;
        buff.read(&output[offset], sizeRead);

        //check if we need to requeue ourselves or finalize.
        sizeLeft -= sizeRead;
        offset += sizeRead;

        if (!sizeLeft)
            wardenWin->FinalizeDataCapture(output);
        else
            wardenWin->EnqueueScans({ wardenWin->MakeDynamicDataScan(wardenWin, offset, sizeLeft, output) });
        return false;
    };

    uint32 sizeRead = sizeLeft >= ReadChunkSize ? ReadChunkSize : sizeLeft;
    return std::make_shared<WindowsMemoryScan>(sOfsSharedData + offset, sizeRead, callback, "Datascan", WinAllBuild | InitialLogin | PriorityScan);
}



void WardenWin::LoadScriptedScans()
{
    // sys info locate phase 2
    auto const wardenSysInfo2 = std::make_shared<WindowsScan>(
    // builder
    [](const Warden *warden, std::vector<std::string> &, ByteBuffer &scan)
    {
        auto const wardenWin = reinterpret_cast<const WardenWin *>(warden);

        scan << static_cast<uint8>(wardenWin->GetModule()->opcodes[READ_MEMORY] ^ wardenWin->GetXor())
             << static_cast<uint8>(0)
             << wardenWin->_sysInfo.dwOemId + sOfsWardenWinSysInfo
             << static_cast<uint8>(sizeof(wardenWin->_sysInfo));
    },
    // checker
    [](const Warden *warden, ByteBuffer &buff)
    {
        auto const wardenWin = const_cast<WardenWin *>(reinterpret_cast<const WardenWin *>(warden));

        auto const result = buff.read<uint8>();

        if (!!result)
        {
            sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: Failed to read SYSTEM_INFO from account %u ip %s",
                wardenWin->_session->GetAccountId(), wardenWin->_session->GetRemoteAddress().c_str());

            return true;
        }

        buff.read(reinterpret_cast<uint8 *>(&wardenWin->_sysInfo), sizeof(wardenWin->_sysInfo));

        // for classic, tbc, and wotlk, the architecute should never be anything other than x86 (0)
        if (!!wardenWin->_sysInfo.wProcessorArchitecture)
        {
            sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: Incorrect architecture reported (%u) for account %u ip %s",
                wardenWin->_sysInfo.wProcessorArchitecture, wardenWin->_session->GetAccountId(),
                wardenWin->_session->GetRemoteAddress().c_str());

            return true;
        }

        // for classic, tbc, and wotlk, the cpu type should never be anything other than i386, i486, or pentium (i586)
        if (wardenWin->_sysInfo.dwProcessorType != 386 &&
            wardenWin->_sysInfo.dwProcessorType != 486 &&
            wardenWin->_sysInfo.dwProcessorType != 586)
        {
            sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: Incorrect processor type: %u for account %u ip %s",
                wardenWin->_sysInfo.dwProcessorType, wardenWin->_session->GetAccountId(),
                wardenWin->_session->GetRemoteAddress().c_str());

            return true;
        }

        return false;
    }, sizeof(uint8) + sizeof(uint8) + sizeof(uint32) + sizeof(uint8), sizeof(uint8) + sizeof(WIN_SYSTEM_INFO),
        "Sysinfo locate", None);

    // sys info locate phase 1
    auto const wardenSysInfo1 = std::make_shared<WindowsScan>(
    // builder
    [](const Warden *warden, std::vector<std::string> &, ByteBuffer &scan)
    {
        auto const wardenWin = reinterpret_cast<const WardenWin *>(warden);

        scan << static_cast<uint8>(wardenWin->GetModule()->opcodes[READ_MEMORY] ^ wardenWin->GetXor())
             << static_cast<uint8>(0)
             << wardenWin->_wardenAddress + sOfsWardenSysInfo
             << static_cast<uint8>(sizeof(wardenWin->_sysInfo.dwOemId));
    },
    // checker
    [wardenSysInfo2](const Warden *warden, ByteBuffer &buff)
    {
        auto const wardenWin = const_cast<WardenWin *>(reinterpret_cast<const WardenWin *>(warden));

        auto const result = buff.read<uint8>();

        if (!!result)
        {
            sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: Failed to read warden->SysInfo from account %u ip %s",
                wardenWin->_session->GetAccountId(), wardenWin->_session->GetRemoteAddress().c_str());

            return false;
        }

        // borrow this memory temporarily
        wardenWin->_sysInfo.dwOemId = buff.read<uint32>();

        // immediately third second stage
        wardenWin->EnqueueScans({ wardenSysInfo2 });

        return false;
    }, sizeof(uint8) + sizeof(uint8) + sizeof(uint32) + sizeof(uint8), sizeof(uint8) + sizeof(uint32),
        "Intermediate sysinfo locate", None);

    // find warden module
    sWardenScanMgr.AddWindowsScan(std::make_shared<WindowsScan>(
    // builder
    [](const Warden *warden, std::vector<std::string> &, ByteBuffer &scan)
    {
        auto const wardenWin = reinterpret_cast<const WardenWin *>(warden);

        scan << static_cast<uint8>(wardenWin->GetModule()->opcodes[READ_MEMORY] ^ wardenWin->GetXor())
             << static_cast<uint8>(0)
             << sOfsWardenModule << static_cast<uint8>(sizeof(wardenWin->_wardenAddress));
    },
    // checker
    [wardenSysInfo1](const Warden *warden, ByteBuffer &buff)
    {
        auto const wardenWin = const_cast<WardenWin *>(reinterpret_cast<const WardenWin *>(warden));

        auto const result = buff.read<uint8>();

        if (!!result)
        {
            sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: Failed to read s_moduleInterface from account %u ip %s",
                wardenWin->_session->GetAccountId(), wardenWin->_session->GetRemoteAddress().c_str());

            return false;
        }

        wardenWin->_wardenAddress = buff.read<uint32>();

        // immediately enqueue second stage
        wardenWin->EnqueueScans({ wardenSysInfo1 });

        return false;
    }, sizeof(uint8) + sizeof(uint8) + sizeof(uint32) + sizeof(uint8), sizeof(uint8) + sizeof(uint32),
        "Warden locate", InitialLogin|WinAllBuild));

    sWardenScanMgr.AddWindowsScan(std::make_shared<WindowsMemoryScan>(sOfsCWorld__enables, sizeof(uint32),
    [](const Warden *warden, ByteBuffer &buff)
    {
        auto const wardenWin = const_cast<WardenWin *>(reinterpret_cast<const WardenWin *>(warden));

        auto const result = buff.read<uint8>();

        if (!!result)
        {
            sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: Failed to read CWorld::enables from account %u ip %s",
                wardenWin->_session->GetAccountId(), wardenWin->_session->GetRemoteAddress().c_str());

            return true;
        }

        auto const val = buff.read<uint32>();

        // if any required flags are missing, or prohibited flags are present
        if ((val & Required) != Required || !!(val & Prohibited))
        {
            sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: CWorld::enables expected 0x%lx prohibited 0x%lx received 0x%lx",
                (uint32)Required, (uint32)Prohibited, val);

            return true;
        }

        return false;
    } , "CWorld::enables hack", WinBuild5875));

    // read game time and last hardware action time together
    sWardenScanMgr.AddWindowsScan(std::make_shared<WindowsScan>(
    // builder
    [](const Warden *warden, std::vector<std::string> &, ByteBuffer &scan)
    {
        auto const wardenWin = reinterpret_cast<const WardenWin *>(warden);

        // NOTE: the order of these two scans is important because the client will not perform the checks
        // at the same time, and we want to safely assume that the last hardware action time is not
        // greater than the current time

        // last hardware action time
        scan << static_cast<uint8>(wardenWin->GetModule()->opcodes[READ_MEMORY] ^ wardenWin->GetXor())
             << static_cast<uint8>(0)
             << sOfsCSimpleTop__m_eventTime
             << static_cast<uint8>(sizeof(uint32));

        // game time
        scan << static_cast<uint8>(wardenWin->GetModule()->opcodes[CHECK_TIMING_VALUES] ^ wardenWin->GetXor());
    },
    // checker
    [](const Warden *warden, ByteBuffer &buff)
    {
        auto const wardenWin = const_cast<WardenWin *>(reinterpret_cast<const WardenWin *>(warden));
        auto const session = wardenWin->_session;

        if (!!buff.read<uint8>())
        {
            sLog.out(LOG_ANTICHEAT_DEBUG, "WARDEN: Account %u timing check failed to read CSimpleTop::m_eventTime",
                session->GetLatency());
            return true;
        }

        auto const lastHardwareAction = buff.read<uint32>();

        auto const timeResult = buff.read<uint8>();
        auto const currentTime = buff.read<uint32>();

        if (!timeResult)
        {
            // the timing check can fail for innocuous reasons like running under wine, within a virtual machine,
            // or in XP compatibility mode.  there are probably other causes too.  therefore let us ignore this
            // failure, since the clock desync check will catch this same case if the clock is moving at an
            // unfair speed.
            sLog.out(LOG_ANTICHEAT_DEBUG, "WARDEN: Account %u timing check failed", session->GetAccountId());
            return false;
        }

        // last hardware action cannot legitimately be past the current time
        if (lastHardwareAction > currentTime)
        {
            sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: Account: %u Current time: %u Last hardware action: %u (last hardware action in the future)",
                session->GetAccountId(), currentTime, lastHardwareAction);
            return true;
        }

        wardenWin->_lastClientTime = currentTime;
        wardenWin->_lastHardwareActionTime = lastHardwareAction;
        wardenWin->_lastTimeCheckServer = WorldTimer::getMSTime();

        return false;
    }, 11, 10, "Anti-AFK hack", WinBuild5875));

    // check for hypervisors
    sWardenScanMgr.AddWindowsScan(std::make_shared<WindowsScan>(
    // builder
    [](const Warden *warden, std::vector<std::string> &strings, ByteBuffer &scan)
    {
        MANGOS_ASSERT(strings.size() + HypervisorCount < 0xFF);

        auto const winWarden = reinterpret_cast<const WardenWin *>(warden);
        auto const opcode = static_cast<uint8>(winWarden->GetModule()->opcodes[FIND_DRIVER_BY_NAME] ^ winWarden->GetXor());

        for (auto i = 0u; i < HypervisorCount; ++i)
        {
            auto const &hypervisor = Hypervisors[i];

            strings.emplace_back(hypervisor.Driver);

            auto const seed = static_cast<uint32>(rand32());

            scan << opcode << seed;

            HMACSHA1 hash(sizeof(seed), const_cast<uint8*>(reinterpret_cast<const uint8 *>(&seed)));
            hash.UpdateData(hypervisor.DeviceName);
            hash.Finalize();

            scan.append(hash.GetDigest(), hash.GetLength());
            scan << static_cast<uint8>(strings.size());
        }
    },
    // checker
    [](const Warden *warden, ByteBuffer &buff)
    {
        auto const winWarden = const_cast<WardenWin *>(reinterpret_cast<const WardenWin *>(warden));

        winWarden->_hypervisors = "";

        for (auto i = 0u; i < HypervisorCount; ++i)
        {
            auto const found = buff.read<uint8>() == 0x4A;

            if (!found)
                continue;

            winWarden->_hypervisors += Hypervisors[i].Name;
        }

        // always return false because there is nothing necessary wrong with using a hypervisor
        return false;
    },
    // TODO: Replace the magic number below with combined driver string lengths
    (sizeof(uint8) + sizeof(uint32) + SHA_DIGEST_LENGTH + sizeof(uint8)) * HypervisorCount + 21,
    sizeof(uint8) * HypervisorCount,
    "Hypervisor check",
    WinAllBuild|InitialLogin));

    sWardenScanMgr.AddWindowsScan(std::make_shared<WindowsScan>(
    // builder
    [](const Warden *warden, std::vector<std::string> &strings, ByteBuffer &scan)
    {
        auto const seed = static_cast<uint32>(rand32());

        scan << static_cast<uint8>(warden->GetModule()->opcodes[FIND_CODE_BY_HASH] ^ warden->GetXor())
             << seed;

        static constexpr std::uint8_t pattern[] =
        {
            0x56, 0x57, 0xFC, 0x8B, 0x54, 0x24, 0x14, 0x8B,
            0x74, 0x24, 0x10, 0x8B, 0x44, 0x24, 0x0C, 0x8B,
            0xCA, 0x8B, 0xF8, 0xC1, 0xE9, 0x02, 0x74, 0x02,
            0xF3, 0xA5, 0xB1, 0x03, 0x23, 0xCA, 0x74, 0x02,
            0xF3, 0xA4, 0x5F, 0x5E, 0xC3
        };

        static_assert(sizeof(pattern) <= 0xFF, "pattern length must fit into 8 bits");

        HMACSHA1 hash(sizeof(seed), const_cast<uint8*>(reinterpret_cast<const uint8*>(&seed)));
        hash.UpdateData(&pattern[0], sizeof(pattern));
        hash.Finalize();

        scan.append(hash.GetDigest(), hash.GetLength());

        scan << warden->GetModule()->memoryRead << static_cast<uint8>(sizeof(pattern));
    },
    // checker
    [] (const Warden *warden, ByteBuffer &buff)
    {
        auto const found = buff.read<uint8>() == WindowsCodeScan::PatternFound;

        // if this is not found, it means someone has tampered with the function
        return !found;
    }, sizeof(uint8) + sizeof(uint32) + SHA_DIGEST_LENGTH + sizeof(uint32) + sizeof(uint8), sizeof(uint8),
    "Warden Memory Read check",
    WinAllBuild|AdvancedScan));

    // end scene hook check 1
    static constexpr uint8 endSceneReadSize = 16u;
    auto const endSceneHookCheck1 = std::make_shared<WindowsScan>(
    // builder
    [](const Warden *warden, std::vector<std::string> &, ByteBuffer &scan)
    {
        auto const wardenWin = reinterpret_cast<const WardenWin *>(warden);

        // if we have not found EndScene, do nothing
        if (!wardenWin->_endSceneFound)
            return;

        scan << static_cast<uint8>(wardenWin->GetModule()->opcodes[READ_MEMORY] ^ wardenWin->GetXor())
             << static_cast<uint8>(0)
             << wardenWin->_endSceneAddress
             << endSceneReadSize;
    },
    // checker
    [](const Warden *warden, ByteBuffer &buff)
    {
        auto const wardenWin = const_cast<WardenWin *>(reinterpret_cast<const WardenWin *>(warden));

        auto const result = buff.read<uint8>();

        if (!!result)
        {
            sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: Failed to read EndScene (hook check stage 1) from account %u ip %s",
                wardenWin->_session->GetAccountId(), wardenWin->_session->GetRemoteAddress().c_str());

            return true;
        }

        std::vector<uint8> code(endSceneReadSize);
        buff.read(&code[0], code.size());

        wardenWin->ValidateEndScene(code);

        return false;
    }, sizeof(uint8) + sizeof(uint8) + sizeof(uint32) + sizeof(uint8), sizeof(uint8) + endSceneReadSize,
    "EndScene hook check stage 1", WinAllBuild|AdvancedScan);

    sWardenScanMgr.AddWindowsScan(endSceneHookCheck1);

    // end scene locate phase 4
    auto const endSceneLocate4 = std::make_shared<WindowsScan>(
    // builder
    [](const Warden *warden, std::vector<std::string> &, ByteBuffer &scan)
    {
        auto const wardenWin = reinterpret_cast<const WardenWin *>(warden);

        scan << static_cast<uint8>(wardenWin->GetModule()->opcodes[READ_MEMORY] ^ wardenWin->GetXor())
             << static_cast<uint8>(0)
             << wardenWin->_endSceneAddress + sOfsDevice4
             << static_cast<uint8>(sizeof(uint32));
    },
    // checker
    [endSceneHookCheck1](const Warden *warden, ByteBuffer &buff)
    {
        auto const wardenWin = const_cast<WardenWin *>(reinterpret_cast<const WardenWin *>(warden));

        auto const result = buff.read<uint8>();

        if (!!result)
        {
            sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: Failed to read EndScene (stage 4) from account %u ip %s",
                wardenWin->_session->GetAccountId(), wardenWin->_session->GetRemoteAddress().c_str());

            return true;
        }

        wardenWin->_endSceneAddress = buff.read<uint32>();
        wardenWin->_endSceneFound = true;

        // immediately request hook check
        wardenWin->EnqueueScans({ endSceneHookCheck1 });

        return false;
    }, sizeof(uint8) + sizeof(uint8) + sizeof(uint32) + sizeof(uint8), sizeof(uint8) + sizeof(uint32),
    "EndScene locate stage 4", None);

    // end scene locate phase 3
    auto const endSceneLocate3 = std::make_shared<WindowsScan>(
    // builder
    [](const Warden *warden, std::vector<std::string> &, ByteBuffer &scan)
    {
        auto const wardenWin = reinterpret_cast<const WardenWin *>(warden);

        scan << static_cast<uint8>(wardenWin->GetModule()->opcodes[READ_MEMORY] ^ wardenWin->GetXor())
             << static_cast<uint8>(0)
             << wardenWin->_endSceneAddress + sOfsDevice3
             << static_cast<uint8>(sizeof(uint32));
    },
    // checker
    [endSceneLocate4](const Warden *warden, ByteBuffer &buff)
    {
        auto const wardenWin = const_cast<WardenWin *>(reinterpret_cast<const WardenWin *>(warden));

        auto const result = buff.read<uint8>();

        if (!!result)
        {
            sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: Failed to read EndScene (stage 3) from account %u ip %s",
                wardenWin->_session->GetAccountId(), wardenWin->_session->GetRemoteAddress().c_str());

            return true;
        }

        wardenWin->_endSceneAddress = buff.read<uint32>();

        // immediately request fourth stage
        wardenWin->EnqueueScans({ endSceneLocate4 });

        return false;
    }, sizeof(uint8) + sizeof(uint8) + sizeof(uint32) + sizeof(uint8), sizeof(uint8) + sizeof(uint32),
    "EndScene locate stage 3", None);

    // end scene locate phase 2
    auto const endSceneLocate2 = std::make_shared<WindowsScan>(
    // builder
    [](const Warden *warden, std::vector<std::string> &, ByteBuffer &scan)
    {
        auto const wardenWin = reinterpret_cast<const WardenWin *>(warden);

        scan << static_cast<uint8>(wardenWin->GetModule()->opcodes[READ_MEMORY] ^ wardenWin->GetXor())
             << static_cast<uint8>(0)
             << wardenWin->_endSceneAddress + sOfsDevice2
             << static_cast<uint8>(sizeof(uint32));
    },
    // checker
    [endSceneLocate3](const Warden *warden, ByteBuffer &buff)
    {
        auto const wardenWin = const_cast<WardenWin *>(reinterpret_cast<const WardenWin *>(warden));

        auto const result = buff.read<uint8>();

        if (!!result)
        {
            sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: Failed to read EndScene (stage 2) from account %u ip %s",
                wardenWin->_session->GetAccountId(), wardenWin->_session->GetRemoteAddress().c_str());

            return true;
        }

        wardenWin->_endSceneAddress = buff.read<uint32>();

        // immediately request third stage
        wardenWin->EnqueueScans({ endSceneLocate3 });

        return false;
    }, sizeof(uint8) + sizeof(uint8) + sizeof(uint32) + sizeof(uint8), sizeof(uint8) + sizeof(uint32),
    "EndScene locate stage 2", None);

    sWardenScanMgr.AddWindowsScan(std::make_shared<WindowsMemoryScan>(sOfsg_theGxDevicePtr, sizeof(uint32),
    // checker
    [endSceneLocate2](const Warden *warden, ByteBuffer &buff)
    {
        auto const wardenWin = const_cast<WardenWin *>(reinterpret_cast<const WardenWin *>(warden));

        auto const result = buff.read<uint8>();

        if (!!result)
        {
            sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: Failed to read g_theGxDevicePtr from account %u ip %s",
                wardenWin->_session->GetAccountId(), wardenWin->_session->GetRemoteAddress().c_str());

            return false;
        }

        buff.read(reinterpret_cast<uint8 *>(&wardenWin->_endSceneAddress), sizeof(wardenWin->_endSceneAddress));

        // if for some reason we get nullptr, abort
        if (!wardenWin->_endSceneAddress)
        {
            sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: g_theGxDevicePtr is nullptr for account %u ip %s",
                wardenWin->_session->GetAccountId(), wardenWin->_session->GetRemoteAddress().c_str());
            return true;
        }

        // immediately request second stage
        wardenWin->EnqueueScans({ endSceneLocate2 });

        return false;
    }, "EndScene locate stage 1", WinBuild5875|InitialLogin));

    sWardenScanMgr.AddWindowsScan(std::make_shared<WindowsModuleScan>("prxdrvpe.dll",
    // checker
    Scan::CheckT([](const Warden *warden, ByteBuffer &buff)
    {
        if (buff.read<uint8>() == WindowsModuleScan::ModuleFound)
        {
            auto const wardenWin = const_cast<WardenWin *>(reinterpret_cast<const WardenWin *>(warden));
            wardenWin->_proxifierFound = true;

            sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: Proxifier found on account %u ip %s",
                wardenWin->_session->GetAccountId(), wardenWin->_session->GetRemoteAddress().c_str());
        }

        return false;
    }), "Proxifier check", WinAllBuild | InitialLogin));


    //begin fingerprint warden scans.

    constexpr uint32 preBuiltData1Offset = sOfsSharedData;
    constexpr uint32 preBuiltData2Offset = preBuiltData1Offset + sizeof(KUSER_PRE_BUILDNUMBER_DATA_1) + SKIP_NTSYSTEM_ROOT_SIZE;
    constexpr uint32 buildNumberOffset = preBuiltData2Offset;
    constexpr uint32 postBuildDataUnionMiscOffset = buildNumberOffset + sizeof(KUSER_BUILDNUMBER_FEATURES_DATA);
    constexpr uint32 postBuildDataUnionMisc2Offset = postBuildDataUnionMiscOffset + sizeof(KUSER_POST_BUILDNUMBER_UNION_MISC_1);




    /*const auto fingerprintScan4 = std::make_shared<WindowsMemoryScan>(postBuildDataUnionMisc2Offset,
        sizeof(KUSER_POST_BUILDNUMBER_UNION_MISC_2),
        [dat](const Warden* warden, ByteBuffer& buff)
    {
        auto const wardenWin = const_cast<WardenWin*>(reinterpret_cast<const WardenWin*>(warden));
        auto const result = buff.read<uint8>();

        if (!!result)
        {
            sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: Failed to read postBuildDataUnionMiscOffset from account %u ip %s",
                wardenWin->_session->GetAccountId(), wardenWin->_session->GetRemoteAddress().c_str());

            return true;
        }

        KUSER_POST_BUILDNUMBER_UNION_MISC_2 data;

        buff.read(reinterpret_cast<uint8*>(&data), sizeof(KUSER_POST_BUILDNUMBER_UNION_MISC_2));

        dat->PostBuildUnionDataMisc2 = data;

        return false;
    }, "Fingerprinting 4", WinAllBuild | InitialLogin | PriorityScan);


    const auto fingerprintScan3 = std::make_shared<WindowsMemoryScan>(postBuildDataUnionMiscOffset,
        sizeof(KUSER_POST_BUILDNUMBER_UNION_MISC_1),
        [dat, fingerprintScan4](const Warden* warden, ByteBuffer& buff)
    {
        auto const wardenWin = const_cast<WardenWin*>(reinterpret_cast<const WardenWin*>(warden));
        auto const result = buff.read<uint8>();

        if (!!result)
        {
            sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: Failed to read postBuildDataUnionMiscOffset from account %u ip %s",
                wardenWin->_session->GetAccountId(), wardenWin->_session->GetRemoteAddress().c_str());

            return true;
        }

        KUSER_POST_BUILDNUMBER_UNION_MISC_1 data;

        buff.read(reinterpret_cast<uint8*>(&data), sizeof(KUSER_POST_BUILDNUMBER_UNION_MISC_1));

        dat->PostBuildUnionDataMisc = data;

        wardenWin->EnqueueScans({ fingerprintScan4 });

        return false;
    }, "Fingerprinting 3", WinAllBuild | InitialLogin | PriorityScan);

    const auto fingerprintScan2 = std::make_shared<WindowsMemoryScan>(buildNumberOffset,
        sizeof(KUSER_BUILDNUMBER_FEATURES_DATA),
        [dat, fingerprintScan3](const Warden* warden, ByteBuffer& buff)
    {
        auto const wardenWin = const_cast<WardenWin*>(reinterpret_cast<const WardenWin*>(warden));
        auto const result = buff.read<uint8>();

        if (!!result)
        {
            sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: Failed to read buildNumberOffset from account %u ip %s",
                wardenWin->_session->GetAccountId(), wardenWin->_session->GetRemoteAddress().c_str());

            return true;
        }

        KUSER_BUILDNUMBER_FEATURES_DATA data;
        buff.read(reinterpret_cast<uint8*>(&data), sizeof(KUSER_BUILDNUMBER_FEATURES_DATA));

        dat->BuildFeaturesData = data;

        wardenWin->EnqueueScans({ fingerprintScan3 });
        return false;
    }, "Fingerprinting 2", WinAllBuild | InitialLogin | PriorityScan);*/



    sWardenScanMgr.AddWindowsScan(std::make_shared<WindowsMemoryScan>(sOfsSharedData + sOfsSharedDataMajorVersion
        , sOfsSharedDataMinorVersion - sOfsSharedDataMajorVersion + sizeof(ULONG),
        [](const Warden* warden, ByteBuffer& buff)
    {
        auto const wardenWin = const_cast<WardenWin*>(reinterpret_cast<const WardenWin*>(warden));
        auto const result = buff.read<uint8>();

        if (!!result)
        {
            sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: Failed to read preBuiltData1Offset from account %u ip %s",
                wardenWin->_session->GetAccountId(), wardenWin->_session->GetRemoteAddress().c_str());

            return false;//always return false for now, this is just data processing.
        }

        ULONG minorVersion = 0;
        ULONG majorVersion = 0;

        buff.read(reinterpret_cast<uint8*>(&majorVersion), sizeof(ULONG));
        buff.read(reinterpret_cast<uint8*>(&minorVersion), sizeof(ULONG));

        wardenWin->_majorVersion = majorVersion;
        wardenWin->_minorVersion = minorVersion;



        using convert_type = std::codecvt_utf8<wchar_t>;
        std::wstring_convert<convert_type, wchar_t> converter;


        wardenWin->EnqueueScans({ wardenWin->MakeDynamicDataScan(wardenWin, wardenWin->_dataOffset, wardenWin->_readsizeLeft, wardenWin->_inDataBuffer) });

        return false;
    }, "WinVersionGet", WinAllBuild | InitialLogin | PriorityScan));

    // click to move enabled check
    sWardenScanMgr.AddWindowsScan(std::make_shared<WindowsScan>(
        // builder
        [](const Warden *warden, std::vector<std::string> &, ByteBuffer &scan)
    {
        // no need to scan multiple times
        if (warden->HasUsedClickToMove())
            return;

        auto const wardenWin = reinterpret_cast<const WardenWin *>(warden);

        scan << static_cast<uint8>(wardenWin->GetModule()->opcodes[READ_MEMORY] ^ wardenWin->GetXor())
            << static_cast<uint8>(0)
            << sOfsClickToMovePosition
            << static_cast<uint8>(sizeof(float) * 3);
    },
        // checker
        [](const Warden *warden, ByteBuffer &buff)
    {
        auto const wardenWin = const_cast<WardenWin *>(reinterpret_cast<const WardenWin *>(warden));

        auto const result = buff.read<uint8>();

        if (!!result)
        {
            sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: Failed to read click to move position from account %u ip %s",
                wardenWin->_session->GetAccountId(), wardenWin->_session->GetRemoteAddress().c_str());

            return true;
        }

        float positionX = buff.read<float>();
        float positionY = buff.read<float>();
        float positionZ = buff.read<float>();
        if (positionX || positionY || positionZ)
        {
            wardenWin->SetHasUsedClickToMove();
            wardenWin->_session->SetHasUsedClickToMove();
        }

        return false;
    }, sizeof(uint8) + sizeof(uint8) + sizeof(uint32) + sizeof(uint8),
       sizeof(uint8) + sizeof(float) + sizeof(float) + sizeof(float),
        "Click To Move Position", WinAllBuild));
}

void WardenWin::BuildLuaInit(const std::string &module, bool fastcall, uint32 offset, ByteBuffer &out) const
{
    const uint16 len = 1 + 1 + 1 + module.length() + 4 + 1;

    out = ByteBuffer(1 + 2 + 4 + len);

    out << static_cast<uint8>(WARDEN_SMSG_MODULE_INITIALIZE)
        << static_cast<uint16>(len)
        << static_cast<uint32>(0)   // checksum placeholder
        << static_cast<uint8>(4)
        << static_cast<uint8>(0)
        << static_cast<uint8>(module.length());

    // avoid writing null terminator
    out.append(module.c_str(), module.length());

    out << offset
        << static_cast<uint8>(fastcall ? 0 : 1);

    // write checksum
    auto const oldwpos = out.wpos();
    out.wpos(3);
    out << BuildChecksum(out.contents() + 7, len);
    out.wpos(oldwpos);
}

void WardenWin::BuildFileHashInit(const std::string &module, bool asyncparam, uint32 openOffset,
    uint32 sizeOffset, uint32 readOffset, uint32 closeOffset, ByteBuffer &out) const
{
    const uint16 len = 1 + 1 + 1 + 1 + module.length() + 4 + 4 + 4 + 4;

    out = ByteBuffer(1 + 2 + 4 + len);

    out << static_cast<uint8>(WARDEN_SMSG_MODULE_INITIALIZE)
        << static_cast<uint16>(len)
        << static_cast<uint32>(0)   // checksum placeholder
        << static_cast<uint8>(1)
        << static_cast<uint8>(0)
        << static_cast<uint8>(asyncparam ? 2 : 1)
        << static_cast<uint8>(module.length());

    // avoid writing null terminator
    out.append(module.c_str(), module.length());

    out << openOffset
        << sizeOffset
        << readOffset
        << closeOffset;

    // write checksum
    auto const oldwpos = out.wpos();
    out.wpos(3);
    out << BuildChecksum(out.contents() + 7, len);
    out.wpos(oldwpos);
}

void WardenWin::BuildTimingInit(const std::string &module, uint32 offset, bool set, ByteBuffer &out) const
{
    const uint16 len = 1 + 1 + 1 + module.length() + 4 + 1;

    out = ByteBuffer(1 + 2 + 4 + len);

    out << static_cast<uint8>(WARDEN_SMSG_MODULE_INITIALIZE)
        << static_cast<uint16>(len)
        << static_cast<uint32>(0)   // checksum placeholder
        << static_cast<uint8>(1)
        << static_cast<uint8>(1)
        << static_cast<uint8>(module.length());

    // avoid writing null terminator
    out.append(module.c_str(), module.length());

    out << offset << static_cast<uint8>(set ? 1 : 0);

    // write checksum
    auto const oldwpos = out.wpos();
    out.wpos(3);
    out << BuildChecksum(out.contents() + 7, len);
    out.wpos(oldwpos);
}

WardenWin::WardenWin(WorldSession *session, const BigNumber &K, SessionAnticheatInterface *anticheat) :
    _wardenAddress(0), Warden(session, sWardenModuleMgr.GetWindowsModule(), K, anticheat),
    _lastClientTime(0), _lastHardwareActionTime(0), _lastTimeCheckServer(0), _sysInfoSaved(false),
    _proxifierFound(false), _hypervisors(""), _endSceneFound(false), _endSceneAddress(0)
{
    memset(&_sysInfo, 0, sizeof(_sysInfo));
    _inDataBuffer.resize(MaxReadSize);
}

// read the dx9 EndScene binary code to look for bad stuff
void WardenWin::ValidateEndScene(const std::vector<uint8> &code)
{
    auto p = &code[0];

    // skip any NOPs
    while (*p == 0x90) ++p;

    auto const nopCount = static_cast<int>(p - &code[0]);

    static constexpr size_t codeRequestLength = 200u;

    // int3 breakpoint
    if (*p == 0xCC)
    {
        sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: Detected INT3 EndScene hook for account %u IP %s (NOP count = %d)",
            _session->GetAccountId(), _session->GetRemoteAddress().c_str(), nopCount);
    }
    // JMP hook
    else if (*p == 0xE9)
    {
        auto const dest = *reinterpret_cast<const uint32 *>(p + 1);

        auto const absoluteDest = _endSceneAddress + nopCount + dest + 5;
        sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: Detected JMP EndScene hook for account %u IP %s (NOP count = %d)",
            _session->GetAccountId(), _session->GetRemoteAddress().c_str(), nopCount);

        // request a custom scan just to check the JMP destination
        EnqueueScans({ std::make_shared<WindowsMemoryScan>(absoluteDest, codeRequestLength,
        // checker
        [](const Warden *warden, ByteBuffer &buff)
        {
            auto const wardenWin = const_cast<WardenWin *>(reinterpret_cast<const WardenWin *>(warden));

            auto const result = buff.read<uint8>();

            if (!!result)
            {
                sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: Failed to read EndScene hook code from account %u ip %s",
                    wardenWin->_session->GetAccountId(), wardenWin->_session->GetRemoteAddress().c_str());

                return true;
            }

            std::vector<uint8> code(codeRequestLength);

            buff.read(&code[0], code.size());

            if (ValidateEndSceneHook(code) && !!sAnticheatConfig.GetWardenSuspiciousEndSceneHookAction())
                wardenWin->_anticheat->RecordCheat(sAnticheatConfig.GetWardenSuspiciousEndSceneHookAction(),
                    "Warden", "Suspicious client heuristic results.  Probable bot.");

            return false;
        }, "EndScene hook validate scan", None) });
    }
}

uint32 WardenWin::GetScanFlags() const
{
    uint32 result = _session->GetAccountMaxLevel() >= sAnticheatConfig.GetWardenMinimumAdvancedLevel()
        ? ScanFlags::AdvancedScan : ScanFlags::None;

    switch (_session->GetGameBuild())
    {
        case 5875:
            result |= ScanFlags::WinBuild5875;
            break;
        case 6005:
            result |= ScanFlags::WinBuild6005;
            break;
        case 6141:
            result |= ScanFlags::WinBuild6141;
            break;
        default:
            sLog.out(LOG_ANTICHEAT_BASIC, "WARDEN: Invalid client build %u for account %u", _session->GetGameBuild(), _session->GetAccountId());
            _session->KickPlayer();
            return ScanFlags::None;
    }

    return result;
}

void WardenWin::InitializeClient()
{
    // initialize lua
    ByteBuffer lua;
    BuildLuaInit("", true, sOfsGetText, lua);

    // initialize SFile*
    ByteBuffer file;
    BuildFileHashInit("", true, sOfsOpen, sOfsSize, sOfsRead, sOfsClose, file);

    // initialize timing check
    ByteBuffer timing;
    BuildTimingInit("", sOfsTickCount, true, timing);

    ByteBuffer pkt(lua.wpos() + file.wpos() + timing.wpos());

    pkt.append(lua);
    pkt.append(file);
    pkt.append(timing);

    SendPacket(pkt);

    _initialized = true;
}

void WardenWin::Update()
{
    Warden::Update();

    if (!_initialized)
        return;

    // 'lpMaximumApplicationAddress' should never be zero if the structure has been read
    if (!_sysInfoSaved && _triggerPrintSave)
    {
        bool hasSysInfo = _sysInfo.lpMaximumApplicationAddress > 0;

        auto activeProcCount = 0;
        if (hasSysInfo)
        {
            for (auto i = 0; i < 8 * sizeof(_sysInfo.dwActiveProcessorMask); ++i)
                if (!!(_sysInfo.dwActiveProcessorMask & (1 << i)))
                    ++activeProcCount;
        }
        else
            activeProcCount = _sharedData->UnparkedProcessorCount;

        if (!_sharedData)
            _sharedData = std::make_unique<SharedDataCompact>();

        auto& sample = _session->_analyser->GetCurrentSample();
        

        sample.activeCpus = activeProcCount;
        sample.cpuType = hasSysInfo ? CPUTypeAndRevision(_sysInfo.dwProcessorType, _sysInfo.wProcessorRevision) : "N/A";
        sample.enclaveMask = _sharedData->EnclaveFeatureMask;
        sample.mitPolicies = _sharedData->MitigationPolicies;
        sample.numPhysicalPages = _sharedData->NumberOfPhysicalPages;
        sample.pageSize = hasSysInfo ? _sysInfo.dwPageSize : 4096;
        sample.qpcData = _sharedData->QpcData;
        sample.sharedDataFlags = _sharedData->SharedDataFlags;
        sample.suiteMask = _sharedData->SuiteMask;
        sample.timeZoneBias = _sharedData->TimeZoneBias.LowPart;
        sample.totalCpus = hasSysInfo ? _sysInfo.dwNumberOfProcessors : activeProcCount;
        sample.unparkedCpuCount = _sharedData->UnparkedProcessorCount;
        sample.useCpuData = hasSysInfo;
        sample.useExtendedData = sample.pageSize != 0;
        sample.timeZoneId = _sharedData->TimeZoneId;

        //by now we should have all current sample data, mix n match.
        _session->_analyser->Initialize();


        LoginDatabase.BeginTransaction();

        static SqlStatementID fingerprintUpdate;

        auto stmt = LoginDatabase.CreateStatement(fingerprintUpdate,
            "INSERT INTO system_fingerprint_usage (`fingerprint`, `account`,  `ip`,  `realm`,  `architecture`,  `cputype`,  `activecpus`,  `totalcpus`,  `pagesize`,  `timezoneBias`,  `largepageMinimum`,  `suiteMask`,  `mitigationPolicies`,  `numberPhysicalPages`,  `sharedDataFlags`,  `testRestInstruction`,"  
            "`qpcFrequency`,  `qpcSystemTimeIncrement`,  `unparkedProcessorCount`,  `enclaveFeatureMask`,  `qpcData`, `timeZoneId`, `osVersion`, `extendedHash`) "
            "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

        stmt.addUInt32(_anticheat->GetFingerprint());
        stmt.addUInt32(_session->GetAccountId());
        stmt.addString(_session->GetRemoteAddress());
        stmt.addUInt32(realmID);
        stmt.addString(hasSysInfo ? ArchitectureString(_sysInfo.wProcessorArchitecture) : "x86");
        stmt.addString(sample.cpuType);
        stmt.addUInt32(activeProcCount);
        stmt.addUInt32(sample.totalCpus);
        stmt.addUInt32(sample.pageSize);
        stmt.addUInt32(_sharedData->TimeZoneBias.LowPart);
        stmt.addUInt32(_sharedData->LargePageMinimum);
        stmt.addUInt32(_sharedData->SuiteMask);
        stmt.addUInt32(_sharedData->MitigationPolicies);
        stmt.addUInt32(_sharedData->NumberOfPhysicalPages);
        stmt.addUInt32(_sharedData->SharedDataFlags);
        stmt.addUInt32(_sharedData->TestResInstruction);
        stmt.addUInt32(_sharedData->QpcFrequency);
        stmt.addUInt32(_sharedData->QpcSystemTimeIncrement);
        stmt.addUInt32(_sharedData->UnparkedProcessorCount);
        stmt.addUInt32(_sharedData->EnclaveFeatureMask);
        stmt.addUInt32(_sharedData->QpcData);
        stmt.addUInt32(_sharedData->TimeZoneId);
        stmt.addString(OsVersionToString(_osVersion));
        stmt.addUInt64(sample.GetHash());
        stmt.Execute();

        LoginDatabase.CommitTransaction();

        if (sAccountMgr.IsFingerprintBanned(_anticheat->GetFingerprint()))
        {
            _session->SetFingerprintBanned();
            char message[128] = {};
            snprintf(message, 127, "Account %s logins from client with banned fingerpint.", _session->GetUsername().c_str());
            sWorld.SendGMText(LANG_GM_ANNOUNCE_COLOR, "Fingerprint", message);
        }

        _anticheat->CleanupFingerprintHistory();

        _sysInfoSaved = true;
        _triggerPrintSave = false;

        // at this point if we have the character enum packet, it is okay to send
        if (!_charEnum.empty())
        {
            _session->SendPacket(&_charEnum);
            _charEnum.clear();
        }
    }
}

void WardenWin::SetCharEnumPacket(WorldPacket &&packet)
{
    // if we have already recorded system information, send the packet immediately.  otherwise delay
    if (_sysInfoSaved)
        _session->SendPacket(&packet);
    else
        _charEnum = std::move(packet);
}

void WardenWin::SendPlayerInfo(ChatHandler *handler, bool includeFingerprint) const
{
    if (!!_lastTimeCheckServer)
    {
        handler->PSendSysMessage("Last hardware action: %u client time: %u idle time: %u seconds info age: %u seconds",
            _lastHardwareActionTime, _lastClientTime,
            (_lastClientTime - _lastHardwareActionTime) / 1000,
            WorldTimer::getMSTimeDiffToNow(_lastTimeCheckServer) / 1000);
    }

    // 'lpMaximumApplicationAddress' should never be zero if the structure has been read
    if (includeFingerprint && !!_sysInfo.lpMaximumApplicationAddress)
    {
        std::stringstream str;

        str << "Architecture: " << ArchitectureString(_sysInfo.wProcessorArchitecture)
            << " CPU Type: " << CPUTypeAndRevision(_sysInfo.dwProcessorType, _sysInfo.wProcessorRevision)
            << " Page Size: 0x" << std::hex << std::uppercase << _sysInfo.dwPageSize << std::dec;

        auto activeProcCount = 0;
        for (auto i = 0; i < 8*sizeof(_sysInfo.dwActiveProcessorMask); ++i)
            if (!!(_sysInfo.dwActiveProcessorMask & (1 << i)))
                ++activeProcCount;

        str << " Active CPUs: " << activeProcCount;
        str << " Total CPUs: " << _sysInfo.dwNumberOfProcessors;

        handler->SendSysMessage(str.str().c_str());
    }

    if (_hypervisors.length() > 0)
        handler->PSendSysMessage("Hypervisor(s) found: %s", _hypervisors.c_str());

    if (_endSceneFound)
        handler->PSendSysMessage("EndScene: 0x%lx", _endSceneAddress);

    if (_proxifierFound)
        handler->SendSysMessage("Proxifier is running");
}
