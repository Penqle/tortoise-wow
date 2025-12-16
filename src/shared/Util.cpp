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

#include "Util.h"
#include "Timer.h"
#include "Log.h"

#include "utf8cpp/utf8.h"
#include "Log.h"
#include "mersennetwister/MersenneTwister.h"

#include <ace/TSS_T.h>
#include <ace/OS_NS_arpa_inet.h>
#include <openssl/md5.h>

#include "Auth/Hmac.h"
#include "Auth/base32.h"


#include <ios>
#include <iostream>
#include <fstream>
#include <iomanip>
#include <sstream>
#include "AllocatorWithCategory.h"

typedef ACE_TSS<MTRand> MTRandTSS;
static MTRandTSS mtRand;

IPerfMonitor* gPerfMonitorInterface = nullptr;

Tokenizer::Tokenizer(const std::string &src, const char sep, uint32 vectorReserve)
{
    m_str = new char[src.length() + 1];
    memcpy(m_str, src.c_str(), src.length() + 1);

    if (vectorReserve)
        m_storage.reserve(vectorReserve);

    char* posold = m_str;
    char* posnew = m_str;

    for (;;)
    {
        if (*posnew == sep)
        {
            m_storage.push_back(posold);
            posold = posnew + 1;

            *posnew = '\0';
        }
        else if (*posnew == '\0')
        {
            // Hack like, but the old code accepted these kind of broken strings,
            // so changing it would break other things
            if (posold != posnew)
                m_storage.push_back(posold);

            break;
        }

        ++posnew;
    }
}

static ACE_Time_Value g_SystemTickTime = ACE_OS::gettimeofday();

uint32 WorldTimer::m_iTime = 0;
uint32 WorldTimer::m_iPrevTime = 0;

uint32 WorldTimer::tickTime() { return m_iTime; }
uint32 WorldTimer::tickPrevTime() { return m_iPrevTime; }

uint32 WorldTimer::tick()
{
    //save previous world tick time
    m_iPrevTime = m_iTime;

    //get the new one and don't forget to persist current system time in m_SystemTickTime
    m_iTime = WorldTimer::getMSTime_internal(true);

    //return tick diff
    return getMSTimeDiff(m_iPrevTime, m_iTime);
}

uint32 WorldTimer::getMSTime()
{
    return getMSTime_internal();
}

uint32 WorldTimer::getMSTime_internal(bool /*savetime*/ /*= false*/)
{
    //get current time
    const ACE_Time_Value currTime = ACE_OS::gettimeofday();
    //calculate time diff between two world ticks
    //special case: curr_time < old_time - we suppose that our time has not ticked at all
    //this should be constant value otherwise it is possible that our time can start ticking backwards until next world tick!!!
    uint64 diff = 0;
    (currTime - g_SystemTickTime).msec(diff);

    //lets calculate current world time
    uint32 iRes = uint32(diff % UI64LIT(0x00000000FFFFFFFF));
    return iRes;
}

//////////////////////////////////////////////////////////////////////////
int32 irand (int32 min, int32 max)
{
    return int32 (mtRand->randInt (max - min)) + min;
}

uint32 urand (uint32 min, uint32 max)
{
    return mtRand->randInt (max - min) + min;
}

float frand (float min, float max)
{
    return mtRand->randExc (max - min) + min;
}

int32 rand32 ()
{
    return mtRand->randInt ();
}

double rand_norm(void)
{
    return mtRand->randExc ();
}

float rand_norm_f(void)
{
    return (float)mtRand->randExc ();
}

double rand_chance (void)
{
    return mtRand->randExc (100.0);
}

float rand_chance_f(void)
{
    return (float)mtRand->randExc (100.0);
}

Milliseconds randtime(Milliseconds const& min, Milliseconds const& max)
{
    long long diff = max.count() - min.count();
    MANGOS_ASSERT(diff >= 0);
    MANGOS_ASSERT(diff <= (uint32)-1);
    return min + Milliseconds(urand(0, diff));
}

Tokens StrSplit(const std::string &src, const std::string &sep)
{
    Tokens r;
    std::string s;
    for (std::string::const_iterator i = src.begin(); i != src.end(); i++)
    {
        if (sep.find(*i) != std::string::npos)
        {
            if (s.length()) r.push_back(s);
            s = "";
        }
        else
        {
            s += *i;
        }
    }
    if (s.length()) r.push_back(s);
    return r;
}

uint32 GetUInt32ValueFromArray(Tokens const& data, uint16 index)
{
    if(index >= data.size())
        return 0;

    return (uint32)atoi(data[index].c_str());
}

float GetFloatValueFromArray(Tokens const& data, uint16 index)
{
    float result;
    uint32 temp = GetUInt32ValueFromArray(data,index);
    memcpy(&result, &temp, sizeof(result));

    return result;
}

void stripLineInvisibleChars(std::string &str)
{
    static std::string invChars = " \t\7\n\r";

    size_t wpos = 0;

    bool space = false;
    for(size_t pos = 0; pos < str.size(); ++pos)
    {
        if(invChars.find(str[pos])!=std::string::npos)
        {
            if(!space)
            {
                str[wpos++] = ' ';
                space = true;
            }
        }
        else
        {
            if(wpos!=pos)
                str[wpos++] = str[pos];
            else
                ++wpos;
            space = false;
        }
    }

    if(wpos < str.size())
        str.erase(wpos,str.size());
}

std::string secsToTimeString(time_t timeInSecs, bool shortText, bool hoursOnly)
{
    time_t secs    = timeInSecs % MINUTE;
    time_t minutes = timeInSecs % HOUR / MINUTE;
    time_t hours   = timeInSecs % DAY  / HOUR;
    time_t days    = timeInSecs / DAY;

    std::ostringstream ss;
    if(days)
    {
        ss << days;
        if (shortText)
            ss << "d";
        else if (days == 1)
            ss << " Day ";
        else
            ss << " Days ";
    }
    if(hours || hoursOnly)
    {
        ss << hours;
        if (shortText)
            ss << "h";
        else if (hours <= 1)
            ss << " Hour ";
        else
            ss << " Hours ";
    }
    if(!hoursOnly)
    {
        if(minutes)
        {
            ss << minutes;
            if (shortText)
                ss << "m";
            else if (minutes == 1)
                ss << " Minute ";
            else
                ss << " Minutes ";
        }
        if (secs || (!days && !hours && !minutes))
        {
            ss << secs;
            if (shortText)
                ss << "s";
            else if (secs <= 1)
                ss << " Second.";
            else
                ss << " Seconds.";
        }
    }

    return ss.str();
}

uint32 TimeStringToSecs(const std::string& timestring)
{
    uint32 secs       = 0;
    uint32 buffer     = 0;
    uint32 multiplier = 0;

    for(std::string::const_iterator itr = timestring.begin(); itr != timestring.end(); itr++ )
    {
        if(isdigit(*itr))
        {
            buffer*=10;
            buffer+= (*itr)-'0';
        }
        else
        {
            switch(*itr)
            {
                case 'd': multiplier = DAY;     break;
                case 'h': multiplier = HOUR;    break;
                case 'm': multiplier = MINUTE;  break;
                case 's': multiplier = 1;       break;
                default : return 0;                         //bad format
            }
            buffer*=multiplier;
            secs+=buffer;
            buffer=0;
        }
    }

    return secs;
}

std::string TimeToTimestampStr(time_t t)
{
    tm* aTm = localtime(&t);
    //       YYYY   year
    //       MM     month (2 digits 01-12)
    //       DD     day (2 digits 01-31)
    //       HH     hour (2 digits 00-23)
    //       MM     minutes (2 digits 00-59)
    //       SS     seconds (2 digits 00-59)
    char buf[20];
    snprintf(buf,20,"%04d-%02d-%02d_%02d-%02d-%02d",aTm->tm_year+1900,aTm->tm_mon+1,aTm->tm_mday,aTm->tm_hour,aTm->tm_min,aTm->tm_sec);
    return std::string(buf);
}

std::string NormalizeString(const std::string& InStr)
{
    std::wstring WideString;
    bool bConversionOk = Utf8toWStr(InStr, WideString);
    if (!bConversionOk)
    {
        sLog.outError("Can't normalize string %s. Someone hacking, or DB corrupted", InStr.c_str());
        return "";
    }


    std::wstring ClearedWideString;
    ClearedWideString.reserve(WideString.size());
    for (wchar_t ch : WideString)
    {
        if (isExtendedLatinCharacter(ch) || 
            isCyrillicCharacter(ch) || 
            isEastAsianCharacter(ch) ||
            isPrintableAsciiCharacter(ch)
            || (ch == 0xD)) // Symbols: CR
        {
            ClearedWideString.push_back(ch);
        }
        else
        {
            ClearedWideString.push_back(L'?');
        }
    }

    std::string result;

    bConversionOk = WStrToUtf8(ClearedWideString, result);
	if (!bConversionOk)
	{
		sLog.outError("Can't convert back to UTF8 %s. Someone hacking, or core goes crazy", InStr.c_str());
		return "";
	}

    return result;
}

/// Check if the string is a valid ip address representation
bool IsIPAddress(char const* ipaddress)
{
    if(!ipaddress)
        return false;

    // Let the big boys do it.
    // Drawback: all valid ip address formats are recognized e.g.: 12.23,121234,0xABCD)
    return ACE_OS::inet_addr(ipaddress) != INADDR_NONE;
}

/// create PID file
uint32 CreatePIDFile(const std::string& filename)
{
    FILE * pid_file = fopen (filename.c_str(), "w" );
    if (pid_file == nullptr)
        return 0;

#ifdef WIN32
    DWORD pid = GetCurrentProcessId();
#else
    pid_t pid = getpid();
#endif

    fprintf(pid_file, "%lu", pid );
    fclose(pid_file);

    return (uint32)pid;
}

size_t utf8length(std::string& utf8str)
{
    try
    {
        return utf8::distance(utf8str.c_str(), utf8str.c_str() + utf8str.size());
    }
    catch (std::exception const&)
    {
        utf8str.clear();
        return 0;
    }
}

void utf8truncate(std::string& utf8str, size_t len)
{
    try
    {
        size_t wlen = utf8::distance(utf8str.c_str(), utf8str.c_str() + utf8str.size());
        if (wlen <= len)
            return;

        std::wstring wstr;
        wstr.resize(wlen);
        utf8::utf8to16(utf8str.c_str(), utf8str.c_str() + utf8str.size(), &wstr[0]);
        wstr.resize(len);
        char* oend = utf8::utf16to8(wstr.c_str(), wstr.c_str() + wstr.size(), &utf8str[0]);
        utf8str.resize(oend - (&utf8str[0]));                 // remove unused tail
    }
    catch (std::exception const&)
    {
        utf8str.clear();
    }
}

bool Utf8toWStr(char const* utf8str, size_t csize, wchar_t* wstr, size_t& wsize)
{
    try
    {
        CheckedBufferOutputIterator<wchar_t> out(wstr, wsize);
        out = utf8::utf8to16(utf8str, utf8str + csize, out);
        wsize -= out.remaining(); // remaining unused space
        wstr[wsize] = L'\0';
    }
    catch (std::exception const&)
    {
        // Replace the converted string with an error message if there is enough space
        // Otherwise just return an empty string
        wchar_t const* errorMessage = L"An error occurred converting string from UTF-8 to WStr";
        size_t errorMessageLength = wcslen(errorMessage);
        if (wsize >= errorMessageLength)
        {
            wcscpy(wstr, errorMessage);
            wsize = wcslen(wstr);
        }
        else if (wsize > 0)
        {
            wstr[0] = L'\0';
            wsize = 0;
        }
        else
            wsize = 0;

        return false;
    }

    return true;
}

bool Utf8toWStr(std::string_view utf8str, std::wstring& wstr)
{
    wstr.clear();
    try
    {
        utf8::utf8to16(utf8str.begin(), utf8str.end(), std::back_inserter(wstr));
    }
    catch (std::exception const&)
    {
        wstr.clear();
        return false;
    }

    return true;
}

bool WStrToUtf8(wchar_t const* wstr, size_t size, std::string& utf8str)
{
    try
    {
        std::string utf8str2;
        utf8str2.resize(size * 4);                            // allocate for most long case

        if (size)
        {
            char* oend = utf8::utf16to8(wstr, wstr + size, &utf8str2[0]);
            utf8str2.resize(oend - (&utf8str2[0]));               // remove unused tail
        }
        utf8str = utf8str2;
    }
    catch (std::exception const&)
    {
        utf8str.clear();
        return false;
    }

    return true;
}

bool WStrToUtf8(std::wstring_view wstr, std::string& utf8str)
{
    try
    {
        std::string utf8str2;
        utf8str2.resize(wstr.size() * 4);                     // allocate for most long case

        if (!wstr.empty())
        {
            char* oend = utf8::utf16to8(wstr.begin(), wstr.end(), &utf8str2[0]);
            utf8str2.resize(oend - (&utf8str2[0]));                // remove unused tail
        }
        utf8str = utf8str2;
    }
    catch (std::exception const&)
    {
        utf8str.clear();
        return false;
    }

    return true;
}

void ReplaceAll(std::string& str, const std::string& from, const std::string& to)
{
    size_t startPos = 0;
    while ((startPos = str.find(from, startPos)) != std::string::npos)
    {
        str.replace(startPos, from.length(), to);
        startPos += to.length();
    }
}

void ReplaceAllW(std::wstring& str, const std::wstring& from, const std::wstring& to)
{
    size_t startPos = 0;
    while ((startPos = str.find(from, startPos)) != std::wstring::npos)
    {
        str.replace(startPos, from.length(), to);
        startPos += to.length();
    }
}

typedef wchar_t const* const* wstrlist;

bool utf8ToConsole(const std::string& utf8str, std::string& conStr)
{
#if PLATFORM == PLATFORM_WINDOWS
    std::wstring wstr;
    if (!Utf8toWStr(utf8str, wstr))
        return false;

    conStr.resize(wstr.size());
    CharToOemBuffW(&wstr[0], &conStr[0], wstr.size());
#else
    // not implemented yet
    conStr = utf8str;
#endif

    return true;
}

bool consoleToUtf8(const std::string& conStr, std::string& utf8str)
{
#if PLATFORM == PLATFORM_WINDOWS
    std::wstring wstr;
    wstr.resize(conStr.size());
    OemToCharBuffW(&conStr[0], &wstr[0], conStr.size());

    return WStrToUtf8(wstr, utf8str);
#else
    // not implemented yet
    utf8str = conStr;
    return true;
#endif
}

bool Utf8FitTo(const std::string& str, std::wstring search)
{
    std::wstring temp;
    temp.reserve(str.size());

    if (!Utf8toWStr(str, temp))
        return false;

    // converting to lower case
    wstrToLower(temp);

    return temp.find(search) != std::wstring::npos;
}

void utf8printf(FILE* out, const char *str, ...)
{
    va_list ap;
    va_start(ap, str);
    vutf8printf(out, str, &ap);
    va_end(ap);
}

void vutf8printf(FILE *out, const char *str, va_list* ap)
{
#if PLATFORM == PLATFORM_WINDOWS
    char temp_buf[32 * 1024];
    wchar_t wtemp_buf[32 * 1024];

    size_t temp_len = vsnprintf(temp_buf, 32 * 1024, str, *ap);
    //vsnprintf returns -1 if the buffer is too small
    if (temp_len == size_t(-1))
        temp_len = 32 * 1024 - 1;

    size_t wtemp_len = 32 * 1024 - 1;
    Utf8toWStr(temp_buf, temp_len, wtemp_buf, wtemp_len);

    CharToOemBuffW(&wtemp_buf[0], &temp_buf[0], uint32(wtemp_len + 1));
    fprintf(out, "%s", temp_buf);

    //Giperion: God knows how many times I reimplement that function in various mangos forks
	if (IsDebuggerPresent())
	{
		OutputDebugStringW(wtemp_buf);
		OutputDebugStringW(L"\n");
	}

#else
    vfprintf(out, str, *ap);
#endif
}

void hexEncodeByteArray(uint8* bytes, uint32 arrayLen, std::string& result)
{
    std::ostringstream ss;
    for (uint32 i = 0; i<arrayLen; ++i)
    {
        for (uint8 j = 0; j<2; ++j)
        {
            unsigned char nibble = 0x0F & (bytes[i] >> ((1 - j) * 4));
            char encodedNibble;
            if (nibble < 0x0A)
                encodedNibble = '0' + nibble;
            else
                encodedNibble = 'A' + nibble - 0x0A;
            ss << encodedNibble;
        }
    }

    result = ss.str();
}

std::string ByteArrayToHexStr(uint8 const* bytes, uint32 arrayLen, bool reverse /* = false */)
{
    int32 init = 0;
    int32 end = arrayLen;
    int8 op = 1;

    if (reverse)
    {
        init = arrayLen - 1;
        end = -1;
        op = -1;
    }

    std::ostringstream ss;
    for (int32 i = init; i != end; i += op)
    {
        char buffer[4];
        sprintf(buffer, "%02X", bytes[i]);
        ss << buffer;
    }

    return ss.str();
}

void HexStrToByteArray(std::string const& str, uint8* out, bool reverse /*= false*/)
{
    // string must have even number of characters
    if (str.length() & 1)
        return;

    int32 init = 0;
    int32 end = str.length();
    int8 op = 1;

    if (reverse)
    {
        init = str.length() - 2;
        end = -2;
        op = -1;
    }

    uint32 j = 0;
    for (int32 i = init; i != end; i += 2 * op)
    {
        char buffer[3] = { str[i], str[i + 1], '\0' };
        out[j++] = strtoul(buffer, nullptr, 16);
    }
}

uint32 dither(float v)
{
    return std::floor(v + frand(0, 1));
}

std::string MoneyToString(uint32 copper)
{
    uint32 gold = copper / GOLD;
    uint32 silver = (copper % GOLD) / SILVER;
    copper = (copper % GOLD) % SILVER;

    std::ostringstream ss;
    if (gold)
    {
        ss << gold;
        ss << "g";
    }
    if (silver || gold)
    {
        ss << silver;
        ss << "s";
    }
    ss << copper;
    ss << "c";

    return ss.str();
}

std::string GetCurrentTimeString()
{
    auto t = std::time(nullptr);
    auto tm = *std::localtime(&t);

    std::ostringstream oss;
    oss << std::put_time(&tm, "%Y-%m-%d %H:%M:%S");
    return oss.str();
}

#ifdef WIN32
#include <windows.h>
#include <VersionHelpers.h>
#include <Psapi.h>

bool Win10SupportNewThreadNameInit = false;

using ThreadCall = HRESULT(WINAPI*)(HANDLE handle, PCWSTR name);
ThreadCall pThreadCall = nullptr;

#pragma pack(push,8)
struct THREAD_NAME
{
	DWORD dwType;
	const char* szName;
	DWORD dwThreadID;
	DWORD dwFlags;
};

#pragma pack(pop)

void InternalThreadName(const char* name)
{
#ifdef _WIN32_WINNT_WIN10
	if (IsWindows10OrGreater() && !Win10SupportNewThreadNameInit)
	{
		HMODULE KernelLib = GetModuleHandle("kernel32.dll");
		pThreadCall = (ThreadCall)GetProcAddress(KernelLib, "SetThreadDescription");
		Win10SupportNewThreadNameInit = true;
	}
#endif

	if (pThreadCall)
	{
		constexpr size_t cSize = 64;
		wchar_t wc[cSize];
		mbstowcs(wc, name, cSize);

		pThreadCall(GetCurrentThread(), wc);
	}
	else
	{
		THREAD_NAME tn;
		tn.dwType = 0x1000;
		tn.szName = name;
		tn.dwThreadID = DWORD(-1);
		tn.dwFlags = 0;
		__try
		{
			RaiseException(0x406D1388, 0, sizeof(tn) / sizeof(size_t), (size_t*)&tn);
		}
		__except (EXCEPTION_CONTINUE_EXECUTION)
		{
		}
	}
}

#else

#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif
#include <pthread.h>

#endif



void thread_name(const char* name)
{
#ifdef WIN32
    // Should be in separate function, because of __try and /EHse, while we have scope object from Optick
    InternalThreadName(name);
#else
    pthread_t threadID = pthread_self();
    pthread_setname_np(threadID, name);
#endif

    OPTICK_SETUP_THREAD(name);
}

#ifdef WIN32
#pragma comment(lib,"Psapi.lib")
#endif

namespace Memory
{
	uint64 GetProcessMemory()
	{
#ifdef WIN32
        PROCESS_MEMORY_COUNTERS_EX MemCounters;
        ZeroMemory(&MemCounters, sizeof(MemCounters));
        MemCounters.cb = sizeof(MemCounters);
        HANDLE hCurrentProcess = GetCurrentProcess();
        GetProcessMemoryInfo(hCurrentProcess, (PPROCESS_MEMORY_COUNTERS) &MemCounters, sizeof(MemCounters));

        return MemCounters.PrivateUsage;
#elif defined linux
        using std::ios_base;
        using std::ifstream;
        using std::string;


        ifstream stat_stream("/proc/self/stat", ios_base::in);

        // dummy vars for leading entries in stat that we don't care about
        //
        string pid, comm, state, ppid, pgrp, session, tty_nr;
        string tpgid, flags, minflt, cminflt, majflt, cmajflt;
        string utime, stime, cutime, cstime, priority, nice;
        string O, itrealvalue, starttime;

        // the two fields we want
        //
        unsigned long vsize;
        long rss;

        stat_stream >> pid >> comm >> state >> ppid >> pgrp >> session >> tty_nr
            >> tpgid >> flags >> minflt >> cminflt >> majflt >> cmajflt
            >> utime >> stime >> cutime >> cstime >> priority >> nice
            >> O >> itrealvalue >> starttime >> vsize >> rss; // don't care about the rest

        stat_stream.close();

        long page_size_kb = sysconf(_SC_PAGE_SIZE) / 1024; // in case x86-64 is configured to use 2MB pages
        return rss * page_size_kb * 1000;
#endif
        return 0;
	}
}

std::string FlagsToString(uint32 flags, ValueToStringFunc getNameFunc)
{
    if (!flags)
        return "None";

    std::string names;
    for (uint32 i = 0; i < 32; i++)
    {
        uint32 flag = 1 << i;
        if (flags & flag)
        {
            if (!names.empty())
                names += ", ";

            names += getNameFunc(flag);
        }
    }
    return names;
}
