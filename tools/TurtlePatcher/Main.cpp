// Giperion for Turtle WoW

#include <windows.h>
#include <filesystem>
#include <assert.h>
#include "StormLib.h"
#include "resource.h"
#include <Commctrl.h>
#include <iostream>
#include <string> 
#include <sstream>
#include <array>
#include <mutex>
#include <thread>
#include "ScopedHandle.h"
#include "Common.h"

#include "PeUtils.h"
#include "Downloader.h"
#include <strsafe.h>
#include <TlHelp32.h>

#define fs std::filesystem

enum OriginalValues
{
OFFSET_NET_VERSION                            = 0x001B2122, // 2 bytes.Original value : unsigned short "5875"
OFFSET_PVP_RANK_CHECK                         = 0x002093B0, // 6 bytes. Remove check for PvP rank for player's title field.
OFFSET_VISUAL_VERSION                         = 0x00437C04, // String. Original value: "1.12.1"
OFFSET_VISUAL_BUILD                           = 0x00437BFC, // String. Original value: "5875"
OFFSET_VISUAL_BUILD_DATE                      = 0x00434798, // String. Original value: "Sep 19 2006"
OFFSET_KOREAN_WEBSITE_FILTER                  = 0x0045CCD8, // String. Original value: "*.worldofwarcraft.co.kr"
OFFSET_CHINA_WEBSITE_FILTER                   = 0x0045CC9C, // String. Original value: "*.wowchina.com"
OFFSET_SHELLCODE_LOAD_DLL                     = 0x00004122, // A small storage for Discord DLL code.
OFFSET_ORIGINAL_FOV_VALUE                     = 0x004089B4, // Original FoV value.
OFFSET_DWARF_MAGE_VALUE_1                     = 0x000706E5, // Removal of Blizzard's hackfix for Dwarf Mages.
OFFSET_DWARF_MAGE_VALUE_2                     = 0x000706EB, // Removal of Blizzard's hackfix for Dwarf Mages.
OFFSET_DWARF_MAGE_VALUE_3                     = 0x0007075D, // Removal of Blizzard's hackfix for Dwarf Mages.
OFFSET_DWARF_MAGE_VALUE_4                     = 0x00070763, // Removal of Blizzard's hackfix for Dwarf Mages.
OFFSET_WINMAIN_CALL_PART                      = 0x0000999C, // 1 byte. Calling WinMain (replaced with Discord DLL)
OFFSET_STR_DISCORD_OVERLAY                    = 0x003FFF60, // Original value is some kind of CRT error. 
OFFSET_SOUND_SOFTWARE_CHANNELS                = 0x0005728C, // Sound channel count, default game value is 12.
OFFSET_SOUND_HARDWARE_CHANNELS                = 0x00057250, // Sound channel count, default game value is 12.
OFFSET_SOUND_MEMORY_CACHE                     = 0x000572C8, // Sound channel count, default game value is 4.
OFFSET_NAMEPLATE_DISTANCE                     = 0x0040c448, // 20 yards is the default value, increased to 41 yards.
OFFSET_LARGE_ADDRESS_AWARE                    = 0x00000126, // Allows the game use up to 4GB RAM.
OFFSET_SOUND_IN_BACKGROUND                    = 0x003A4869, // Allows the game to play music while user is alt-tabbed.
OFFSET_TEXTEMOTE_SOUND_RACE_ID_CHECK          = 0x00059289, // Allows the game to play emote sounds for High Elves.
OFFSET_TEXTEMOTE_SOUND_LOAD_CHECK             = 0x00057C81, // Allows the game to play emote sounds for High Elves.
OFFSET_HARDCORE_CHAT_CODECAVE1                = 0x0009B0B8,
OFFSET_HARDCORE_CHAT_CODECAVE2                = 0x0009B193,
OFFSET_HARDCORE_CHAT_CODECAVE3                = 0x0009F7A5,
OFFSET_HARDCORE_CHAT_CODECAVE4                = 0x0009F864,
OFFSET_HARDCORE_CHAT_CODECAVE5                = 0x0009F878,
OFFSET_HARDCORE_CHAT_CODECAVE6                = 0x0009F887,
OFFSET_HARDCORE_CHAT_CODECAVE7                = 0x0011BAE1,
OFFSET_HARDCORE_CHAT_ADDED                    = 0x0048E000, // New section 
OFFSET_BLUE_CHILD_MOON                        = 0x003E5B83, // Azeroth has two moons: The larger, bright and silver moon is known as The White Lady. The smaller cool, blue-green moon is known as the The Blue Child.
OFFSET_BLUE_CHILD_MOON_TIMER                  = 0x002D2095, // Normally Blue Child comes up once in two nights, but we make it daily.
OFFSET_SETUNIT_CODECAVE1                      = 0x00105E19,
OFFSET_SETUNIT_MAIN                           = 0x0048E060,
};

bool fov_build = false;
constexpr bool bPatcher = true;
constexpr bool bDownloadPatchFromInternet = false;

#define NEW_BUILD 7199u // Dev build. Change to 200 in the actual release.
#define NEW_VISUAL_BUILD "7199"
#define NEW_VISUAL_VERSION "1.17.2"
#define NEW_BUILD_DATE "May 20 2024"
#define NEW_WEBSITE_FILTER "*.turtle-wow.org" 
#define NEW_WEBSITE2_FILTER "*.discord.gg" 
#define PATCH_FILE "Data\\patch-6.mpq"
#define DISCORD_OVERLAY_FILE "DiscordOverlay.dll"
#define DISCORD_GAME_SDK_FILE "discord_game_sdk.dll"
#define ADDITIONAL_GAME_BINARY "WoWFoV.exe"
#define MAIN_GAME_BINARY "WoW.exe"
#define SHOULD_COPY_REALM_SETTINGS false
#define NEW_REALM_NAME "Nordanaar"

#define DOWNLOAD_FILENAME "twpatch_cn_rest_7100.mpq"

#define DOWNLOAD_LINK_MAIN "https://turtle-wow.b-cdn.net/cn/"
#define DOWNLOAD_LINK_BACKUP "https://download.turtle-wow.org/cn/"

const unsigned char LoadDLLShellcode[] =
{
	0x68, 0x60, 0xFF, 0x7F, 0x00,		// push 0x007FFF60 (offset to string "DiscordOverlay.dll")
	0xFF, 0x15, 0xB4, 0xF2, 0x7F, 0x00, // call ds:LoadLibraryA
	0xEb, 0xD1,							// jmp short _WinMain
};

const char DiscordOverlayDllStr[] = "DiscordOverlay.dll";

DWORD gMainThreadID = 0;

volatile DWORD bRequestToCancelDownload = 0;

DWORD G_WM_INCREMENT_PROGRESS = 0;
DWORD G_WM_PATCHING_DONE = 0;
DWORD G_WM_SET_PROGRESS = 0;
DWORD G_WM_SET_ERROR = 0;
DWORD G_WM_SET_STAGE = 0;

unsigned long long TotalBytesToDownload = 0;

bool IsOurMessage(UINT MsgID)
{
	return MsgID == G_WM_INCREMENT_PROGRESS ||
		MsgID == G_WM_PATCHING_DONE ||
		MsgID == G_WM_SET_PROGRESS ||
		MsgID == G_WM_SET_STAGE ||
		MsgID == G_WM_SET_ERROR;
}

DWORD StageIDToLocaleStringID(EPatcherStage Stage)
{
	switch (Stage)
	{
	case STAGE_INIT:
		return IDS_StartupLabel;
	case STAGE_BINARY_PATCH:
		return IDS_Stage_BinaryPatch;
	case STAGE_DOWNLOADING:
		return IDS_Stage_Downloading;
	case STAGE_CLEAR_CACHE:
		return IDS_Stage_ClearCache;
	case STAGE_UNPACK_FILES:
		return IDS_Stage_UnpackFiles;
	case STAGE_DONE:
		return IDS_Stage_Done;
	default:
		return IDS_StartupLabel;
	}
}

inline void SetProgress(int Progress)
{
	PostThreadMessageA(gMainThreadID, G_WM_SET_PROGRESS, Progress, 0);
}

inline void SetErrorState()
{
	PostThreadMessageA(gMainThreadID, G_WM_SET_ERROR, 0, 0);
}

inline void SetPatcherStage(EPatcherStage Stage)
{
	PostThreadMessageA(gMainThreadID, G_WM_SET_STAGE, (WPARAM)Stage, 0);
}

void RemoveFilenameFromEnd(std::string& InOutStr)
{
	size_t LastTrailingSlash = InOutStr.find_last_of('\\');
	if (LastTrailingSlash != std::string::npos)
	{
		InOutStr.erase(LastTrailingSlash, InOutStr.size() - LastTrailingSlash);
	}
}

void PatchDiscordOverlayDLL(FILE* hWoW)
{
	fseek(hWoW, (long)OFFSET_SHELLCODE_LOAD_DLL, SEEK_SET);
	fwrite(LoadDLLShellcode, sizeof(LoadDLLShellcode), 1, hWoW);

	fseek(hWoW, (long)OFFSET_WINMAIN_CALL_PART, SEEK_SET);
	const unsigned char DifferentCallOffset = 0x82;
	fwrite(&DifferentCallOffset, 1, 1, hWoW);

	fseek(hWoW, (long)OFFSET_STR_DISCORD_OVERLAY, SEEK_SET);
	fwrite(DiscordOverlayDllStr, sizeof(DiscordOverlayDllStr), 1, hWoW);
	const unsigned char ZeroByte = 0x00;
	fwrite(&ZeroByte, 1, 1, hWoW);
}

void PatchNetVersion(FILE* hWoW, unsigned short Build)
{
	fseek(hWoW, (long)OFFSET_NET_VERSION, SEEK_SET);
	fwrite(&Build, 2, 1, hWoW);
}

void PatchVisualVersion(
	FILE* hWoW, 
	const std::string& VersionString, 
	const std::string& BuildString, 
	const std::string& DateString,
	const std::string& WebsiteFilter,
	const std::string& WebsiteFilter2)
{
	// We can't exceed client restriction
	assert(VersionString.size() <= 6);
	assert(BuildString.size() == 4);
	assert(DateString.size() == 11);

	fseek(hWoW, OFFSET_VISUAL_VERSION, SEEK_SET);
	fwrite(VersionString.c_str(), 1, VersionString.size(), hWoW);

	fseek(hWoW, OFFSET_VISUAL_BUILD, SEEK_SET);
	fwrite(BuildString.c_str(), 1, BuildString.size(), hWoW);

	fseek(hWoW, OFFSET_VISUAL_BUILD_DATE, SEEK_SET);
	fwrite(DateString.c_str(), 1, DateString.size(), hWoW);

	// change website filter to allow turtle-wow.org and discord.gg
	fseek(hWoW, OFFSET_KOREAN_WEBSITE_FILTER, SEEK_SET);
	fwrite(WebsiteFilter.c_str(), 1, WebsiteFilter.size(), hWoW);
	fwrite("\0", 1, 1, hWoW);

	fseek(hWoW, OFFSET_CHINA_WEBSITE_FILTER, SEEK_SET);
	fwrite(WebsiteFilter2.c_str(), 1, WebsiteFilter2.size(), hWoW);
	fwrite("\0", 1, 1, hWoW);
}

void PatchBinary(FILE* hWoW)
{
	fseek(hWoW, 0x2f113a, SEEK_SET);
	unsigned char patch_1[] = { 0xeb, 0x19 };
	fwrite(patch_1, sizeof(patch_1), 1, hWoW);

	unsigned char patch_2[] = { 0x03 };
	fseek(hWoW, 0x2f1158, SEEK_SET);
	fwrite(patch_2, sizeof(patch_2), 1, hWoW);

	unsigned char patch_3[] = { 0x03 };
	fseek(hWoW, 0x2f11a7, SEEK_SET);
	fwrite(patch_3, sizeof(patch_3), 1, hWoW);

	unsigned char patch_4[] = { 0xeb, 0xb2 };
	fseek(hWoW, 0x2f11f0, SEEK_SET);
	fwrite(patch_4, sizeof(patch_4), 1, hWoW);

	unsigned char patch_5[] = { 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 };
	fseek(hWoW, OFFSET_PVP_RANK_CHECK, SEEK_SET);
	fwrite(patch_5, sizeof(patch_5), 1, hWoW);

	unsigned char patch_7[] = { 0xFE };
	fseek(hWoW, OFFSET_DWARF_MAGE_VALUE_1, SEEK_SET);
	fwrite(patch_7, sizeof(patch_7), 1, hWoW);
	fseek(hWoW, OFFSET_DWARF_MAGE_VALUE_2, SEEK_SET);
	fwrite(patch_7, sizeof(patch_7), 1, hWoW);
	fseek(hWoW, OFFSET_DWARF_MAGE_VALUE_3, SEEK_SET);
	fwrite(patch_7, sizeof(patch_7), 1, hWoW);
	fseek(hWoW, OFFSET_DWARF_MAGE_VALUE_4, SEEK_SET);
	fwrite(patch_7, sizeof(patch_7), 1, hWoW);

	unsigned char patch_14[] = { 0x40 };
	fseek(hWoW, OFFSET_TEXTEMOTE_SOUND_RACE_ID_CHECK, SEEK_SET);
	fwrite(patch_14, sizeof(patch_14), 1, hWoW);

	unsigned char patch_15[] = { 0x40 };
	fseek(hWoW, OFFSET_TEXTEMOTE_SOUND_LOAD_CHECK, SEEK_SET);
	fwrite(patch_15, sizeof(patch_15), 1, hWoW);

	unsigned char patch_11[] = { 0x00, 0x00, 0x24, 0x42 };
	fseek(hWoW, OFFSET_NAMEPLATE_DISTANCE, SEEK_SET);
	fwrite(patch_11, sizeof(patch_11), 1, hWoW);

	// Increased value:
	unsigned char patch_12[] = { 0x2F, 0x01 };
	fseek(hWoW, OFFSET_LARGE_ADDRESS_AWARE, SEEK_SET);
	fwrite(patch_12, sizeof(patch_12), 1, hWoW);

	// Original 1.12.1 value:
	//char patch_12[] = { 0x0F, 0x01 };
	//fseek(hWoW, OFFSET_LARGE_ADDRESS_AWARE, SEEK_SET);
	//fwrite(patch_12, sizeof(patch_12), 1, hWoW);

	// Sound channel count original values:
	unsigned char patch_8[] = { 0x38, 0x5D, 0x83, 0x00 };
	fseek(hWoW, OFFSET_SOUND_SOFTWARE_CHANNELS, SEEK_SET);
	fwrite(patch_8, sizeof(patch_8), 1, hWoW);

	unsigned char patch_9[] = { 0x38, 0x5D, 0x83, 0x0 };
	fseek(hWoW, OFFSET_SOUND_HARDWARE_CHANNELS, SEEK_SET);
	fwrite(patch_9, sizeof(patch_9), 1, hWoW);

	unsigned char patch_10[] = { 0x6C, 0x5C, 0x83, 0x00 };
	fseek(hWoW, OFFSET_SOUND_MEMORY_CACHE, SEEK_SET);
	fwrite(patch_10, sizeof(patch_10), 1, hWoW);

	// Sound in background, original value:
	unsigned char patch_13[] = { 0x14 };
	fseek(hWoW, OFFSET_SOUND_IN_BACKGROUND, SEEK_SET);
	fwrite(patch_13, sizeof(patch_13), 1, hWoW);

	// *****************************************************
	// Optional changes for the additionally distributed binary:
	// *****************************************************

	if (fov_build)
	{
		// Improved FoV value:
		unsigned char patch_6[] = { 0x66, 0x66, 0xF6, 0x3F };
		fseek(hWoW, OFFSET_ORIGINAL_FOV_VALUE, SEEK_SET);
		fwrite(patch_6, sizeof(patch_6), 1, hWoW);

		// Sound while alt-tabbed:
		unsigned char patch_13[] = { 0x27 };
		fseek(hWoW, OFFSET_SOUND_IN_BACKGROUND, SEEK_SET);
		fwrite(patch_13, sizeof(patch_13), 1, hWoW);
	}

	// Hardcore chat
	unsigned char patch_16[] = { 0x5F };
	fseek(hWoW, OFFSET_HARDCORE_CHAT_CODECAVE1, SEEK_SET);
	fwrite(patch_16, sizeof(patch_16), 1, hWoW);

	unsigned char patch_17[] = { 0xE9, 0xA8, 0xAE, 0x86 };
	fseek(hWoW, OFFSET_HARDCORE_CHAT_CODECAVE2, SEEK_SET);
	fwrite(patch_17, sizeof(patch_17), 1, hWoW);

	unsigned char patch_18[] = { 0x70, 0x53, 0x56, 0x33, 0xF6, 0xE9, 0x71, 0x68, 0x86, 0x00 };
	fseek(hWoW, OFFSET_HARDCORE_CHAT_CODECAVE3, SEEK_SET);
	fwrite(patch_18, sizeof(patch_18), 1, hWoW);

	unsigned char patch_19[] = { 0x94 };
	fseek(hWoW, OFFSET_HARDCORE_CHAT_CODECAVE4, SEEK_SET);
	fwrite(patch_19, sizeof(patch_19), 1, hWoW);

	unsigned char patch_20[] = { 0x0E };
	fseek(hWoW, OFFSET_HARDCORE_CHAT_CODECAVE5, SEEK_SET);
	fwrite(patch_20, sizeof(patch_20), 1, hWoW);

	unsigned char patch_21[] = { 0x90 };
	fseek(hWoW, OFFSET_HARDCORE_CHAT_CODECAVE6, SEEK_SET);
	fwrite(patch_21, sizeof(patch_21), 1, hWoW);

	unsigned char patch_22[] = { 0x0C, 0x60, 0xD0 };
	fseek(hWoW, OFFSET_HARDCORE_CHAT_CODECAVE7, SEEK_SET);
	fwrite(patch_22, sizeof(patch_22), 1, hWoW);

	unsigned char patch_23[] = { 0x48, 0x41, 0x52, 0x44, 0x43, 0x4F, 0x52, 0x45, 0x00, 0x00, 0x00, 0x00, 0x43, 0x48, 0x41, 0x54,
	0x5F, 0x4D, 0x53, 0x47, 0x5F, 0x48, 0x41, 0x52, 0x44, 0x43, 0x4F, 0x52, 0x45, 0x00, 0x00, 0x00,
	0x57, 0x8B, 0xDA, 0x8B, 0xF9, 0xC7, 0x45, 0x94, 0x00, 0x60, 0xD0, 0x00, 0xC7, 0x45, 0x90, 0x5E,
	0x00, 0x00, 0x00, 0xE9, 0x77, 0x97, 0x79, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x68, 0x08, 0x46, 0x84, 0x00, 0x83, 0x7D, 0xF0, 0x5E, 0x75, 0x05, 0xB9, 0x1F, 0x02, 0x00, 0x00,
	0xE9, 0x43, 0x51, 0x79, 0xFF };
	fseek(hWoW, OFFSET_HARDCORE_CHAT_ADDED, SEEK_SET);
	fwrite(patch_23, sizeof(patch_23), 1, hWoW);

	// Offset discovered by this guy: https://www.youtube.com/watch?v=9uWt7dJ8H3w
	unsigned char patch_24[] = { 0xC7, 0x05, 0xA4, 0x98, 0xCE, 0x00, 0xD4, 0xE2, 0xE7, 0xFF, 0xC2, 0x04, 0x00 };
	fseek(hWoW, OFFSET_BLUE_CHILD_MOON, SEEK_SET);
	fwrite(patch_24, sizeof(patch_24), 1, hWoW);

	unsigned char patch_25[] = { 0x00, 0x00, 0x80, 0x3F };
	fseek(hWoW, OFFSET_BLUE_CHILD_MOON_TIMER, SEEK_SET);
	fwrite(patch_25, sizeof(patch_25), 1, hWoW);

	/// modified lua function PlayerModel:SetUnit ///

	// jmp to main code
	unsigned char patch_26[] = { 0xE9, 0x02, 0x03, 0x80, 0x00 };
	fseek(hWoW, OFFSET_SETUNIT_CODECAVE1, SEEK_SET);
	fwrite(patch_26, sizeof(patch_26), 1, hWoW);

	// main code
	unsigned char patch_27[] =
	{
		0x55, 0x89, 0xE5, 0x83, 0xEC, 0x10, 0x85, 0xD2, 0x53, 0x56, 0x57, 0x89, 0xCF, 0x0F, 0x84, 0xA2,
		0x00, 0x00, 0x00, 0x89, 0xD0, 0x85, 0xC0, 0x0F, 0x8C, 0x98, 0x00, 0x00, 0x00, 0x3B, 0x05, 0x94,
		0xDE, 0xC0, 0x00, 0x0F, 0x8F, 0x8C, 0x00, 0x00, 0x00, 0x8B, 0x0D, 0x90, 0xDE, 0xC0, 0x00, 0x8B,
		0x04, 0x81, 0x85, 0xC0, 0x89, 0x45, 0xF0, 0x74, 0x7C, 0x8B, 0x40, 0x04, 0x85, 0xC0, 0x7C, 0x75,
		0x3B, 0x05, 0x6C, 0xDE, 0xC0, 0x00, 0x7F, 0x6D, 0x8B, 0x15, 0x68, 0xDE, 0xC0, 0x00, 0x8B, 0x1C,
		0x82, 0x85, 0xDB, 0x74, 0x60, 0x8B, 0x43, 0x08, 0x6A, 0x00, 0x50, 0x89, 0xF9, 0xE8, 0xFE, 0x6E,
		0xA6, 0xFF, 0x89, 0xC1, 0xE8, 0x87, 0x12, 0xA0, 0xFF, 0x89, 0xC6, 0x85, 0xF6, 0x74, 0x46, 0x8B,
		0x55, 0xF0, 0x53, 0x89, 0xF1, 0xE8, 0xD6, 0x36, 0x77, 0xFF, 0x8B, 0x17, 0x56, 0x89, 0xF9, 0xFF,
		0x92, 0x90, 0x00, 0x00, 0x00, 0x89, 0xF8, 0x99, 0x52, 0x50, 0x68, 0xA0, 0x62, 0x50, 0x00, 0x89,
		0xF1, 0xE8, 0xBA, 0xBA, 0xA0, 0xFF, 0x6A, 0x01, 0x6A, 0x01, 0x68, 0x00, 0x00, 0x80, 0x3F, 0x6A,
		0x00, 0x6A, 0xFF, 0x6A, 0x00, 0x6A, 0xFF, 0x89, 0xF1, 0xE8, 0x92, 0xC0, 0xA0, 0xFF, 0x89, 0xF1,
		0xE8, 0x8B, 0xA2, 0xA0, 0xFF, 0x5F, 0x5E, 0x5B, 0x89, 0xEC, 0x5D, 0xC3, 0x90, 0x90, 0x90, 0x90,
		0xBA, 0x02, 0x00, 0x00, 0x00, 0x89, 0xF1, 0xE8, 0xD4, 0xD2, 0x9E, 0xFF, 0x83, 0xF8, 0x03, 0x75,
		0x43, 0xBA, 0x02, 0x00, 0x00, 0x00, 0x89, 0xF1, 0xE8, 0xE3, 0xD4, 0x9E, 0xFF, 0xE8, 0x6E, 0x41,
		0x70, 0xFF, 0x56, 0x8B, 0xB7, 0xD4, 0x00, 0x00, 0x00, 0x31, 0xD2, 0x39, 0xD6, 0x89, 0x97, 0xE0,
		0x03, 0x00, 0x00, 0x89, 0x97, 0xE4, 0x03, 0x00, 0x00, 0x89, 0x97, 0xF0, 0x03, 0x00, 0x00, 0x5E,
		0x0F, 0x84, 0xD3, 0xFC, 0x7F, 0xFF, 0x89, 0xC2, 0x89, 0xF9, 0xE8, 0xF1, 0xFE, 0xFF, 0xFF, 0xE9,
		0xC5, 0xFC, 0x7F, 0xFF, 0xBA, 0x02, 0x00, 0x00, 0x00, 0xE9, 0xA0, 0xFC, 0x7F, 0xFF, 0x90, 0x90,
		0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90
	};
	fseek(hWoW, OFFSET_SETUNIT_MAIN, SEEK_SET);
	fwrite(patch_27, sizeof(patch_27), 1, hWoW);

}

constexpr int max_path = 260;
using string_path = char[2 * max_path];

struct StormFile
{
	HANDLE hFile = NULL;
	LARGE_INTEGER Size;

	StormFile(HANDLE InFile)
		: hFile(InFile)
	{
		assert(hFile != NULL);

		Size.LowPart = SFileGetFileSize(hFile, (LPDWORD)&Size.HighPart);
	}

	void ReadToBuffer(void* pOutData, DWORD NumBytes)
	{
		DWORD ReadedBytes = 0;
		bool bSuccess = SFileReadFile(hFile, pOutData, NumBytes, &ReadedBytes, NULL);
		assert(bSuccess);
		assert(ReadedBytes == NumBytes);
	}

	~StormFile()
	{
		SFileCloseFile(hFile);
	}
};

struct StormArchive
{
	HANDLE mpq = NULL;
	StormArchive(const TCHAR* pPath)
	{
		if (!SFileOpenArchive(pPath, 0, 0, &mpq))
		{
			mpq = NULL;
		}
	}

	bool IsValid() const
	{
		return mpq != NULL;
	}

	StormFile* OpenFile(const char* filename)
	{
		if (!IsValid())
		{
			return nullptr;
		}

		HANDLE hFile;
		if (SFileOpenFileEx(mpq, filename, 0, &hFile))
		{
			return new StormFile(hFile);
		}

		return nullptr;
	}

	bool HasFile(const char* filename)
	{
		if (!IsValid())
		{
			return false;
		}

		return SFileHasFile(mpq, filename);
	}

	~StormArchive()
	{
		if (mpq != NULL)
		{
			SFileCloseArchive(mpq);
		}
	}

	struct FileIterator
	{
		HANDLE ParentMPQ = NULL;
		HANDLE hFind = NULL;
		SFILE_FIND_DATA FileData;
		bool bReachEnd = false;

		FileIterator(HANDLE hMPQ)
			: ParentMPQ(hMPQ)
		{
			ZeroMemory(&FileData, sizeof(FileData));

			hFind = SFileFindFirstFile(ParentMPQ, "*", &FileData, nullptr);
			if (hFind == NULL)
			{
				bReachEnd = true;
			}
		}

		
		FileIterator& operator++(int)
		{
			if (!bReachEnd)
			{
				bReachEnd = !SFileFindNextFile(hFind, &FileData);
			}

			return *this;
		}

		operator bool()
		{
			return !bReachEnd;
		}

		StormFile* OpenCurrentFile()
		{
			HANDLE hFile;
			if (SFileOpenFileEx(ParentMPQ, FileData.cFileName, 0, &hFile))
			{
				return new StormFile(hFile);
			}

			return nullptr;
		}

		~FileIterator()
		{
			SFileFindClose(hFind);
		}
	};
};

HINSTANCE gHInstance;
HWND hDialog = NULL;

template<typename BufferType>
void LocaleString(DWORD StringID, BufferType& OutString)
{
	ZeroMemory(OutString, sizeof(OutString));
	LoadString(gHInstance, StringID, OutString, sizeof(OutString) / sizeof(OutString[0]));
}

INT_PTR CALLBACK Dlgproc(HWND Arg1, UINT Message, WPARAM wParam, LPARAM lParam)
{
	static HWND hProgressBar = NULL;
	static HWND hProgressTxt = NULL;
	static HWND hCancelBtn = NULL;

	static bool bDownloading = false;

	switch (Message)
	{
	case WM_INITDIALOG:
	{
		HICON hIcon = (HICON)LoadImage(gHInstance, MAKEINTRESOURCE(IDI_ICON3), IMAGE_ICON, GetSystemMetrics(SM_CXSMICON), GetSystemMetrics(SM_CYSMICON), 0);

		if (hIcon != NULL)
		{
			SendMessage(Arg1, WM_SETICON, ICON_SMALL, (LPARAM)hIcon);
		}

		hProgressBar = GetDlgItem(Arg1, IDC_PROGRESS1);
		hProgressTxt = GetDlgItem(Arg1, IDC_PROGRESSTXT);
		hCancelBtn = GetDlgItem(Arg1, IDC_CANCELBTN);

		SendMessage(hProgressBar, PBM_SETRANGE32, 0, 100);
		SendMessage(hProgressBar, PBM_SETSTEP, 1, 0);

		TCHAR StringBuffer[512];
		LocaleString(IDS_TITLE, StringBuffer);
		SetWindowText(Arg1, StringBuffer);

		LocaleString(IDS_StartupLabel, StringBuffer);
		SetWindowText(hProgressTxt, StringBuffer);

		LocaleString(IDS_Cancel, StringBuffer);
		SetWindowText(hCancelBtn, StringBuffer);
		return TRUE;
	}
	break;
	case WM_COMMAND:
	{
		switch (LOWORD(wParam))
		{
		case IDC_CANCELBTN:
		{
			InterlockedExchange(&bRequestToCancelDownload, 1);
			DestroyWindow(Arg1);
			hDialog = NULL;
			return TRUE;
		}
		default:
			break;
		}
	}
	break;
	case WM_DESTROY:
	{
		PostQuitMessage(0);
		return TRUE;
	}
	break;
	default:
		break;
	}

	if (Message == G_WM_INCREMENT_PROGRESS)
	{
		SendMessage(hProgressBar, PBM_STEPIT, 0, 0);
		return TRUE;
	}
	else if (Message == G_WM_SET_PROGRESS)
	{
		SendMessage(hProgressBar, PBM_SETPOS, wParam, 0);

		if (bDownloading && TotalBytesToDownload > 0)
		{
			TCHAR DownloadTxt[256];
			LocaleString(IDS_DownloadStatus, DownloadTxt);

			float fTotalBytes = float(TotalBytesToDownload);
			float TotalMegabytes = fTotalBytes / 1024.0f / 1024.0f;
			float CurrentMegabytes = ((float(wParam) / 100.0f) * fTotalBytes) / 1024.0f / 1024.0f;
			
			TCHAR LabelTxt[256];
			StringCbPrintf(LabelTxt, sizeof(LabelTxt), DownloadTxt, CurrentMegabytes, TotalMegabytes);
			SetWindowText(hProgressTxt, LabelTxt);
		}

		return TRUE;
	}
	else if (Message == G_WM_SET_ERROR)
	{
		SendMessage(hProgressBar, PBM_SETSTATE, PBST_ERROR, 0);
		return TRUE;
	}
	else if (Message == G_WM_PATCHING_DONE)
	{
		DestroyWindow(Arg1);
		hDialog = NULL;
		return TRUE;
	}
	else if (Message == G_WM_SET_STAGE)
	{
		TCHAR StringBuffer[512];

		EPatcherStage PatcherStage = (EPatcherStage)wParam;
		DWORD StringID = StageIDToLocaleStringID(PatcherStage);
		LocaleString(StringID, StringBuffer);
		SetWindowText(hProgressTxt, StringBuffer);

		bDownloading = PatcherStage == STAGE_DOWNLOADING; 

		return TRUE;
	}

	return FALSE;
}

HANDLE hLogFile = NULL;

std::mutex LogMutex;

void WriteLog(const TCHAR* format, ...)
{
	std::lock_guard LogGuard{ LogMutex };
	if (hLogFile == NULL)
	{
		return;
	}

	va_list ap;
	va_start(ap, format);
	TCHAR Message[4096] = {0};

	size_t BytesLeft = 0;
	StringCbVPrintfEx(Message, sizeof(Message), NULL, &BytesLeft, STRSAFE_NULL_ON_FAILURE, format, ap);

	size_t CharsWritten = 4096 - (BytesLeft / sizeof(TCHAR));

	va_end(ap);
	Message[CharsWritten] = _T('\n');
	Message[CharsWritten + 1] = _T('\0');

	DWORD bytesWritten = 0;
	WriteFile(hLogFile, Message, (CharsWritten + 1) * sizeof(TCHAR), &bytesWritten, NULL);

#ifdef _DEBUG
	OutputDebugString(Message);
#endif
}

[[deprecated("Strongly recommended to use ErrorBox(DWORD TxtID), since we need support localization")]]
inline void ErrorBox(const TCHAR* errorTxt)
{
	TCHAR ErrLabel[32] = { 0 };
	LocaleString(IDS_Error, ErrLabel);
	MessageBox(NULL, errorTxt, ErrLabel, MB_OK | MB_ICONERROR);
}

inline void ErrorBox(DWORD TxtID)
{
	TCHAR Message[1024] = {0};
	LocaleString(TxtID, Message);

	TCHAR ErrLabel[32] = {0};
	LocaleString(IDS_Error, ErrLabel);
	MessageBox(NULL, Message, ErrLabel, MB_OK | MB_ICONERROR);
}

int PatchWoWExe()
{
	// patch WoW.exe
	if (FILE* hWoWBinary = fopen("WoW.exe", "r+b"))
	{
		PatchBinary(hWoWBinary);
		PatchNetVersion(hWoWBinary, NEW_BUILD);
	 // PatchDiscordOverlayDLL(hWoWBinary);

		std::string Version(NEW_VISUAL_VERSION);
		std::string Build(NEW_VISUAL_BUILD);
		std::string Date(NEW_BUILD_DATE);
		std::string WebsiteFilter(NEW_WEBSITE_FILTER);
		std::string WebsiteFilter2(NEW_WEBSITE2_FILTER);
		PatchVisualVersion(hWoWBinary, Version, Build, Date, WebsiteFilter, WebsiteFilter2);

		fclose(hWoWBinary);
	}
	else
	{
		WriteLog(_T("ERROR: Can't patch WoW.exe - can't open file!"));
//		ErrorBox("Can't patch WoW.exe");
		return 1;
	}

	return 0;
}

void PrintInstructions()
{
	TCHAR HelpStr[512];

	LocaleString(IDS_HelpStr1, HelpStr);
	WriteLog(_T(" "));
	WriteLog(HelpStr);

	LocaleString(IDS_HelpStr2, HelpStr);
	WriteLog(_T(" "));
	WriteLog(HelpStr);

	LocaleString(IDS_HelpStr3, HelpStr);
	WriteLog(_T(" "));
	WriteLog(HelpStr);

	LocaleString(IDS_HelpStr4, HelpStr);
	WriteLog(_T(" "));
	WriteLog(HelpStr);

	LocaleString(IDS_HelpStr5, HelpStr);
	WriteLog(_T(" "));
	WriteLog(HelpStr, _T(PATCH_FILE), _T(NEW_VISUAL_VERSION));

	LocaleString(IDS_HelpStr6, HelpStr);
	WriteLog(_T(" "));
	WriteLog(HelpStr);
}

void ClearWDBCache()
{
	fs::path current_path = fs::current_path();

	{
		fs::path wdb = current_path / "WDB";

		if (fs::exists(wdb))
		{
			WriteLog(_T("Searching for the client cache..."));
			std::error_code ec;
			fs::remove_all(wdb, ec);
			WriteLog(_T("Deleting client cache: %s"), ec.category().message(ec.value()).c_str());
		}	
	}
}

void DeleteChatCache()
{
	fs::path chat_cache_path = fs::current_path() / "WTF" / "Account";

	if(!fs::exists(chat_cache_path))
	{
		return;
	}

	for (const fs::directory_entry& dir_entry : fs::recursive_directory_iterator(chat_cache_path))
	{
		if (wcsstr(dir_entry.path().c_str(), L"chat-cache.txt"))
		{
			std::wstring wPath = dir_entry.path().wstring();
			WriteLog(_T("Removing %s"), wPath.c_str());
			fs::remove(dir_entry.path());
		}
	}
}

void DeleteDeprecatedMPQ()
{
	fs::path currentPath = fs::current_path();

	{
		int numerical_patches[4] = { 6, 7, 8, 9 };
		for (int i : numerical_patches)
		{
			WriteLog(_T("Searching for patch-%i..."), i);
			std::stringstream ss;
			std::stringstream ss_r;
			ss << "patch-" << std::to_string(i) << ".mpq";
			ss_r << "patch-" << std::to_string(i) << ".mpq.off";
			std::string patch_name = ss.str();
			std::string patch_rename = ss_r.str();

			fs::path patch_path = currentPath / "Data" / patch_name;

			if (fs::exists(patch_path))
			{
				WriteLog(_T("Renaming deprecated patch-%i to %S..."), i, patch_rename.c_str());
				fs::rename(currentPath / "Data" / patch_path, currentPath / "Data" / patch_rename);

				fs::path patch_disabled = currentPath / "Data" / patch_rename;
				if (fs::exists(patch_disabled))
				{
					WriteLog(_T("Deleting deprecated patch-%i..."), i);
					fs::remove(patch_disabled);
				}
				else
				{
					WriteLog(_T("Deprecated patch-%i not found."), i);
				}
			}
			else
			{
				WriteLog(_T("Patch-%i not found."), i);
			}
		}
	}

	{
		for (char let = 'A'; let <= 'Z'; ++let)
		{
			std::stringstream ss_n;
			ss_n << "patch-" << let << ".mpq";
			std::string i = ss_n.str();

			WriteLog(_T("Searching for %S..."), i.c_str());

			std::stringstream ss_r;
			ss_r << i << ".off";
			std::string patch_rename = ss_r.str();

			fs::path patch_path = currentPath / "Data" / i.c_str();

			if (fs::exists(patch_path))
			{
				WriteLog(_T("Renaming deprecated %S to %S..."), i.c_str(), patch_rename.c_str());
				fs::rename(currentPath / "Data" / patch_path, currentPath / "Data" / patch_rename);

				fs::path patch_disabled = currentPath / "Data" / patch_rename;
				if (fs::exists(patch_disabled))
				{
					WriteLog(_T("Deleting deprecated %S..."), i.c_str());
					fs::remove(patch_disabled);
				}
				else
				{
					WriteLog(_T("Deprecated %S not found."), i.c_str());
				}
			}
			else
			{
				WriteLog(_T("%S not found."), i.c_str());
			}
		}
	}
}

void DeleteLFTAddon()
{
	fs::path currentPath = fs::current_path();
	{
		fs::path lft = currentPath / "Interface" / "AddOns" / "LFT";

		if (fs::exists(lft))
		{
			WriteLog(_T("Searching for the deprecated LFT addon..."));
			std::error_code ec;
			fs::remove_all(lft, ec);
			WriteLog(_T("Deleting LFT addon: %S"), ec.category().message(ec.value()).c_str());
		}
		else
			WriteLog(_T("LFT addon doesn't exist. Skip."));
	}
}

void TransferSettingsToNewRealm()
{
	WriteLog(_T("TransferSettingsToNewRealm"));

	fs::path currentPath = fs::current_path();

	fs::path WTFPath = currentPath / "WTF";
	if (!fs::exists(WTFPath))
	{
		WriteLog(_T("Skipping transfer, since WTF folder doesn't even exist"));
		return;
	}

	fs::path AccountFolder = WTFPath / "Account";
	if (!fs::exists(AccountFolder))
	{
		WriteLog(_T("Skipping transfer, since WTF/Account folder doesn't even exist"));
		return;
	}

	for (const fs::directory_entry& AccountEntry : std::filesystem::directory_iterator{ AccountFolder })
	{
		if (!AccountEntry.is_directory())
		{
			continue;
		}
		fs::path AccountEntryPath = AccountEntry.path();

		WriteLog(_T("Copy settings for %s"), AccountEntryPath.c_str());

		fs::path AccountTurtleWoWRealmSettings = AccountEntryPath / "Turtle WoW";
		if (!fs::exists(AccountTurtleWoWRealmSettings))
		{
			continue;
		}

		fs::path NewRealmFolder = AccountEntryPath / NEW_REALM_NAME;
		if (fs::exists(NewRealmFolder))
		{
			WriteLog(_T("Skipping transfer, since settings for new realm already exists. We don't want to override existing settings"));
			continue;
		}

		if (!fs::create_directory(NewRealmFolder))
		{
			WriteLog(_T("Error creating new directory for settings. Skipping..."));
			continue;
		}

		// Time to copy shit
		// STAGE 1: Only create directories. That way files can be created without checking if folder exists
		for (const fs::directory_entry& OldElemEntry : fs::recursive_directory_iterator{AccountTurtleWoWRealmSettings})
		{
			if(!OldElemEntry.is_directory())
			{
				continue;
			}

			fs::path OldElemFolderPath = OldElemEntry.path();
			fs::path OldElemRelativeFolderPath = fs::relative(OldElemFolderPath, AccountTurtleWoWRealmSettings);

			fs::path NewElemFolderPath = NewRealmFolder / OldElemRelativeFolderPath;
			if (!fs::exists(NewElemFolderPath))
			{
				fs::create_directories(NewElemFolderPath);
			}
		}

		// STAGE 2: All folders created, just copy files without any worry
		for (const fs::directory_entry& OldElemEntry : fs::recursive_directory_iterator{ AccountTurtleWoWRealmSettings })
		{
			if (!OldElemEntry.is_regular_file())
			{
				continue;
			}

			fs::path OldElemFilePath = OldElemEntry.path();
			fs::path OldElemRelativeFilePath = fs::relative(OldElemFilePath, AccountTurtleWoWRealmSettings);

			fs::path NewElemFilePath = NewRealmFolder / OldElemRelativeFilePath;
			fs::copy_file(OldElemFilePath, NewElemFilePath);
		}
	}
}

DWORD GuardPatchMainWork();

int GuardedMain(HINSTANCE hInstance, LPSTR CmdLine)
{
	gHInstance = hInstance;

	G_WM_INCREMENT_PROGRESS = RegisterWindowMessage(_T("WM_INCREMENT_PROGRESS"));
	G_WM_PATCHING_DONE = RegisterWindowMessage(_T("WM_PATCHING_DONE"));
	G_WM_SET_PROGRESS = RegisterWindowMessage(_T("WM_SET_PROGRESS"));
	G_WM_SET_ERROR = RegisterWindowMessage(_T("WM_SET_ERROR"));
	G_WM_SET_STAGE = RegisterWindowMessage(_T("WM_SET_STAGE"));

	// create log file
	// By default we try to create a log in working directory.
	// But if that not possible - create in temp dir

	fs::path currentPath = fs::current_path();
	const char* LogFilename = "tw_update.log";

	fs::path LogFilePlace1 = currentPath / LogFilename;
	std::wstring LogFilePlace1str = LogFilePlace1.wstring();

	FileScopedHandle LogFile{ CreateFileW(LogFilePlace1str.c_str(), GENERIC_WRITE, FILE_SHARE_READ, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL) };
	if (!LogFile.IsValid())
	{
		fs::path TempPath = fs::temp_directory_path();
		TempPath = TempPath / LogFilename;
		std::wstring TempPathStr = TempPath.wstring();
		FileScopedHandle NewLogHandle {CreateFileW(TempPathStr.c_str(), GENERIC_WRITE, FILE_SHARE_READ, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL)};
		if (!NewLogHandle.IsValid())
		{
			ErrorBox(IDS_Err_LogFile);
		}

		LogFile.Swap(NewLogHandle);
	}

	hLogFile = LogFile.Get();
	{
		// write BOM
		unsigned char BOM[2] = { 0xFF, 0xFE};
		DWORD BytesWritten = 0;
		WriteFile(hLogFile, &BOM, 2, &BytesWritten, NULL);
	}

	WriteLog(_T("Log file created."));

	// create a dialog
	hDialog = CreateDialog(hInstance, MAKEINTRESOURCE(IDD_DIALOGBAR), NULL, Dlgproc);
	ShowWindow(hDialog, SW_SHOW);

	// Handle all dialog creation messages
	MSG		msg;
	while (PeekMessage(&msg, nullptr, 0U, 0U, PM_REMOVE))
	{
		if (!IsWindow(hDialog) || !IsDialogMessage(hDialog, &msg))
		{
			TranslateMessage(&msg);
			DispatchMessage(&msg);
		}
	}

	std::thread PatcherThread{ GuardPatchMainWork };
	PatcherThread.detach();

	BOOL bRet = TRUE;
	while ((bRet = GetMessage(&msg, NULL, 0, 0)) != 0)
	{
		if (bRet == -1)
		{
			break;
		}
		else
		{
			bool bOurMessage = IsOurMessage(msg.message);
			if (!bOurMessage && (!IsWindow(hDialog) || !IsDialogMessage(hDialog, &msg))) // Not our message, and not a dialog message
			{
				TranslateMessage(&msg);
				DispatchMessage(&msg);
			}

			if (bOurMessage)
			{
				// this not looking good, but hey, it's working ok'ish
				Dlgproc(hDialog, msg.message, msg.wParam, msg.lParam);
			}
		}
	}

	WriteLog(_T("Update is complete, starting the game..."));
	if (hDialog != NULL)
	{
		DestroyWindow(hDialog);
		hDialog = NULL;
	}

#ifndef _DEBUG
	fs::remove("wow-patch.mpq");
#endif

	STARTUPINFO info;
	PROCESS_INFORMATION pInfo;
	ZeroMemory(&info, sizeof(info));
	ZeroMemory(&pInfo, sizeof(pInfo));

	TCHAR WoWExe[24] = _T("WoW.exe");
	if (!CreateProcess(NULL, WoWExe, NULL, NULL, FALSE, NORMAL_PRIORITY_CLASS, NULL, NULL, &info, &pInfo))
	{
		WriteLog(_T("ERROR: Can't start WoW.exe"));
	}

	return 0;
}

int UnhandledExceptionFilter(unsigned int code, struct _EXCEPTION_POINTERS *ep)
{
	TCHAR CriticalErrorTxt[256];
	TCHAR CriticalErrorLabel[32];

	LocaleString(IDS_CriticalError_Label, CriticalErrorLabel);
	LocaleString(IDS_CriticalError_Txt, CriticalErrorTxt);
	MessageBox(NULL, CriticalErrorTxt, CriticalErrorLabel, MB_OK | MB_ICONERROR);

#ifdef _DEBUG
	LocaleString(IDS_Dbg_MakeDump, CriticalErrorTxt);
	MessageBox(NULL, CriticalErrorTxt, CriticalErrorLabel, MB_OK | MB_ICONERROR);
#endif

	PrintInstructions();

	if (code == EXCEPTION_ACCESS_VIOLATION)
	{
		return EXCEPTION_EXECUTE_HANDLER;
	}
	else
	{
		return EXCEPTION_CONTINUE_SEARCH;
	};
}

DWORD FindWoWProcess()
{
	PROCESSENTRY32 entry;
	entry.dwSize = sizeof(PROCESSENTRY32);

	HANDLE snapshot = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);

	DWORD Result = 0;

	std::wstring TargetProcessName = L"WoW.exe";
	std::wstring TargetProcessName2 = L"WoWFoV.exe";

	if (Process32First(snapshot, &entry) == TRUE)
	{
		while (Process32Next(snapshot, &entry) == TRUE)
		{
			std::wstring CurrentProcess = entry.szExeFile;
			if (CurrentProcess == TargetProcessName ||
				CurrentProcess == TargetProcessName2)
			{
				Result = entry.th32ProcessID;
				break;
			}
		}
	}

	CloseHandle(snapshot);

	return Result;
}


DWORD DoPatcherMainWork()
{
	fs::path currentPath = fs::current_path();
	fs::path PatchDir = currentPath / "wow-patch.mpq";
	fs::path ExecutableDir = currentPath / "WoW.exe";

	if (!fs::exists(ExecutableDir))
	{
		SetErrorState();
		ErrorBox(IDS_Err_NotWoWFolder);
		return 1;
	}

	DWORD WoWProcessID = FindWoWProcess();
	if(WoWProcessID > 0)
	{
		WriteLog(_T("WoW process is not finished yet, waiting for exit"));
		HANDLE hWoWExe = OpenProcess(SYNCHRONIZE, FALSE, WoWProcessID);
		if (hWoWExe != NULL)
		{
			WaitForSingleObject(hWoWExe, INFINITE);
			CloseHandle(hWoWExe);

			WriteLog(_T("Waiting is over, proceeding"));
		}
	}

	if (/*strstr(CmdLine, "-patch")*/ bPatcher)
	{
		SetPatcherStage(STAGE_BINARY_PATCH);
		// check existing section
		bool addSection = true;
		LPCSTR WoWExeName = "WoW.exe";

		try
		{
			PortableExecutable pe(WoWExeName);
			std::vector<PortableExecutable::SectionHeader>::iterator it = pe.SectionHeaders().begin();

			while (it != pe.SectionHeaders().end())
			{
				if (it->GetName() == ".tdata")
				{
					addSection = false;
					break;
				}
				++it;
			}

			if (addSection)
			{
				pe.AddSection(const_cast<LPSTR>(".tdata"), 0xE0000040, 0x20000, 0x20000);
			}

			WriteLog(_T("Patching WoW.exe..."));

			if (int ErrCode = PatchWoWExe())
			{
				SetErrorState();
				ErrorBox(IDS_Err_Patching);
				return ErrCode;
			}
		}
		catch (const PortableExecutable::Exception& e)
		{
			SetErrorState();
			WriteLog(_T("Problem to parse WoW.exe: %S"), e.what());
			ErrorBox(IDS_Err_Patching);
		}

		return 0;
	}
	SetProgress(5);

	//bool bPatchExist = fs::exists(PatchDir);

	if(bDownloadPatchFromInternet /*!bPatchExist*/)
	{
		SetPatcherStage(STAGE_DOWNLOADING);
		std::unique_ptr< IDownloader> Downloader { CreateDownloader() };
		fs::remove("wow-patch.mpq");

		Downloader->DownloadProgressCallback = [](float Progress)
		{
			int CurrentProgress = int(Progress * 100.0f);
			SetProgress(CurrentProgress);
		};

		volatile DWORD bShouldWait = TRUE;
		volatile DWORD bWasOK = TRUE;

		Downloader->OnAbortDownload = [&bShouldWait, &bWasOK]()
		{
			InterlockedExchange(&bWasOK, FALSE);
			InterlockedExchange(&bShouldWait, FALSE);
		};

		Downloader->OnDownloadComplete = [&bShouldWait]()
		{
			InterlockedExchange(&bShouldWait, FALSE);
		};

		auto TryToDownloadLambda = [&Downloader](std::string LinkToPatch) -> bool
		{
			if (!Downloader->Init(LinkToPatch))
			{
				return false;
			}

			if (!Downloader->DownloadAsync())
			{
				return false;
			}

			return true;
		};

		std::string MainLinkToPatch = DOWNLOAD_LINK_MAIN;
		std::string BackupLinkToPatch = DOWNLOAD_LINK_BACKUP;

		MainLinkToPatch += DOWNLOAD_FILENAME;
		BackupLinkToPatch += DOWNLOAD_FILENAME;

#if 0
		if (FILE* DownloadLinkFile = fopen("downloadlink.txt", "rb"))
		{
			fseek(DownloadLinkFile, 0, SEEK_END);
			int FilePos = ftell(DownloadLinkFile);
			fseek(DownloadLinkFile, 0, SEEK_SET);

			LinkToPatch.resize(FilePos + 1);
			fread(LinkToPatch.data(), FilePos, 1, DownloadLinkFile);

			fclose(DownloadLinkFile);
		}
#endif
		
		int Attempt = 0;
		if (!TryToDownloadLambda(MainLinkToPatch))
		{
			Attempt = 1;
			if (!TryToDownloadLambda(BackupLinkToPatch))
			{
				SetErrorState();
				ErrorBox(IDS_Err_Patching);
				return 1;
			}
		}

		WaitAgain:

		while (bShouldWait)
		{
			Sleep(2);

			if (bRequestToCancelDownload)
			{
				Downloader->CancelDownload();
				return 1;
			}
		}

		if (!bWasOK && Attempt == 0)
		{
			Attempt = 1;
			bShouldWait = TRUE;
			bWasOK = TRUE;
			if (!TryToDownloadLambda(BackupLinkToPatch))
			{
				SetErrorState();
				ErrorBox(IDS_Err_Patching);
				return 1;
			}
			goto WaitAgain;
		}

		if (!bWasOK)
		{
			ErrorBox(IDS_Err_Patching);
			return 1;
		}
	}

	SetPatcherStage(STAGE_CLEAR_CACHE);
	DeleteDeprecatedMPQ();
	SetProgress(10);

	//DeleteChatCache();
	if (SHOULD_COPY_REALM_SETTINGS)
	{
		TransferSettingsToNewRealm();
	}
	SetProgress(15);

	ClearWDBCache();
	SetProgress(20);

	DeleteLFTAddon();
	SetProgress(25);

	// unpack patch files
	{
		SetPatcherStage(STAGE_UNPACK_FILES);
		std::wstring strPathDir = PatchDir.wstring();
		WriteLog(_T("Trying open downloaded path file \"%s\""), strPathDir.c_str());
		StormArchive PatchFile(strPathDir.c_str());

		if (!PatchFile.IsValid())
		{
			SetErrorState();
			WriteLog(_T("ERROR: Can't open patch \"%s\""), strPathDir.c_str());
			PrintInstructions();
			return 1;
		}
		else
		{
			WriteLog(_T("Opened \"%s\""), strPathDir.c_str());
		}

		auto OnOpenFileLambda = [&strPathDir](LPCSTR File)
		{
			WriteLog(_T("Opened \"%S\" inside \"%s\""), File, strPathDir.c_str());
			if (fs::exists(File))
			{
				WriteLog(_T("File \"%S\" existed, removing"), File);
				if (!fs::remove(File))
				{
					WriteLog(_T("ERROR: Can't remove file \"%S\""), File);
				}
			}
		};

		auto OpenFileWithLogLambda = [](LPCSTR File) -> FILE*
		{
			FILE* hTargetFile = fopen(File, "wb");
			if (hTargetFile == NULL)
			{
				WriteLog(_T("Can't create \"%S\" for writting"), File);
				assert(hTargetFile != NULL);
				return nullptr;
			}

			WriteLog(_T("File created \"%S\""), File);

			return hTargetFile;
		};

		auto CopyFromMPQToFileLambda = [](StormFile* pFile, FILE* hTargetFile)
		{
			assert(pFile->Size.HighPart == 0); // Files greater then 4GB is unsupported!

			DWORD DataLeft = pFile->Size.LowPart;
			unsigned char Buffer[4096];
			do 
			{
				DWORD BytesToRead = min(4096, DataLeft);

				pFile->ReadToBuffer(Buffer, BytesToRead);
				fwrite(Buffer, BytesToRead, 1, hTargetFile);

				DataLeft -= BytesToRead;
			} while (DataLeft > 0);
		};

		auto CopyFileFromMPQToGameFolder = [&PatchFile, &OnOpenFileLambda, &OpenFileWithLogLambda, &CopyFromMPQToFileLambda](LPCSTR Filename)
		{
			if (StormFile* pFile = PatchFile.OpenFile(Filename))
			{
				OnOpenFileLambda(Filename);
				std::unique_ptr<StormFile> patchData(pFile);

				FILE* hTargetFile = OpenFileWithLogLambda(Filename);
				if (hTargetFile == nullptr)
				{
					return;
				}

				CopyFromMPQToFileLambda(pFile, hTargetFile);
				fclose(hTargetFile);

				// Do not remove StormFile - it crashes sometimes. Don't know why
				//delete pFile;
				//pFile = nullptr;
			}
		};

		// 25 -> 85
		CopyFileFromMPQToGameFolder(PATCH_FILE);
		SetProgress(85);

		CopyFileFromMPQToGameFolder(DISCORD_OVERLAY_FILE);
		CopyFileFromMPQToGameFolder(DISCORD_GAME_SDK_FILE);
		SetProgress(88);
		CopyFileFromMPQToGameFolder(ADDITIONAL_GAME_BINARY);
		SetProgress(95);
		CopyFileFromMPQToGameFolder(MAIN_GAME_BINARY);
	}

	SetPatcherStage(STAGE_DONE);
	SetProgress(100);

	return 0;
}

DWORD GuardPatchMainWork()
{
	DWORD Result = 0;

	__try
	{
		Result = DoPatcherMainWork();
	}
	__except (UnhandledExceptionFilter(GetExceptionCode(), GetExceptionInformation()))
	{
		SetErrorState();
	}

	PostThreadMessageA(gMainThreadID, G_WM_PATCHING_DONE, NULL, NULL);

	return Result;
}

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nCmdShow)
{
	int Result = 0;
	gMainThreadID = GetCurrentThreadId();

	__try
	{
		Result = GuardedMain(hInstance, lpCmdLine);
	}
	__except(UnhandledExceptionFilter(GetExceptionCode(), GetExceptionInformation()))
	{}

	return Result;
}