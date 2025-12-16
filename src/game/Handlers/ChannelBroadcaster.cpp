#include <thread>
#include <chrono>
#include "ChannelBroadcaster.h"
#include "ChannelMgr.h"
#include "World.h"


ChannelBroadcaster::ChannelBroadcaster() : MessageQueue(15)
{
	StartThread();
}

ChannelBroadcaster::~ChannelBroadcaster()
{
	Stop();
}

void ChannelBroadcaster::StartThread()
{
	Worker = new std::thread([this]()
	{
		ThreadProc();
	});
}

void ChannelBroadcaster::Stop()
{
	if (Worker == nullptr)
	{
		return;
	}
	
	if (Worker->joinable())
	{
		Worker->join();
	}

	delete Worker;
	Worker = nullptr;
}

void ChannelBroadcaster::EnableSendingMessages()
{
	bShouldSentMessages.store(true);
	while (!bIsWorking.load() && !sWorld.IsStopped())
	{
		std::this_thread::sleep_for(std::chrono::milliseconds(0));
	}
}

void ChannelBroadcaster::DisableSendingMessages()
{
	bShouldSentMessages.store(false);
	while (bIsWorking.load())
	{
		std::this_thread::sleep_for(std::chrono::milliseconds(0));
	}
}

void ChannelBroadcaster::EnqueueMessage(std::string&& Message, const std::string& ChannelName, ObjectGuid PlayerGuid, uint32 Language, Team ChannelTeam, bool bSkipChecks)
{
	MessageQueue.enqueue(ChannelMessage{std::move(Message), ChannelName, PlayerGuid, Language, ChannelTeam, bSkipChecks });
}

void ChannelBroadcaster::ThreadProc()
{
	while (!sWorld.IsStopped())
	{
		while (bShouldSentMessages.load() && !sWorld.IsStopped())
		{
			bIsWorking.store(true);


			constexpr int32 MessageLimit = 5;
			int32 MessageIterator = 0;


			ChannelMessage msg;
			while (MessageIterator < 5 && MessageQueue.try_dequeue(msg))
			{
				ChannelMessage& ChanMsg = msg;

				ChannelMgr* ChannelManager = channelMgr(ChanMsg.ChannelTeam);
				Channel* TargetChannel = ChannelManager->GetOrCreateChannel(ChanMsg.ChannelName);
				TargetChannel->Say(ChanMsg.PlayerGuid, ChanMsg.Message.c_str(), ChanMsg.Language, ChanMsg.bSkipChecks);
				MessageIterator++;
			}
		}
		bIsWorking.store(false);

		std::this_thread::sleep_for(std::chrono::milliseconds(1));
	}
}
