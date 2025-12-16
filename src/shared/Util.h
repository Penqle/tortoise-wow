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

#pragma once

#include "Common.h"
#include "Duration.h"
#include "Errors.h"
#include "OptickIntegration.h"

#include <string>
#include <vector>
#include <memory>

#include "fmt/core.h"
#include "Utilities/robin_hood.h"

extern const char* lsan_output_path;

template <typename T, typename std::enable_if<std::is_enum_v<T>>::type>
auto format_as(T enumx)
{
    return fmt::underlying(enumx);
}

class Tokenizer
{
public:
    typedef std::vector<char const*> StorageType;

    typedef StorageType::size_type size_type;

    typedef StorageType::const_iterator const_iterator;
    typedef StorageType::reference reference;
    typedef StorageType::const_reference const_reference;

public:
    Tokenizer(std::string const& src, char const sep, uint32 vectorReserve = 0);
    ~Tokenizer() { delete[] m_str; }

    const_iterator begin() const { return m_storage.begin(); }
    const_iterator end() const { return m_storage.end(); }

    size_type size() const { return m_storage.size(); }

    reference operator [] (size_type i) { return m_storage[i]; }
    const_reference operator [] (size_type i) const { return m_storage[i]; }

private:
    char* m_str;
    StorageType m_storage;
};

template <class T>
class CheckedBufferOutputIterator
{
public:
    using iterator_category = std::output_iterator_tag;
    using value_type = void;
    using pointer = T*;
    using reference = T&;
    using difference_type = std::ptrdiff_t;

    CheckedBufferOutputIterator(T* buf, size_t n) : _buf(buf), _end(buf + n) {}

    T& operator*() const { check(); return *_buf; }
    CheckedBufferOutputIterator& operator++() { check(); ++_buf; return *this; }
    CheckedBufferOutputIterator operator++(int) { CheckedBufferOutputIterator v = *this; operator++(); return v; }

    size_t remaining() const { return (_end - _buf); }

private:
    T* _buf;
    T* _end;
    void check() const
    {
        if (!(_buf < _end))
            throw std::out_of_range("index");
    }
};

typedef std::vector<std::string> Tokens;

Tokens StrSplit(std::string const& src, std::string const& sep);
uint32 GetUInt32ValueFromArray(Tokens const& data, uint16 index);
float GetFloatValueFromArray(Tokens const& data, uint16 index);

void stripLineInvisibleChars(std::string &src);

std::string secsToTimeString(time_t timeInSecs, bool shortText = false, bool hoursOnly = false);
uint32 TimeStringToSecs(std::string const& timestring);
std::string TimeToTimestampStr(time_t t);

std::string NormalizeString(const std::string& InStr);




template<typename ... Args>
std::string string_format(const std::string& format, Args ... args)
{
    return fmt::format(format, args...);
}

template<typename ... Args>
std::string string_format_depr(const std::string& format, Args ... args)
{
    int size_s = std::snprintf(nullptr, 0, format.c_str(), args ...) + 1; // Extra space for '\0'
    if (size_s <= 0) { throw std::runtime_error("Error during formatting."); }
    auto size = static_cast<size_t>(size_s);
    std::unique_ptr<char[]> buf(new char[size]);
    std::snprintf(buf.get(), size, format.c_str(), args ...);
    return std::string(buf.get(), buf.get() + size - 1); // We don't want the '\0' inside
}


inline uint32 secsToTimeBitFields(time_t secs)
{
    tm* lt = localtime(&secs);
    return (lt->tm_year - 100) << 24 | lt->tm_mon  << 20 | (lt->tm_mday - 1) << 14 | lt->tm_wday << 11 | lt->tm_hour << 6 | lt->tm_min;
}

/* Return a random number in the range min..max; (max-min) must be smaller than 32768. */
int32 irand(int32 min, int32 max);

/* Return a random number in the range min..max (inclusive). For reliable results, the difference
* between max and min should be less than RAND32_MAX. */
uint32 urand(uint32 min, uint32 max);

/* Return a random number in the range min..max (inclusive). */
float frand(float min, float max);

/* Return a random number in the range 0 .. RAND32_MAX. */
int32 rand32();

/* Return a random double from 0.0 to 1.0 (exclusive). Floats support only 7 valid decimal digits.
 * A double supports up to 15 valid decimal digits and is used internally (RAND32_MAX has 10 digits).
 * With an FPU, there is usually no difference in performance between float and double. */
double rand_norm(void);

float rand_norm_f(void);

/* Return a random double from 0.0 to 99.9999999999999. Floats support only 7 valid decimal digits.
 * A double supports up to 15 valid decimal digits and is used internaly (RAND32_MAX has 10 digits).
 * With an FPU, there is usually no difference in performance between float and double. */
double rand_chance(void);

float rand_chance_f(void);

Milliseconds randtime(Milliseconds const& min, Milliseconds const& max);

/* Return true if a random roll fits in the specified chance (range 0-100). */
inline bool roll_chance_f(float chance)
{
    return chance > rand_chance();
}

inline bool roll_chance_i(int chance)
{
    return chance > irand(0, 99);
}

inline bool roll_chance_u(uint32 chance)
{
    return chance > urand(0, 99);
}

/* Select a random element from a container. Note: make sure you explicitly empty check the container */
template <class C> typename C::value_type const& SelectRandomContainerElement(C const& container)
{
    typename C::const_iterator it = container.begin();
    std::advance(it, urand(0, container.size() - 1));
    return *it;
}
template<typename T, typename... Args>
T PickRandomValue(T first, Args ...rest)
{
    T array[sizeof...(rest)+1] = { first, rest... };
    return array[urand(0, (sizeof...(rest)))];
}

inline float round_float(float value)
{
    float const remainder = value - floor(value);

    if (remainder == 0.5f)
        return urand(0, 1) ? floor(value) : ceil(value);

    if (remainder > 0.5f)
        return ceil(value);

    return floor(value);
}

inline void ApplyModUInt32Var(uint32& var, int32 val, bool apply)
{
    int32 cur = var;
    cur += (apply ? val : -val);
    if(cur < 0)
        cur = 0;
    var = cur;
}

inline void ApplyModFloatVar(float& var, float  val, bool apply)
{
    var += (apply ? val : -val);
    if(var < 0)
        var = 0;
}

inline void ApplyPercentModFloatVar(float& var, float val, bool apply)
{
    if (val == -100.0f)     // prevent set var to zero
        val = -99.99f;
    var *= (apply?(100.0f+val)/100.0f : 100.0f / (100.0f+val));
}

// UTF8 handling
bool Utf8toWStr(std::string_view utf8str, std::wstring& wstr);

// in wsize==max size of buffer, out wsize==real string size
bool Utf8toWStr(char const* utf8str, size_t csize, wchar_t* wstr, size_t& wsize);

inline bool Utf8toWStr(std::string_view utf8str, wchar_t* wstr, size_t& wsize)
{
    return Utf8toWStr(utf8str.data(), utf8str.size(), wstr, wsize);
}

bool WStrToUtf8(std::wstring_view wstr, std::string& utf8str);
// size==real string size
bool WStrToUtf8(wchar_t const* wstr, size_t size, std::string& utf8str);

void ReplaceAll(std::string& str, const std::string& from, const std::string& to);
void ReplaceAllW(std::wstring& str, const std::wstring& from, const std::wstring& to);

// set string to "" if invalid utf8 sequence
size_t utf8length(std::string& utf8str);
void utf8truncate(std::string& utf8str, size_t len);

inline bool isBasicLatinCharacter(wchar_t wchar)
{
    if (wchar >= L'a' && wchar <= L'z')                      // LATIN SMALL LETTER A - LATIN SMALL LETTER Z
        return true;
    if (wchar >= L'A' && wchar <= L'Z')                      // LATIN CAPITAL LETTER A - LATIN CAPITAL LETTER Z
        return true;
    return false;
}


inline bool isPrintableAsciiCharacter(wchar_t wchar)
{
    return wchar >= 0x20 && wchar <= 0x7E;
}

inline bool isPrintableExtendedAsciiCharacter(wchar_t wchar)
{
    return wchar >= 0x20 && wchar < 0xFF;
}

inline bool isExtendedLatinCharacter(wchar_t wchar)
{
    if (isBasicLatinCharacter(wchar))
        return true;
    if (wchar >= 0x00C0 && wchar <= 0x00D6)                  // LATIN CAPITAL LETTER A WITH GRAVE - LATIN CAPITAL LETTER O WITH DIAERESIS
        return true;
    if (wchar >= 0x00D8 && wchar <= 0x00DE)                  // LATIN CAPITAL LETTER O WITH STROKE - LATIN CAPITAL LETTER THORN
        return true;
    if (wchar == 0x00DF)                                     // LATIN SMALL LETTER SHARP S
        return true;
    if (wchar >= 0x00E0 && wchar <= 0x00F6)                  // LATIN SMALL LETTER A WITH GRAVE - LATIN SMALL LETTER O WITH DIAERESIS
        return true;
    if (wchar >= 0x00F8 && wchar <= 0x00FE)                  // LATIN SMALL LETTER O WITH STROKE - LATIN SMALL LETTER THORN
        return true;
    if (wchar >= 0x0100 && wchar <= 0x012F)                  // LATIN CAPITAL LETTER A WITH MACRON - LATIN SMALL LETTER I WITH OGONEK
        return true;
    if (wchar == 0x1E9E)                                     // LATIN CAPITAL LETTER SHARP S
        return true;
    return false;
}

inline bool isCyrillicCharacter(wchar_t wchar)
{
    if (wchar >= 0x0410 && wchar <= 0x044F)                  // CYRILLIC CAPITAL LETTER A - CYRILLIC SMALL LETTER YA
        return true;
    if (wchar == 0x0401 || wchar == 0x0451)                  // CYRILLIC CAPITAL LETTER IO, CYRILLIC SMALL LETTER IO
        return true;
    return false;
}

inline bool isEastAsianCharacter(wchar_t wchar)
{
    if(wchar >= 0x1100 && wchar <= 0x11F9)                  // Hangul Jamo
        return true;
    if(wchar >= 0x3041 && wchar <= 0x30FF)                  // Hiragana + Katakana
        return true;
    if(wchar >= 0x3131 && wchar <= 0x318E)                  // Hangul Compatibility Jamo
        return true;
    if(wchar >= 0x31F0 && wchar <= 0x31FF)                  // Katakana Phonetic Ext.
        return true;
    if(wchar >= 0x3400 && wchar <= 0x4DB5)                  // CJK Ideographs Ext. A
        return true;
    if(wchar >= 0x4E00 && wchar <= 0x9FC3)                  // Unified CJK Ideographs
        return true;
    if(wchar >= 0xAC00 && wchar <= 0xD7A3)                  // Hangul Syllables
        return true;
    if(wchar >= 0xFF01 && wchar <= 0xFFEE)                  // Halfwidth forms
        return true;
    return false;
}

inline bool isWhiteSpace(char c)
{
    return ::isspace(int(c)) != 0;
}

inline bool isNumeric(wchar_t wchar)
{
    return (wchar >= L'0' && wchar <=L'9');
}

inline bool isNumeric(char c)
{
    return (c >= '0' && c <='9');
}

inline bool isNumericOrSpace(wchar_t wchar)
{
    return isNumeric(wchar) || wchar == L' ';
}

inline bool isNumeric(char const* str)
{
    for(char const* c = str; *c; ++c)
        if (!isNumeric(*c))
            return false;

    return true;
}

inline bool isNumeric(std::string const& str)
{
    for(std::string::const_iterator itr = str.begin(); itr != str.end(); ++itr)
        if (!isNumeric(*itr))
            return false;

    return true;
}

inline bool isNumeric(std::wstring const& str)
{
    for(std::wstring::const_iterator itr = str.begin(); itr != str.end(); ++itr)
        if (!isNumeric(*itr))
            return false;

    return true;
}

inline bool isBasicLatinString(std::wstring const& wstr, bool numericOrSpace)
{
    for(size_t i = 0; i < wstr.size(); ++i)
        if(!isBasicLatinCharacter(wstr[i]) && (!numericOrSpace || !isNumericOrSpace(wstr[i])))
            return false;
    return true;
}

inline bool isExtendedLatinString(std::wstring const& wstr, bool numericOrSpace)
{
    for(size_t i = 0; i < wstr.size(); ++i)
        if(!isExtendedLatinCharacter(wstr[i]) && (!numericOrSpace || !isNumericOrSpace(wstr[i])))
            return false;
    return true;
}

inline bool isCyrillicString(std::wstring const& wstr, bool numericOrSpace)
{
    for(size_t i = 0; i < wstr.size(); ++i)
        if(!isCyrillicCharacter(wstr[i]) && (!numericOrSpace || !isNumericOrSpace(wstr[i])))
            return false;
    return true;
}

inline bool hasCyrillic(std::wstring const& str)
{
    for (const auto& elem: str)
    {
        if (isCyrillicCharacter(elem))
            return true;
    }
    return false;
}

inline bool hasChinese(std::wstring const& str)
{
    for (const auto& elem : str)
    {
        if (isEastAsianCharacter(elem))
            return true;
    }
    return false;
}

inline bool isEastAsianString(std::wstring const& wstr, bool numericOrSpace)
{
    for(size_t i = 0; i < wstr.size(); ++i)
        if(!isEastAsianCharacter(wstr[i]) && (!numericOrSpace || !isNumericOrSpace(wstr[i])))
            return false;
    return true;
}

inline bool IsAsciiOnly(std::wstring const& wstr)
{
    for (size_t i = 0; i < wstr.size(); ++i)
        if (!isPrintableExtendedAsciiCharacter(wstr[i]))
            return false;
    return true;
}

inline bool isLeapYear(int year)
{
    if (year % 400 == 0) return true;
    if ((year % 4 == 0) && (year % 100 != 0)) return true;
    return false;
}

inline void strToUpper(std::string& str)
{
    std::transform( str.begin(), str.end(), str.begin(), toupper );
}

inline void strToLower(std::string& str)
{
    std::transform( str.begin(), str.end(), str.begin(), tolower );
}

inline void strToLower(char* str, int strLen)
{
    for (int i = 0; i < strLen; i++)
    {
        str[i] = tolower(str[i]);
    }
}

inline void strToUpper(char* str, int strLen)
{
    for (int i = 0; i < strLen; i++)
    {
        str[i] = toupper(str[i]);
    }
}

inline wchar_t wcharToUpper(wchar_t wchar)
{
    if(wchar >= L'a' && wchar <= L'z')                      // LATIN SMALL LETTER A - LATIN SMALL LETTER Z
        return wchar_t(uint16(wchar)-0x0020);
    if(wchar == 0x00DF)                                     // LATIN SMALL LETTER SHARP S
        return wchar_t(0x1E9E);
    if(wchar >= 0x00E0 && wchar <= 0x00F6)                  // LATIN SMALL LETTER A WITH GRAVE - LATIN SMALL LETTER O WITH DIAERESIS
        return wchar_t(uint16(wchar)-0x0020);
    if(wchar >= 0x00F8 && wchar <= 0x00FE)                  // LATIN SMALL LETTER O WITH STROKE - LATIN SMALL LETTER THORN
        return wchar_t(uint16(wchar)-0x0020);
    if(wchar >= 0x0101 && wchar <= 0x012F)                  // LATIN SMALL LETTER A WITH MACRON - LATIN SMALL LETTER I WITH OGONEK (only %2=1)
    {
        if(wchar % 2 == 1)
            return wchar_t(uint16(wchar)-0x0001);
    }
    if(wchar >= 0x0430 && wchar <= 0x044F)                  // CYRILLIC SMALL LETTER A - CYRILLIC SMALL LETTER YA
        return wchar_t(uint16(wchar)-0x0020);
    if(wchar == 0x0451)                                     // CYRILLIC SMALL LETTER IO
        return wchar_t(0x0401);

    return wchar;
}

inline wchar_t wcharToUpperOnlyLatin(wchar_t wchar)
{
    return isBasicLatinCharacter(wchar) ? wcharToUpper(wchar) : wchar;
}

inline wchar_t wcharToLower(wchar_t wchar)
{
    if(wchar >= L'A' && wchar <= L'Z')                      // LATIN CAPITAL LETTER A - LATIN CAPITAL LETTER Z
        return wchar_t(uint16(wchar)+0x0020);
    if(wchar >= 0x00C0 && wchar <= 0x00D6)                  // LATIN CAPITAL LETTER A WITH GRAVE - LATIN CAPITAL LETTER O WITH DIAERESIS
        return wchar_t(uint16(wchar)+0x0020);
    if(wchar >= 0x00D8 && wchar <= 0x00DE)                  // LATIN CAPITAL LETTER O WITH STROKE - LATIN CAPITAL LETTER THORN
        return wchar_t(uint16(wchar)+0x0020);
    if(wchar >= 0x0100 && wchar <= 0x012E)                  // LATIN CAPITAL LETTER A WITH MACRON - LATIN CAPITAL LETTER I WITH OGONEK (only %2=0)
    {
        if(wchar % 2 == 0)
            return wchar_t(uint16(wchar)+0x0001);
    }
    if(wchar == 0x1E9E)                                     // LATIN CAPITAL LETTER SHARP S
        return wchar_t(0x00DF);
    if(wchar == 0x0401)                                     // CYRILLIC CAPITAL LETTER IO
        return wchar_t(0x0451);
    if(wchar >= 0x0410 && wchar <= 0x042F)                  // CYRILLIC CAPITAL LETTER A - CYRILLIC CAPITAL LETTER YA
        return wchar_t(uint16(wchar)+0x0020);

    return wchar;
}

inline void wstrToUpper(std::wstring& str)
{
    std::transform( str.begin(), str.end(), str.begin(), wcharToUpper );
}

inline void wstrToLower(std::wstring& str)
{
    std::transform( str.begin(), str.end(), str.begin(), wcharToLower );
}

inline bool iequals(const std::string& a, const std::string& b)
{
    unsigned long sz = a.size();
    if (b.size() != sz)
        return false;

    for (unsigned int i = 0; i < sz; ++i)
        if (tolower(a[i]) != tolower(b[i]))
            return false;

    return true;
}

bool utf8ToConsole(std::string const& utf8str, std::string& conStr);
bool consoleToUtf8(std::string const& conStr,std::string& utf8str);
bool Utf8FitTo(std::string const& str, std::wstring search);
void utf8printf(FILE *out, char const* str, ...);
void vutf8printf(FILE *out, char const* str, va_list* ap);

bool IsIPAddress(char const* ipaddress);
uint32 CreatePIDFile(std::string const& filename);

void hexEncodeByteArray(uint8* bytes, uint32 arrayLen, std::string& result);
std::string ByteArrayToHexStr(uint8 const* bytes, uint32 length, bool reverse = false);
void HexStrToByteArray(std::string const& str, uint8* out, bool reverse = false);

uint32 dither(float v);

inline uint32 BatchifyTimer(uint32 timer, uint32 interval)
{
    uint32 value = timer / interval;
    if (timer % interval)
        value++;
    return value * interval;
}

std::string MoneyToString(uint32 copper);

std::string GetCurrentTimeString();

/* TODO FOR JAMEY: UNCOMMENT WHEN YOU FIX ERRORS
template <typename T>
struct reversion_wrapper { T& iterable; };

template <typename T>
auto begin(reversion_wrapper<T> w) { return std::rbegin(w.iterable); }

template <typename T>
auto end(reversion_wrapper<T> w) { return std::rend(w.iterable); }

template <typename T>
reversion_wrapper<T> reverse(T&& iterable) { return { iterable }; }
*/

void thread_name(const char* name);

namespace Memory
{
    uint64 GetProcessMemory();
}

typedef char const* (*ValueToStringFunc) (uint32 value);

std::string FlagsToString(uint32 flags, ValueToStringFunc getNameFunc);

inline float GetLambda(float startIndex, float endIndex, float currentIndex)
{
    return (currentIndex - startIndex) / (endIndex - startIndex);
}

inline float InterpolateValueAtIndex(float startIndex, float startValue, float endIndex, float endValue, float currentIndex)
{
    return startValue + GetLambda(startIndex, endIndex, currentIndex) * (endValue - startValue);
}
