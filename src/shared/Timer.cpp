#include "Timer.h"

#if PLATFORM == PLATFORM_UNIX // Torvalds platform
	#include <time.h>
#endif

bool g_bEnableStatGather = true;

namespace CPU
{
	uint64 qpc_freq = 0;
	uint32 qpc_counter = 0;

	void Init()
	{
#if PLATFORM == PLATFORM_WINDOWS
		LARGE_INTEGER Freq;
		QueryPerformanceFrequency(&Freq);
		qpc_freq = Freq.QuadPart;
#elif PLATFORM == PLATFORM_UNIX
		qpc_freq = 1000000000;
#endif
	}


	uint64 QPC()
	{
		qpc_counter++;

#if PLATFORM == PLATFORM_WINDOWS
		uint64 Dest;
		QueryPerformanceCounter(reinterpret_cast<PLARGE_INTEGER>(&Dest));
		return Dest;
#elif PLATFORM == PLATFORM_UNIX // else !PLATFORM_WINDOWS
		timespec Dest;
		clock_gettime(CLOCK_MONOTONIC, &Dest);

		uint64 Nanoseconds = Dest.tv_sec * 1000000000;
		Nanoseconds += Dest.tv_nsec;
		return Nanoseconds;
#endif
	}

}

void XStatTimer::FrameStart()
{
	accum = 0;
	count = 0;
}

void XStatTimer::FrameEnd()
{
#if 0
	double Time = 1000.0 * double(accum) / double(CPU::qpc_freq);
	if (Time > result) result = Time;
	else result = 0.99 * result + 0.01 * Time;
#else
	result = 1000.0 * double(accum) / double(CPU::qpc_freq);
#endif

	if (MinResult == 0.0)
	{
		MinResult = result;
	}

	MinResult = std::min(MinResult, result);
	MaxResult = std::max(MaxResult, result);
}

XScopeStatTimer::XScopeStatTimer(XStatTimer& destTimer)
	: _timer(destTimer)
{
	_timer.Begin();
}

XScopeStatTimer::~XScopeStatTimer()
{
	_timer.End();
}
