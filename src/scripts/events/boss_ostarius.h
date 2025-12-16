#pragma once


enum Events
{
    EVENT_INTRO_RP_1 = 1,
    EVENT_INTRO_RP_2,
    EVENT_INTRO_RP_3,
    EVENT_INTRO_RP_4,
    EVENT_INTRO_RP_5,
    EVENT_INTRO_RP_6,
    EVENT_INTRO_RP_7,
    EVENT_INTRO_RP_8,
    EVENT_PHASE_1_DELAY,
    EVENT_PHASE_3_DELAY,
};

enum PhaseStates : std::uint8_t
{
    STATE_PHASE_1 = 1,
    STATE_PHASE_2 = 2,
    STATE_PHASE_3 = 4,
    STATE_PHASE_4 = 8,
    STATE_ENRAGED = 16,
};

constexpr std::uint32_t SPELL_SCAN_OF_OSTARIUS = 57000;
constexpr std::uint32_t SPELL_MORTALITY_SCAN = 57005;
constexpr std::uint32_t SPELL_CONFLAG = 16805;
constexpr std::uint32_t SPELL_SANDSTORM = 57002;
constexpr std::uint32_t SPELL_TARGET_CHANNEL = 57004;
constexpr std::uint32_t SPELL_SUMMON_PLAYER = 26229;

constexpr std::uint32_t SPELL_STOMP = 27993;
constexpr std::uint32_t SPELL_EARTHQUAKE = 19798;

constexpr std::uint32_t SPELL_SONIC_BURST = 23918;
constexpr std::uint32_t SPELL_CHAIN_LIGHTNING = 28293;

constexpr std::uint32_t SPELL_ROOT_FOREVER = 31366;
constexpr std::uint32_t SPELL_TELEPORT_VISUAL = 26638;

constexpr std::uint32_t BOSS_OSTARIUS = 80935;
constexpr std::uint32_t NPC_PEDESTAL_BUNNY = 80969;
constexpr std::uint32_t MOB_ULDUM_CONSTRUCT = 80938;
constexpr std::uint32_t MOB_DEFENSE_SENTRY = 80939;

constexpr std::uint32_t GOB_PEDESTAL = 142343;
constexpr std::uint32_t GOB_DEFENSE_PORTAL = 3000270;
constexpr std::uint32_t GOB_DEBILITATING_DEVICE = 3000271;

constexpr auto PED_TEXT_1 = "Initiating unlock sequence...";
constexpr auto PED_TEXT_2 = "Plates present, scanning for item validation...";
constexpr auto PED_TEXT_3 = "Plates authentication complete. Unlocking the gates...";
constexpr auto PED_TEXT_4 = "Activating Gate Keeper to greet the guests...";

constexpr auto INTRO_TEXT_1 = "Welcome, honored guests, to the research facility.";
constexpr auto INTRO_TEXT_2 = "Please wait for the initial scanning...";
constexpr auto INTRO_TEXT_3 = "WARNING! Curse of the flesh detected!";
constexpr auto INTRO_TEXT_4 = "Initiating manual gate override... Gate locked successfully.";
constexpr auto INTRO_TEXT_5 = "Activating defensive system for threat elimination.";

constexpr auto PHASE_1_TEXT = "Guardians, awaken and smite these intruders!";
constexpr auto PHASE_2_TEXT = "Fire will burn your corruption!";
constexpr auto PHASE_3_TEXT = "Elusive... Then face the might of the frost!";
constexpr auto PHASE_4_TEXT = "Still you persist, servants of the old ones? Very well.";
constexpr auto ENRAGE_TEXT = "NO! I will not fail again!";
constexpr auto DEATH_TEXT = "You will bring your own, undoing... it has already begun...";
constexpr auto EVADE_TEXT = "Hostile units are retreating. Deactivating defensive system.";

constexpr auto PLAYER_DEATH_1 = "So fragile.";
constexpr auto PLAYER_DEATH_2 = "You have failed!";
constexpr auto PLAYER_DEATH_3 = "None shall pass!";
constexpr auto PLAYER_DEATH_4 = "It had to be done.";

// Don't TOUCH these
constexpr float squareX = -9606.21484f;
constexpr float squareY = -2806.25635f;
constexpr float squareZ = 7.838724f;
constexpr float squareDiameter = 4.191733f;


constexpr std::uint32_t SOUND_PED_TEXT_1 = 30279;
constexpr std::uint32_t SOUND_PED_TEXT_2 = 30280;
constexpr std::uint32_t SOUND_PED_TEXT_3 = 30281;
constexpr std::uint32_t SOUND_PED_TEXT_4 = 30282;

constexpr std::uint32_t SOUND_INTRO_TEXT_1 = 30285;
constexpr std::uint32_t SOUND_INTRO_TEXT_2 = 30286;
constexpr std::uint32_t SOUND_INTRO_TEXT_3 = 30291;
constexpr std::uint32_t SOUND_INTRO_TEXT_4 = 30287;
constexpr std::uint32_t SOUND_INTRO_TEXT_5 = 30288;

constexpr std::uint32_t SOUND_PHASE_1 = 30278;
constexpr std::uint32_t SOUND_PHASE_2 = 30277;
constexpr std::uint32_t SOUND_PHASE_3 = 30276;
constexpr std::uint32_t SOUND_PHASE_4 = 30283;
constexpr std::uint32_t SOUND_ENRAGE = 30289;
constexpr std::uint32_t SOUND_DEATH = 30290;

constexpr std::uint32_t SOUND_PLAYER_DEATH = 80284;

// Maximum amount of portals or debilitating devices that will open/active at the same time.
constexpr std::uint8_t MAX_OPEN_PORTALS = 20;
constexpr std::uint8_t MAX_SPAWNED_CONSTRUCTS = 50;
constexpr std::uint8_t MAX_ACTIVE_DEVICES = 30;

constexpr float sentryLocs[4][4] =
{
    {-9613.08f, -2828.02f, 10.7f, 1.145f},
    {-9617.7f, -2743.983f, 14.8f, 5.265f},
    {-9572.8427f, -2840.13f, 10.0f, 1.41f},
    {-9581.63f, -2728.22f, 12.5f, 4.91f},
};

// Pedestal of Uldum NPC (RP intro)
enum PedestalEvents
{
    PEDESTAL_EVENT_INTRO_1 = 1,
    PEDESTAL_EVENT_INTRO_2,
    PEDESTAL_EVENT_INTRO_3,
    PEDESTAL_EVENT_INTRO_4,
    PEDESTAL_EVENT_BOSS_SPAWN
};

// BroadcastText system is obviously broken. Reads in sound IDs from DB as 0, so we do our own.
inline void PlaySound(Unit* source, uint32 soundId, bool playToZone = false)
{
    source->PlayDirectSound(soundId); // PlayDirectSound already uses SendMessageToSet (and thus plays sounds for everyone in visibility distance..)
}