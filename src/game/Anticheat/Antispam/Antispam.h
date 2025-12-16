#include <string>
#include <vector>
#include <chrono>
#include <thread>
#include <mutex>

#include "Util.h"
#include "World.h"
#include "GuildMgr.h"
#include "ChannelMgr.h"
#include "Anticheat.h"
#include "re2/re2.h"

typedef std::chrono::high_resolution_clock Clock;

enum NormalizeFlags
{
    NF_CUT_COLOR        = 0x001,
    NF_REPLACE_WORDS    = 0x002,
    NF_CUT_SPACE        = 0x004,
    NF_CUT_CTRL         = 0x008,
    NF_CUT_PUNCT        = 0x010,
    NF_CUT_NUMBERS      = 0x020,
    NF_REPLACE_UNICODE  = 0x040,
    NF_REMOVE_REPEATS   = 0x080,
    NF_REMOVE_NON_LATIN = 0x100
};
    
enum MessageType
{
    MSG_TYPE_NORMALIZED,
    MSG_TYPE_ORIGINAL,
    MSG_TYPE_MAX
};

enum AntispamChatTypes
{
    A_CHAT_TYPE_SAY     = 0,
    A_CHAT_TYPE_WHISPER = 1,
    A_CHAT_TYPE_CHANNEL = 2,
    A_CHAT_TYPE_GUILD   = 3,
    A_CHAT_TYPE_MAX
};

enum DetectType
{
    DETECT_STANDARD     = 0,
    DETECT_SEPARATED    = 1,
    DETECT_FLOOD        = 2
};

typedef turtle_unordered_map<std::wstring, std::wstring, Category_Anticheat> UnicodeMap;
typedef turtle_unordered_map<std::string, std::string, Category_Anticheat> StringMap;
typedef turtle_unordered_map<std::string, int32, Category_Anticheat> ScoreMap;
typedef turtle_unordered_set<uint32, Category_Anticheat> MutedAccountsSet;

struct MessageBlock
{
    ObjectGuid fromGuid;
    uint32 fromAccount;
    ObjectGuid toGuid;
    std::string msg;
    uint32 language;
    uint8 type;
    uint8 count;
    time_t time;
    std::string channelName;
    uint32 guildId;
    bool skipChecking = false;
};

struct MessageCounter
{
    uint32 count;
    uint32 timeDiff;
    time_t timeLast;
    bool detectMarker;
};

struct pair_hash {
    template <class T1, class T2>
    std::size_t operator () (const std::pair<T1, T2> &p) const {
        auto h1 = std::hash<T1>{}(p.first);
        auto h2 = std::hash<T2>{}(p.second);

        // Mainly for demonstration purposes, i.e. works but is overly simple
        // In the real world, use sth. like boost.hash_combine
        return h1 ^ h2;
    }
};

typedef std::pair<uint32, uint32> LowGuidPair;
typedef std::unordered_map<LowGuidPair, MessageBlock, pair_hash> MessageBlocks;
typedef std::unordered_map<uint32, MessageCounter> MessageCounters;
typedef std::unordered_map<uint32, std::list<std::string>> MessageRepeats;

class Antispam : public AntispamInterface
{
    public:
        Antispam();
        ~Antispam()
        {
            if (m_worker.joinable())
                m_worker.join();
        }

        void LoadFromDB();
        void LoadConfig() override;
        
        std::string NormalizeMessage(const std::string& msg, uint32 mask = 0) override;
        bool FilterMessage(MessageBlock const& msg) override;
        
        bool AddMessage(std::string const& msg, uint32 language, uint32 type, PlayerPointer from, PlayerPointer to, Channel* channel, Guild* guild) override;

        void ProcessMessages(uint32 diff);
        void ApplySanction(MessageBlock const& messageBlock, uint32 detectType, uint32 repeats = 0);
        void LogSpam(MessageBlock const& messageBlock, std::string const& reason);
        
        bool IsMuted(uint32 accountId, bool checkChatType = false, uint32 chatType = 0) const override;
        void Mute(uint32 accountId) override;
        void Unmute(uint32 accountId) override;
        void ShowMuted(WorldSession* session) override;

        void BlacklistWord(std::string word) override;
        void WhitelistWord(std::string word) override;
        void AddRegexBlacklist(std::string pattern) override;

        StringSet const* GetMutedMessagesForAccount(uint32 accountId) override
        {
            auto itr = m_mutedMessages.find(accountId);
            if (itr == m_mutedMessages.end())
                return nullptr;

            return &itr->second;
        }

        uint8 GetConvertedChatType(uint32 type) const
        {
            switch (type)
            {
                case CHAT_MSG_SAY:
                case CHAT_MSG_YELL:
                    return A_CHAT_TYPE_SAY;
                case CHAT_MSG_WHISPER:
                    return A_CHAT_TYPE_WHISPER;
                case CHAT_MSG_CHANNEL:
                    return A_CHAT_TYPE_CHANNEL;
                case CHAT_MSG_GUILD:
                    return A_CHAT_TYPE_GUILD;
                default:
                    return A_CHAT_TYPE_MAX;
            }
        }

    private:
        bool m_enabled;
        uint8 m_restrictionLevel;
        uint16 m_originalNormalizeMask;
        uint16 m_fullyNormalizeMask;
        uint32 m_threshold;
        uint32 m_mutetime;
        uint32 m_chatMask;
        uint8 m_messageBlockSize;
        uint32 m_updateTimer;
        uint32 m_messageRepeatCount;
        float m_frequencyCount;
        float m_frequencyTime;
        float m_frequencyCoeff;
        uint8 m_detectThreshold;
        bool m_banEnabled;
        bool m_mergeAllWhispers;

        turtle_vector<std::unique_ptr<re2::RE2>, Category_Anticheat> m_regexBlacklist;
        StringSet m_blackList;
        StringMap m_replacement;
        ScoreMap m_scores[MSG_TYPE_MAX];
        UnicodeMap m_unicode;
        turtle_unordered_map<uint32 /*accountId*/, uint32 /*score*/, Category_Anticheat> m_detectScores;
        turtle_unordered_map<uint32 /*accountId*/, StringSet /*mutedMessages*/, Category_Anticheat> m_mutedMessages;

        MutedAccountsSet m_mutedAccounts;

        turtle_vector<MessageBlock, Category_Anticheat> m_messageQueue;
        MessageBlocks m_messageBlocks[A_CHAT_TYPE_MAX];
        MessageCounters m_messageCounters[A_CHAT_TYPE_MAX];
        MessageRepeats m_messageRepeats[A_CHAT_TYPE_MAX];

        std::thread m_worker;
        std::mutex m_messageMutex;
};

extern Antispam sAntispam;