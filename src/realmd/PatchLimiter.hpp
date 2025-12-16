#pragma once
#include <atomic>
#include <stdint.h>

#include "Database/DatabaseEnv.h"

extern uint64_t MaxDataPerSecond;

class PatchLimiter
{
public:

	void Update(uint32_t diff)
	{
		if (timeDiff < diff)
		{
			timeDiff = 1000;
			totalCurrentBandwidth.store(0, std::memory_order_seq_cst);
		}
		else
			timeDiff -= diff;
	}

	bool IsAllowed(uint32_t bytes)
	{
		if (totalCurrentBandwidth.load(std::memory_order_relaxed) >= MaxDataPerSecond)
			return false;

		totalCurrentBandwidth.fetch_add(bytes, std::memory_order_relaxed);
		return true;
	}

private:
	std::atomic_uint64_t totalCurrentBandwidth;
	uint32_t timeDiff = 1000;
};

extern PatchLimiter sPatchLimiter;