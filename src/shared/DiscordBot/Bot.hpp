#pragma once
#ifdef USING_DISCORD_BOT

#include "dpp/dpp.h"
#include "Common.h"
#include "Platform/Define.h"

#include <string>
#include <optional>
#include <functional>
#include <memory>
#include <stdint.h>

namespace DiscordBot
{
    enum class MessagePriority : uint32
    {
        Drop,
        Requeue
    };


    constexpr uint32_t MaxMessageLength = 2000;
    
    class BaseCommandHandler;

    class Bot
    {
    public:
        static Bot* Instance()
        {
            static Bot instance;
            return &instance;
        }

        ~Bot();
        Bot(const Bot&) = delete;
        Bot(Bot&&) = delete;

        void Setup(std::string token);
        void SendMessageToChannel(uint64_t channelId, std::string message, MessagePriority priority = MessagePriority::Drop);
        void Stop();

        void WorkerThread();


        void RequeueMessage(dpp::message&& message);


        dpp::cluster* GetCore() const;

        void AddHandler(BaseCommandHandler* handler);

    private:

        void CreateMessage(dpp::message message, MessagePriority priority);

        Bot() = default;

        std::unique_ptr<dpp::cluster> _core;

        std::unordered_map<std::string, BaseCommandHandler*> _commandLinks;

        std::vector<BaseCommandHandler*> _handlers;
        std::string _commandOutput;

        std::queue<dpp::message> _requeuedMessages;
        std::mutex _requeueLock;

        std::thread _workerThread;

        bool _running = false;
    };
}

#define sDiscordBot DiscordBot::Bot::Instance()

#endif