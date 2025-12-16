// Giperion January 2021
// [EUREKA] 4.5
// Turtle Project Group
#include "pch.h"
#include <ctime>

DWORD _printConsole(const wchar_t* buffer, int StrSize);

DWORD PrintConsole(const wchar_t* format, ...)
{
#ifdef _DEBUG
	WCHAR MessageBuff[1024];

	va_list ArgsList;
	va_start(ArgsList, format);
	int StrLen = _vsnwprintf_s(MessageBuff, 512, 512, format, ArgsList);
	va_end(ArgsList);
	if (StrLen > 0)
	{
		MessageBuff[StrLen] = L'\r';
		MessageBuff[StrLen + 1] = L'\n';
		MessageBuff[StrLen + 2] = 0;
		_printConsole(MessageBuff, StrLen + 2);
	}
	return StrLen;
#else
	return 0;
#endif
}

DWORD _printConsole(const wchar_t* buffer, int StrSize)
{
	static HANDLE ConsoleHandle = GetStdHandle((DWORD)-11);
	DWORD charWriten;

	WriteConsoleW(ConsoleHandle, buffer, StrSize, &charWriten, NULL);
	return charWriten;
}

struct DiscordState 
{
	discord::User User;

	discord::Core* Core;

	DiscordState()
	{

	}

	~DiscordState()
	{

	}
};

volatile bool gShouldWork = true;
std::atomic_int gWorkflowComplete;

LRESULT CALLBACK GetMsgProc(
	int    code,
	WPARAM wParam,
	LPARAM lParam
)
{
	MSG* pMsg = (MSG*)lParam;
	if (pMsg->message == WM_DESTROY)
	{
		gShouldWork = false;

		while (!gWorkflowComplete.load(std::memory_order::memory_order_relaxed))
		{
			Sleep(10);
		}
	}

	return CallNextHookEx(NULL, code, wParam, lParam);
}

const char* LogLevel_ToString(discord::LogLevel level)
{
	switch (level)
	{
	case discord::LogLevel::Error:
		return "Error";
	case discord::LogLevel::Warn:
		return "Warning";
	case discord::LogLevel::Info:
		return "Info";
	case discord::LogLevel::Debug:
		return "Debug";
	default:
		return "Unknown";
	}
}

DiscordState gState;

unsigned __stdcall DiscordThreadStart(void*)
{
	gWorkflowComplete = 0;
#ifdef _DEBUG
	AllocConsole();
	PrintConsole(L"Log started");
#endif

	SetWindowsHook(WH_GETMESSAGE, GetMsgProc);

	gState.Core = nullptr;
	discord::Result result = discord::Core::Create(628349760813662218, DiscordCreateFlags_NoRequireDiscord, &gState.Core);
	if (gState.Core == nullptr)
	{
		PrintConsole(L"Error on Create %d", (int)result);
		return 1;
	}

	gState.Core->SetLogHook(discord::LogLevel::Debug, [](discord::LogLevel level, const char* message)
		{
			PrintConsole(L"Discord %S: %S", LogLevel_ToString(level), message);
		});

	gState.Core->UserManager().OnCurrentUserUpdate.Connect([]()
		{
			gState.Core->UserManager().GetCurrentUser(&gState.User);

			PrintConsole(L"Current user: %S", gState.User.GetUsername());
		});

	discord::ActivityManager& ActivityMgr = gState.Core->ActivityManager();

	discord::Activity DefaultAct;
	DefaultAct.SetType(discord::ActivityType::Playing);
	DefaultAct.SetState(u8"Playing Turtle WoW");
	DefaultAct.SetDetails(u8"");

	time_t StartTime;
	std::time(&StartTime);
	DefaultAct.GetTimestamps().SetStart(StartTime);
	DefaultAct.GetTimestamps().SetEnd(0);

	DefaultAct.GetAssets().SetLargeImage("turtlewow-1024x1024");
	DefaultAct.GetAssets().SetSmallImage("");

	DefaultAct.GetAssets().SetLargeText(u8"Turtle WoW — RP/PvE Vanilla WoW Server");
	DefaultAct.GetAssets().SetSmallText("");
	DefaultAct.GetParty().SetId("DummyPartyId");
	DefaultAct.GetParty().GetSize().SetCurrentSize(0);
	DefaultAct.GetParty().GetSize().SetMaxSize(0);
	DefaultAct.GetSecrets().SetMatch("");
	DefaultAct.GetSecrets().SetJoin("");
	DefaultAct.GetSecrets().SetSpectate("");


	ActivityMgr.UpdateActivity(DefaultAct, [](discord::Result result)
		{
			PrintConsole(L"Set activity - %S", result == discord::Result::Ok ? "Ok" : "FAILED");
		});

	while (gShouldWork)
	{
		gState.Core->RunCallbacks();
		Sleep(50);
	}

#ifdef _DEBUG
	FreeConsole();
#endif

	delete gState.Core;

	gWorkflowComplete = 1;
	return 0;
}

BOOL APIENTRY DllMain( HMODULE hModule,
                       DWORD  ul_reason_for_call,
                       LPVOID lpReserved
                     )
{
    switch (ul_reason_for_call)
    {
    case DLL_PROCESS_ATTACH:
		_beginthreadex(nullptr, 0, DiscordThreadStart, nullptr, 0, nullptr);
    case DLL_THREAD_ATTACH:
    case DLL_THREAD_DETACH:
    case DLL_PROCESS_DETACH:
        break;
    }
    return TRUE;
}

