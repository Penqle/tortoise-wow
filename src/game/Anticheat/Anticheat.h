/*
 * Contains interface and calls that have to be implemented by the anticheat lib.
 */

#ifndef __ANTICHEAT_HPP_
#define __ANTICHEAT_HPP_

#include "WorldPacket.h"
#include "Auth/BigNumber.h"
#include "Opcodes.h"
#include "Chat.h"
#include "Util.h"
#include "AddonHandler.h"
#ifdef USING_DISCORD_BOT
#include "DiscordBot/Bot.hpp"
#endif

#include <memory>
#include <string>
#include <unordered_set>

enum CheatAction
{
    // take no action
    CHEAT_ACTION_NONE           = 0x00,

    // informational logging to the anticheat table of the log database, and gm notification
    CHEAT_ACTION_INFO_LOG       = 0x01,

    // log to the anticheat table of the log database, notify gms, and prompt for action
    // NOTE: other actions combined with this one are considered acceptable candidates for
    // MANUAL action and are NOT performed automatically!
    CHEAT_ACTION_PROMPT_LOG     = 0x02,

    // disconnect the offending world session
    CHEAT_ACTION_KICK           = 0x04,

    // permanently ban the offending account
    CHEAT_ACTION_BAN_ACCOUNT    = 0x08,

    // permanently ban the offending ip address
    CHEAT_ACTION_BAN_IP         = 0x10,

    // permanently silences the offending account from whispers, mail, say, channels, and yells
    CHEAT_ACTION_SILENCE        = 0x20,
};

class WorldSession;
class Player;
class Guild;
struct AreaEntry;
struct MessageBlock;

typedef std::unordered_set<std::string> StringSet;

class AntispamInterface
{
public:
    virtual ~AntispamInterface() {}

    virtual void LoadConfig() {}

    virtual std::string NormalizeMessage(std::string const& msg, uint32 mask = 0) { return msg; }
    virtual bool FilterMessage(MessageBlock const& msg) { return 0; }

    virtual bool AddMessage(std::string const& msg, uint32 language, uint32 type, PlayerPointer from, PlayerPointer to, Channel* channel, Guild* guild) { return true; }

    virtual bool IsMuted(uint32 accountId, bool checkChatType = false, uint32 chatType = 0) const { return false; }
    virtual void Mute(uint32 accountId) {}
    virtual void Unmute(uint32 accountId) {}
    virtual void ShowMuted(WorldSession* session) {}
    virtual StringSet const* GetMutedMessagesForAccount(uint32 accountId) { return nullptr; }

    virtual void BlacklistWord(std::string word) {};
    virtual void WhitelistWord(std::string word) {};
    virtual void AddRegexBlacklist(std::string) {};
};

// interface to anticheat session (one for each world session)
class SessionAnticheatInterface
{
    public:
        virtual ~SessionAnticheatInterface() = default;

        virtual void Update(uint32 diff) = 0;

        // character enum packet has been built and is ready to send
        virtual void SendCharEnum(WorldPacket &&packet) = 0;

        virtual void NewPlayer() = 0;
        virtual void LeaveWorld() = 0;
        virtual void Disconnect() = 0;

        // addon checksum verification
        virtual bool ReadAddonInfo(WorldPacket *, WorldPacket &) = 0;
        virtual uint32 GetFingerprint() const { return 0; }

        // chat
        virtual void SendPlayerInfo(ChatHandler *) const = 0;

        // miscellaneous cheat entry
        virtual void RecordCheat(uint32 actionMask, const char *detector, const char *format, ...) = 0;

        // movement cheats
        virtual bool Movement(MovementInfo &mi, const WorldPacket &) = 0;
        virtual void TimeSkipped(const ObjectGuid &mover, uint32 ms) = 0;
        virtual bool ExtrapolateMovement(MovementInfo const& mi, uint32 diffMs, Position &pos) = 0;
        virtual bool SpeedChangeAck(MovementInfo &mi, const WorldPacket &packet, float newSpeed) = 0;
        virtual bool IsInKnockBack() const = 0;
        virtual void KnockBack(float speedxy, float speedz, float cos, float sin) = 0;
        virtual void OnExplore(const AreaEntry *p) = 0;
        virtual void Teleport(const Position &pos) = 0;

        virtual void OrderSent(uint16 opcode, uint32 counter) = 0;
        virtual void OrderAck(uint16 opcode, uint32 counter) = 0;

        // warden
        virtual void WardenPacket(WorldPacket &packet) = 0;
};

// interface to anticheat system
class AnticheatLibInterface
{
    public:
        // this function needs to support executing at any time
        virtual void Reload() = 0;

        // run only on startup
        virtual void Initialize() = 0;

        // create anticheat session for a new world session
        virtual std::unique_ptr<SessionAnticheatInterface> NewSession(WorldSession *session, const BigNumber &K) = 0;

        // GM .anticheat command handler
        //virtual bool ChatCommand(ChatHandler *handler, const std::string &args) = 0;

        virtual AntispamInterface* GetAntispam() const { return nullptr; }
};

AnticheatLibInterface* GetAnticheatLib();
#define sAnticheatLib (GetAnticheatLib())

class NullSessionAnticheat : public SessionAnticheatInterface
{
    private:
        WorldSession * const _session;
        bool _inKnockBack;

    public:
        NullSessionAnticheat(WorldSession *session) : _session(session), _inKnockBack(false) {}

        void Update(uint32) override {}

        // character enum packet has been built and is ready to send
        void SendCharEnum(WorldPacket &&packet) override { _session->SendPacket(&packet); }

        void NewPlayer() override {}
        void LeaveWorld() override {};
        void Disconnect() override {};

        // addon checksum verification
        bool ReadAddonInfo(WorldPacket* source, WorldPacket& target) override
        {
#ifdef USING_DISCORD_BOT
            std::string Message = string_format("[Fingerprint]: Account ID {}, IP {} reading addoninfo has no sessionAnticheat. Fingerprint will be 0.", _session->GetAccountId(), _session->GetRemoteAddress().c_str());
            sDiscordBot->SendMessageToChannel(1083954369503973416, Message,
                DiscordBot::MessagePriority::Requeue);
#endif
            sAddOnHandler.BuildAddonPacket(source, &target);
            return true;
        }

        // chat
        void SendPlayerInfo(ChatHandler *) const override {}

        // miscellaneous action
        void RecordCheat(uint32 actionMask, const char *detector, const char *format, ...) override
        {
            if (!!(actionMask & CHEAT_ACTION_KICK))
                _session->KickPlayer();
        }

        // movement cheats
        bool Movement(MovementInfo &, const WorldPacket &packet) override
        {
            if (packet.GetOpcode() == MSG_MOVE_FALL_LAND)
                _inKnockBack = false;

            return true;
        }
        void TimeSkipped(const ObjectGuid &mover, uint32 ms) override {}
        bool ExtrapolateMovement(MovementInfo const& mi, uint32 diffMs, Position &pos) override { return false; }
        bool SpeedChangeAck(MovementInfo &, const WorldPacket &, float) override { return true; }
        bool IsInKnockBack() const override { return _inKnockBack; }
        void KnockBack(float speedxy, float speedz, float cos, float sin) override { _inKnockBack = true; }
        void OnExplore(const AreaEntry *) override {}
        void Teleport(const Position &) override {}

        void OrderSent(uint16, uint32) override {}
        void OrderAck(uint16, uint32) override {}

        // warden
        void WardenPacket(WorldPacket &) override {}
};

#ifdef USE_ANTICHEAT
#include "libanticheat.hpp"
#else
class NullAnticheatLib : public AnticheatLibInterface
{
    public:
        virtual void Reload() {}
        virtual void Initialize() {}

        virtual std::unique_ptr<SessionAnticheatInterface> NewSession(WorldSession *session, const BigNumber &)
        {
            return std::make_unique<NullSessionAnticheat>(session);
        }

        // GM .anticheat command handler
        virtual bool ChatCommand(ChatHandler *, const std::string &) { return false; }
};
#endif

#endif /*!__ANTICHEAT_HPP_*/