#include "Bot.hpp"
#include "dpp/dpp.h"

#include <thread>

#include "BaseCommandHandler.hpp"
#include "AuthManager.hpp"
#include "Log.h"

namespace DiscordBot
{
    using namespace std::literals::string_literals;
    using namespace dpp;


    Bot::~Bot()
    {
        _running = false;
        for (auto handler : _handlers)
            delete handler;

        if (_workerThread.joinable())
            _workerThread.join();
    }

    void Bot::AddHandler(BaseCommandHandler* handler)
    {
        _handlers.push_back(handler); 
    }

    cluster* Bot::GetCore() const
    {
        return _core.get();
    }

    void Bot::SendMessageToChannel(uint64_t channelId, std::string message, MessagePriority priority)
    {
        if (!_core || !_running)
            return;

        std::string NormalizedMessage = NormalizeString(message);

        if (!NormalizedMessage.empty())
        {
            dpp::message m(channelId, NormalizedMessage);
            CreateMessage(std::move(m), priority);
        }
    }

    void Bot::CreateMessage(dpp::message message, MessagePriority priority)
    {
        if (!_running || !_core)
            return;

        _core->message_create(message, [priority, this, message](const confirmation_callback_t& confirmation) mutable
            {
                //rate-limited.
                if (confirmation.http_info.status != 200)
                {
                    // if the message is important we should requeue it so it still gets through next call.
                    if (priority == MessagePriority::Requeue)
                    {
                        RequeueMessage(std::move(message));
                    }
                    //utility::log_error()(confirmation);
                }
            });
    }


    void Bot::RequeueMessage(dpp::message&& message)
    {
        std::unique_lock l{ _requeueLock };
        _requeuedMessages.push(std::move(message));
    }

    void Bot::WorkerThread()
    {
        while (_running)
        {
            if (!_requeuedMessages.empty())
            {
                std::unique_lock l{ _requeueLock };
                while (!_requeuedMessages.empty())
                {
                    const auto& message = _requeuedMessages.front();

                    _core->message_create(message);


                    _requeuedMessages.pop();

                }
            }
            std::this_thread::sleep_for(std::chrono::milliseconds{ 700 });
        }
    }
    
    void Bot::Stop()
    {
        if (!_core)
            return;

        _running = false;
        _core->shutdown();
        _core = nullptr;
    }

    void Bot::Setup(std::string token)
    {
        if (_core)
            return;


        _core = std::make_unique<cluster>(token, dpp::intents::i_all_intents);
        _core->on_log([](const dpp::log_t& event) 
        {
            if (event.severity > dpp::ll_trace) 
            {
                std::ostringstream ss;
                ss << "[" << dpp::utility::current_date_time() << "] " << dpp::utility::loglevel(event.severity) << ": " << event.message;
                if (ss.rdbuf()->in_avail())
                    sLog.outDiscordCore(ss.str().c_str());
            }
        });


        _core->on_form_submit([this](const form_submit_t& event) 
            {
                BaseCommandHandler::HandleFormSubmit(event);
            });

        _core->on_ready([this](const ready_t& event) {
            BaseCommandHandler::RegisterAll(*this);
        });

        _core->start(true);

        _running = true;

        _workerThread = std::thread{
            &Bot::WorkerThread, this
        };
    }

}
